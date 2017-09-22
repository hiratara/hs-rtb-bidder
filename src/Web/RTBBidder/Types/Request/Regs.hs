{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Request.Regs (Regs(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

data Regs = Regs
  { regsCoppa :: Maybe Int
  , regsExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Regs where
  parseJSON = AESON.withObject "regs" $ \o -> do
    regsCoppa <- o .:? "coppa"
    regsExt <- o .:? "ext"

    return Regs{..}

instance AESON.ToJSON Regs where
  toJSON Regs{..} = AESON.object
    [ "coppa" .= regsCoppa
    , "ext" .= regsExt
    ]
