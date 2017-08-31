{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal.DealType (DealType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data DealType = UNKNOWN_DEAL_TYPE
              | PREFERRED_DEAL
              | PRIVATE_AUCTION
              | PROGRAMMATIC_GUARANTEED
              deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable DealType

instance Prelude'.Bounded DealType where
  minBound = UNKNOWN_DEAL_TYPE
  maxBound = PROGRAMMATIC_GUARANTEED

instance P'.Default DealType where
  defaultValue = UNKNOWN_DEAL_TYPE

toMaybe'Enum :: Prelude'.Int -> P'.Maybe DealType
toMaybe'Enum 0 = Prelude'.Just UNKNOWN_DEAL_TYPE
toMaybe'Enum 1 = Prelude'.Just PREFERRED_DEAL
toMaybe'Enum 2 = Prelude'.Just PRIVATE_AUCTION
toMaybe'Enum 3 = Prelude'.Just PROGRAMMATIC_GUARANTEED
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum DealType where
  fromEnum UNKNOWN_DEAL_TYPE = 0
  fromEnum PREFERRED_DEAL = 1
  fromEnum PRIVATE_AUCTION = 2
  fromEnum PROGRAMMATIC_GUARANTEED = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal.DealType")
      . toMaybe'Enum
  succ UNKNOWN_DEAL_TYPE = PREFERRED_DEAL
  succ PREFERRED_DEAL = PRIVATE_AUCTION
  succ PRIVATE_AUCTION = PROGRAMMATIC_GUARANTEED
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal.DealType"
  pred PREFERRED_DEAL = UNKNOWN_DEAL_TYPE
  pred PRIVATE_AUCTION = PREFERRED_DEAL
  pred PROGRAMMATIC_GUARANTEED = PRIVATE_AUCTION
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal.DealType"

instance P'.Wire DealType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB DealType

instance P'.MessageAPI msg' (msg' -> DealType) DealType where
  getVal m' f' = f' m'

instance P'.ReflectEnum DealType where
  reflectEnum
   = [(0, "UNKNOWN_DEAL_TYPE", UNKNOWN_DEAL_TYPE), (1, "PREFERRED_DEAL", PREFERRED_DEAL), (2, "PRIVATE_AUCTION", PRIVATE_AUCTION),
      (3, "PROGRAMMATIC_GUARANTEED", PROGRAMMATIC_GUARANTEED)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal.DealType") ["Web", "RTBBidder", "Protocol"]
        ["Adx", "BidRequest", "AdSlot", "MatchingAdData", "DirectDeal"]
        "DealType")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "AdSlot", "MatchingAdData", "DirectDeal", "DealType.hs"]
      [(0, "UNKNOWN_DEAL_TYPE"), (1, "PREFERRED_DEAL"), (2, "PRIVATE_AUCTION"), (3, "PROGRAMMATIC_GUARANTEED")]

instance P'.TextType DealType where
  tellT = P'.tellShow
  getT = P'.getRead