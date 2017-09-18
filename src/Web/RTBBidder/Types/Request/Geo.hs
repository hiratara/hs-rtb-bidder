{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Geo (Geo(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

data Geo = Geo
  { geoLat :: Maybe Double
  , geoLon :: Maybe Double
  , geoType :: Maybe Int
  , geoAccuracy :: Maybe Int
  , geoLastfix :: Maybe Int
  , geoIpservice :: Maybe Int
  , geoCountry :: Maybe TX.Text
  , geoRegion :: Maybe TX.Text
  , geoRegionfips104 :: Maybe TX.Text
  , geoMetro :: Maybe TX.Text
  , geoCity :: Maybe TX.Text
  , geoZip :: Maybe TX.Text
  , geoUtcoffset :: Maybe Int
  , geoExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Geo where
  parseJSON = AESON.withObject "geo" $ \o -> do
    geoLat <- o .:? "lat"
    geoLon <- o .:? "lon"
    geoType <- o .:? "type"
    geoAccuracy <- o .:? "accuracy"
    geoLastfix <- o .:? "lastfix"
    geoIpservice <- o .:? "ipservice"
    geoCountry <- o .:? "country"
    geoRegion <- o .:? "region"
    geoRegionfips104 <- o .:? "regionfips104"
    geoMetro <- o .:? "metro"
    geoCity <- o .:? "city"
    geoZip <- o .:? "zip"
    geoUtcoffset <- o .:? "utcoffset"
    geoExt <- o .:? "ext"

    return Geo{..}

instance AESON.ToJSON Geo where
  toJSON Geo{..} = AESON.object
    [ "lat" .= geoLat
    , "lon" .= geoLon
    , "type" .= geoType
    , "accuracy" .= geoAccuracy
    , "lastfix" .= geoLastfix
    , "ipservice" .= geoIpservice
    , "country" .= geoCountry
    , "region" .= geoRegion
    , "regionfips104" .= geoRegionfips104
    , "metro" .= geoMetro
    , "city" .= geoCity
    , "zip" .= geoZip
    , "utcoffset" .= geoUtcoffset
    , "ext" .= geoExt
    ]
