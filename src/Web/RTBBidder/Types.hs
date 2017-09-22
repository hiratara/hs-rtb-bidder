{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types (
    Banner(..)
  , Imp(..)
  , Request(..)
  , Bid(..)
  , SeatBid(..)
  , Response(..)
  , Bidder
  , RTBProtocol(..)
) where
import qualified Network.Wai as WAI
import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Aeson.TH as AESON
import Data.Char (toLower)
import qualified Data.Text as TX

import Web.RTBBidder.Types.Request (Request(..))
import Web.RTBBidder.Types.Request.Imp (Imp(..))
import Web.RTBBidder.Types.Request.Banner (Banner(..))
import Web.RTBBidder.Types.Response (Response(..))
import Web.RTBBidder.Types.Response.Bid (Bid(..))
import Web.RTBBidder.Types.Response.SeatBid (SeatBid(..))

type Bidder = Request -> IO Response

data RTBProtocol = RTBProtocol {
  rtbDecodeReq :: WAI.Request -> IO (Either String Request)
  , rtbEncodeRes :: Response -> IO WAI.Response
  }
