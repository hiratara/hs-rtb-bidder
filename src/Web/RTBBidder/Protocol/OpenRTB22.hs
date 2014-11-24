{-# LANGUAGE OverloadedStrings #-}
module Web.RTBBidder.Protocol.OpenRTB22 (
    decodeRequest
  , encodeResponse
  , BidRequest(..)
  , BidResponse(..)
) where

import qualified Network.Wai as WAI
import qualified Network.HTTP.Types as NHT

data BidRequest = BidRequest
data BidResponse = BidResponse

decodeRequest :: WAI.Request -> BidRequest
decodeRequest _ = BidRequest

encodeResponse :: BidResponse -> WAI.Response
encodeResponse _ = WAI.responseLBS NHT.status200 [] ""
