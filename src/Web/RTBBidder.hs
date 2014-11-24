{-# LANGUAGE OverloadedStrings #-}
module Web.RTBBidder (bidderApp) where
import qualified Network.Wai as WAI
import Control.Exception (bracket_)
import qualified Web.RTBBidder.Protocol.OpenRTB22 as ORTB2

bidderApp :: WAI.Application
bidderApp req respond = bracket_ (return ()) (return ()) appmain
  where
    appmain = do
      let _ = ORTB2.decodeRequest req
      let res = ORTB2.encodeResponse (ORTB2.BidResponse)
      respond res
