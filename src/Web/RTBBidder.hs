{-# LANGUAGE OverloadedStrings #-}
module Web.RTBBidder (bidderApp) where
import qualified Network.Wai as WAI
import qualified Network.HTTP.Types as NHT
import Control.Exception (bracket_)

bidderApp :: WAI.Application
bidderApp _ respond = bracket_ (return ()) (return ()) appmain
  where
    appmain = respond $ WAI.responseLBS NHT.status200 [] ""
