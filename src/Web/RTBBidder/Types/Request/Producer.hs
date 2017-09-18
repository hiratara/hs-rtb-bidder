{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Producer (Producer(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

data Producer = Producer
  { proId :: Maybe TX.Text
  , proName :: Maybe TX.Text
  , proCat :: [TX.Text]
  , proDomain :: Maybe TX.Text
  , proExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Producer where
  parseJSON = AESON.withObject "producer" $ \o -> do
    proId <- o .:? "id"
    proName <- o .:? "name"
    proCat <- o .:? "cat" .!= []
    proDomain <- o .:? "domain"
    proExt <- o .:? "ext"

    return Producer{..}

instance AESON.ToJSON Producer where
  toJSON Producer{..} = AESON.object
    [ "id" .= proId
    , "name" .= proName
    , "cat" .= proCat
    , "domain" .= proDomain
    , "ext" .= proExt
    ]
