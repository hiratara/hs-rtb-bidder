{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Deal (Deal(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

data Deal = Deal
  { dealId :: TX.Text
  , dealBidfloor :: Double
  , dealBidfloorcur :: TX.Text
  , dealAt :: Maybe Int
  , dealWseat :: [TX.Text]
  , dealWadomain :: [TX.Text]
  , dealExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Deal where
  parseJSON = AESON.withObject "deal" $ \o -> do
    dealId <- o .: "id"
    dealBidfloor <- o .:? "bidfloor" .!= 0.0
    dealBidfloorcur <- o .:? "bidfloorcur" .!= "USD"
    dealAt <- o .:? "at"
    dealWseat <- o .:? "wseat" .!= []
    dealWadomain <- o .:? "wadomain" .!= []
    dealExt <- o .:? "ext"

    return Deal{..}

instance AESON.ToJSON Deal where
  toJSON Deal{..} = AESON.object
    [ "id" .= dealId
    , "bidfloor" .= dealBidfloor
    , "bidfloorcur" .= dealBidfloorcur
    , "at" .= dealAt
    , "wseat" .= dealWseat
    , "wadomain" .= dealWadomain
    , "ext" .= dealExt
    ]
