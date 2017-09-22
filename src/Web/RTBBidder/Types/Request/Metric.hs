{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Metric (Metric(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

data Metric = Metric
  { metType :: TX.Text
  , metValue :: Double
  , metVendor :: Maybe TX.Text
  , metExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Metric where
  parseJSON = AESON.withObject "metric" $ \o -> do
    metType <- o .: "type"
    metValue <- o .: "value"
    metVendor <- o .:? "vendor"
    metExt <- o .:? "ext"

    return Metric{..}

instance AESON.ToJSON Metric where
  toJSON Metric{..} = AESON.object
    [ "type" .= metType
    , "value" .= metValue
    , "vendor" .= metVendor
    , "ext" .= metExt
    ]
