{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Device.ScreenOrientation (ScreenOrientation(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data ScreenOrientation = UNKNOWN_ORIENTATION
                       | PORTRAIT
                       | LANDSCAPE
                       deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                 Prelude'.Generic)

instance P'.Mergeable ScreenOrientation

instance Prelude'.Bounded ScreenOrientation where
  minBound = UNKNOWN_ORIENTATION
  maxBound = LANDSCAPE

instance P'.Default ScreenOrientation where
  defaultValue = UNKNOWN_ORIENTATION

toMaybe'Enum :: Prelude'.Int -> P'.Maybe ScreenOrientation
toMaybe'Enum 0 = Prelude'.Just UNKNOWN_ORIENTATION
toMaybe'Enum 1 = Prelude'.Just PORTRAIT
toMaybe'Enum 2 = Prelude'.Just LANDSCAPE
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum ScreenOrientation where
  fromEnum UNKNOWN_ORIENTATION = 0
  fromEnum PORTRAIT = 1
  fromEnum LANDSCAPE = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Device.ScreenOrientation")
      . toMaybe'Enum
  succ UNKNOWN_ORIENTATION = PORTRAIT
  succ PORTRAIT = LANDSCAPE
  succ _
   = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Device.ScreenOrientation"
  pred PORTRAIT = UNKNOWN_ORIENTATION
  pred LANDSCAPE = PORTRAIT
  pred _
   = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Device.ScreenOrientation"

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
  reflectEnum = [(0, "UNKNOWN_ORIENTATION", UNKNOWN_ORIENTATION), (1, "PORTRAIT", PORTRAIT), (2, "LANDSCAPE", LANDSCAPE)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.Device.ScreenOrientation") ["Web", "RTBBidder", "Protocol"]
        ["Adx", "BidRequest", "Device"]
        "ScreenOrientation")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "Device", "ScreenOrientation.hs"]
      [(0, "UNKNOWN_ORIENTATION"), (1, "PORTRAIT"), (2, "LANDSCAPE")]

instance P'.TextType ScreenOrientation where
  tellT = P'.tellShow
  getT = P'.getRead