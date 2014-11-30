{-# LANGUAGE TemplateHaskell #-}
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
import qualified Data.Aeson.TH as AESON
import Data.Char (toLower)
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

type Bidder = Request -> IO Response

data RTBProtocol = RTBProtocol {
  rtbDecodeReq :: WAI.Request -> IO (Either String Request)
  , rtbEncodeRes :: Response -> IO WAI.Response
  }
