{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.PublisherType (PublisherType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data PublisherType = UNKNOWN_PUBLISHER_TYPE
                   | ADX_PUBLISHER_OWNED_AND_OPERATED
                   | ADX_PUBLISHER_REPRESENTED
                   | GOOGLE_REPRESENTED
                   deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                             Prelude'.Generic)

instance P'.Mergeable PublisherType

instance Prelude'.Bounded PublisherType where
  minBound = UNKNOWN_PUBLISHER_TYPE
  maxBound = GOOGLE_REPRESENTED

instance P'.Default PublisherType where
  defaultValue = UNKNOWN_PUBLISHER_TYPE

toMaybe'Enum :: Prelude'.Int -> P'.Maybe PublisherType
toMaybe'Enum 0 = Prelude'.Just UNKNOWN_PUBLISHER_TYPE
toMaybe'Enum 1 = Prelude'.Just ADX_PUBLISHER_OWNED_AND_OPERATED
toMaybe'Enum 2 = Prelude'.Just ADX_PUBLISHER_REPRESENTED
toMaybe'Enum 3 = Prelude'.Just GOOGLE_REPRESENTED
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum PublisherType where
  fromEnum UNKNOWN_PUBLISHER_TYPE = 0
  fromEnum ADX_PUBLISHER_OWNED_AND_OPERATED = 1
  fromEnum ADX_PUBLISHER_REPRESENTED = 2
  fromEnum GOOGLE_REPRESENTED = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.PublisherType")
      . toMaybe'Enum
  succ UNKNOWN_PUBLISHER_TYPE = ADX_PUBLISHER_OWNED_AND_OPERATED
  succ ADX_PUBLISHER_OWNED_AND_OPERATED = ADX_PUBLISHER_REPRESENTED
  succ ADX_PUBLISHER_REPRESENTED = GOOGLE_REPRESENTED
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.PublisherType"
  pred ADX_PUBLISHER_OWNED_AND_OPERATED = UNKNOWN_PUBLISHER_TYPE
  pred ADX_PUBLISHER_REPRESENTED = ADX_PUBLISHER_OWNED_AND_OPERATED
  pred GOOGLE_REPRESENTED = ADX_PUBLISHER_REPRESENTED
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.PublisherType"

instance P'.Wire PublisherType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB PublisherType

instance P'.MessageAPI msg' (msg' -> PublisherType) PublisherType where
  getVal m' f' = f' m'

instance P'.ReflectEnum PublisherType where
  reflectEnum
   = [(0, "UNKNOWN_PUBLISHER_TYPE", UNKNOWN_PUBLISHER_TYPE),
      (1, "ADX_PUBLISHER_OWNED_AND_OPERATED", ADX_PUBLISHER_OWNED_AND_OPERATED),
      (2, "ADX_PUBLISHER_REPRESENTED", ADX_PUBLISHER_REPRESENTED), (3, "GOOGLE_REPRESENTED", GOOGLE_REPRESENTED)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.PublisherType") ["Web", "RTBBidder", "Protocol"] ["Adx", "BidRequest"] "PublisherType")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "PublisherType.hs"]
      [(0, "UNKNOWN_PUBLISHER_TYPE"), (1, "ADX_PUBLISHER_OWNED_AND_OPERATED"), (2, "ADX_PUBLISHER_REPRESENTED"),
       (3, "GOOGLE_REPRESENTED")]

instance P'.TextType PublisherType where
  tellT = P'.tellShow
  getT = P'.getRead