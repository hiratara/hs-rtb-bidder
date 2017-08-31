{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Device.DeviceType (DeviceType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data DeviceType = UNKNOWN_DEVICE
                | HIGHEND_PHONE
                | TABLET
                | PERSONAL_COMPUTER
                | CONNECTED_TV
                | GAME_CONSOLE
                deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                          Prelude'.Generic)

instance P'.Mergeable DeviceType

instance Prelude'.Bounded DeviceType where
  minBound = UNKNOWN_DEVICE
  maxBound = GAME_CONSOLE

instance P'.Default DeviceType where
  defaultValue = UNKNOWN_DEVICE

toMaybe'Enum :: Prelude'.Int -> P'.Maybe DeviceType
toMaybe'Enum 0 = Prelude'.Just UNKNOWN_DEVICE
toMaybe'Enum 1 = Prelude'.Just HIGHEND_PHONE
toMaybe'Enum 2 = Prelude'.Just TABLET
toMaybe'Enum 3 = Prelude'.Just PERSONAL_COMPUTER
toMaybe'Enum 4 = Prelude'.Just CONNECTED_TV
toMaybe'Enum 5 = Prelude'.Just GAME_CONSOLE
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum DeviceType where
  fromEnum UNKNOWN_DEVICE = 0
  fromEnum HIGHEND_PHONE = 1
  fromEnum TABLET = 2
  fromEnum PERSONAL_COMPUTER = 3
  fromEnum CONNECTED_TV = 4
  fromEnum GAME_CONSOLE = 5
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Device.DeviceType")
      . toMaybe'Enum
  succ UNKNOWN_DEVICE = HIGHEND_PHONE
  succ HIGHEND_PHONE = TABLET
  succ TABLET = PERSONAL_COMPUTER
  succ PERSONAL_COMPUTER = CONNECTED_TV
  succ CONNECTED_TV = GAME_CONSOLE
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Device.DeviceType"
  pred HIGHEND_PHONE = UNKNOWN_DEVICE
  pred TABLET = HIGHEND_PHONE
  pred PERSONAL_COMPUTER = TABLET
  pred CONNECTED_TV = PERSONAL_COMPUTER
  pred GAME_CONSOLE = CONNECTED_TV
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Device.DeviceType"

instance P'.Wire DeviceType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB DeviceType

instance P'.MessageAPI msg' (msg' -> DeviceType) DeviceType where
  getVal m' f' = f' m'

instance P'.ReflectEnum DeviceType where
  reflectEnum
   = [(0, "UNKNOWN_DEVICE", UNKNOWN_DEVICE), (1, "HIGHEND_PHONE", HIGHEND_PHONE), (2, "TABLET", TABLET),
      (3, "PERSONAL_COMPUTER", PERSONAL_COMPUTER), (4, "CONNECTED_TV", CONNECTED_TV), (5, "GAME_CONSOLE", GAME_CONSOLE)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.Device.DeviceType") ["Web", "RTBBidder", "Protocol"] ["Adx", "BidRequest", "Device"]
        "DeviceType")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "Device", "DeviceType.hs"]
      [(0, "UNKNOWN_DEVICE"), (1, "HIGHEND_PHONE"), (2, "TABLET"), (3, "PERSONAL_COMPUTER"), (4, "CONNECTED_TV"),
       (5, "GAME_CONSOLE")]

instance P'.TextType DeviceType where
  tellT = P'.tellShow
  getT = P'.getRead