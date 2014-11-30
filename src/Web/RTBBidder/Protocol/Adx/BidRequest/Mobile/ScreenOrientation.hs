{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Mobile.ScreenOrientation (ScreenOrientation(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data ScreenOrientation = SCREEN_ORIENTATION_UNKNOWN
                       | SCREEN_ORIENTATION_PORTRAIT
                       | SCREEN_ORIENTATION_LANDSCAPE
                       deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable ScreenOrientation
 
instance Prelude'.Bounded ScreenOrientation where
  minBound = SCREEN_ORIENTATION_UNKNOWN
  maxBound = SCREEN_ORIENTATION_LANDSCAPE
 
instance P'.Default ScreenOrientation where
  defaultValue = SCREEN_ORIENTATION_UNKNOWN
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe ScreenOrientation
toMaybe'Enum 0 = Prelude'.Just SCREEN_ORIENTATION_UNKNOWN
toMaybe'Enum 1 = Prelude'.Just SCREEN_ORIENTATION_PORTRAIT
toMaybe'Enum 2 = Prelude'.Just SCREEN_ORIENTATION_LANDSCAPE
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum ScreenOrientation where
  fromEnum SCREEN_ORIENTATION_UNKNOWN = 0
  fromEnum SCREEN_ORIENTATION_PORTRAIT = 1
  fromEnum SCREEN_ORIENTATION_LANDSCAPE = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Mobile.ScreenOrientation")
      . toMaybe'Enum
  succ SCREEN_ORIENTATION_UNKNOWN = SCREEN_ORIENTATION_PORTRAIT
  succ SCREEN_ORIENTATION_PORTRAIT = SCREEN_ORIENTATION_LANDSCAPE
  succ _
   = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Mobile.ScreenOrientation"
  pred SCREEN_ORIENTATION_PORTRAIT = SCREEN_ORIENTATION_UNKNOWN
  pred SCREEN_ORIENTATION_LANDSCAPE = SCREEN_ORIENTATION_PORTRAIT
  pred _
   = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Mobile.ScreenOrientation"
 
instance P'.Wire ScreenOrientation where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB ScreenOrientation
 
instance P'.MessageAPI msg' (msg' -> ScreenOrientation) ScreenOrientation where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum ScreenOrientation where
  reflectEnum
   = [(0, "SCREEN_ORIENTATION_UNKNOWN", SCREEN_ORIENTATION_UNKNOWN),
      (1, "SCREEN_ORIENTATION_PORTRAIT", SCREEN_ORIENTATION_PORTRAIT),
      (2, "SCREEN_ORIENTATION_LANDSCAPE", SCREEN_ORIENTATION_LANDSCAPE)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.Mobile.ScreenOrientation") ["Web", "RTBBidder", "Protocol"]
        ["Adx", "BidRequest", "Mobile"]
        "ScreenOrientation")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "Mobile", "ScreenOrientation.hs"]
      [(0, "SCREEN_ORIENTATION_UNKNOWN"), (1, "SCREEN_ORIENTATION_PORTRAIT"), (2, "SCREEN_ORIENTATION_LANDSCAPE")]
 
instance P'.TextType ScreenOrientation where
  tellT = P'.tellShow
  getT = P'.getRead