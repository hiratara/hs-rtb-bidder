{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.NativeAdTemplate.Fields (Fields(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data Fields = HEADLINE
            | BODY
            | CALL_TO_ACTION
            | ADVERTISER
            | IMAGE
            | LOGO
            | APP_ICON
            | STAR_RATING
            | PRICE
            | STORE
            deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable Fields
 
instance Prelude'.Bounded Fields where
  minBound = HEADLINE
  maxBound = STORE
 
instance P'.Default Fields where
  defaultValue = HEADLINE
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe Fields
toMaybe'Enum 1 = Prelude'.Just HEADLINE
toMaybe'Enum 2 = Prelude'.Just BODY
toMaybe'Enum 4 = Prelude'.Just CALL_TO_ACTION
toMaybe'Enum 8 = Prelude'.Just ADVERTISER
toMaybe'Enum 16 = Prelude'.Just IMAGE
toMaybe'Enum 32 = Prelude'.Just LOGO
toMaybe'Enum 64 = Prelude'.Just APP_ICON
toMaybe'Enum 128 = Prelude'.Just STAR_RATING
toMaybe'Enum 256 = Prelude'.Just PRICE
toMaybe'Enum 512 = Prelude'.Just STORE
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum Fields where
  fromEnum HEADLINE = 1
  fromEnum BODY = 2
  fromEnum CALL_TO_ACTION = 4
  fromEnum ADVERTISER = 8
  fromEnum IMAGE = 16
  fromEnum LOGO = 32
  fromEnum APP_ICON = 64
  fromEnum STAR_RATING = 128
  fromEnum PRICE = 256
  fromEnum STORE = 512
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.NativeAdTemplate.Fields")
      . toMaybe'Enum
  succ HEADLINE = BODY
  succ BODY = CALL_TO_ACTION
  succ CALL_TO_ACTION = ADVERTISER
  succ ADVERTISER = IMAGE
  succ IMAGE = LOGO
  succ LOGO = APP_ICON
  succ APP_ICON = STAR_RATING
  succ STAR_RATING = PRICE
  succ PRICE = STORE
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.NativeAdTemplate.Fields"
  pred BODY = HEADLINE
  pred CALL_TO_ACTION = BODY
  pred ADVERTISER = CALL_TO_ACTION
  pred IMAGE = ADVERTISER
  pred LOGO = IMAGE
  pred APP_ICON = LOGO
  pred STAR_RATING = APP_ICON
  pred PRICE = STAR_RATING
  pred STORE = PRICE
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.NativeAdTemplate.Fields"
 
instance P'.Wire Fields where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB Fields
 
instance P'.MessageAPI msg' (msg' -> Fields) Fields where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum Fields where
  reflectEnum
   = [(1, "HEADLINE", HEADLINE), (2, "BODY", BODY), (4, "CALL_TO_ACTION", CALL_TO_ACTION), (8, "ADVERTISER", ADVERTISER),
      (16, "IMAGE", IMAGE), (32, "LOGO", LOGO), (64, "APP_ICON", APP_ICON), (128, "STAR_RATING", STAR_RATING),
      (256, "PRICE", PRICE), (512, "STORE", STORE)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.AdSlot.NativeAdTemplate.Fields") ["Web", "RTBBidder", "Protocol"]
        ["Adx", "BidRequest", "AdSlot", "NativeAdTemplate"]
        "Fields")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "AdSlot", "NativeAdTemplate", "Fields.hs"]
      [(1, "HEADLINE"), (2, "BODY"), (4, "CALL_TO_ACTION"), (8, "ADVERTISER"), (16, "IMAGE"), (32, "LOGO"), (64, "APP_ICON"),
       (128, "STAR_RATING"), (256, "PRICE"), (512, "STORE")]
 
instance P'.TextType Fields where
  tellT = P'.tellShow
  getT = P'.getRead