{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Site (Site(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

import Web.RTBBidder.Types.Request.Content (Content(..))
import Web.RTBBidder.Types.Request.Publisher (Publisher(..))

data Site = Site
  { siteId :: Maybe TX.Text
  , siteName :: Maybe TX.Text
  , siteDomain :: Maybe TX.Text
  , siteCat :: [TX.Text]
  , siteSectionCat :: [TX.Text]
  , sitePagecat :: [TX.Text]
  , sitePage :: Maybe TX.Text
  , siteRef :: Maybe TX.Text
  , siteSearch :: Maybe TX.Text
  , siteMobile :: Maybe Int
  , sitePrivacypolicy :: Maybe Int
  , sitePublisher :: Maybe Publisher
  , siteContent :: Maybe Content
  , siteKeywords :: Maybe TX.Text
  , siteExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Site where
  parseJSON = AESON.withObject "site" $ \o -> do
    siteId <- o .:? "id"
    siteName <- o .:? "name"
    siteDomain <- o .:? "domain"
    siteCat <- o .:? "cat" .!= []
    siteSectionCat <- o .:? "sectioncat" .!= []
    sitePagecat <- o .:? "pagecat" .!= []
    sitePage <- o .:? "page"
    siteRef <- o .:? "ref"
    siteSearch <- o .:? "search"
    siteMobile <- o .:? "mobile"
    sitePrivacypolicy <- o .:? "privacypolicy"
    sitePublisher <- o .:? "publishser"
    siteContent <- o .:? "content"
    siteKeywords <- o .:? "keywords"
    siteExt <- o .:? "ext"

    return Site{..}

instance AESON.ToJSON Site where
  toJSON Site{..} = AESON.object
    [ "id" .= siteId
    , "name" .= siteName
    , "domain" .= siteDomain
    , "cat" .= siteCat
    , "sectioncat" .= siteSectionCat
    , "pagecat" .= sitePagecat
    , "page" .= sitePage
    , "ref" .= siteRef
    , "search" .= siteSearch
    , "mobile" .= siteMobile
    , "privacypolicy" .= sitePrivacypolicy
    , "publishser" .= sitePublisher
    , "content" .= siteContent
    , "keywords" .= siteKeywords
    , "ext" .= siteExt
    ]
