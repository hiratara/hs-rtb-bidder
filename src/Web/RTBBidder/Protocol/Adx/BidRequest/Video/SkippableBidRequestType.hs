{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Video.SkippableBidRequestType (SkippableBidRequestType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data SkippableBidRequestType = ALLOW_SKIPPABLE
                             | REQUIRE_SKIPPABLE
                             | BLOCK_SKIPPABLE
                             deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable SkippableBidRequestType
 
instance Prelude'.Bounded SkippableBidRequestType where
  minBound = ALLOW_SKIPPABLE
  maxBound = BLOCK_SKIPPABLE
 
instance P'.Default SkippableBidRequestType where
  defaultValue = ALLOW_SKIPPABLE
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe SkippableBidRequestType
toMaybe'Enum 0 = Prelude'.Just ALLOW_SKIPPABLE
toMaybe'Enum 1 = Prelude'.Just REQUIRE_SKIPPABLE
toMaybe'Enum 2 = Prelude'.Just BLOCK_SKIPPABLE
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum SkippableBidRequestType where
  fromEnum ALLOW_SKIPPABLE = 0
  fromEnum REQUIRE_SKIPPABLE = 1
  fromEnum BLOCK_SKIPPABLE = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.SkippableBidRequestType")
      . toMaybe'Enum
  succ ALLOW_SKIPPABLE = REQUIRE_SKIPPABLE
  succ REQUIRE_SKIPPABLE = BLOCK_SKIPPABLE
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.SkippableBidRequestType"
  pred REQUIRE_SKIPPABLE = ALLOW_SKIPPABLE
  pred BLOCK_SKIPPABLE = REQUIRE_SKIPPABLE
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.SkippableBidRequestType"
 
instance P'.Wire SkippableBidRequestType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB SkippableBidRequestType
 
instance P'.MessageAPI msg' (msg' -> SkippableBidRequestType) SkippableBidRequestType where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum SkippableBidRequestType where
  reflectEnum
   = [(0, "ALLOW_SKIPPABLE", ALLOW_SKIPPABLE), (1, "REQUIRE_SKIPPABLE", REQUIRE_SKIPPABLE), (2, "BLOCK_SKIPPABLE", BLOCK_SKIPPABLE)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.Video.SkippableBidRequestType") ["Web", "RTBBidder", "Protocol"]
        ["Adx", "BidRequest", "Video"]
        "SkippableBidRequestType")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "Video", "SkippableBidRequestType.hs"]
      [(0, "ALLOW_SKIPPABLE"), (1, "REQUIRE_SKIPPABLE"), (2, "BLOCK_SKIPPABLE")]
 
instance P'.TextType SkippableBidRequestType where
  tellT = P'.tellShow
  getT = P'.getRead