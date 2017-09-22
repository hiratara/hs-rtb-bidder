{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Imp (Imp(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

import Web.RTBBidder.Types.Request.Audio (Audio(..))
import Web.RTBBidder.Types.Request.Banner (Banner(..))
import Web.RTBBidder.Types.Request.Metric (Metric(..))
import Web.RTBBidder.Types.Request.Native (Native(..))
import Web.RTBBidder.Types.Request.Pmp (Pmp(..))
import Web.RTBBidder.Types.Request.Video (Video(..))

data Imp = Imp {
  impId :: TX.Text
  , impMetric :: [Metric]
  , impBanner :: Maybe Banner
  , impVideo :: Maybe Video
  , impAudio :: Maybe Audio
  , impNative :: Maybe Native
  , impPmp :: Maybe Pmp
  , impDisplaymanager :: Maybe TX.Text
  , impDisplaymanagerver :: Maybe TX.Text
  , impInstl :: Int
  , impTagid :: Maybe TX.Text
  , impBidFloor :: Double
  , impBidFloorcur :: TX.Text
  , impClickbrowser :: Maybe Int
  , impSecure :: Maybe Int
  , impIframebuster :: [TX.Text]
  , impExp :: Maybe Int
  , impExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Imp where
  parseJSON = AESON.withObject "imp" $ \o -> do
    impId <- o .: "id"
    impMetric <- o .:? "metric" .!= []
    impBanner <- o .:? "banner"
    impVideo <- o .:? "video"
    impAudio <- o .:? "audio"
    impNative <- o .:? "native"
    impPmp <- o .:? "pmp"
    impDisplaymanager <- o .:? "displaymanager"
    impDisplaymanagerver <- o .:? "displaymanagerver"
    impInstl <- o .:? "instl" .!= 0
    impTagid <- o .:? "tagid"
    impBidFloor <- o .:? "bidfloor" .!= 0.0
    impBidFloorcur <- o .:? "bidfloorcur" .!= "USD"
    impClickbrowser <- o .:? "clickbrowser"
    impSecure <- o .:? "secure"
    impIframebuster <- o .:? "iframebuster" .!= []
    impExp <- o .:? "exp"
    impExt <- o .:? "ext"

    return Imp{..}

instance AESON.ToJSON Imp where
  toJSON Imp{..} = AESON.object
    [ "id" .= impId
    , "metric" .= impMetric
    , "banner" .= impBanner
    , "video" .= impVideo
    , "audio" .= impAudio
    , "native" .= impNative
    , "pmp" .= impPmp
    , "displaymanager" .= impDisplaymanager
    , "displaymanagerver" .= impDisplaymanagerver
    , "instl" .= impInstl
    , "tagid" .= impTagid
    , "bidfloor" .= impBidFloor
    , "bidfloorcur" .= impBidFloorcur
    , "clickbrowser" .= impClickbrowser
    , "secure" .= impSecure
    , "iframebuster" .= impIframebuster
    , "exp" .= impExp
    , "ext" .= impExt
    ]
