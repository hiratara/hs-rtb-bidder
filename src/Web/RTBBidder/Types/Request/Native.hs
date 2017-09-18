{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Native (Native(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

data Native = Native
  { nativeRequest :: TX.Text
  , nativeVer :: Maybe TX.Text
  , nativeApi :: [Int]
  , nativeBattr :: [Int]
  , nativeExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Native where
  parseJSON = AESON.withObject "native" $ \o -> do
    nativeRequest <- o .: "request"
    nativeVer <- o .:? "ver"
    nativeApi <- o .: "api" .!= []
    nativeBattr <- o .: "battr" .!= []
    nativeExt <- o .:? "ext"

    return Native{..}

instance AESON.ToJSON Native where
  toJSON Native{..} = AESON.object
    [ "request" .= nativeRequest
    , "ver" .= nativeVer
    , "api" .= nativeApi
    , "battr" .= nativeBattr
    , "ext" .= nativeExt
    ]
