{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Response.Bid (Bid(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

data Bid = Bid
  { bidId :: TX.Text
  , bidImpid :: TX.Text
  , bidPrice :: Double
  , bidAdid :: Maybe TX.Text
  , bidNurl :: Maybe TX.Text
  , bidAdm :: Maybe TX.Text
  , bidAdomain :: [TX.Text]
  , bidBundle :: Maybe TX.Text
  , bidIurl :: Maybe TX.Text
  , bidCid :: Maybe TX.Text
  , bidCrid :: Maybe TX.Text
  , bidCat :: [TX.Text]
  , bidAttr :: [Int]
  , bidApi :: Maybe Int
  , bidProtocol :: Maybe Int
  , bidQagmediarating :: Maybe Int
  , bidDealid :: Maybe TX.Text
  , bidW :: Maybe Int
  , bidH :: Maybe Int
  , bidExp :: Maybe Int
  , bidExt :: Maybe AESON.Value
  }

instance AESON.FromJSON Bid where
  parseJSON = AESON.withObject "bid" $ \o -> do
    bidId <- o .: "id"
    bidImpid <- o .: "impid"
    bidPrice <- o .: "price"
    bidAdid <- o .:? "adid"
    bidNurl <- o .:? "nurl"
    bidAdm <- o .:? "adm"
    bidAdomain <- o .:? "adomain" .!= []
    bidBundle <- o .:? "bundle"
    bidIurl <- o .:? "iurl"
    bidCid <- o .:? "cid"
    bidCrid <- o .:? "crid"
    bidCat <- o .:? "cat" .!= []
    bidAttr <- o .:? "attr" .!= []
    bidApi <- o .:? "api"
    bidProtocol <- o .:? "protocol"
    bidQagmediarating <- o .:? "qagmediarating"
    bidDealid <- o .:? "dealid"
    bidW <- o .:? "w"
    bidH <- o .:? "h"
    bidExp <- o .:? "exp"
    bidExt <- o .:? "ext"

    return Bid{..}

instance AESON.ToJSON Bid where
  toJSON Bid{..} = AESON.object
    [ "id" .= bidId
    , "impid" .= bidImpid
    , "price" .= bidPrice
    , "adid" .= bidAdid
    , "nurl" .= bidNurl
    , "adm" .= bidAdm
    , "adomain" .= bidAdomain
    , "bundle" .= bidBundle
    , "iurl" .= bidIurl
    , "cid" .= bidCid
    , "crid" .= bidCrid
    , "cat" .= bidCat
    , "attr" .= bidAttr
    , "api" .= bidApi
    , "protocol" .= bidProtocol
    , "qagmediarating" .= bidQagmediarating
    , "dealid" .= bidDealid
    , "w" .= bidW
    , "h" .= bidH
    , "exp" .= bidExp
    , "ext" .= bidExt
    ]
