{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Video.VideoFormat (VideoFormat(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data VideoFormat = VIDEO_FLASH
                 | VIDEO_HTML5
                 | YT_HOSTED
                 deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable VideoFormat
 
instance Prelude'.Bounded VideoFormat where
  minBound = VIDEO_FLASH
  maxBound = YT_HOSTED
 
instance P'.Default VideoFormat where
  defaultValue = VIDEO_FLASH
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe VideoFormat
toMaybe'Enum 0 = Prelude'.Just VIDEO_FLASH
toMaybe'Enum 1 = Prelude'.Just VIDEO_HTML5
toMaybe'Enum 2 = Prelude'.Just YT_HOSTED
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum VideoFormat where
  fromEnum VIDEO_FLASH = 0
  fromEnum VIDEO_HTML5 = 1
  fromEnum YT_HOSTED = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.VideoFormat")
      . toMaybe'Enum
  succ VIDEO_FLASH = VIDEO_HTML5
  succ VIDEO_HTML5 = YT_HOSTED
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.VideoFormat"
  pred VIDEO_HTML5 = VIDEO_FLASH
  pred YT_HOSTED = VIDEO_HTML5
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.VideoFormat"
 
instance P'.Wire VideoFormat where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB VideoFormat
 
instance P'.MessageAPI msg' (msg' -> VideoFormat) VideoFormat where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum VideoFormat where
  reflectEnum = [(0, "VIDEO_FLASH", VIDEO_FLASH), (1, "VIDEO_HTML5", VIDEO_HTML5), (2, "YT_HOSTED", YT_HOSTED)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.Video.VideoFormat") ["Web", "RTBBidder", "Protocol"] ["Adx", "BidRequest", "Video"]
        "VideoFormat")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "Video", "VideoFormat.hs"]
      [(0, "VIDEO_FLASH"), (1, "VIDEO_HTML5"), (2, "YT_HOSTED")]
 
instance P'.TextType VideoFormat where
  tellT = P'.tellShow
  getT = P'.getRead