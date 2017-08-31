{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Video.VideoPlaybackMethod (VideoPlaybackMethod(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data VideoPlaybackMethod = METHOD_UNKNOWN
                         | AUTO_PLAY_SOUND_ON
                         | AUTO_PLAY_SOUND_OFF
                         | CLICK_TO_PLAY
                         | MOUSE_OVER
                         deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                   Prelude'.Generic)

instance P'.Mergeable VideoPlaybackMethod

instance Prelude'.Bounded VideoPlaybackMethod where
  minBound = METHOD_UNKNOWN
  maxBound = MOUSE_OVER

instance P'.Default VideoPlaybackMethod where
  defaultValue = METHOD_UNKNOWN

toMaybe'Enum :: Prelude'.Int -> P'.Maybe VideoPlaybackMethod
toMaybe'Enum 0 = Prelude'.Just METHOD_UNKNOWN
toMaybe'Enum 1 = Prelude'.Just AUTO_PLAY_SOUND_ON
toMaybe'Enum 2 = Prelude'.Just AUTO_PLAY_SOUND_OFF
toMaybe'Enum 3 = Prelude'.Just CLICK_TO_PLAY
toMaybe'Enum 4 = Prelude'.Just MOUSE_OVER
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum VideoPlaybackMethod where
  fromEnum METHOD_UNKNOWN = 0
  fromEnum AUTO_PLAY_SOUND_ON = 1
  fromEnum AUTO_PLAY_SOUND_OFF = 2
  fromEnum CLICK_TO_PLAY = 3
  fromEnum MOUSE_OVER = 4
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.VideoPlaybackMethod")
      . toMaybe'Enum
  succ METHOD_UNKNOWN = AUTO_PLAY_SOUND_ON
  succ AUTO_PLAY_SOUND_ON = AUTO_PLAY_SOUND_OFF
  succ AUTO_PLAY_SOUND_OFF = CLICK_TO_PLAY
  succ CLICK_TO_PLAY = MOUSE_OVER
  succ _
   = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.VideoPlaybackMethod"
  pred AUTO_PLAY_SOUND_ON = METHOD_UNKNOWN
  pred AUTO_PLAY_SOUND_OFF = AUTO_PLAY_SOUND_ON
  pred CLICK_TO_PLAY = AUTO_PLAY_SOUND_OFF
  pred MOUSE_OVER = CLICK_TO_PLAY
  pred _
   = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.VideoPlaybackMethod"

instance P'.Wire VideoPlaybackMethod where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB VideoPlaybackMethod

instance P'.MessageAPI msg' (msg' -> VideoPlaybackMethod) VideoPlaybackMethod where
  getVal m' f' = f' m'

instance P'.ReflectEnum VideoPlaybackMethod where
  reflectEnum
   = [(0, "METHOD_UNKNOWN", METHOD_UNKNOWN), (1, "AUTO_PLAY_SOUND_ON", AUTO_PLAY_SOUND_ON),
      (2, "AUTO_PLAY_SOUND_OFF", AUTO_PLAY_SOUND_OFF), (3, "CLICK_TO_PLAY", CLICK_TO_PLAY), (4, "MOUSE_OVER", MOUSE_OVER)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.Video.VideoPlaybackMethod") ["Web", "RTBBidder", "Protocol"]
        ["Adx", "BidRequest", "Video"]
        "VideoPlaybackMethod")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "Video", "VideoPlaybackMethod.hs"]
      [(0, "METHOD_UNKNOWN"), (1, "AUTO_PLAY_SOUND_ON"), (2, "AUTO_PLAY_SOUND_OFF"), (3, "CLICK_TO_PLAY"), (4, "MOUSE_OVER")]

instance P'.TextType VideoPlaybackMethod where
  tellT = P'.tellShow
  getT = P'.getRead