{-# LANGUAGE OverloadedStrings #-}
module Web.RTBBidder.Protocol.OpenRTB22 (
  Banner(..)
  , Imp(..)
  , Request(..)
  , Bid(..)
  , SeatBid(..)
  , Response(..)
  , protocol
) where

import qualified Data.Aeson as AESON
import qualified Network.Wai as WAI
import qualified Network.HTTP.Types as NHT
import qualified Data.ByteString as BS
import qualified Data.ByteString.Lazy as LBS
import Web.RTBBidder.Types

protocol :: RTBProtocol
protocol = RTBProtocol {
  rtbDecodeReq = decodeRequest
  , rtbEncodeRes = encodeResponse
  }

decodeRequest :: WAI.Request -> IO (Either String Request)
decodeRequest req = do
  jsonstr <- loadAllBody
  return $ AESON.eitherDecode (LBS.fromStrict jsonstr)
  where
    loadAllBody = loop ""
      where
        loop accum = do
          body <- WAI.requestBody req
          if BS.null body
            then return accum
            else loop (BS.append accum body)

encodeResponse :: Response -> IO WAI.Response
encodeResponse bidres = return $ WAI.responseLBS NHT.status200 headers body
  where
    body = AESON.encode bidres
    headers = [("Content-Type", "application/json")
              , ("X-OpenRTB-Version", "2.2")]
