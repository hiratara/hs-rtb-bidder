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

data Deal = Deal
  { dealId :: TX.Text
  , dealBidfloor :: Double
  , dealBidfloorcur :: TX.Text
  , dealAt :: Maybe Int
  , dealWseat :: [TX.Text]
  , dealWadomain :: [TX.Text]
  , dealExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Deal where
  parseJSON = AESON.withObject "deal" $ \o -> do
    dealId <- o .: "id"
    dealBidfloor <- o .:? "bidfloor" .!= 0.0
    dealBidfloorcur <- o .:? "bidfloorcur" .!= "USD"
    dealAt <- o .:? "at"
    dealWseat <- o .:? "wseat" .!= []
    dealWadomain <- o .:? "wadomain" .!= []
    dealExt <- o .:? "ext"

    return Deal{..}

instance AESON.ToJSON Deal where
  toJSON Deal{..} = AESON.object
    [ "id" .= dealId
    , "bidfloor" .= dealBidfloor
    , "bidfloorcur" .= dealBidfloorcur
    , "at" .= dealAt
    , "wseat" .= dealWseat
    , "wadomain" .= dealWadomain
    , "ext" .= dealExt
    ]

data Pmp = Pmp
  { pmpPrivateAuction :: Int
  , pmpDeals :: [Deal]
  , pmpExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Pmp where
  parseJSON = AESON.withObject "pmp" $ \o -> do
    pmpPrivateAuction <- o .: "private_auction" .!= 0
    pmpDeals <- o .: "deals" .!= []
    pmpExt <- o .: "ext"

    return Pmp{..}

instance AESON.ToJSON Pmp where
  toJSON Pmp{..} = AESON.object
    [ "private_auction" .= pmpPrivateAuction
    , "deals" .= pmpDeals
    , "ext" .= pmpExt
    ]

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

data Publisher = Publisher
  { pubId :: Maybe TX.Text
  , pubName :: Maybe TX.Text
  , pubCat :: [TX.Text]
  , pubDomain :: Maybe TX.Text
  , pubExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Publisher where
  parseJSON = AESON.withObject "publisher" $ \o -> do
    pubId <- o .:? "id"
    pubName <- o .:? "name"
    pubCat <- o .:? "cat" .!= []
    pubDomain <- o .:? "domain"
    pubExt <- o .:? "ext"

    return Publisher{..}

instance AESON.ToJSON Publisher where
  toJSON Publisher{..} = AESON.object
    [ "id" .= pubId
    , "name" .= pubName
    , "cat" .= pubCat
    , "domain" .= pubDomain
    , "ext" .= pubExt
    ]

data Producer = Producer
  { proId :: Maybe TX.Text
  , proName :: Maybe TX.Text
  , proCat :: [TX.Text]
  , proDomain :: Maybe TX.Text
  , proExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Producer where
  parseJSON = AESON.withObject "producer" $ \o -> do
    proId <- o .:? "id"
    proName <- o .:? "name"
    proCat <- o .:? "cat" .!= []
    proDomain <- o .:? "domain"
    proExt <- o .:? "ext"

    return Producer{..}

instance AESON.ToJSON Producer where
  toJSON Producer{..} = AESON.object
    [ "id" .= proId
    , "name" .= proName
    , "cat" .= proCat
    , "domain" .= proDomain
    , "ext" .= proExt
    ]

data Data = Data
  { dataX :: Maybe ()
  } deriving (Show, Eq)
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 4
  } ''Data)

data Content = Content
  { cntId :: Maybe TX.Text
  , cntEpisode :: Maybe Int
  , cntTitle :: Maybe TX.Text
  , cntSeries :: Maybe TX.Text
  , cntSeason :: Maybe TX.Text
  , cntArtist :: Maybe TX.Text
  , cntGenre :: Maybe TX.Text
  , cntAlbum :: Maybe TX.Text
  , cntIsrc :: Maybe TX.Text
  , cntProducer :: Maybe Producer
  , cntUrl :: Maybe TX.Text
  , cntCat :: [TX.Text]
  , cntProdq :: Maybe Int
  , cntVideoquality :: Maybe Int -- DEPRECATED
  , cntContext :: Maybe Int
  , cntConnnnnntentrating :: Maybe TX.Text
  , cntUserrating :: Maybe TX.Text
  , cntQagmediarating :: Maybe Int
  , cntKeywords :: Maybe TX.Text
  , cntLivestream :: Maybe Int
  , cntSourcerelationship :: Maybe Int
  , cntLen :: Maybe Int
  , cntLanguage :: Maybe TX.Text
  , cntEmbeddable :: Maybe Int
  , cntData :: [Data]
  , cntExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Content where
  parseJSON = AESON.withObject "content" $ \o -> do
    cntId <- o .:? "id"
    cntEpisode <- o .:? "episode"
    cntTitle <- o .:? "title"
    cntSeries <- o .:? "series"
    cntSeason <- o .:? "season"
    cntArtist <- o .:? "artist"
    cntGenre <- o .:? "genre"
    cntAlbum <- o .:? "album"
    cntIsrc <- o .:? "isrc"
    cntProducer <- o .:? "producer"
    cntUrl <- o .:? "url"
    cntCat <- o .:? "cat" .!= []
    cntProdq <- o .:? "prodq"
    cntVideoquality <- o .:? "videoquality"
    cntContext <- o .:? "context"
    cntConnnnnntentrating <- o .:? "contentrating"
    cntUserrating <- o .:? "userrating"
    cntQagmediarating <- o .:? "qagmediarating"
    cntKeywords <- o .:? "keywords"
    cntLivestream <- o .:? "livestream"
    cntSourcerelationship <- o .:? "sourcerelationship"
    cntLen <- o .:? "len"
    cntLanguage <- o .:? "language"
    cntEmbeddable <- o .:? "embeddable"
    cntData <- o .:? "data" .!= []
    cntExt <- o .:? "ext"

    return Content{..}

instance AESON.ToJSON Content where
  toJSON Content{..} = AESON.object
    [ "id" .= cntId
    , "episode" .= cntEpisode
    , "title" .= cntTitle
    , "series" .= cntSeries
    , "season" .= cntSeason
    , "artist" .= cntArtist
    , "genre" .= cntGenre
    , "album" .= cntAlbum
    , "isrc" .= cntIsrc
    , "producer" .= cntProducer
    , "url" .= cntUrl
    , "cat" .= cntCat
    , "prodq" .= cntProdq
    , "videoquality" .= cntVideoquality
    , "context" .= cntContext
    , "contentrating" .= cntConnnnnntentrating
    , "userrating" .= cntUserrating
    , "qagmediarating" .= cntQagmediarating
    , "keywords" .= cntKeywords
    , "livestream" .= cntLivestream
    , "sourcerelationship" .= cntSourcerelationship
    , "len" .= cntLen
    , "language" .= cntLanguage
    , "embeddable" .= cntEmbeddable
    , "data" .= cntData
    , "ext" .= cntExt
    ]

data Site = Site
  { siteId :: Maybe TX.Text
  , siteName :: Maybe TX.Text
  , siteDomain :: Maybe TX.Text
  , siteCat :: [TX.Text]
  , siteSectionCat :: [TX.Text]
  , sitePagecat :: [TX.Text]
  , sitePage :: Maybe TX.Text
  , siteRef :: Maybe TX.Text
  , siteSearch :: Maybe TX.Text
  , siteMobile :: Maybe Int
  , sitePrivacypolicy :: Maybe Int
  , sitePublisher :: Maybe Publisher
  , siteContent :: Maybe Content
  , siteKeywords :: Maybe TX.Text
  , siteExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Site where
  parseJSON = AESON.withObject "site" $ \o -> do
    siteId <- o .:? "id"
    siteName <- o .:? "name"
    siteDomain <- o .:? "domain"
    siteCat <- o .:? "cat" .!= []
    siteSectionCat <- o .:? "sectioncat" .!= []
    sitePagecat <- o .:? "pagecat" .!= []
    sitePage <- o .:? "page"
    siteRef <- o .:? "ref"
    siteSearch <- o .:? "search"
    siteMobile <- o .:? "mobile"
    sitePrivacypolicy <- o .:? "privacypolicy"
    sitePublisher <- o .:? "publishser"
    siteContent <- o .:? "content"
    siteKeywords <- o .:? "keywords"
    siteExt <- o .:? "ext"

    return Site{..}

instance AESON.ToJSON Site where
  toJSON Site{..} = AESON.object
    [ "id" .= siteId
    , "name" .= siteName
    , "domain" .= siteDomain
    , "cat" .= siteCat
    , "sectioncat" .= siteSectionCat
    , "pagecat" .= sitePagecat
    , "page" .= sitePage
    , "ref" .= siteRef
    , "search" .= siteSearch
    , "mobile" .= siteMobile
    , "privacypolicy" .= sitePrivacypolicy
    , "publishser" .= sitePublisher
    , "content" .= siteContent
    , "keywords" .= siteKeywords
    , "ext" .= siteExt
    ]

data App = App
  { appId :: TX.Text
  , appName :: Maybe TX.Text
  , appBundle :: Maybe TX.Text
  , appDomain :: Maybe TX.Text
  , appStoreurl :: Maybe TX.Text
  , appCat :: [TX.Text]
  , appSectioncat :: [TX.Text]
  , appPagecat :: [TX.Text]
  , appVer :: Maybe TX.Text
  , appPrivacypolicy :: Maybe Integer
  , appPaid :: Maybe Integer
  , appPublisher :: Maybe Publisher
  , appContent :: Maybe Content
  , appKeywords :: Maybe TX.Text
  , appExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON App where
  parseJSON = AESON.withObject "app" $ \o -> do
    appId <- o .: "id"
    appName <- o .:? "name"
    appBundle <- o .:? "bundle"
    appDomain <- o .:? "domain"
    appStoreurl <- o .:? "storeurl"
    appCat <- o .:? "cat" .!= []
    appSectioncat <- o .:? "sectioncat" .!= []
    appPagecat <- o .:? "pagecat" .!= []
    appVer <- o .:? "ver"
    appPrivacypolicy <- o .:? "privacypolicy"
    appPaid <- o .:? "paid"
    appPublisher <- o .:? "publisher"
    appContent <- o .:? "content"
    appKeywords <- o .:? "keywords"
    appExt <- o .:? "ext"

    return App{..}

instance AESON.ToJSON App where
  toJSON App{..} = AESON.object
    [ "id" .= appId
    , "name" .= appName
    , "bundle" .= appBundle
    , "domain" .= appDomain
    , "storeurl" .= appStoreurl
    , "cat" .= appCat
    , "sectioncat" .= appSectioncat
    , "pagecat" .= appPagecat
    , "ver" .= appVer
    , "privacypolicy" .= appPrivacypolicy
    , "paid" .= appPaid
    , "publisher" .= appPublisher
    , "content" .= appContent
    , "keywords" .= appKeywords
    , "ext" .= appExt
    ]

data Geo = Geo { geoX :: Maybe () } deriving (Show, Eq)
$(AESON.deriveJSON AESON.defaultOptions {
    AESON.fieldLabelModifier = map toLower . drop 3
  } ''Geo)

data Device = Device
  { devUa :: Maybe TX.Text
  , devGeo :: Maybe Geo
  , devDnt :: Maybe Int
  , devLmt :: Maybe Int
  , devIp :: Maybe TX.Text
  , devIpv6 :: Maybe TX.Text
  , devDevicetype :: Maybe Int
  , devMake :: Maybe TX.Text
  , devModel :: Maybe TX.Text
  , devOs :: Maybe TX.Text
  , devOsv :: Maybe TX.Text
  , devHwv :: Maybe TX.Text
  , devH :: Maybe Int
  , devW :: Maybe Int
  , devPpi :: Maybe Int
  , devPxratio :: Maybe Double
  , devJs :: Maybe Int
  , devGeofetch :: Maybe Int
  , devFlashver :: Maybe TX.Text
  , devLanguage :: Maybe TX.Text
  , devCarrier :: Maybe TX.Text
  , devMcccmnc :: Maybe TX.Text
  , devConnectiontype :: Maybe Int
  , devIfa :: Maybe TX.Text
  , devDidsha1 :: Maybe TX.Text
  , devDidmd5 :: Maybe TX.Text
  , devDpidsha1 :: Maybe TX.Text
  , devDpidmd5 :: Maybe TX.Text
  , devMacsha1 :: Maybe TX.Text
  , devMacmd5 :: Maybe TX.Text
  , devExt :: Maybe AESON.Value
  } deriving (Show, Eq)

instance AESON.FromJSON Device where
  parseJSON = AESON.withObject "device" $ \o -> do
    devUa <- o .:? "ua"
    devGeo <- o .:? "geo"
    devDnt <- o .:? "dnt"
    devLmt <- o .:? "lmt"
    devIp <- o .:? "ip"
    devIpv6 <- o .:? "ipv6"
    devDevicetype <- o .:? "devicetype"
    devMake <- o .:? "make"
    devModel <- o .:? "model"
    devOs <- o .:? "os"
    devOsv <- o .:? "osv"
    devHwv <- o .:? "hwv"
    devH <- o .:? "h"
    devW <- o .:? "w"
    devPpi <- o .:? "ppi"
    devPxratio <- o .:? "pxratio"
    devJs <- o .:? "js"
    devGeofetch <- o .:? "geofetch"
    devFlashver <- o .:? "flashver"
    devLanguage <- o .:? "language"
    devCarrier <- o .:? "carrier"
    devMcccmnc <- o .:? "mccmnc"
    devConnectiontype <- o .:? "connectiontype"
    devIfa <- o .:? "ifa"
    devDidsha1 <- o .:? "didsha1"
    devDidmd5 <- o .:? "didmd5"
    devDpidsha1 <- o .:? "dpidsha1"
    devDpidmd5 <- o .:? "dpidmd5"
    devMacsha1 <- o .:? "macsha1"
    devMacmd5 <- o .:? "macmd5"
    devExt <- o .:? "ext"

    return Device{..}

instance AESON.ToJSON Device where
  toJSON Device{..} = AESON.object
    [ "ua" .= devUa
    , "geo" .= devGeo
    , "dnt" .= devDnt
    , "lmt" .= devLmt
    , "ip" .= devIp
    , "ipv6" .= devIpv6
    , "devicetype" .= devDevicetype
    , "make" .= devMake
    , "model" .= devModel
    , "os" .= devOs
    , "osv" .= devOsv
    , "hwv" .= devHwv
    , "h" .= devH
    , "w" .= devW
    , "ppi" .= devPpi
    , "pxratio" .= devPxratio
    , "js" .= devJs
    , "geofetch" .= devGeofetch
    , "flashver" .= devFlashver
    , "language" .= devLanguage
    , "carrier" .= devCarrier
    , "mccmnc" .= devMcccmnc
    , "connectiontype" .= devConnectiontype
    , "ifa" .= devIfa
    , "didsha1" .= devDidsha1
    , "didmd5" .= devDidmd5
    , "dpidsha1" .= devDpidsha1
    , "dpidmd5" .= devDpidmd5
    , "macsha1" .= devMacsha1
    , "macmd5" .= devMacmd5
    , "ext" .= devExt
    ]

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
