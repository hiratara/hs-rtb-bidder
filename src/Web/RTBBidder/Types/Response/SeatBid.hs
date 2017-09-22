{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Response.SeatBid (SeatBid(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

import Web.RTBBidder.Types.Response.Bid (Bid(..))

data SeatBid = SeatBid
  { seatbidBid :: [Bid]
  , seatbidSeat :: Maybe TX.Text
  , seatbidGroup :: Int
  , seatbidExt :: Maybe AESON.Value
  }

instance AESON.FromJSON SeatBid where
  parseJSON = AESON.withObject "seatbid" $ \o -> do
    seatbidBid <- o .: "bid"
    seatbidSeat <- o .:? "seat"
    seatbidGroup <- o .:? "group" .!= 0
    seatbidExt <- o .:? "ext"

    return SeatBid{..}

instance AESON.ToJSON SeatBid where
  toJSON SeatBid{..} = AESON.object
    [ "bid" .= seatbidBid
    , "seat" .= seatbidSeat
    , "group" .= seatbidGroup
    , "ext" .= seatbidExt
    ]
