{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request (Request(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

import  Web.RTBBidder.Types.Request.App (App(..))
import  Web.RTBBidder.Types.Request.Device (Device(..))
import  Web.RTBBidder.Types.Request.Imp (Imp(..))
import  Web.RTBBidder.Types.Request.Regs (Regs(..))
import  Web.RTBBidder.Types.Request.Site (Site(..))
import  Web.RTBBidder.Types.Request.Source (Source(..))
import  Web.RTBBidder.Types.Request.User (User(..))

data Request = Request {
  reqId :: TX.Text
  , reqImp :: [Imp]
  , reqSite :: Maybe Site
  , reqApp :: Maybe App
  , reqDevice :: Maybe Device
  , reqUser :: Maybe User
  , reqTest :: Int
  , reqAt :: Int
  , reqTmax :: Maybe Int
  , reqWseat :: [TX.Text]
  , reqBseat :: [TX.Text]
  , reqAllimps :: Int
  , reqCur :: [TX.Text]
  , reqWlang :: [TX.Text]
  , reqBcat :: [TX.Text]
  , reqBadv :: [TX.Text]
  , reqBapp :: [TX.Text]
  , reqSource :: Maybe Source
  , reqRegs :: Maybe Regs
  , reqExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Request where
  parseJSON = AESON.withObject "BidRequest" $ \o -> do
    reqId <- o .: "id"
    reqImp <- o .: "imp"
    reqSite <- o .:? "site"
    reqApp <- o .:? "app"
    reqDevice <- o .:? "device"
    reqUser <- o .:? "user"
    reqTest <- o .:? "test" .!= 0
    reqAt <- o .:? "at" .!= 2
    reqTmax <- o .:? "tmax"
    reqWseat <- o .:? "wseat" .!= []
    reqBseat <- o .:? "bseat" .!= []
    reqAllimps <- o .:? "allimps" .!= 0
    reqCur <- o .:? "cur" .!= []
    reqWlang <- o .:? "wlang" .!= []
    reqBcat <- o .:? "bcat" .!= []
    reqBadv <- o .:? "badv" .!= []
    reqBapp <- o .:? "bapp" .!= []
    reqSource <- o .:? "source"
    reqRegs <- o .:? "regs"
    reqExt <- o .:? "ext"

    return Request{..}

instance AESON.ToJSON Request where
  toJSON Request{..} = AESON.object
    [ "id" .= reqId
    , "imp" .= reqImp
    , "site" .= reqSite
    , "app" .= reqApp
    , "device" .= reqDevice
    , "user" .= reqUser
    , "test" .= reqTest
    , "at" .= reqAt
    , "tmax" .= reqTmax
    , "wseat" .= reqWseat
    , "bseat" .= reqBseat
    , "allimps" .= reqAllimps
    , "cur" .= reqCur
    , "wlang" .= reqWlang
    , "bcat" .= reqBcat
    , "badv" .= reqBadv
    , "bapp" .= reqBapp
    , "source" .= reqSource
    , "regs" .= reqRegs
    , "ext" .= reqExt
    ]
