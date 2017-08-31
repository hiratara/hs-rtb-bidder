{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AutoRefresh.AutoRefreshSettings.AutoRefreshType (AutoRefreshType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data AutoRefreshType = UNKNOWN_AUTO_REFRESH_TYPE
                     | USER_ACTION
                     | EVENT
                     | TIME
                     deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                               Prelude'.Generic)

instance P'.Mergeable AutoRefreshType

instance Prelude'.Bounded AutoRefreshType where
  minBound = UNKNOWN_AUTO_REFRESH_TYPE
  maxBound = TIME

instance P'.Default AutoRefreshType where
  defaultValue = UNKNOWN_AUTO_REFRESH_TYPE

toMaybe'Enum :: Prelude'.Int -> P'.Maybe AutoRefreshType
toMaybe'Enum 0 = Prelude'.Just UNKNOWN_AUTO_REFRESH_TYPE
toMaybe'Enum 1 = Prelude'.Just USER_ACTION
toMaybe'Enum 2 = Prelude'.Just EVENT
toMaybe'Enum 3 = Prelude'.Just TIME
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum AutoRefreshType where
  fromEnum UNKNOWN_AUTO_REFRESH_TYPE = 0
  fromEnum USER_ACTION = 1
  fromEnum EVENT = 2
  fromEnum TIME = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AutoRefresh.AutoRefreshSettings.AutoRefreshType")
      . toMaybe'Enum
  succ UNKNOWN_AUTO_REFRESH_TYPE = USER_ACTION
  succ USER_ACTION = EVENT
  succ EVENT = TIME
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AutoRefresh.AutoRefreshSettings.AutoRefreshType"
  pred USER_ACTION = UNKNOWN_AUTO_REFRESH_TYPE
  pred EVENT = USER_ACTION
  pred TIME = EVENT
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AutoRefresh.AutoRefreshSettings.AutoRefreshType"

instance P'.Wire AutoRefreshType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB AutoRefreshType

instance P'.MessageAPI msg' (msg' -> AutoRefreshType) AutoRefreshType where
  getVal m' f' = f' m'

instance P'.ReflectEnum AutoRefreshType where
  reflectEnum
   = [(0, "UNKNOWN_AUTO_REFRESH_TYPE", UNKNOWN_AUTO_REFRESH_TYPE), (1, "USER_ACTION", USER_ACTION), (2, "EVENT", EVENT),
      (3, "TIME", TIME)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.AdSlot.AutoRefresh.AutoRefreshSettings.AutoRefreshType")
        ["Web", "RTBBidder", "Protocol"]
        ["Adx", "BidRequest", "AdSlot", "AutoRefresh", "AutoRefreshSettings"]
        "AutoRefreshType")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "AdSlot", "AutoRefresh", "AutoRefreshSettings", "AutoRefreshType.hs"]
      [(0, "UNKNOWN_AUTO_REFRESH_TYPE"), (1, "USER_ACTION"), (2, "EVENT"), (3, "TIME")]

instance P'.TextType AutoRefreshType where
  tellT = P'.tellShow
  getT = P'.getRead