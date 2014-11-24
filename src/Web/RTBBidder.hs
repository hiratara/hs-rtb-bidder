{-# LANGUAGE OverloadedStrings, LambdaCase #-}
module Web.RTBBidder (bidderApp) where
import qualified Network.Wai as WAI
import Control.Exception (bracket_)
import qualified Web.RTBBidder.Protocol.OpenRTB22 as ORTB22

bidder :: ORTB22.Request -> IO ORTB22.Response
bidder bidreq = return $ ORTB22.Response (ORTB22.reqId bidreq) [seatbid]
  where
    imp = head . ORTB22.reqImp $ bidreq
    bid = ORTB22.Bid "TODO_MAKING_UNIQUE_ID" (ORTB22.impId imp) 100.0
    seatbid = ORTB22.SeatBid [bid]

bidderApp :: WAI.Application
bidderApp httpreq cont = bracket_ (return ()) (return ()) appmain
  where
    appmain = do
      bidreq <- ORTB22.decodeRequest httpreq >>= \case
        Right r -> return r
        Left l -> error $ "[TODO] implement error handling: " ++ l
      bidres <- bidder bidreq
      httpres <- ORTB22.encodeResponse bidres
      cont httpres
