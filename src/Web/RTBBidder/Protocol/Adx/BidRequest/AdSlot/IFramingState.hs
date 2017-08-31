{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.IFramingState (IFramingState(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data IFramingState = UNKNOWN_IFRAME_STATE
                   | NO_IFRAME
                   | SAME_DOMAIN_IFRAME
                   | CROSS_DOMAIN_IFRAME
                   deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                             Prelude'.Generic)

instance P'.Mergeable IFramingState

instance Prelude'.Bounded IFramingState where
  minBound = UNKNOWN_IFRAME_STATE
  maxBound = CROSS_DOMAIN_IFRAME

instance P'.Default IFramingState where
  defaultValue = UNKNOWN_IFRAME_STATE

toMaybe'Enum :: Prelude'.Int -> P'.Maybe IFramingState
toMaybe'Enum 0 = Prelude'.Just UNKNOWN_IFRAME_STATE
toMaybe'Enum 1 = Prelude'.Just NO_IFRAME
toMaybe'Enum 2 = Prelude'.Just SAME_DOMAIN_IFRAME
toMaybe'Enum 3 = Prelude'.Just CROSS_DOMAIN_IFRAME
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum IFramingState where
  fromEnum UNKNOWN_IFRAME_STATE = 0
  fromEnum NO_IFRAME = 1
  fromEnum SAME_DOMAIN_IFRAME = 2
  fromEnum CROSS_DOMAIN_IFRAME = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.IFramingState")
      . toMaybe'Enum
  succ UNKNOWN_IFRAME_STATE = NO_IFRAME
  succ NO_IFRAME = SAME_DOMAIN_IFRAME
  succ SAME_DOMAIN_IFRAME = CROSS_DOMAIN_IFRAME
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.IFramingState"
  pred NO_IFRAME = UNKNOWN_IFRAME_STATE
  pred SAME_DOMAIN_IFRAME = NO_IFRAME
  pred CROSS_DOMAIN_IFRAME = SAME_DOMAIN_IFRAME
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.IFramingState"

instance P'.Wire IFramingState where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB IFramingState

instance P'.MessageAPI msg' (msg' -> IFramingState) IFramingState where
  getVal m' f' = f' m'

instance P'.ReflectEnum IFramingState where
  reflectEnum
   = [(0, "UNKNOWN_IFRAME_STATE", UNKNOWN_IFRAME_STATE), (1, "NO_IFRAME", NO_IFRAME), (2, "SAME_DOMAIN_IFRAME", SAME_DOMAIN_IFRAME),
      (3, "CROSS_DOMAIN_IFRAME", CROSS_DOMAIN_IFRAME)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.AdSlot.IFramingState") ["Web", "RTBBidder", "Protocol"] ["Adx", "BidRequest", "AdSlot"]
        "IFramingState")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "AdSlot", "IFramingState.hs"]
      [(0, "UNKNOWN_IFRAME_STATE"), (1, "NO_IFRAME"), (2, "SAME_DOMAIN_IFRAME"), (3, "CROSS_DOMAIN_IFRAME")]

instance P'.TextType IFramingState where
  tellT = P'.tellShow
  getT = P'.getRead