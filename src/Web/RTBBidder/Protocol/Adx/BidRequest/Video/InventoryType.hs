{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Video.InventoryType (InventoryType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data InventoryType = WEB_VIDEO
                   | GAMES
                   | MOBILE_INTERSTITIAL
                   | MOBILE_APP_VIDEO
                   deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable InventoryType
 
instance Prelude'.Bounded InventoryType where
  minBound = WEB_VIDEO
  maxBound = MOBILE_APP_VIDEO
 
instance P'.Default InventoryType where
  defaultValue = WEB_VIDEO
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe InventoryType
toMaybe'Enum 0 = Prelude'.Just WEB_VIDEO
toMaybe'Enum 1 = Prelude'.Just GAMES
toMaybe'Enum 2 = Prelude'.Just MOBILE_INTERSTITIAL
toMaybe'Enum 3 = Prelude'.Just MOBILE_APP_VIDEO
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum InventoryType where
  fromEnum WEB_VIDEO = 0
  fromEnum GAMES = 1
  fromEnum MOBILE_INTERSTITIAL = 2
  fromEnum MOBILE_APP_VIDEO = 3
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.InventoryType")
      . toMaybe'Enum
  succ WEB_VIDEO = GAMES
  succ GAMES = MOBILE_INTERSTITIAL
  succ MOBILE_INTERSTITIAL = MOBILE_APP_VIDEO
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.InventoryType"
  pred GAMES = WEB_VIDEO
  pred MOBILE_INTERSTITIAL = GAMES
  pred MOBILE_APP_VIDEO = MOBILE_INTERSTITIAL
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.InventoryType"
 
instance P'.Wire InventoryType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB InventoryType
 
instance P'.MessageAPI msg' (msg' -> InventoryType) InventoryType where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum InventoryType where
  reflectEnum
   = [(0, "WEB_VIDEO", WEB_VIDEO), (1, "GAMES", GAMES), (2, "MOBILE_INTERSTITIAL", MOBILE_INTERSTITIAL),
      (3, "MOBILE_APP_VIDEO", MOBILE_APP_VIDEO)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.Video.InventoryType") ["Web", "RTBBidder", "Protocol"] ["Adx", "BidRequest", "Video"]
        "InventoryType")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "Video", "InventoryType.hs"]
      [(0, "WEB_VIDEO"), (1, "GAMES"), (2, "MOBILE_INTERSTITIAL"), (3, "MOBILE_APP_VIDEO")]
 
instance P'.TextType InventoryType where
  tellT = P'.tellShow
  getT = P'.getRead