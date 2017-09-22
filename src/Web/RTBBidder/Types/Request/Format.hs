{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Format (Format(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

data Format = Format
  { fmtW :: Maybe Int
  , fmtH :: Maybe Int
  , fmtWratio :: Maybe Int
  , fmtHratio :: Maybe Int
  , fmtWmin :: Maybe Int
  , fmtExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Format where
  parseJSON = AESON.withObject "format" $ \o -> do
    fmtW <- o .:? "w"
    fmtH <- o .:? "h"
    fmtWratio <- o .:? "wratio"
    fmtHratio <- o .:? "hratio"
    fmtWmin <- o .:? "wmin"
    fmtExt <- o .:? "ext"

    return Format{..}

instance AESON.ToJSON Format where
  toJSON Format{..} = AESON.object
    [ "w" .= fmtW
    , "h" .= fmtH
    , "wratio" .= fmtWratio
    , "hratio" .= fmtHratio
    ,  "wmin" .= fmtWmin
    , "ext" .= fmtExt
    ]
