{-# LANGUAGE OverloadedStrings, LambdaCase, RecordWildCards #-}
module Web.RTBBidder (bidderApp) where
import qualified Network.Wai as WAI
import Control.Exception (bracket_)
import qualified Web.RTBBidder.Types as WRB

bidderApp :: WRB.RTBProtocol -> WRB.Bidder -> WAI.Application
bidderApp WRB.RTBProtocol{..} bidder httpreq cont = do
  bracket_ (return ()) (return ()) appmain
  where
    appmain = do
      bidreq <- rtbDecodeReq httpreq >>= \case
        Right r -> return r
        Left l -> error $ "[TODO] implement error handling: " ++ l
      bidres <- bidder bidreq
      httpres <- rtbEncodeRes bidres
      cont httpres
