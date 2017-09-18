{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Banner (Banner(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

import Web.RTBBidder.Types.Request.Format (Format(..))

data Banner = Banner
  { bannerFormat :: [Format]
  , bannerW :: Maybe Int
  , bannerH :: Maybe Int
  , bannerWmax :: Maybe Int -- DEPRECATED
  , bannerHmax :: Maybe Int -- DEPRECATED
  , bannerWmin :: Maybe Int -- DEPRECATED
  , bannerHmin :: Maybe Int -- DEPRECATED
  , bannerBtype :: [Int]
  , bannerBattr :: [Int]
  , bannerPos :: Maybe Int
  , bannerMimes :: [TX.Text]
  , bannerTopframe :: Maybe Int
  , bannerExpdir :: [Int]
  , bannerApi :: [Int]
  , bannerId :: Maybe TX.Text
  , bannerVcm :: Maybe Int
  , bannerExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Banner where
  parseJSON = AESON.withObject "banner" $ \o -> do
    bannerFormat <- o .:? "format" .!= []
    bannerW <- o .:? "w"
    bannerH <- o .:? "h"
    bannerWmax <- o .:? "wmax"
    bannerHmax <- o .:? "hmax"
    bannerWmin <- o .:? "wmin"
    bannerHmin <- o .:? "hmin"
    bannerBtype <- o .:? "btype" .!= []
    bannerBattr <- o .:? "battr" .!= []
    bannerPos <-  o .:? "pos"
    bannerMimes <- o .:? "mimes" .!= []
    bannerTopframe <- o .:? "topframe"
    bannerExpdir <- o .:? "expdir" .!= []
    bannerApi <- o .:? "api" .!= []
    bannerId <- o .:? "id"
    bannerVcm <- o .:? "vcm"
    bannerExt <- o .:? "ext"

    return Banner{..}

instance AESON.ToJSON Banner where
  toJSON Banner{..} = AESON.object
    [ "format" .= bannerFormat
    , "w" .= bannerW
    , "h" .= bannerH
    , "wmax" .= bannerWmax
    , "hmax" .= bannerHmax
    , "wmin" .= bannerWmin
    , "hmin" .= bannerHmin
    , "btype" .= bannerBtype
    , "battr" .= bannerBattr
    , "pos" .= bannerPos
    , "mimes" .= bannerMimes
    , "topframe" .= bannerTopframe
    , "expdir" .= bannerExpdir
    , "api" .= bannerApi
    , "id" .= bannerId
    , "vcm" .= bannerVcm
    , "ext" .= bannerExt
    ]
