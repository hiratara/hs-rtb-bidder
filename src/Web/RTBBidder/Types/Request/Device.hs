{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Device (Device(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

import Web.RTBBidder.Types.Request.Geo (Geo(..))

data Device = Device
  { devUa :: Maybe TX.Text
  , devGeo :: Maybe Geo
  , devDnt :: Maybe Int
  , devLmt :: Maybe Int
  , devIp :: Maybe TX.Text
  , devIpv6 :: Maybe TX.Text
  , devDevicetype :: Maybe Int
  , devMake :: Maybe TX.Text
  , devModel :: Maybe TX.Text
  , devOs :: Maybe TX.Text
  , devOsv :: Maybe TX.Text
  , devHwv :: Maybe TX.Text
  , devH :: Maybe Int
  , devW :: Maybe Int
  , devPpi :: Maybe Int
  , devPxratio :: Maybe Double
  , devJs :: Maybe Int
  , devGeofetch :: Maybe Int
  , devFlashver :: Maybe TX.Text
  , devLanguage :: Maybe TX.Text
  , devCarrier :: Maybe TX.Text
  , devMcccmnc :: Maybe TX.Text
  , devConnectiontype :: Maybe Int
  , devIfa :: Maybe TX.Text
  , devDidsha1 :: Maybe TX.Text
  , devDidmd5 :: Maybe TX.Text
  , devDpidsha1 :: Maybe TX.Text
  , devDpidmd5 :: Maybe TX.Text
  , devMacsha1 :: Maybe TX.Text
  , devMacmd5 :: Maybe TX.Text
  , devExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Device where
  parseJSON = AESON.withObject "device" $ \o -> do
    devUa <- o .:? "ua"
    devGeo <- o .:? "geo"
    devDnt <- o .:? "dnt"
    devLmt <- o .:? "lmt"
    devIp <- o .:? "ip"
    devIpv6 <- o .:? "ipv6"
    devDevicetype <- o .:? "devicetype"
    devMake <- o .:? "make"
    devModel <- o .:? "model"
    devOs <- o .:? "os"
    devOsv <- o .:? "osv"
    devHwv <- o .:? "hwv"
    devH <- o .:? "h"
    devW <- o .:? "w"
    devPpi <- o .:? "ppi"
    devPxratio <- o .:? "pxratio"
    devJs <- o .:? "js"
    devGeofetch <- o .:? "geofetch"
    devFlashver <- o .:? "flashver"
    devLanguage <- o .:? "language"
    devCarrier <- o .:? "carrier"
    devMcccmnc <- o .:? "mccmnc"
    devConnectiontype <- o .:? "connectiontype"
    devIfa <- o .:? "ifa"
    devDidsha1 <- o .:? "didsha1"
    devDidmd5 <- o .:? "didmd5"
    devDpidsha1 <- o .:? "dpidsha1"
    devDpidmd5 <- o .:? "dpidmd5"
    devMacsha1 <- o .:? "macsha1"
    devMacmd5 <- o .:? "macmd5"
    devExt <- o .:? "ext"

    return Device{..}

instance AESON.ToJSON Device where
  toJSON Device{..} = AESON.object
    [ "ua" .= devUa
    , "geo" .= devGeo
    , "dnt" .= devDnt
    , "lmt" .= devLmt
    , "ip" .= devIp
    , "ipv6" .= devIpv6
    , "devicetype" .= devDevicetype
    , "make" .= devMake
    , "model" .= devModel
    , "os" .= devOs
    , "osv" .= devOsv
    , "hwv" .= devHwv
    , "h" .= devH
    , "w" .= devW
    , "ppi" .= devPpi
    , "pxratio" .= devPxratio
    , "js" .= devJs
    , "geofetch" .= devGeofetch
    , "flashver" .= devFlashver
    , "language" .= devLanguage
    , "carrier" .= devCarrier
    , "mccmnc" .= devMcccmnc
    , "connectiontype" .= devConnectiontype
    , "ifa" .= devIfa
    , "didsha1" .= devDidsha1
    , "didmd5" .= devDidmd5
    , "dpidsha1" .= devDpidsha1
    , "dpidmd5" .= devDpidmd5
    , "macsha1" .= devMacsha1
    , "macmd5" .= devMacmd5
    , "ext" .= devExt
    ]
