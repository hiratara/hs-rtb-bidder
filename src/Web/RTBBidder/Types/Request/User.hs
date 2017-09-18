{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.User (User(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

import  Web.RTBBidder.Types.Request.Data (Data(..))
import  Web.RTBBidder.Types.Request.Geo (Geo(..))

data User = User
  { userId :: Maybe TX.Text
  , userBuyeruid :: Maybe TX.Text
  , userYob :: Maybe Int
  , userGender :: Maybe TX.Text
  , userKeywords :: Maybe TX.Text
  , userCustomdata :: Maybe TX.Text
  , userGeo :: Maybe Geo
  , userData :: [Data]
  , userExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON User where
  parseJSON = AESON.withObject "user" $ \o -> do
    userId <- o .:? "id"
    userBuyeruid <- o .:? "buyeruid"
    userYob <- o .:? "yob"
    userGender <- o .:? "gender"
    userKeywords <- o .:? "keywords"
    userCustomdata <- o .:? "customdata"
    userGeo <- o .:? "geo"
    userData <- o .:? "data" .!= []
    userExt <- o .:? "ext"

    return User{..}

instance AESON.ToJSON User where
  toJSON User{..} = AESON.object
    [ "id" .= userId
    , "buyeruid" .= userBuyeruid
    , "yob" .= userYob
    , "gender" .= userGender
    , "keywords" .= userKeywords
    , "customdata" .= userCustomdata
    , "geo" .= userGeo
    , "data" .= userData
    , "ext" .= userExt
    ]
