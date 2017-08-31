{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.StickySettings.Stickiness (Stickiness(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Stickiness = UNKNOWN_STICKINESS
                | IS_STICKY
                deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                          Prelude'.Generic)

instance P'.Mergeable Stickiness

instance Prelude'.Bounded Stickiness where
  minBound = UNKNOWN_STICKINESS
  maxBound = IS_STICKY

instance P'.Default Stickiness where
  defaultValue = UNKNOWN_STICKINESS

toMaybe'Enum :: Prelude'.Int -> P'.Maybe Stickiness
toMaybe'Enum 0 = Prelude'.Just UNKNOWN_STICKINESS
toMaybe'Enum 1 = Prelude'.Just IS_STICKY
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum Stickiness where
  fromEnum UNKNOWN_STICKINESS = 0
  fromEnum IS_STICKY = 1
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.StickySettings.Stickiness")
      . toMaybe'Enum
  succ UNKNOWN_STICKINESS = IS_STICKY
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.StickySettings.Stickiness"
  pred IS_STICKY = UNKNOWN_STICKINESS
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.StickySettings.Stickiness"

instance P'.Wire Stickiness where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB Stickiness

instance P'.MessageAPI msg' (msg' -> Stickiness) Stickiness where
  getVal m' f' = f' m'

instance P'.ReflectEnum Stickiness where
  reflectEnum = [(0, "UNKNOWN_STICKINESS", UNKNOWN_STICKINESS), (1, "IS_STICKY", IS_STICKY)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.AdSlot.StickySettings.Stickiness") ["Web", "RTBBidder", "Protocol"]
        ["Adx", "BidRequest", "AdSlot", "StickySettings"]
        "Stickiness")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "AdSlot", "StickySettings", "Stickiness.hs"]
      [(0, "UNKNOWN_STICKINESS"), (1, "IS_STICKY")]

instance P'.TextType Stickiness where
  tellT = P'.tellShow
  getT = P'.getRead