{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Content (Content(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

import Web.RTBBidder.Types.Request.Data (Data(..))
import Web.RTBBidder.Types.Request.Producer (Producer(..))

data Content = Content
  { cntId :: Maybe TX.Text
  , cntEpisode :: Maybe Int
  , cntTitle :: Maybe TX.Text
  , cntSeries :: Maybe TX.Text
  , cntSeason :: Maybe TX.Text
  , cntArtist :: Maybe TX.Text
  , cntGenre :: Maybe TX.Text
  , cntAlbum :: Maybe TX.Text
  , cntIsrc :: Maybe TX.Text
  , cntProducer :: Maybe Producer
  , cntUrl :: Maybe TX.Text
  , cntCat :: [TX.Text]
  , cntProdq :: Maybe Int
  , cntVideoquality :: Maybe Int -- DEPRECATED
  , cntContext :: Maybe Int
  , cntConnnnnntentrating :: Maybe TX.Text
  , cntUserrating :: Maybe TX.Text
  , cntQagmediarating :: Maybe Int
  , cntKeywords :: Maybe TX.Text
  , cntLivestream :: Maybe Int
  , cntSourcerelationship :: Maybe Int
  , cntLen :: Maybe Int
  , cntLanguage :: Maybe TX.Text
  , cntEmbeddable :: Maybe Int
  , cntData :: [Data]
  , cntExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Content where
  parseJSON = AESON.withObject "content" $ \o -> do
    cntId <- o .:? "id"
    cntEpisode <- o .:? "episode"
    cntTitle <- o .:? "title"
    cntSeries <- o .:? "series"
    cntSeason <- o .:? "season"
    cntArtist <- o .:? "artist"
    cntGenre <- o .:? "genre"
    cntAlbum <- o .:? "album"
    cntIsrc <- o .:? "isrc"
    cntProducer <- o .:? "producer"
    cntUrl <- o .:? "url"
    cntCat <- o .:? "cat" .!= []
    cntProdq <- o .:? "prodq"
    cntVideoquality <- o .:? "videoquality"
    cntContext <- o .:? "context"
    cntConnnnnntentrating <- o .:? "contentrating"
    cntUserrating <- o .:? "userrating"
    cntQagmediarating <- o .:? "qagmediarating"
    cntKeywords <- o .:? "keywords"
    cntLivestream <- o .:? "livestream"
    cntSourcerelationship <- o .:? "sourcerelationship"
    cntLen <- o .:? "len"
    cntLanguage <- o .:? "language"
    cntEmbeddable <- o .:? "embeddable"
    cntData <- o .:? "data" .!= []
    cntExt <- o .:? "ext"

    return Content{..}

instance AESON.ToJSON Content where
  toJSON Content{..} = AESON.object
    [ "id" .= cntId
    , "episode" .= cntEpisode
    , "title" .= cntTitle
    , "series" .= cntSeries
    , "season" .= cntSeason
    , "artist" .= cntArtist
    , "genre" .= cntGenre
    , "album" .= cntAlbum
    , "isrc" .= cntIsrc
    , "producer" .= cntProducer
    , "url" .= cntUrl
    , "cat" .= cntCat
    , "prodq" .= cntProdq
    , "videoquality" .= cntVideoquality
    , "context" .= cntContext
    , "contentrating" .= cntConnnnnntentrating
    , "userrating" .= cntUserrating
    , "qagmediarating" .= cntQagmediarating
    , "keywords" .= cntKeywords
    , "livestream" .= cntLivestream
    , "sourcerelationship" .= cntSourcerelationship
    , "len" .= cntLen
    , "language" .= cntLanguage
    , "embeddable" .= cntEmbeddable
    , "data" .= cntData
    , "ext" .= cntExt
    ]
