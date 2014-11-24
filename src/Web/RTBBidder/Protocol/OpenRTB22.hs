{-# LANGUAGE TemplateHaskell, OverloadedStrings #-}
module Web.RTBBidder.Protocol.OpenRTB22 (
    decodeRequest
  , encodeResponse
  , Banner(..)
  , Imp(..)
  , Request(..)
  , Bid(..)
  , SeatBid(..)
  , Response(..)
) where

import qualified Data.Aeson as AESON
import qualified Data.Aeson.TH as AESON
import qualified Network.Wai as WAI
import qualified Network.HTTP.Types as NHT
import Data.Char (toLower)
import qualified Data.ByteString as BS
import qualified Data.ByteString.Lazy as LBS
import qualified Data.Text as TX

data Banner = Banner {
  bannerW :: Int
  , bannerH :: Int
  } deriving (Show, Eq)
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 6
  } ''Banner)

data Imp = Imp {
  impId :: TX.Text
  , impBanner :: Maybe Banner
  } deriving (Show, Eq)
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 3
  } ''Imp)

data Request = Request {
  reqId :: TX.Text
  , reqImp :: [Imp]
  } deriving (Show, Eq)
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 3
  } ''Request)

data Bid = Bid {
  bidId :: TX.Text
  , bidImpID :: TX.Text
  , bidPrice :: Double
  }
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 3
  } ''Bid)

data SeatBid = SeatBid {
  seatbidBid :: [Bid]
  }
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 7
  } ''SeatBid)

data Response = Response {
  resId :: TX.Text
  , resSeatbid :: [SeatBid]
  }
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 3
  } ''Response)

decodeRequest :: WAI.Request -> IO (Either String Request)
decodeRequest req = do
  jsonstr <- loadAllBody
  return $ AESON.eitherDecode (LBS.fromStrict jsonstr)
  where
    loadAllBody = loop ""
      where
        loop accum = do
          body <- WAI.requestBody req
          if BS.null body
            then return accum
            else loop (BS.append accum body)

encodeResponse :: Response -> IO WAI.Response
encodeResponse bidres = return $ WAI.responseLBS NHT.status200 headers body
  where
    body = AESON.encode bidres
    headers = [("Content-Type", "application/json")
              , ("X-OpenRTB-Version", "2.2")]
