{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AllowedAdType (AllowedAdType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data AllowedAdType = UNKNOWN_ALLOWED_AD_TYPE
                   | ALLOWED_AD_TYPE_BANNER
                   | ALLOWED_AD_TYPE_NATIVE
                   | ALLOWED_AD_TYPE_VIDEO
                   | ALLOWED_AD_TYPE_AUDIO
                   deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                             Prelude'.Generic)

instance P'.Mergeable AllowedAdType

instance Prelude'.Bounded AllowedAdType where
  minBound = UNKNOWN_ALLOWED_AD_TYPE
  maxBound = ALLOWED_AD_TYPE_AUDIO

instance P'.Default AllowedAdType where
  defaultValue = UNKNOWN_ALLOWED_AD_TYPE

toMaybe'Enum :: Prelude'.Int -> P'.Maybe AllowedAdType
toMaybe'Enum (-1) = Prelude'.Just UNKNOWN_ALLOWED_AD_TYPE
toMaybe'Enum 0 = Prelude'.Just ALLOWED_AD_TYPE_BANNER
toMaybe'Enum 1 = Prelude'.Just ALLOWED_AD_TYPE_NATIVE
toMaybe'Enum 2 = Prelude'.Just ALLOWED_AD_TYPE_VIDEO
toMaybe'Enum 3 = Prelude'.Just ALLOWED_AD_TYPE_AUDIO
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum AllowedAdType where
  fromEnum UNKNOWN_ALLOWED_AD_TYPE = (-1)
  fromEnum ALLOWED_AD_TYPE_BANNER = 0
  fromEnum ALLOWED_AD_TYPE_NATIVE = 1
  fromEnum ALLOWED_AD_TYPE_VIDEO = 2
  fromEnum ALLOWED_AD_TYPE_AUDIO = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AllowedAdType")
      . toMaybe'Enum
  succ UNKNOWN_ALLOWED_AD_TYPE = ALLOWED_AD_TYPE_BANNER
  succ ALLOWED_AD_TYPE_BANNER = ALLOWED_AD_TYPE_NATIVE
  succ ALLOWED_AD_TYPE_NATIVE = ALLOWED_AD_TYPE_VIDEO
  succ ALLOWED_AD_TYPE_VIDEO = ALLOWED_AD_TYPE_AUDIO
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AllowedAdType"
  pred ALLOWED_AD_TYPE_BANNER = UNKNOWN_ALLOWED_AD_TYPE
  pred ALLOWED_AD_TYPE_NATIVE = ALLOWED_AD_TYPE_BANNER
  pred ALLOWED_AD_TYPE_VIDEO = ALLOWED_AD_TYPE_NATIVE
  pred ALLOWED_AD_TYPE_AUDIO = ALLOWED_AD_TYPE_VIDEO
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AllowedAdType"

instance P'.Wire AllowedAdType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB AllowedAdType

instance P'.MessageAPI msg' (msg' -> AllowedAdType) AllowedAdType where
  getVal m' f' = f' m'

instance P'.ReflectEnum AllowedAdType where
  reflectEnum
   = [((-1), "UNKNOWN_ALLOWED_AD_TYPE", UNKNOWN_ALLOWED_AD_TYPE), (0, "ALLOWED_AD_TYPE_BANNER", ALLOWED_AD_TYPE_BANNER),
      (1, "ALLOWED_AD_TYPE_NATIVE", ALLOWED_AD_TYPE_NATIVE), (2, "ALLOWED_AD_TYPE_VIDEO", ALLOWED_AD_TYPE_VIDEO),
      (3, "ALLOWED_AD_TYPE_AUDIO", ALLOWED_AD_TYPE_AUDIO)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.AdSlot.AllowedAdType") ["Web", "RTBBidder", "Protocol"] ["Adx", "BidRequest", "AdSlot"]
        "AllowedAdType")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "AdSlot", "AllowedAdType.hs"]
      [((-1), "UNKNOWN_ALLOWED_AD_TYPE"), (0, "ALLOWED_AD_TYPE_BANNER"), (1, "ALLOWED_AD_TYPE_NATIVE"),
       (2, "ALLOWED_AD_TYPE_VIDEO"), (3, "ALLOWED_AD_TYPE_AUDIO")]

instance P'.TextType AllowedAdType where
  tellT = P'.tellShow
  getT = P'.getRead