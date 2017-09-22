{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.App (App(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

import  Web.RTBBidder.Types.Request.Content (Content(..))
import  Web.RTBBidder.Types.Request.Publisher (Publisher(..))

data App = App
  { appId :: TX.Text
  , appName :: Maybe TX.Text
  , appBundle :: Maybe TX.Text
  , appDomain :: Maybe TX.Text
  , appStoreurl :: Maybe TX.Text
  , appCat :: [TX.Text]
  , appSectioncat :: [TX.Text]
  , appPagecat :: [TX.Text]
  , appVer :: Maybe TX.Text
  , appPrivacypolicy :: Maybe Integer
  , appPaid :: Maybe Integer
  , appPublisher :: Maybe Publisher
  , appContent :: Maybe Content
  , appKeywords :: Maybe TX.Text
  , appExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON App where
  parseJSON = AESON.withObject "app" $ \o -> do
    appId <- o .: "id"
    appName <- o .:? "name"
    appBundle <- o .:? "bundle"
    appDomain <- o .:? "domain"
    appStoreurl <- o .:? "storeurl"
    appCat <- o .:? "cat" .!= []
    appSectioncat <- o .:? "sectioncat" .!= []
    appPagecat <- o .:? "pagecat" .!= []
    appVer <- o .:? "ver"
    appPrivacypolicy <- o .:? "privacypolicy"
    appPaid <- o .:? "paid"
    appPublisher <- o .:? "publisher"
    appContent <- o .:? "content"
    appKeywords <- o .:? "keywords"
    appExt <- o .:? "ext"

    return App{..}

instance AESON.ToJSON App where
  toJSON App{..} = AESON.object
    [ "id" .= appId
    , "name" .= appName
    , "bundle" .= appBundle
    , "domain" .= appDomain
    , "storeurl" .= appStoreurl
    , "cat" .= appCat
    , "sectioncat" .= appSectioncat
    , "pagecat" .= appPagecat
    , "ver" .= appVer
    , "privacypolicy" .= appPrivacypolicy
    , "paid" .= appPaid
    , "publisher" .= appPublisher
    , "content" .= appContent
    , "keywords" .= appKeywords
    , "ext" .= appExt
    ]
