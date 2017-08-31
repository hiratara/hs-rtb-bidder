{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MediationStatus (MediationStatus(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data MediationStatus = UNKNOWN
                     | DIRECT_REQUEST
                     deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                               Prelude'.Generic)

instance P'.Mergeable MediationStatus

instance Prelude'.Bounded MediationStatus where
  minBound = UNKNOWN
  maxBound = DIRECT_REQUEST

instance P'.Default MediationStatus where
  defaultValue = UNKNOWN

toMaybe'Enum :: Prelude'.Int -> P'.Maybe MediationStatus
toMaybe'Enum 0 = Prelude'.Just UNKNOWN
toMaybe'Enum 1 = Prelude'.Just DIRECT_REQUEST
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum MediationStatus where
  fromEnum UNKNOWN = 0
  fromEnum DIRECT_REQUEST = 1
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MediationStatus")
      . toMaybe'Enum
  succ UNKNOWN = DIRECT_REQUEST
  succ _
   = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MediationStatus"
  pred DIRECT_REQUEST = UNKNOWN
  pred _
   = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MediationStatus"

instance P'.Wire MediationStatus where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB MediationStatus

instance P'.MessageAPI msg' (msg' -> MediationStatus) MediationStatus where
  getVal m' f' = f' m'

instance P'.ReflectEnum MediationStatus where
  reflectEnum = [(0, "UNKNOWN", UNKNOWN), (1, "DIRECT_REQUEST", DIRECT_REQUEST)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.AdSlot.MediationStatus") ["Web", "RTBBidder", "Protocol"]
        ["Adx", "BidRequest", "AdSlot"]
        "MediationStatus")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "AdSlot", "MediationStatus.hs"]
      [(0, "UNKNOWN"), (1, "DIRECT_REQUEST")]

instance P'.TextType MediationStatus where
  tellT = P'.tellShow
  getT = P'.getRead