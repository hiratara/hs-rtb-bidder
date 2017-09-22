{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types.Response (Response(..)) where

import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Text as TX

import Web.RTBBidder.Types.Response.SeatBid (SeatBid(..))

data Response = Response
  { resId :: TX.Text
  , resSeatbid :: [SeatBid]
  , resBidid :: Maybe TX.Text
  , resCur :: TX.Text
  , resCustomdata :: Maybe TX.Text
  , resNbr :: Maybe Int
  , resExt :: Maybe AESON.Value
  }

instance AESON.FromJSON Response where
  parseJSON = AESON.withObject "BidResponse" $ \o -> do
    resId <- o .: "id"
    resSeatbid <- o .:? "seatbid" .!= []
    resBidid <- o .:? "bidid"
    resCur <- o .:? "cur" .!= "USD"
    resCustomdata <- o .:? "customdata"
    resNbr <- o .:? "nbr"
    resExt <- o .:? "ext"

    return Response{..}

instance AESON.ToJSON Response where
  toJSON Response{..} = AESON.object
    [ "id" .= resId
    , "seatbid" .= resSeatbid
    , "bidid" .= resBidid
    , "cur" .= resCur
    , "customdata" .= resCustomdata
    , "nbr" .= resNbr
    , "ext" .= resExt
    ]
