{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AmpAdRequestType (AmpAdRequestType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data AmpAdRequestType = UNKNOWN_AMP
                      | NON_AMP_PAGE
                      | AMP_PAGE_LATE_REQUEST
                      deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                Prelude'.Generic)

instance P'.Mergeable AmpAdRequestType

instance Prelude'.Bounded AmpAdRequestType where
  minBound = UNKNOWN_AMP
  maxBound = AMP_PAGE_LATE_REQUEST

instance P'.Default AmpAdRequestType where
  defaultValue = UNKNOWN_AMP

toMaybe'Enum :: Prelude'.Int -> P'.Maybe AmpAdRequestType
toMaybe'Enum 0 = Prelude'.Just UNKNOWN_AMP
toMaybe'Enum 1 = Prelude'.Just NON_AMP_PAGE
toMaybe'Enum 2 = Prelude'.Just AMP_PAGE_LATE_REQUEST
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum AmpAdRequestType where
  fromEnum UNKNOWN_AMP = 0
  fromEnum NON_AMP_PAGE = 1
  fromEnum AMP_PAGE_LATE_REQUEST = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AmpAdRequestType")
      . toMaybe'Enum
  succ UNKNOWN_AMP = NON_AMP_PAGE
  succ NON_AMP_PAGE = AMP_PAGE_LATE_REQUEST
  succ _
   = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AmpAdRequestType"
  pred NON_AMP_PAGE = UNKNOWN_AMP
  pred AMP_PAGE_LATE_REQUEST = NON_AMP_PAGE
  pred _
   = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AmpAdRequestType"

instance P'.Wire AmpAdRequestType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB AmpAdRequestType

instance P'.MessageAPI msg' (msg' -> AmpAdRequestType) AmpAdRequestType where
  getVal m' f' = f' m'

instance P'.ReflectEnum AmpAdRequestType where
  reflectEnum
   = [(0, "UNKNOWN_AMP", UNKNOWN_AMP), (1, "NON_AMP_PAGE", NON_AMP_PAGE), (2, "AMP_PAGE_LATE_REQUEST", AMP_PAGE_LATE_REQUEST)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.AdSlot.AmpAdRequestType") ["Web", "RTBBidder", "Protocol"]
        ["Adx", "BidRequest", "AdSlot"]
        "AmpAdRequestType")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "AdSlot", "AmpAdRequestType.hs"]
      [(0, "UNKNOWN_AMP"), (1, "NON_AMP_PAGE"), (2, "AMP_PAGE_LATE_REQUEST")]

instance P'.TextType AmpAdRequestType where
  tellT = P'.tellShow
  getT = P'.getRead