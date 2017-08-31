{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Video.VideoFormat (VideoFormat(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data VideoFormat = UNKNOWN_VIDEO_FORMAT
                 | VIDEO_FLV
                 | VIDEO_MP4
                 | YT_HOSTED
                 | VPAID_FLASH
                 | VPAID_JS
                 | VIDEO_WEBM
                 | VIDEO_MOV
                 | VIDEO_3GPP
                 | VIDEO_HLS
                 | VIDEO_DASH
                 | AUDIO_MP3
                 | AUDIO_OGG
                 | AUDIO_MP3_OGG
                 | AUDIO_MP4A
                 deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                           Prelude'.Generic)

instance P'.Mergeable VideoFormat

instance Prelude'.Bounded VideoFormat where
  minBound = UNKNOWN_VIDEO_FORMAT
  maxBound = AUDIO_MP4A

instance P'.Default VideoFormat where
  defaultValue = UNKNOWN_VIDEO_FORMAT

toMaybe'Enum :: Prelude'.Int -> P'.Maybe VideoFormat
toMaybe'Enum (-1) = Prelude'.Just UNKNOWN_VIDEO_FORMAT
toMaybe'Enum 0 = Prelude'.Just VIDEO_FLV
toMaybe'Enum 1 = Prelude'.Just VIDEO_MP4
toMaybe'Enum 2 = Prelude'.Just YT_HOSTED
toMaybe'Enum 3 = Prelude'.Just VPAID_FLASH
toMaybe'Enum 4 = Prelude'.Just VPAID_JS
toMaybe'Enum 8 = Prelude'.Just VIDEO_WEBM
toMaybe'Enum 9 = Prelude'.Just VIDEO_MOV
toMaybe'Enum 10 = Prelude'.Just VIDEO_3GPP
toMaybe'Enum 11 = Prelude'.Just VIDEO_HLS
toMaybe'Enum 12 = Prelude'.Just VIDEO_DASH
toMaybe'Enum 5 = Prelude'.Just AUDIO_MP3
toMaybe'Enum 6 = Prelude'.Just AUDIO_OGG
toMaybe'Enum 7 = Prelude'.Just AUDIO_MP3_OGG
toMaybe'Enum 13 = Prelude'.Just AUDIO_MP4A
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum VideoFormat where
  fromEnum UNKNOWN_VIDEO_FORMAT = (-1)
  fromEnum VIDEO_FLV = 0
  fromEnum VIDEO_MP4 = 1
  fromEnum YT_HOSTED = 2
  fromEnum VPAID_FLASH = 3
  fromEnum VPAID_JS = 4
  fromEnum VIDEO_WEBM = 8
  fromEnum VIDEO_MOV = 9
  fromEnum VIDEO_3GPP = 10
  fromEnum VIDEO_HLS = 11
  fromEnum VIDEO_DASH = 12
  fromEnum AUDIO_MP3 = 5
  fromEnum AUDIO_OGG = 6
  fromEnum AUDIO_MP3_OGG = 7
  fromEnum AUDIO_MP4A = 13
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.VideoFormat")
      . toMaybe'Enum
  succ UNKNOWN_VIDEO_FORMAT = VIDEO_FLV
  succ VIDEO_FLV = VIDEO_MP4
  succ VIDEO_MP4 = YT_HOSTED
  succ YT_HOSTED = VPAID_FLASH
  succ VPAID_FLASH = VPAID_JS
  succ VPAID_JS = VIDEO_WEBM
  succ VIDEO_WEBM = VIDEO_MOV
  succ VIDEO_MOV = VIDEO_3GPP
  succ VIDEO_3GPP = VIDEO_HLS
  succ VIDEO_HLS = VIDEO_DASH
  succ VIDEO_DASH = AUDIO_MP3
  succ AUDIO_MP3 = AUDIO_OGG
  succ AUDIO_OGG = AUDIO_MP3_OGG
  succ AUDIO_MP3_OGG = AUDIO_MP4A
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.VideoFormat"
  pred VIDEO_FLV = UNKNOWN_VIDEO_FORMAT
  pred VIDEO_MP4 = VIDEO_FLV
  pred YT_HOSTED = VIDEO_MP4
  pred VPAID_FLASH = YT_HOSTED
  pred VPAID_JS = VPAID_FLASH
  pred VIDEO_WEBM = VPAID_JS
  pred VIDEO_MOV = VIDEO_WEBM
  pred VIDEO_3GPP = VIDEO_MOV
  pred VIDEO_HLS = VIDEO_3GPP
  pred VIDEO_DASH = VIDEO_HLS
  pred AUDIO_MP3 = VIDEO_DASH
  pred AUDIO_OGG = AUDIO_MP3
  pred AUDIO_MP3_OGG = AUDIO_OGG
  pred AUDIO_MP4A = AUDIO_MP3_OGG
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
  reflectEnum
   = [((-1), "UNKNOWN_VIDEO_FORMAT", UNKNOWN_VIDEO_FORMAT), (0, "VIDEO_FLV", VIDEO_FLV), (1, "VIDEO_MP4", VIDEO_MP4),
      (2, "YT_HOSTED", YT_HOSTED), (3, "VPAID_FLASH", VPAID_FLASH), (4, "VPAID_JS", VPAID_JS), (8, "VIDEO_WEBM", VIDEO_WEBM),
      (9, "VIDEO_MOV", VIDEO_MOV), (10, "VIDEO_3GPP", VIDEO_3GPP), (11, "VIDEO_HLS", VIDEO_HLS), (12, "VIDEO_DASH", VIDEO_DASH),
      (5, "AUDIO_MP3", AUDIO_MP3), (6, "AUDIO_OGG", AUDIO_OGG), (7, "AUDIO_MP3_OGG", AUDIO_MP3_OGG), (13, "AUDIO_MP4A", AUDIO_MP4A)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.Video.VideoFormat") ["Web", "RTBBidder", "Protocol"] ["Adx", "BidRequest", "Video"]
        "VideoFormat")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "Video", "VideoFormat.hs"]
      [((-1), "UNKNOWN_VIDEO_FORMAT"), (0, "VIDEO_FLV"), (1, "VIDEO_MP4"), (2, "YT_HOSTED"), (3, "VPAID_FLASH"), (4, "VPAID_JS"),
       (8, "VIDEO_WEBM"), (9, "VIDEO_MOV"), (10, "VIDEO_3GPP"), (11, "VIDEO_HLS"), (12, "VIDEO_DASH"), (5, "AUDIO_MP3"),
       (6, "AUDIO_OGG"), (7, "AUDIO_MP3_OGG"), (13, "AUDIO_MP4A")]

instance P'.TextType VideoFormat where
  tellT = P'.tellShow
  getT = P'.getRead