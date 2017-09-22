{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Segment (Segment(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

data Segment = Segment
  { segId :: Maybe TX.Text
  , segName :: Maybe TX.Text
  , segValue :: Maybe TX.Text
  , segExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Segment where
  parseJSON = AESON.withObject "segment" $ \o -> do
    segId <- o .:? "id"
    segName <- o .:? "name"
    segValue <- o .:? "value"
    segExt <- o .:? "ext"

    return Segment{..}

instance AESON.ToJSON Segment where
  toJSON Segment{..} = AESON.object
    [ "id" .= segId
    , "name" .= segName
    , "value" .= segValue
    , "ext" .= segExt
    ]
