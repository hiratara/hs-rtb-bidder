{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Video.Placement (Placement(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Placement = UNKNOWN_PLACEMENT
               | INSTREAM
               | INTERSTITIAL
               | IN_FEED
               | AUDIO
               deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                         Prelude'.Generic)

instance P'.Mergeable Placement

instance Prelude'.Bounded Placement where
  minBound = UNKNOWN_PLACEMENT
  maxBound = AUDIO

instance P'.Default Placement where
  defaultValue = UNKNOWN_PLACEMENT

toMaybe'Enum :: Prelude'.Int -> P'.Maybe Placement
toMaybe'Enum 0 = Prelude'.Just UNKNOWN_PLACEMENT
toMaybe'Enum 1 = Prelude'.Just INSTREAM
toMaybe'Enum 2 = Prelude'.Just INTERSTITIAL
toMaybe'Enum 3 = Prelude'.Just IN_FEED
toMaybe'Enum 4 = Prelude'.Just AUDIO
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum Placement where
  fromEnum UNKNOWN_PLACEMENT = 0
  fromEnum INSTREAM = 1
  fromEnum INTERSTITIAL = 2
  fromEnum IN_FEED = 3
  fromEnum AUDIO = 4
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.Placement")
      . toMaybe'Enum
  succ UNKNOWN_PLACEMENT = INSTREAM
  succ INSTREAM = INTERSTITIAL
  succ INTERSTITIAL = IN_FEED
  succ IN_FEED = AUDIO
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.Placement"
  pred INSTREAM = UNKNOWN_PLACEMENT
  pred INTERSTITIAL = INSTREAM
  pred IN_FEED = INTERSTITIAL
  pred AUDIO = IN_FEED
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.Placement"

instance P'.Wire Placement where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB Placement

instance P'.MessageAPI msg' (msg' -> Placement) Placement where
  getVal m' f' = f' m'

instance P'.ReflectEnum Placement where
  reflectEnum
   = [(0, "UNKNOWN_PLACEMENT", UNKNOWN_PLACEMENT), (1, "INSTREAM", INSTREAM), (2, "INTERSTITIAL", INTERSTITIAL),
      (3, "IN_FEED", IN_FEED), (4, "AUDIO", AUDIO)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.Video.Placement") ["Web", "RTBBidder", "Protocol"] ["Adx", "BidRequest", "Video"]
        "Placement")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "Video", "Placement.hs"]
      [(0, "UNKNOWN_PLACEMENT"), (1, "INSTREAM"), (2, "INTERSTITIAL"), (3, "IN_FEED"), (4, "AUDIO")]

instance P'.TextType Placement where
  tellT = P'.tellShow
  getT = P'.getRead