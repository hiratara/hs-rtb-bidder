{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.UserDataTreatment (UserDataTreatment(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data UserDataTreatment = TAG_FOR_CHILD_DIRECTED_TREATMENT
                       deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                 Prelude'.Generic)

instance P'.Mergeable UserDataTreatment

instance Prelude'.Bounded UserDataTreatment where
  minBound = TAG_FOR_CHILD_DIRECTED_TREATMENT
  maxBound = TAG_FOR_CHILD_DIRECTED_TREATMENT

instance P'.Default UserDataTreatment where
  defaultValue = TAG_FOR_CHILD_DIRECTED_TREATMENT

toMaybe'Enum :: Prelude'.Int -> P'.Maybe UserDataTreatment
toMaybe'Enum 0 = Prelude'.Just TAG_FOR_CHILD_DIRECTED_TREATMENT
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum UserDataTreatment where
  fromEnum TAG_FOR_CHILD_DIRECTED_TREATMENT = 0
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.UserDataTreatment")
      . toMaybe'Enum
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.UserDataTreatment"
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.UserDataTreatment"

instance P'.Wire UserDataTreatment where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB UserDataTreatment

instance P'.MessageAPI msg' (msg' -> UserDataTreatment) UserDataTreatment where
  getVal m' f' = f' m'

instance P'.ReflectEnum UserDataTreatment where
  reflectEnum = [(0, "TAG_FOR_CHILD_DIRECTED_TREATMENT", TAG_FOR_CHILD_DIRECTED_TREATMENT)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.UserDataTreatment") ["Web", "RTBBidder", "Protocol"] ["Adx", "BidRequest"]
        "UserDataTreatment")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "UserDataTreatment.hs"]
      [(0, "TAG_FOR_CHILD_DIRECTED_TREATMENT")]

instance P'.TextType UserDataTreatment where
  tellT = P'.tellShow
  getT = P'.getRead