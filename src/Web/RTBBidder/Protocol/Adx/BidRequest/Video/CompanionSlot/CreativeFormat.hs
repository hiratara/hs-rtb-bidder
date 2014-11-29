{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Video.CompanionSlot.CreativeFormat (CreativeFormat(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data CreativeFormat = IMAGE_CREATIVE
                    | FLASH_CREATIVE
                    | HTML_CREATIVE
                    deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable CreativeFormat
 
instance Prelude'.Bounded CreativeFormat where
  minBound = IMAGE_CREATIVE
  maxBound = HTML_CREATIVE
 
instance P'.Default CreativeFormat where
  defaultValue = IMAGE_CREATIVE
 
toMaybe'Enum :: Prelude'.Int -> P'.Maybe CreativeFormat
toMaybe'Enum 0 = Prelude'.Just IMAGE_CREATIVE
toMaybe'Enum 1 = Prelude'.Just FLASH_CREATIVE
toMaybe'Enum 2 = Prelude'.Just HTML_CREATIVE
toMaybe'Enum _ = Prelude'.Nothing
 
instance Prelude'.Enum CreativeFormat where
  fromEnum IMAGE_CREATIVE = 0
  fromEnum FLASH_CREATIVE = 1
  fromEnum HTML_CREATIVE = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.CompanionSlot.CreativeFormat")
      . toMaybe'Enum
  succ IMAGE_CREATIVE = FLASH_CREATIVE
  succ FLASH_CREATIVE = HTML_CREATIVE
  succ _
   = Prelude'.error
      "hprotoc generated code: succ failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.CompanionSlot.CreativeFormat"
  pred FLASH_CREATIVE = IMAGE_CREATIVE
  pred HTML_CREATIVE = FLASH_CREATIVE
  pred _
   = Prelude'.error
      "hprotoc generated code: pred failure for type Web.RTBBidder.Protocol.Adx.BidRequest.Video.CompanionSlot.CreativeFormat"
 
instance P'.Wire CreativeFormat where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'
 
instance P'.GPB CreativeFormat
 
instance P'.MessageAPI msg' (msg' -> CreativeFormat) CreativeFormat where
  getVal m' f' = f' m'
 
instance P'.ReflectEnum CreativeFormat where
  reflectEnum = [(0, "IMAGE_CREATIVE", IMAGE_CREATIVE), (1, "FLASH_CREATIVE", FLASH_CREATIVE), (2, "HTML_CREATIVE", HTML_CREATIVE)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".Adx.BidRequest.Video.CompanionSlot.CreativeFormat") ["Web", "RTBBidder", "Protocol"]
        ["Adx", "BidRequest", "Video", "CompanionSlot"]
        "CreativeFormat")
      ["Web", "RTBBidder", "Protocol", "Adx", "BidRequest", "Video", "CompanionSlot", "CreativeFormat.hs"]
      [(0, "IMAGE_CREATIVE"), (1, "FLASH_CREATIVE"), (2, "HTML_CREATIVE")]
 
instance P'.TextType CreativeFormat where
  tellT = P'.tellShow
  getT = P'.getRead