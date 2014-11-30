{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.UserDemographic.Gender (Gender(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data Gender = UNKNOWN
            | MALE
            | FEMALE
            deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable Gender
 
instance Prelude'.Bounded Gender where
  minBound = UNKNOWN
  maxBound = FEMALE
 
instance P'.Default Gender where
  defaultValue = UNKNOWN
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe Gender
toMaybe'Enum 0 = Prelude'.Just UNKNOWN
toMaybe'Enum 1 = Prelude'.Just MALE
toMaybe'Enum 2 = Prelude'.Just FEMALE
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum Gender where
  fromEnum UNKNOWN = 0
  fromEnum MALE = 1
  fromEnum FEMALE = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.UserDemographic.Gender")
      . toMaybe'Enum
  succ UNKNOWN = MALE
  succ MALE = FEMALE
  succ _
   = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.UserDemographic.Gender"
  pred MALE = UNKNOWN
  pred FEMALE = MALE
  pred _
   = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.UserDemographic.Gender"
 
instance P'.Wire Gender where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB Gender
 
instance P'.MessageAPI msg' (msg' -> Gender) Gender where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum Gender where
  reflectEnum = [(0, "UNKNOWN", UNKNOWN), (1, "MALE", MALE), (2, "FEMALE", FEMALE)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.UserDemographic.Gender") ["Web", "RTBBidder", "Protocol"]
        ["Adx", "BidRequest", "UserDemographic"]
        "Gender")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "UserDemographic", "Gender.hs"]
      [(0, "UNKNOWN"), (1, "MALE"), (2, "FEMALE")]
 
instance P'.TextType Gender where
  tellT = P'.tellShow
  getT = P'.getRead