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

data Banner = Banner {
  bannerW :: Int
  , bannerH :: Int
  } deriving (Show, Eq)
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 6
  } ''Banner)

data Metric = Metric
  { metType :: TX.Text
  , metValue :: Double
  , metVendor :: Maybe TX.Text
  , metExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Metric where
  parseJSON = AESON.withObject "metric" $ \o -> do
    metType <- o .: "type"
    metValue <- o .: "value"
    metVendor <- o .:? "vendor"
    metExt <- o .:? "ext"

    return Metric{..}

instance AESON.ToJSON Metric where
  toJSON Metric{..} = AESON.object
    [ "type" .= metType
    , "value" .= metValue
    , "vendor" .= metVendor
    , "ext" .= metExt
    ]

data Video = Video { videoX :: Maybe () } deriving (Show, Eq)
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 5
  } ''Video)

data Audio = Audio { audioX :: Maybe () } deriving (Show, Eq)
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 5
  } ''Audio)

data Native = Native { nativeX :: Maybe () } deriving (Show, Eq)
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 6
  } ''Native)

data Pmp = Pmp { pmpX :: Maybe () } deriving (Show, Eq)
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 3
  } ''Pmp)

data Imp = Imp {
  impId :: TX.Text
  , impMetric :: [Metric]
  , impBanner :: Maybe Banner
  , impVideo :: Maybe Video
  , impAudio :: Maybe Audio
  , impNative :: Maybe Native
  , impPmp :: Maybe Pmp
  , impDisplaymanager :: Maybe TX.Text
  , impDisplaymanagerver :: Maybe TX.Text
  , impInstl :: Int
  , impTagid :: Maybe TX.Text
  , impBidFloor :: Double
  , impBidFloorcur :: TX.Text
  , impClickbrowser :: Maybe Int
  , impSecure :: Maybe Int
  , impIframebuster :: [TX.Text]
  , impExp :: Maybe Int
  , impExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Imp where
  parseJSON = AESON.withObject "imp" $ \o -> do
    impId <- o .: "id"
    impMetric <- o .:? "metric" .!= []
    impBanner <- o .:? "banner"
    impVideo <- o .:? "video"
    impAudio <- o .:? "audio"
    impNative <- o .:? "native"
    impPmp <- o .:? "pmp"
    impDisplaymanager <- o .:? "displaymanager"
    impDisplaymanagerver <- o .:? "displaymanagerver"
    impInstl <- o .:? "instl" .!= 0
    impTagid <- o .:? "tagid"
    impBidFloor <- o .:? "bidfloor" .!= 0.0
    impBidFloorcur <- o .:? "bidfloorcur" .!= "USD"
    impClickbrowser <- o .:? "clickbrowser"
    impSecure <- o .:? "secure"
    impIframebuster <- o .:? "iframebuster" .!= []
    impExp <- o .:? "exp"
    impExt <- o .:? "ext"

    return Imp{..}

instance AESON.ToJSON Imp where
  toJSON Imp{..} = AESON.object
    [ "id" .= impId
    , "metric" .= impMetric
    , "banner" .= impBanner
    , "video" .= impVideo
    , "audio" .= impAudio
    , "native" .= impNative
    , "pmp" .= impPmp
    , "displaymanager" .= impDisplaymanager
    , "displaymanagerver" .= impDisplaymanagerver
    , "instl" .= impInstl
    , "tagid" .= impTagid
    , "bidfloor" .= impBidFloor
    , "bidfloorcur" .= impBidFloorcur
    , "clickbrowser" .= impClickbrowser
    , "secure" .= impSecure
    , "iframebuster" .= impIframebuster
    , "exp" .= impExp
    , "ext" .= impExt
    ]

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

data Source = Source
  { srcFd :: Maybe Int
  , srcTid :: Maybe TX.Text
  , srcPchain :: Maybe TX.Text
  , srcExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Source where
  parseJSON = AESON.withObject "source" $ \o -> do
    srcFd <- o .:? "fd"
    srcTid <- o .:? "tid"
    srcPchain <- o .:? "pchain"
    srcExt <- o .:? "ext"

    return Source{..}

instance AESON.ToJSON Source where
  toJSON Source{..} = AESON.object
    [ "fd" .= srcFd
    , "tid" .= srcTid
    , "pchain" .= srcPchain
    , "ext" .= srcExt
    ]

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
