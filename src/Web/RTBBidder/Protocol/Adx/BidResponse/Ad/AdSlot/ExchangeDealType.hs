{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidResponse.Ad.AdSlot.ExchangeDealType (ExchangeDealType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data ExchangeDealType = OPEN_AUCTION
                      | PRIVATE_AUCTION
                      | PREFERRED_DEAL
                      deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                Prelude'.Generic)

instance P'.Mergeable ExchangeDealType

instance Prelude'.Bounded ExchangeDealType where
  minBound = OPEN_AUCTION
  maxBound = PREFERRED_DEAL

instance P'.Default ExchangeDealType where
  defaultValue = OPEN_AUCTION

toMaybe'Enum :: Prelude'.Int -> P'.Maybe ExchangeDealType
toMaybe'Enum 0 = Prelude'.Just OPEN_AUCTION
toMaybe'Enum 1 = Prelude'.Just PRIVATE_AUCTION
toMaybe'Enum 2 = Prelude'.Just PREFERRED_DEAL
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum ExchangeDealType where
  fromEnum OPEN_AUCTION = 0
  fromEnum PRIVATE_AUCTION = 1
  fromEnum PREFERRED_DEAL = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidResponse.Ad.AdSlot.ExchangeDealType")
      . toMaybe'Enum
  succ OPEN_AUCTION = PRIVATE_AUCTION
  succ PRIVATE_AUCTION = PREFERRED_DEAL
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidResponse.Ad.AdSlot.ExchangeDealType"
  pred PRIVATE_AUCTION = OPEN_AUCTION
  pred PREFERRED_DEAL = PRIVATE_AUCTION
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidResponse.Ad.AdSlot.ExchangeDealType"

instance P'.Wire ExchangeDealType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB ExchangeDealType

instance P'.MessageAPI msg' (msg' -> ExchangeDealType) ExchangeDealType where
  getVal m' f' = f' m'

instance P'.ReflectEnum ExchangeDealType where
  reflectEnum = [(0, "OPEN_AUCTION", OPEN_AUCTION), (1, "PRIVATE_AUCTION", PRIVATE_AUCTION), (2, "PREFERRED_DEAL", PREFERRED_DEAL)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidResponse.Ad.AdSlot.ExchangeDealType") ["Web", "RTBBidder", "Protocol"]
        ["Adx", "BidResponse", "Ad", "AdSlot"]
        "ExchangeDealType")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidResponse", "Ad", "AdSlot", "ExchangeDealType.hs"]
      [(0, "OPEN_AUCTION"), (1, "PRIVATE_AUCTION"), (2, "PREFERRED_DEAL")]

instance P'.TextType ExchangeDealType where
  tellT = P'.tellShow
  getT = P'.getRead