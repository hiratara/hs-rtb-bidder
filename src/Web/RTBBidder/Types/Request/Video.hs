{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Video (Video(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

import  Web.RTBBidder.Types.Request.Banner (Banner(..))

data Video = Video
  { videoMimes :: [TX.Text]
  , videoMinduration :: Maybe Int
  , videoMaxduration :: Maybe Int
  , videoProtocols :: [Int]
  , videoProtocol :: Maybe Int -- DEPRECATED
  , videoW :: Maybe Int
  , videoH :: Maybe Int
  , videoStartdelay :: Maybe Int
  , videoPlacement :: Maybe Int
  , videoLinearity :: Maybe Int
  , videoSkip :: Maybe Int
  , videoSkipmin :: Int
  , videoSkipafter :: Int
  , videoSequence :: Maybe Int
  , videoBattr :: [Int]
  , videoMaxextendeded :: Maybe Int
  , videoMinbitrate :: Maybe Int
  , videoMaxbitrate :: Maybe Int
  , videoBoxingallowed :: Int
  , videoPlaybackmethod :: [Int]
  , videoPlaybackend :: Maybe Int
  , videoDelivery :: [Int]
  , videoPos :: Maybe Int
  , videoCompanionad :: [Banner]
  , videoApi :: [Int]
  , videoCompaniontype :: [Int]
  , videoExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Video where
  parseJSON = AESON.withObject "video" $ \o -> do
    videoMimes <- o .: "mimes"
    videoMinduration <- o .:? "minduration"
    videoMaxduration <- o .:? "maxduration"
    videoProtocols <- o .:? "protocols" .!= []
    videoProtocol <- o .:? "protocol"
    videoW <- o .:? "w"
    videoH <- o .:? "h"
    videoStartdelay <- o .:? "startdelay"
    videoPlacement <- o .:? "placement"
    videoLinearity <- o .:? "linearity"
    videoSkip <- o .:? "skip"
    videoSkipmin <- o .:? "skipmin" .!= 0
    videoSkipafter <- o .:? "skipafter" .!= 0
    videoSequence <- o .:? "sequence"
    videoBattr <- o .:? "battr" .!= []
    videoMaxextendeded <- o .:? "maxextended"
    videoMinbitrate <- o .:? "minbitrate"
    videoMaxbitrate <- o .:? "maxbitrate"
    videoBoxingallowed <- o .:? "boxingallowed" .!= 1
    videoPlaybackmethod <- o .:? "playbackmethod" .!= []
    videoPlaybackend <- o .:? "playbackend"
    videoDelivery <- o .:? "delivery" .!= []
    videoPos <- o .:? "pos"
    videoCompanionad <- o .:? "companionad" .!= []
    videoApi <- o .:? "api" .!= []
    videoCompaniontype <- o .:? "companiontype" .!= []
    videoExt <-  o .:? "ext"

    return Video{..}

instance AESON.ToJSON Video where
  toJSON Video{..} = AESON.object
    [ "mimes" .= videoMimes
    , "minduration" .= videoMinduration
    , "maxduration" .= videoMaxduration
    , "protocols" .= videoProtocols
    , "protocol" .= videoProtocol
    , "w" .= videoW
    , "h" .= videoH
    , "startdelay" .= videoStartdelay
    , "placement" .= videoPlacement
    , "linearity" .= videoLinearity
    , "skip" .= videoSkip
    , "skipmin" .= videoSkipmin
    , "skipafter" .= videoSkipafter
    , "sequence" .= videoSequence
    , "battr" .= videoBattr
    , "maxextended" .= videoMaxextendeded
    , "minbitrate" .= videoMinbitrate
    , "maxbitrate" .= videoMaxbitrate
    , "boxingallowed" .= videoBoxingallowed
    , "playbackmethod" .= videoPlaybackmethod
    , "playbackend" .= videoPlaybackend
    , "delivery" .= videoDelivery
    , "pos" .= videoPos
    , "companionad" .= videoCompanionad
    , "api" .= videoApi
    , "companiontype" .= videoCompaniontype
    , "ext" .= videoExt
    ]
