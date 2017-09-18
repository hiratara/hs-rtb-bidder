{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Data (Data(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

import Web.RTBBidder.Types.Request.Segment (Segment(..))

data Data = Data
  { dataId :: Maybe TX.Text
  , dataName :: Maybe TX.Text
  , dataSegment :: [Segment]
  , dataExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Data where
  parseJSON = AESON.withObject "data" $ \o -> do
    dataId <- o .:? "id"
    dataName <- o .:? "name"
    dataSegment <- o .:? "segment" .!= []
    dataExt <- o .:? "ext"

    return Data{..}

instance AESON.ToJSON Data where
  toJSON Data{..} = AESON.object
    [ "id" .= dataId
    , "name" .= dataName
    , "segment" .= dataSegment
    , "ext" .= dataExt
    ]
