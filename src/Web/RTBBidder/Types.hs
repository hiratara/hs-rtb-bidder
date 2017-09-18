{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE RecordWildCards #-}
module Web.RTBBidder.Types (
    Banner(..)
  , Imp(..)
  , Request(..)
  , Bid(..)
  , SeatBid(..)
  , Response(..)
  , Bidder
  , RTBProtocol(..)
) where
import qualified Network.Wai as WAI
import qualified Data.Aeson as AESON
import Data.Aeson ((.=), (.:), (.:?), (.!=))
import qualified Data.Aeson.TH as AESON
import Data.Char (toLower)
import qualified Data.Text as TX

import Web.RTBBidder.Types.Request (Request(..))
import Web.RTBBidder.Types.Request.Imp (Imp(..))
import Web.RTBBidder.Types.Request.Banner (Banner(..))

data Bid = Bid
  { bidId :: TX.Text
  , bidImpid :: TX.Text
  , bidPrice :: Double
  , bidAdid :: Maybe TX.Text
  , bidNurl :: Maybe TX.Text
  , bidAdm :: Maybe TX.Text
  , bidAdomain :: [TX.Text]
  , bidBundle :: Maybe TX.Text
  , bidIurl :: Maybe TX.Text
  , bidCid :: Maybe TX.Text
  , bidCrid :: Maybe TX.Text
  , bidCat :: [TX.Text]
  , bidAttr :: [Int]
  , bidApi :: Maybe Int
  , bidProtocol :: Maybe Int
  , bidQagmediarating :: Maybe Int
  , bidDealid :: Maybe TX.Text
  , bidW :: Maybe Int
  , bidH :: Maybe Int
  , bidExp :: Maybe Int
  , bidExt :: Maybe AESON.Value
  }

instance AESON.FromJSON Bid where
  parseJSON = AESON.withObject "bid" $ \o -> do
    bidId <- o .: "id"
    bidImpid <- o .: "impid"
    bidPrice <- o .: "price"
    bidAdid <- o .:? "adid"
    bidNurl <- o .:? "nurl"
    bidAdm <- o .:? "adm"
    bidAdomain <- o .:? "adomain" .!= []
    bidBundle <- o .:? "bundle"
    bidIurl <- o .:? "iurl"
    bidCid <- o .:? "cid"
    bidCrid <- o .:? "crid"
    bidCat <- o .:? "cat" .!= []
    bidAttr <- o .:? "attr" .!= []
    bidApi <- o .:? "api"
    bidProtocol <- o .:? "protocol"
    bidQagmediarating <- o .:? "qagmediarating"
    bidDealid <- o .:? "dealid"
    bidW <- o .:? "w"
    bidH <- o .:? "h"
    bidExp <- o .:? "exp"
    bidExt <- o .:? "ext"

    return Bid{..}

instance AESON.ToJSON Bid where
  toJSON Bid{..} = AESON.object
    [ "id" .= bidId
    , "impid" .= bidImpid
    , "price" .= bidPrice
    , "adid" .= bidAdid
    , "nurl" .= bidNurl
    , "adm" .= bidAdm
    , "adomain" .= bidAdomain
    , "bundle" .= bidBundle
    , "iurl" .= bidIurl
    , "cid" .= bidCid
    , "crid" .= bidCrid
    , "cat" .= bidCat
    , "attr" .= bidAttr
    , "api" .= bidApi
    , "protocol" .= bidProtocol
    , "qagmediarating" .= bidQagmediarating
    , "dealid" .= bidDealid
    , "w" .= bidW
    , "h" .= bidH
    , "exp" .= bidExp
    , "ext" .= bidExt
    ]

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

type Bidder = Request -> IO Response

data RTBProtocol = RTBProtocol {
  rtbDecodeReq :: WAI.Request -> IO (Either String Request)
  , rtbEncodeRes :: Response -> IO WAI.Response
  }
