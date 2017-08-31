{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Video.EndCapSupport (EndCapSupport(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data EndCapSupport = END_CAP_NOT_ENABLED
                   | END_CAP_OPTIONAL
                   | END_CAP_FORBIDDEN
                   | END_CAP_REQUIRED
                   deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                             Prelude'.Generic)

instance P'.Mergeable EndCapSupport

instance Prelude'.Bounded EndCapSupport where
  minBound = END_CAP_NOT_ENABLED
  maxBound = END_CAP_REQUIRED

instance P'.Default EndCapSupport where
  defaultValue = END_CAP_NOT_ENABLED

toMaybe'Enum :: Prelude'.Int -> P'.Maybe EndCapSupport
toMaybe'Enum 0 = Prelude'.Just END_CAP_NOT_ENABLED
toMaybe'Enum 1 = Prelude'.Just END_CAP_OPTIONAL
toMaybe'Enum 2 = Prelude'.Just END_CAP_FORBIDDEN
toMaybe'Enum 3 = Prelude'.Just END_CAP_REQUIRED
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum EndCapSupport where
  fromEnum END_CAP_NOT_ENABLED = 0
  fromEnum END_CAP_OPTIONAL = 1
  fromEnum END_CAP_FORBIDDEN = 2
  fromEnum END_CAP_REQUIRED = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.EndCapSupport")
      . toMaybe'Enum
  succ END_CAP_NOT_ENABLED = END_CAP_OPTIONAL
  succ END_CAP_OPTIONAL = END_CAP_FORBIDDEN
  succ END_CAP_FORBIDDEN = END_CAP_REQUIRED
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.EndCapSupport"
  pred END_CAP_OPTIONAL = END_CAP_NOT_ENABLED
  pred END_CAP_FORBIDDEN = END_CAP_OPTIONAL
  pred END_CAP_REQUIRED = END_CAP_FORBIDDEN
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.EndCapSupport"

instance P'.Wire EndCapSupport where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB EndCapSupport

instance P'.MessageAPI msg' (msg' -> EndCapSupport) EndCapSupport where
  getVal m' f' = f' m'

instance P'.ReflectEnum EndCapSupport where
  reflectEnum
   = [(0, "END_CAP_NOT_ENABLED", END_CAP_NOT_ENABLED), (1, "END_CAP_OPTIONAL", END_CAP_OPTIONAL),
      (2, "END_CAP_FORBIDDEN", END_CAP_FORBIDDEN), (3, "END_CAP_REQUIRED", END_CAP_REQUIRED)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.Video.EndCapSupport") ["Web", "RTBBidder", "Protocol"] ["Adx", "BidRequest", "Video"]
        "EndCapSupport")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "Video", "EndCapSupport.hs"]
      [(0, "END_CAP_NOT_ENABLED"), (1, "END_CAP_OPTIONAL"), (2, "END_CAP_FORBIDDEN"), (3, "END_CAP_REQUIRED")]

instance P'.TextType EndCapSupport where
  tellT = P'.tellShow
  getT = P'.getRead