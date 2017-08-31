{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.IFramingDepth (IFramingDepth(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data IFramingDepth = UNKNOWN_IFRAME_DEPTH
                   | NOT_IN_IFRAME
                   | ONE_IFRAME
                   | MULTIPLE_IFRAME
                   deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                             Prelude'.Generic)

instance P'.Mergeable IFramingDepth

instance Prelude'.Bounded IFramingDepth where
  minBound = UNKNOWN_IFRAME_DEPTH
  maxBound = MULTIPLE_IFRAME

instance P'.Default IFramingDepth where
  defaultValue = UNKNOWN_IFRAME_DEPTH

toMaybe'Enum :: Prelude'.Int -> P'.Maybe IFramingDepth
toMaybe'Enum 0 = Prelude'.Just UNKNOWN_IFRAME_DEPTH
toMaybe'Enum 1 = Prelude'.Just NOT_IN_IFRAME
toMaybe'Enum 2 = Prelude'.Just ONE_IFRAME
toMaybe'Enum 3 = Prelude'.Just MULTIPLE_IFRAME
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum IFramingDepth where
  fromEnum UNKNOWN_IFRAME_DEPTH = 0
  fromEnum NOT_IN_IFRAME = 1
  fromEnum ONE_IFRAME = 2
  fromEnum MULTIPLE_IFRAME = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.IFramingDepth")
      . toMaybe'Enum
  succ UNKNOWN_IFRAME_DEPTH = NOT_IN_IFRAME
  succ NOT_IN_IFRAME = ONE_IFRAME
  succ ONE_IFRAME = MULTIPLE_IFRAME
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.IFramingDepth"
  pred NOT_IN_IFRAME = UNKNOWN_IFRAME_DEPTH
  pred ONE_IFRAME = NOT_IN_IFRAME
  pred MULTIPLE_IFRAME = ONE_IFRAME
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.IFramingDepth"

instance P'.Wire IFramingDepth where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB IFramingDepth

instance P'.MessageAPI msg' (msg' -> IFramingDepth) IFramingDepth where
  getVal m' f' = f' m'

instance P'.ReflectEnum IFramingDepth where
  reflectEnum
   = [(0, "UNKNOWN_IFRAME_DEPTH", UNKNOWN_IFRAME_DEPTH), (1, "NOT_IN_IFRAME", NOT_IN_IFRAME), (2, "ONE_IFRAME", ONE_IFRAME),
      (3, "MULTIPLE_IFRAME", MULTIPLE_IFRAME)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.AdSlot.IFramingDepth") ["Web", "RTBBidder", "Protocol"] ["Adx", "BidRequest", "AdSlot"]
        "IFramingDepth")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "AdSlot", "IFramingDepth.hs"]
      [(0, "UNKNOWN_IFRAME_DEPTH"), (1, "NOT_IN_IFRAME"), (2, "ONE_IFRAME"), (3, "MULTIPLE_IFRAME")]

instance P'.TextType IFramingDepth where
  tellT = P'.tellShow
  getT = P'.getRead