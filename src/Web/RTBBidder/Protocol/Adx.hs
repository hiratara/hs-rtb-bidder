{-# LANGUAGE OverloadedStrings #-}
module Web.RTBBidder.Protocol.Adx (
  protocol
  ) where
import qualified Data.ByteString as BS
import qualified Data.ByteString.Lazy as LBS
import qualified Data.Text as TX
import qualified Data.Sequence as SEQ
import qualified Network.Wai as WAI
import qualified Network.HTTP.Types as NHT
import Web.RTBBidder.Types
import Text.ProtocolBuffers.Header (defaultValue)
import Text.ProtocolBuffers.WireMessage (messageGet, messagePut)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest as ADXRQ
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot as ADXRQSL
import qualified Web.RTBBidder.Protocol.Adx.BidResponse as ADXRS
import qualified Web.RTBBidder.Protocol.Adx.BidResponse.Ad as ADXRSAD
import qualified Web.RTBBidder.Protocol.Adx.BidResponse.Ad.AdSlot as ADXRSSL

protocol :: RTBProtocol
protocol = RTBProtocol {
  rtbDecodeReq = decodeRequest
  , rtbEncodeRes = encodeResponse
  }

decodeRequest :: WAI.Request -> IO (Either String Request)
decodeRequest req = do
  protobufstr <- loadAllBody
  let adxreq = parseAdxreq . LBS.fromStrict $ protobufstr
      reqid = ADXRQ.id adxreq
      adslot = flip SEQ.index 0 $ ADXRQ.adslot adxreq
      slotid = ADXRQSL.id adslot
      width = flip SEQ.index 0 $ ADXRQSL.width adslot
      height = flip SEQ.index 0 $ ADXRQSL.height adslot
      banner = Banner
        { bannerW = Just $ fromIntegral width
        , bannerH = Just $ fromIntegral height
        }
      imp = Imp
        { impId = TX.pack . show $ slotid
        , impBanner = Just banner
        }
      rtbreq = Request
        { reqId = TX.pack . show $ reqid
        , reqImp = [imp]
        }

  return $ Right rtbreq
  where
    loadAllBody = loop ""
      where
        loop accum = do
          body <- WAI.requestBody req
          if BS.null body
            then return accum
            else loop (BS.append accum body)
    parseAdxreq input = case messageGet input of
      Right (r, _) -> r :: ADXRQ.BidRequest
      Left e -> error $ "[TODO] handle errors :" ++ show e

encodeResponse :: Response -> IO WAI.Response
encodeResponse bidres = return $ WAI.responseLBS NHT.status200 headers body
  where
    price = bidPrice . head . seatbidBid . head . resSeatbid $ bidres
    adslot = defaultValue {ADXRSSL.max_cpm_micros = floor (price * 1000000)}
    ad = defaultValue {ADXRSAD.adslot = SEQ.singleton adslot}
    res = defaultValue {ADXRS.ad = SEQ.singleton ad}
    body = messagePut res
    headers = [("Content-Type", "application/octet-stream")]
