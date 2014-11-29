{-# LANGUAGE OverloadedStrings, LambdaCase #-}
module Web.RTBBidder (bidderApp) where
import qualified Network.Wai as WAI
import Control.Exception (bracket_)
import qualified Web.RTBBidder.Protocol.OpenRTB22 as ORTB22
import qualified Web.RTBBidder.Types as WRB

bidderApp :: WRB.Bidder -> WAI.Application
bidderApp bidder httpreq cont = bracket_ (return ()) (return ()) appmain
  where
    appmain = do
      bidreq <- ORTB22.decodeRequest httpreq >>= \case
        Right r -> return r
        Left l -> error $ "[TODO] implement error handling: " ++ l
      bidres <- bidder bidreq
      httpres <- ORTB22.encodeResponse bidres
      cont httpres
