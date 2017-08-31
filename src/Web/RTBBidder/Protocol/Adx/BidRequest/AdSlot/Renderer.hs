{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.Renderer (Renderer(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Renderer = UNKNOWN_RENDERER
              | GOOGLE
              | PUBLISHER
              deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Renderer

instance Prelude'.Bounded Renderer where
  minBound = UNKNOWN_RENDERER
  maxBound = PUBLISHER

instance P'.Default Renderer where
  defaultValue = UNKNOWN_RENDERER

toMaybe'Enum :: Prelude'.Int -> P'.Maybe Renderer
toMaybe'Enum 0 = Prelude'.Just UNKNOWN_RENDERER
toMaybe'Enum 1 = Prelude'.Just GOOGLE
toMaybe'Enum 2 = Prelude'.Just PUBLISHER
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum Renderer where
  fromEnum UNKNOWN_RENDERER = 0
  fromEnum GOOGLE = 1
  fromEnum PUBLISHER = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.Renderer")
      . toMaybe'Enum
  succ UNKNOWN_RENDERER = GOOGLE
  succ GOOGLE = PUBLISHER
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.Renderer"
  pred GOOGLE = UNKNOWN_RENDERER
  pred PUBLISHER = GOOGLE
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.Renderer"

instance P'.Wire Renderer where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB Renderer

instance P'.MessageAPI msg' (msg' -> Renderer) Renderer where
  getVal m' f' = f' m'

instance P'.ReflectEnum Renderer where
  reflectEnum = [(0, "UNKNOWN_RENDERER", UNKNOWN_RENDERER), (1, "GOOGLE", GOOGLE), (2, "PUBLISHER", PUBLISHER)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.AdSlot.Renderer") ["Web", "RTBBidder", "Protocol"] ["Adx", "BidRequest", "AdSlot"]
        "Renderer")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "AdSlot", "Renderer.hs"]
      [(0, "UNKNOWN_RENDERER"), (1, "GOOGLE"), (2, "PUBLISHER")]

instance P'.TextType Renderer where
  tellT = P'.tellShow
  getT = P'.getRead