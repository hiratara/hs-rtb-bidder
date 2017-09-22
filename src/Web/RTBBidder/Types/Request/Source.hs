{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Source (Source(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

data Source = Source
  { srcFd :: Maybe Int
  , srcTid :: Maybe TX.Text
  , srcPchain :: Maybe TX.Text
  , srcExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Source where
  parseJSON = AESON.withObject "source" $ \o -> do
    srcFd <- o .:? "fd"
    srcTid <- o .:? "tid"
    srcPchain <- o .:? "pchain"
    srcExt <- o .:? "ext"

    return Source{..}

instance AESON.ToJSON Source where
  toJSON Source{..} = AESON.object
    [ "fd" .= srcFd
    , "tid" .= srcTid
    , "pchain" .= srcPchain
    , "ext" .= srcExt
    ]
