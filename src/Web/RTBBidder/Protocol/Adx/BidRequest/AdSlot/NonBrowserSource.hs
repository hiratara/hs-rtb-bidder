{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.NonBrowserSource (NonBrowserSource(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data NonBrowserSource = UNDECLARED_SOURCE
                      | DESKTOP_APP
                      deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                Prelude'.Generic)

instance P'.Mergeable NonBrowserSource

instance Prelude'.Bounded NonBrowserSource where
  minBound = UNDECLARED_SOURCE
  maxBound = DESKTOP_APP

instance P'.Default NonBrowserSource where
  defaultValue = UNDECLARED_SOURCE

toMaybe'Enum :: Prelude'.Int -> P'.Maybe NonBrowserSource
toMaybe'Enum 0 = Prelude'.Just UNDECLARED_SOURCE
toMaybe'Enum 1 = Prelude'.Just DESKTOP_APP
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum NonBrowserSource where
  fromEnum UNDECLARED_SOURCE = 0
  fromEnum DESKTOP_APP = 1
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.NonBrowserSource")
      . toMaybe'Enum
  succ UNDECLARED_SOURCE = DESKTOP_APP
  succ _
   = Prelude'.error "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.NonBrowserSource"
  pred DESKTOP_APP = UNDECLARED_SOURCE
  pred _
   = Prelude'.error "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.NonBrowserSource"

instance P'.Wire NonBrowserSource where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB NonBrowserSource

instance P'.MessageAPI msg' (msg' -> NonBrowserSource) NonBrowserSource where
  getVal m' f' = f' m'

instance P'.ReflectEnum NonBrowserSource where
  reflectEnum = [(0, "UNDECLARED_SOURCE", UNDECLARED_SOURCE), (1, "DESKTOP_APP", DESKTOP_APP)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.AdSlot.NonBrowserSource") ["Web", "RTBBidder", "Protocol"]
        ["Adx", "BidRequest", "AdSlot"]
        "NonBrowserSource")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "AdSlot", "NonBrowserSource.hs"]
      [(0, "UNDECLARED_SOURCE"), (1, "DESKTOP_APP")]

instance P'.TextType NonBrowserSource where
  tellT = P'.tellShow
  getT = P'.getRead