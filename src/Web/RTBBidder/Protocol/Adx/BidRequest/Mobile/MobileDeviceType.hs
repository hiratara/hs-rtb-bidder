{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Mobile.MobileDeviceType (MobileDeviceType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data MobileDeviceType = UNKNOWN
                      | HIGHEND_PHONE
                      | TABLET
                      deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable MobileDeviceType
 
instance Prelude'.Bounded MobileDeviceType where
  minBound = UNKNOWN
  maxBound = TABLET
 
instance P'.Default MobileDeviceType where
  defaultValue = UNKNOWN
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe MobileDeviceType
toMaybe'Enum 0 = Prelude'.Just UNKNOWN
toMaybe'Enum 1 = Prelude'.Just HIGHEND_PHONE
toMaybe'Enum 2 = Prelude'.Just TABLET
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum MobileDeviceType where
  fromEnum UNKNOWN = 0
  fromEnum HIGHEND_PHONE = 1
  fromEnum TABLET = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Mobile.MobileDeviceType")
      . toMaybe'Enum
  succ UNKNOWN = HIGHEND_PHONE
  succ HIGHEND_PHONE = TABLET
  succ _
   = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Mobile.MobileDeviceType"
  pred HIGHEND_PHONE = UNKNOWN
  pred TABLET = HIGHEND_PHONE
  pred _
   = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Mobile.MobileDeviceType"
 
instance P'.Wire MobileDeviceType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB MobileDeviceType
 
instance P'.MessageAPI msg' (msg' -> MobileDeviceType) MobileDeviceType where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum MobileDeviceType where
  reflectEnum = [(0, "UNKNOWN", UNKNOWN), (1, "HIGHEND_PHONE", HIGHEND_PHONE), (2, "TABLET", TABLET)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.Mobile.MobileDeviceType") ["Web", "RTBBidder", "Protocol"]
        ["Adx", "BidRequest", "Mobile"]
        "MobileDeviceType")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "Mobile", "MobileDeviceType.hs"]
      [(0, "UNKNOWN"), (1, "HIGHEND_PHONE"), (2, "TABLET")]
 
instance P'.TextType MobileDeviceType where
  tellT = P'.tellShow
  getT = P'.getRead