{-# LANGUAGE OverloadedStrings #-}
module Main (main) where
import Network.Wai.Test
import qualified Web.RTBBidder.Protocol.Adx.BidRequest as ADX
import Text.ProtocolBuffers (messagePut)
import Text.ProtocolBuffers.Header (defaultValue)
import Web.RTBBidder (bidderApp)
import qualified Web.RTBBidder.Protocol.OpenRTB22 as ORTB22
import qualified Web.RTBBidder.Protocol.Adx as ADX
import Data.ByteString.Lazy.Char8 (pack)
import qualified Web.RTBBidder.Types as WRB

bidder :: WRB.Request -> IO WRB.Response
bidder bidreq = return res
  where
    res = WRB.Response
      { WRB.resId = WRB.reqId bidreq
      , WRB.resSeatbid = [seatbid]
      , WRB.resBidid = Nothing
      , WRB.resCur = "USD"
      , WRB.resCustomdata = Nothing
      , WRB.resNbr = Nothing
      , WRB.resExt = Nothing
      }
    imp = head . WRB.reqImp $ bidreq
    bid = WRB.Bid
            { WRB.bidId = "TODO_MAKING_UNIQUE_ID"
            , WRB.bidImpid = (WRB.impId imp)
            , WRB.bidPrice = 100.0
            , WRB.bidAdid = Nothing
            , WRB.bidNurl = Nothing
            , WRB.bidAdm = Nothing
            , WRB.bidAdomain = []
            , WRB.bidBundle = Nothing
            , WRB.bidIurl = Nothing
            , WRB.bidCid = Nothing
            , WRB.bidCrid = Nothing
            , WRB.bidCat = []
            , WRB.bidAttr = []
            , WRB.bidApi = Nothing
            , WRB.bidProtocol = Nothing
            , WRB.bidQagmediarating = Nothing
            , WRB.bidDealid = Nothing
            , WRB.bidW = Nothing
            , WRB.bidH = Nothing
            , WRB.bidExp = Nothing
            , WRB.bidExt = Nothing
     }
    seatbid = WRB.SeatBid
      { WRB.seatbidBid = [bid]
      , WRB.seatbidSeat = Nothing
      , WRB.seatbidGroup = 0
      , WRB.seatbidExt = Nothing
      }

testOpenRTB' :: String -> IO ()
testOpenRTB' bidReqFile = do
  jsonstr <- readFile bidReqFile
  runSession (test jsonstr) (bidderApp ORTB22.protocol bidder)
  where
    test jsonstr = do
      res <- srequest (SRequest defaultRequest (pack jsonstr))
      assertStatus 200 res
      assertBodyContains "\"80ce30c53c16e6ede735f123ef6e32361bfc7b22\"" res

testOpenRTB22 :: IO ()
testOpenRTB22 = testOpenRTB' "test/asset/openrtb22.json"

testOpenRTB24 :: IO ()
testOpenRTB24 = testOpenRTB' "test/asset/openrtb24.json"

testOpenRTB24Native :: IO ()
testOpenRTB24Native = testOpenRTB' "test/asset/openrtb24-native.json"

testOpenRTB24PMP :: IO ()
testOpenRTB24PMP = testOpenRTB' "test/asset/openrtb24-pmp.json"

testOpenRTB24Video :: IO ()
testOpenRTB24Video = testOpenRTB' "test/asset/openrtb24-video.json"

testOpenRTB24Mobile :: IO ()
testOpenRTB24Mobile = testOpenRTB' "test/asset/openrtb24-mobile.json"

testOpenRTB24Expandable :: IO ()
testOpenRTB24Expandable = testOpenRTB' "test/asset/openrtb24-expandable.json"

testAdx :: IO ()
testAdx = do
  let req = defaultValue :: ADX.BidRequest
  runSession (test (messagePut req)) (bidderApp ADX.protocol bidder)
  where
    test protobufstr = do
      res <- srequest (SRequest defaultRequest protobufstr)
      assertStatus 200 res

main :: IO ()
main = do
  testOpenRTB22
  testOpenRTB24
  testOpenRTB24Native
  testOpenRTB24PMP
  testOpenRTB24Video
  testOpenRTB24Mobile
  testOpenRTB24Expandable
  testAdx
