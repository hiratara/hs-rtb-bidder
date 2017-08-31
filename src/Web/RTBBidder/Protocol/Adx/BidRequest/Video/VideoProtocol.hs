{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Video.VideoProtocol (VideoProtocol(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data VideoProtocol = UNKNOWN_VIDEO_PROTOCOL
                   | VAST_1_0
                   | VAST_2_0
                   | VAST_3_0
                   | VAST_1_0_WRAPPER
                   | VAST_2_0_WRAPPER
                   | VAST_3_0_WRAPPER
                   | VAST_4_0
                   | VAST_4_0_WRAPPER
                   | DAAST_1_0
                   | DAAST_1_0_WRAPPER
                   deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                             Prelude'.Generic)

instance P'.Mergeable VideoProtocol

instance Prelude'.Bounded VideoProtocol where
  minBound = UNKNOWN_VIDEO_PROTOCOL
  maxBound = DAAST_1_0_WRAPPER

instance P'.Default VideoProtocol where
  defaultValue = UNKNOWN_VIDEO_PROTOCOL

toMaybe'Enum :: Prelude'.Int -> P'.Maybe VideoProtocol
toMaybe'Enum 0 = Prelude'.Just UNKNOWN_VIDEO_PROTOCOL
toMaybe'Enum 1 = Prelude'.Just VAST_1_0
toMaybe'Enum 2 = Prelude'.Just VAST_2_0
toMaybe'Enum 3 = Prelude'.Just VAST_3_0
toMaybe'Enum 4 = Prelude'.Just VAST_1_0_WRAPPER
toMaybe'Enum 5 = Prelude'.Just VAST_2_0_WRAPPER
toMaybe'Enum 6 = Prelude'.Just VAST_3_0_WRAPPER
toMaybe'Enum 7 = Prelude'.Just VAST_4_0
toMaybe'Enum 8 = Prelude'.Just VAST_4_0_WRAPPER
toMaybe'Enum 9 = Prelude'.Just DAAST_1_0
toMaybe'Enum 10 = Prelude'.Just DAAST_1_0_WRAPPER
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum VideoProtocol where
  fromEnum UNKNOWN_VIDEO_PROTOCOL = 0
  fromEnum VAST_1_0 = 1
  fromEnum VAST_2_0 = 2
  fromEnum VAST_3_0 = 3
  fromEnum VAST_1_0_WRAPPER = 4
  fromEnum VAST_2_0_WRAPPER = 5
  fromEnum VAST_3_0_WRAPPER = 6
  fromEnum VAST_4_0 = 7
  fromEnum VAST_4_0_WRAPPER = 8
  fromEnum DAAST_1_0 = 9
  fromEnum DAAST_1_0_WRAPPER = 10
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.VideoProtocol")
      . toMaybe'Enum
  succ UNKNOWN_VIDEO_PROTOCOL = VAST_1_0
  succ VAST_1_0 = VAST_2_0
  succ VAST_2_0 = VAST_3_0
  succ VAST_3_0 = VAST_1_0_WRAPPER
  succ VAST_1_0_WRAPPER = VAST_2_0_WRAPPER
  succ VAST_2_0_WRAPPER = VAST_3_0_WRAPPER
  succ VAST_3_0_WRAPPER = VAST_4_0
  succ VAST_4_0 = VAST_4_0_WRAPPER
  succ VAST_4_0_WRAPPER = DAAST_1_0
  succ DAAST_1_0 = DAAST_1_0_WRAPPER
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.VideoProtocol"
  pred VAST_1_0 = UNKNOWN_VIDEO_PROTOCOL
  pred VAST_2_0 = VAST_1_0
  pred VAST_3_0 = VAST_2_0
  pred VAST_1_0_WRAPPER = VAST_3_0
  pred VAST_2_0_WRAPPER = VAST_1_0_WRAPPER
  pred VAST_3_0_WRAPPER = VAST_2_0_WRAPPER
  pred VAST_4_0 = VAST_3_0_WRAPPER
  pred VAST_4_0_WRAPPER = VAST_4_0
  pred DAAST_1_0 = VAST_4_0_WRAPPER
  pred DAAST_1_0_WRAPPER = DAAST_1_0
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.VideoProtocol"

instance P'.Wire VideoProtocol where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB VideoProtocol

instance P'.MessageAPI msg' (msg' -> VideoProtocol) VideoProtocol where
  getVal m' f' = f' m'

instance P'.ReflectEnum VideoProtocol where
  reflectEnum
   = [(0, "UNKNOWN_VIDEO_PROTOCOL", UNKNOWN_VIDEO_PROTOCOL), (1, "VAST_1_0", VAST_1_0), (2, "VAST_2_0", VAST_2_0),
      (3, "VAST_3_0", VAST_3_0), (4, "VAST_1_0_WRAPPER", VAST_1_0_WRAPPER), (5, "VAST_2_0_WRAPPER", VAST_2_0_WRAPPER),
      (6, "VAST_3_0_WRAPPER", VAST_3_0_WRAPPER), (7, "VAST_4_0", VAST_4_0), (8, "VAST_4_0_WRAPPER", VAST_4_0_WRAPPER),
      (9, "DAAST_1_0", DAAST_1_0), (10, "DAAST_1_0_WRAPPER", DAAST_1_0_WRAPPER)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.Video.VideoProtocol") ["Web", "RTBBidder", "Protocol"] ["Adx", "BidRequest", "Video"]
        "VideoProtocol")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "Video", "VideoProtocol.hs"]
      [(0, "UNKNOWN_VIDEO_PROTOCOL"), (1, "VAST_1_0"), (2, "VAST_2_0"), (3, "VAST_3_0"), (4, "VAST_1_0_WRAPPER"),
       (5, "VAST_2_0_WRAPPER"), (6, "VAST_3_0_WRAPPER"), (7, "VAST_4_0"), (8, "VAST_4_0_WRAPPER"), (9, "DAAST_1_0"),
       (10, "DAAST_1_0_WRAPPER")]

instance P'.TextType VideoProtocol where
  tellT = P'.tellShow
  getT = P'.getRead