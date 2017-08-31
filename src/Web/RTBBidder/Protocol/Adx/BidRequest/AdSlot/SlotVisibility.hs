{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.SlotVisibility (SlotVisibility(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data SlotVisibility = NO_DETECTION
                    | ABOVE_THE_FOLD
                    | BELOW_THE_FOLD
                    deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                              Prelude'.Generic)

instance P'.Mergeable SlotVisibility

instance Prelude'.Bounded SlotVisibility where
  minBound = NO_DETECTION
  maxBound = BELOW_THE_FOLD

instance P'.Default SlotVisibility where
  defaultValue = NO_DETECTION

toMaybe'Enum :: Prelude'.Int -> P'.Maybe SlotVisibility
toMaybe'Enum 0 = Prelude'.Just NO_DETECTION
toMaybe'Enum 1 = Prelude'.Just ABOVE_THE_FOLD
toMaybe'Enum 2 = Prelude'.Just BELOW_THE_FOLD
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum SlotVisibility where
  fromEnum NO_DETECTION = 0
  fromEnum ABOVE_THE_FOLD = 1
  fromEnum BELOW_THE_FOLD = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.SlotVisibility")
      . toMaybe'Enum
  succ NO_DETECTION = ABOVE_THE_FOLD
  succ ABOVE_THE_FOLD = BELOW_THE_FOLD
  succ _
   = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.SlotVisibility"
  pred ABOVE_THE_FOLD = NO_DETECTION
  pred BELOW_THE_FOLD = ABOVE_THE_FOLD
  pred _
   = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.SlotVisibility"

instance P'.Wire SlotVisibility where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB SlotVisibility

instance P'.MessageAPI msg' (msg' -> SlotVisibility) SlotVisibility where
  getVal m' f' = f' m'

instance P'.ReflectEnum SlotVisibility where
  reflectEnum = [(0, "NO_DETECTION", NO_DETECTION), (1, "ABOVE_THE_FOLD", ABOVE_THE_FOLD), (2, "BELOW_THE_FOLD", BELOW_THE_FOLD)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.AdSlot.SlotVisibility") ["Web", "RTBBidder", "Protocol"] ["Adx", "BidRequest", "AdSlot"]
        "SlotVisibility")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "AdSlot", "SlotVisibility.hs"]
      [(0, "NO_DETECTION"), (1, "ABOVE_THE_FOLD"), (2, "BELOW_THE_FOLD")]

instance P'.TextType SlotVisibility where
  tellT = P'.tellShow
  getT = P'.getRead