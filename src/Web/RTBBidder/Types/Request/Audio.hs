{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Audio (Audio(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

import  Web.RTBBidder.Types.Request.Banner (Banner(..))

data Audio = Audio
  { audioMimes :: [TX.Text]
  , audioMinduration :: Maybe Int
  , audioMaxduration :: Maybe Int
  , audioProtocols :: Maybe Int
  , audioStartdelay :: Maybe Int
  , audioSequence :: Maybe Int
  , audioBattr :: [Int]
  , audioMaxextended :: Maybe Int
  , audioMinbitrate :: Maybe Int
  , audioMaxbitrate :: Maybe Int
  , audioDelivery :: [Int]
  , audioCompanionad :: [Banner]
  , audioApi :: [Int]
  , audioCompaniontype :: [Int]
  , audioMaxseq :: Maybe Int
  , audioFeed :: Maybe Int
  , audioStitched :: Maybe Int
  , audioNvol :: Maybe Int
  , audioExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Audio where
  parseJSON = AESON.withObject "audio" $ \o -> do
    audioMimes <- o .: "mimes"
    audioMinduration <- o .:? "minduration"
    audioMaxduration <- o .:? "maxduration"
    audioProtocols <- o .:? "protocols"
    audioStartdelay <- o .:? "startdelay"
    audioSequence <- o .:? "sequence"
    audioBattr <- o .:? "battr" .!= []
    audioMaxextended <- o .:? "maxextended"
    audioMinbitrate <- o .:? "minbitrate"
    audioMaxbitrate <- o .:? "maxbitrate"
    audioDelivery <- o .:? "delivery" .!= []
    audioCompanionad <- o .:? "companionad" .!= []
    audioApi <- o .:? "api" .!= []
    audioCompaniontype <- o .:? "companiontype" .!= []
    audioMaxseq <- o .:? "maxseq"
    audioFeed <- o .:? "feed"
    audioStitched <- o .:? "stitched"
    audioNvol <- o .:? "nvol"
    audioExt <- o .:? "ext"

    return Audio{..}

instance AESON.ToJSON Audio where
  toJSON Audio{..} = AESON.object
    [ "mimes" .= audioMimes
    , "minduration" .= audioMinduration
    , "maxduration" .= audioMaxduration
    , "protocols" .= audioProtocols
    , "startdelay" .= audioStartdelay
    , "sequence" .= audioSequence
    , "battr" .= audioBattr
    , "maxextended" .= audioMaxextended
    , "minbitrate" .= audioMinbitrate
    , "maxbitrate" .= audioMaxbitrate
    , "delivery" .= audioDelivery
    , "companionad" .= audioCompanionad
    , "api" .= audioApi
    , "companiontype" .= audioCompaniontype
    , "maxseq" .= audioMaxseq
    , "feed" .= audioFeed
    , "stitched" .= audioStitched
    , "nvol" .= audioNvol
    , "ext" .= audioExt
    ]
