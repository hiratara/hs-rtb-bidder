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
bidder bidreq = return $ WRB.Response (WRB.reqId bidreq) [seatbid]
  where
    imp = head . WRB.reqImp $ bidreq
    bid = WRB.Bid "TODO_MAKING_UNIQUE_ID" (WRB.impId imp) 100.0
    seatbid = WRB.SeatBid [bid]

testOpenRTB22 :: IO ()
testOpenRTB22 = do
  jsonstr <- readFile "test/asset/openrtb22.json"
  runSession (test jsonstr) (bidderApp ORTB22.protocol bidder)
  where
    test jsonstr = do
      res <- srequest (SRequest defaultRequest (pack jsonstr))
      assertStatus 200 res
      assertBodyContains "\"80ce30c53c16e6ede735f123ef6e32361bfc7b22\"" res

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
  testAdx
