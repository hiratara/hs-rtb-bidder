{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.NativeAdTemplate.LayoutType (LayoutType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data LayoutType = PIXEL
                | FLUID
                deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                          Prelude'.Generic)

instance P'.Mergeable LayoutType

instance Prelude'.Bounded LayoutType where
  minBound = PIXEL
  maxBound = FLUID

instance P'.Default LayoutType where
  defaultValue = PIXEL

toMaybe'Enum :: Prelude'.Int -> P'.Maybe LayoutType
toMaybe'Enum 0 = Prelude'.Just PIXEL
toMaybe'Enum 1 = Prelude'.Just FLUID
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum LayoutType where
  fromEnum PIXEL = 0
  fromEnum FLUID = 1
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.NativeAdTemplate.LayoutType")
      . toMaybe'Enum
  succ PIXEL = FLUID
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.NativeAdTemplate.LayoutType"
  pred FLUID = PIXEL
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.NativeAdTemplate.LayoutType"

instance P'.Wire LayoutType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB LayoutType

instance P'.MessageAPI msg' (msg' -> LayoutType) LayoutType where
  getVal m' f' = f' m'

instance P'.ReflectEnum LayoutType where
  reflectEnum = [(0, "PIXEL", PIXEL), (1, "FLUID", FLUID)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.AdSlot.NativeAdTemplate.LayoutType") ["Web", "RTBBidder", "Protocol"]
        ["Adx", "BidRequest", "AdSlot", "NativeAdTemplate"]
        "LayoutType")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "AdSlot", "NativeAdTemplate", "LayoutType.hs"]
      [(0, "PIXEL"), (1, "FLUID")]

instance P'.TextType LayoutType where
  tellT = P'.tellShow
  getT = P'.getRead