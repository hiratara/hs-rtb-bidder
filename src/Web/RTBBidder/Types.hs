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
import qualified Data.Aeson as AESON
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

data Site = Site { siteX :: Maybe () } deriving (Show, Eq)
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 4
  } ''Site)

data App = App { appX :: Maybe () } deriving (Show, Eq)
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 3
  } ''App)

data Device = Device { devX :: Maybe () } deriving (Show, Eq)
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 3
  } ''Device)

data User = User { userX :: Maybe () } deriving (Show, Eq)
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 4
  } ''User)

data Source = Source { srcX :: Maybe () } deriving (Show, Eq)
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 3
  } ''Source)

data Regs = Regs { regsX :: Maybe () } deriving (Show, Eq)
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 4
  } ''Regs)

data Request = Request {
  reqId :: TX.Text
  , reqImp :: [Imp]
  , reqSite :: Maybe Site
  , reqApp :: Maybe App
  , reqDevice :: Maybe Device
  , reqUser :: Maybe User
  , reqTest :: Maybe Int -- Has default
  , reqAt :: Maybe Int -- Has default
  , reqTmax :: Maybe Int
  , reqWseat :: Maybe [TX.Text]
  , reqBseat :: Maybe [TX.Text]
  , reqAllimps :: Maybe Int -- Has default
  , reqCur :: Maybe [TX.Text]
  , reqWlang :: Maybe [TX.Text]
  , reqBcat :: Maybe [TX.Text]
  , reqBadv :: Maybe [TX.Text]
  , reqBapp :: Maybe [TX.Text]
  , reqSource :: Maybe Source
  , reqRegs :: Maybe Regs
  , reqExt :: Maybe AESON.Value
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
