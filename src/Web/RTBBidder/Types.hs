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

data Format = Format
  { fmtW :: Maybe Int
  , fmtH :: Maybe Int
  , fmtWratio :: Maybe Int
  , fmtHratio :: Maybe Int
  , fmtWmin :: Maybe Int
  , fmtExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Format where
  parseJSON = AESON.withObject "format" $ \o -> do
    fmtW <- o .:? "w"
    fmtH <- o .:? "h"
    fmtWratio <- o .:? "wratio"
    fmtHratio <- o .:? "hratio"
    fmtWmin <- o .:? "wmin"
    fmtExt <- o .:? "ext"

    return Format{..}

instance AESON.ToJSON Format where
  toJSON Format{..} = AESON.object
    [ "w" .= fmtW
    , "h" .= fmtH
    , "wratio" .= fmtWratio
    , "hratio" .= fmtHratio
    ,  "wmin" .= fmtWmin
    , "ext" .= fmtExt
    ]

data Banner = Banner
  { bannerFormat :: [Format]
  , bannerW :: Maybe Int
  , bannerH :: Maybe Int
  , bannerWmax :: Maybe Int -- DEPRECATED
  , bannerHmax :: Maybe Int -- DEPRECATED
  , bannerWmin :: Maybe Int -- DEPRECATED
  , bannerHmin :: Maybe Int -- DEPRECATED
  , bannerBtype :: [Int]
  , bannerBattr :: [Int]
  , bannerPos :: Maybe Int
  , bannerMimes :: [TX.Text]
  , bannerTopframe :: Maybe Int
  , bannerExpdir :: [Int]
  , bannerApi :: [Int]
  , bannerId :: Maybe TX.Text
  , bannerVcm :: Maybe Int
  , bannerExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Banner where
  parseJSON = AESON.withObject "banner" $ \o -> do
    bannerFormat <- o .:? "format" .!= []
    bannerW <- o .:? "w"
    bannerH <- o .:? "h"
    bannerWmax <- o .:? "wmax"
    bannerHmax <- o .:? "hmax"
    bannerWmin <- o .:? "wmin"
    bannerHmin <- o .:? "hmin"
    bannerBtype <- o .:? "btype" .!= []
    bannerBattr <- o .:? "battr" .!= []
    bannerPos <-  o .:? "pos"
    bannerMimes <- o .:? "mimes" .!= []
    bannerTopframe <- o .:? "topframe"
    bannerExpdir <- o .:? "expdir" .!= []
    bannerApi <- o .:? "api" .!= []
    bannerId <- o .:? "id"
    bannerVcm <- o .:? "vcm"
    bannerExt <- o .:? "ext"

    return Banner{..}

instance AESON.ToJSON Banner where
  toJSON Banner{..} = AESON.object
    [ "format" .= bannerFormat
    , "w" .= bannerW
    , "h" .= bannerH
    , "wmax" .= bannerWmax
    , "hmax" .= bannerHmax
    , "wmin" .= bannerWmin
    , "hmin" .= bannerHmin
    , "btype" .= bannerBtype
    , "battr" .= bannerBattr
    , "pos" .= bannerPos
    , "mimes" .= bannerMimes
    , "topframe" .= bannerTopframe
    , "expdir" .= bannerExpdir
    , "api" .= bannerApi
    , "id" .= bannerId
    , "vcm" .= bannerVcm
    , "ext" .= bannerExt
    ]

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

data Video = Video
  { videoMimes :: [TX.Text]
  , videoMinduration :: Maybe Int
  , videoMaxduration :: Maybe Int
  , videoProtocols :: [Int]
  , videoProtocol :: Maybe Int -- DEPRECATED
  , videoW :: Maybe Int
  , videoH :: Maybe Int
  , videoStartdelay :: Maybe Int
  , videoPlacement :: Maybe Int
  , videoLinearity :: Maybe Int
  , videoSkip :: Maybe Int
  , videoSkipmin :: Int
  , videoSkipafter :: Int
  , videoSequence :: Maybe Int
  , videoBattr :: [Int]
  , videoMaxextendeded :: Maybe Int
  , videoMinbitrate :: Maybe Int
  , videoMaxbitrate :: Maybe Int
  , videoBoxingallowed :: Int
  , videoPlaybackmethod :: [Int]
  , videoPlaybackend :: Maybe Int
  , videoDelivery :: [Int]
  , videoPos :: Maybe Int
  , videoCompanionad :: [Banner]
  , videoApi :: [Int]
  , videoCompaniontype :: [Int]
  , videoExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Video where
  parseJSON = AESON.withObject "video" $ \o -> do
    videoMimes <- o .: "mimes"
    videoMinduration <- o .:? "minduration"
    videoMaxduration <- o .:? "maxduration"
    videoProtocols <- o .:? "protocols" .!= []
    videoProtocol <- o .:? "protocol"
    videoW <- o .:? "w"
    videoH <- o .:? "h"
    videoStartdelay <- o .:? "startdelay"
    videoPlacement <- o .:? "placement"
    videoLinearity <- o .:? "linearity"
    videoSkip <- o .:? "skip"
    videoSkipmin <- o .:? "skipmin" .!= 0
    videoSkipafter <- o .:? "skipafter" .!= 0
    videoSequence <- o .:? "sequence"
    videoBattr <- o .:? "battr" .!= []
    videoMaxextendeded <- o .:? "maxextended"
    videoMinbitrate <- o .:? "minbitrate"
    videoMaxbitrate <- o .:? "maxbitrate"
    videoBoxingallowed <- o .:? "boxingallowed" .!= 1
    videoPlaybackmethod <- o .:? "playbackmethod" .!= []
    videoPlaybackend <- o .:? "playbackend"
    videoDelivery <- o .:? "delivery" .!= []
    videoPos <- o .:? "pos"
    videoCompanionad <- o .:? "companionad" .!= []
    videoApi <- o .:? "api" .!= []
    videoCompaniontype <- o .:? "companiontype" .!= []
    videoExt <-  o .:? "ext"

    return Video{..}

instance AESON.ToJSON Video where
  toJSON Video{..} = AESON.object
    [ "mimes" .= videoMimes
    , "minduration" .= videoMinduration
    , "maxduration" .= videoMaxduration
    , "protocols" .= videoProtocols
    , "protocol" .= videoProtocol
    , "w" .= videoW
    , "h" .= videoH
    , "startdelay" .= videoStartdelay
    , "placement" .= videoPlacement
    , "linearity" .= videoLinearity
    , "skip" .= videoSkip
    , "skipmin" .= videoSkipmin
    , "skipafter" .= videoSkipafter
    , "sequence" .= videoSequence
    , "battr" .= videoBattr
    , "maxextended" .= videoMaxextendeded
    , "minbitrate" .= videoMinbitrate
    , "maxbitrate" .= videoMaxbitrate
    , "boxingallowed" .= videoBoxingallowed
    , "playbackmethod" .= videoPlaybackmethod
    , "playbackend" .= videoPlaybackend
    , "delivery" .= videoDelivery
    , "pos" .= videoPos
    , "companionad" .= videoCompanionad
    , "api" .= videoApi
    , "companiontype" .= videoCompaniontype
    , "ext" .= videoExt
    ]

data Audio = Audio
  { audioMimes :: [TX.Text]
  , audioMinduration :: Maybe Int
  , audioMaxduration :: Maybe Int
  , audioProtocols :: Maybe Int
  , audioStartdelay :: Maybe Int
  , audioSequence :: Maybe Int
  , audioBattr :: [Int]
  , audioMaxextended :: Maybe Int
  , audioMinbitrate :: Maybe Int
  , audioMaxbitrate :: Maybe Int
  , audioDelivery :: [Int]
  , audioCompanionad :: [Banner]
  , audioApi :: [Int]
  , audioCompaniontype :: [Int]
  , audioMaxseq :: Maybe Int
  , audioFeed :: Maybe Int
  , audioStitched :: Maybe Int
  , audioNvol :: Maybe Int
  , audioExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Audio where
  parseJSON = AESON.withObject "audio" $ \o -> do
    audioMimes <- o .: "mimes"
    audioMinduration <- o .:? "minduration"
    audioMaxduration <- o .:? "maxduration"
    audioProtocols <- o .:? "protocols"
    audioStartdelay <- o .:? "startdelay"
    audioSequence <- o .:? "sequence"
    audioBattr <- o .:? "battr" .!= []
    audioMaxextended <- o .:? "maxextended"
    audioMinbitrate <- o .:? "minbitrate"
    audioMaxbitrate <- o .:? "maxbitrate"
    audioDelivery <- o .:? "delivery" .!= []
    audioCompanionad <- o .:? "companionad" .!= []
    audioApi <- o .:? "api" .!= []
    audioCompaniontype <- o .:? "companiontype" .!= []
    audioMaxseq <- o .:? "maxseq"
    audioFeed <- o .:? "feed"
    audioStitched <- o .:? "stitched"
    audioNvol <- o .:? "nvol"
    audioExt <- o .:? "ext"

    return Audio{..}

instance AESON.ToJSON Audio where
  toJSON Audio{..} = AESON.object
    [ "mimes" .= audioMimes
    , "minduration" .= audioMinduration
    , "maxduration" .= audioMaxduration
    , "protocols" .= audioProtocols
    , "startdelay" .= audioStartdelay
    , "sequence" .= audioSequence
    , "battr" .= audioBattr
    , "maxextended" .= audioMaxextended
    , "minbitrate" .= audioMinbitrate
    , "maxbitrate" .= audioMaxbitrate
    , "delivery" .= audioDelivery
    , "companionad" .= audioCompanionad
    , "api" .= audioApi
    , "companiontype" .= audioCompaniontype
    , "maxseq" .= audioMaxseq
    , "feed" .= audioFeed
    , "stitched" .= audioStitched
    , "nvol" .= audioNvol
    , "ext" .= audioExt
    ]

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
    nativeExt <- o .: "ext"

    return Native{..}

instance AESON.ToJSON Native where
  toJSON Native{..} = AESON.object
    [ "request" .= nativeRequest
    , "ver" .= nativeVer
    , "api" .= nativeApi
    , "battr" .= nativeBattr
    , "ext" .= nativeExt
    ]

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
