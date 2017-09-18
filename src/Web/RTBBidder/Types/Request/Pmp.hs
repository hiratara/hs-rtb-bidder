{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Pmp (Pmp(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

import Web.RTBBidder.Types.Request.Deal (Deal(..))

data Pmp = Pmp
  { pmpPrivateAuction :: Int
  , pmpDeals :: [Deal]
  , pmpExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Pmp where
  parseJSON = AESON.withObject "pmp" $ \o -> do
    pmpPrivateAuction <- o .: "private_auction" .!= 0
    pmpDeals <- o .: "deals" .!= []
    pmpExt <- o .:? "ext"

    return Pmp{..}

instance AESON.ToJSON Pmp where
  toJSON Pmp{..} = AESON.object
    [ "private_auction" .= pmpPrivateAuction
    , "deals" .= pmpDeals
    , "ext" .= pmpExt
    ]
