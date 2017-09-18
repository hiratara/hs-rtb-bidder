{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Publisher (Publisher(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

import Web.RTBBidder.Types.Request.Content (Content(..))

data Publisher = Publisher
  { pubId :: Maybe TX.Text
  , pubName :: Maybe TX.Text
  , pubCat :: [TX.Text]
  , pubDomain :: Maybe TX.Text
  , pubExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Publisher where
  parseJSON = AESON.withObject "publisher" $ \o -> do
    pubId <- o .:? "id"
    pubName <- o .:? "name"
    pubCat <- o .:? "cat" .!= []
    pubDomain <- o .:? "domain"
    pubExt <- o .:? "ext"

    return Publisher{..}

instance AESON.ToJSON Publisher where
  toJSON Publisher{..} = AESON.object
    [ "id" .= pubId
    , "name" .= pubName
    , "cat" .= pubCat
    , "domain" .= pubDomain
    , "ext" .= pubExt
    ]
