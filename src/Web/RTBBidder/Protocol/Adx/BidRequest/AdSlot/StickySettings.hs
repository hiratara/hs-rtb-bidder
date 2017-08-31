{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.StickySettings (StickySettings(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.StickySettings.Stickiness as Adx.BidRequest.AdSlot.StickySettings
       (Stickiness)

data StickySettings = StickySettings{vertical_stickiness :: !(P'.Maybe Adx.BidRequest.AdSlot.StickySettings.Stickiness),
                                     top_horizontal_stickiness :: !(P'.Maybe Adx.BidRequest.AdSlot.StickySettings.Stickiness),
                                     bottom_horizontal_stickiness :: !(P'.Maybe Adx.BidRequest.AdSlot.StickySettings.Stickiness)}
                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable StickySettings where
  mergeAppend (StickySettings x'1 x'2 x'3) (StickySettings y'1 y'2 y'3)
   = StickySettings (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)

instance P'.Default StickySettings where
  defaultValue
   = StickySettings (Prelude'.Just (Prelude'.read "UNKNOWN_STICKINESS")) (Prelude'.Just (Prelude'.read "UNKNOWN_STICKINESS"))
      (Prelude'.Just (Prelude'.read "UNKNOWN_STICKINESS"))

instance P'.Wire StickySettings where
  wireSize ft' self'@(StickySettings x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeOpt 1 14 x'2 + P'.wireSizeOpt 1 14 x'3)
  wirePut ft' self'@(StickySettings x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 14 x'1
             P'.wirePutOpt 16 14 x'2
             P'.wirePutOpt 24 14 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{vertical_stickiness = Prelude'.Just new'Field}) (P'.wireGet 14)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{top_horizontal_stickiness = Prelude'.Just new'Field}) (P'.wireGet 14)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{bottom_horizontal_stickiness = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> StickySettings) StickySettings where
  getVal m' f' = f' m'

instance P'.GPB StickySettings

instance P'.ReflectDescriptor StickySettings where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.StickySettings\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"StickySettings\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"AdSlot\",\"StickySettings.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.StickySettings.vertical_stickiness\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"StickySettings\"], baseName' = FName \"vertical_stickiness\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.StickySettings.Stickiness\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"StickySettings\"], baseName = MName \"Stickiness\"}), hsRawDefault = Just \"UNKNOWN_STICKINESS\", hsDefault = Just (HsDef'Enum \"UNKNOWN_STICKINESS\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.StickySettings.top_horizontal_stickiness\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"StickySettings\"], baseName' = FName \"top_horizontal_stickiness\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.StickySettings.Stickiness\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"StickySettings\"], baseName = MName \"Stickiness\"}), hsRawDefault = Just \"UNKNOWN_STICKINESS\", hsDefault = Just (HsDef'Enum \"UNKNOWN_STICKINESS\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.StickySettings.bottom_horizontal_stickiness\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"StickySettings\"], baseName' = FName \"bottom_horizontal_stickiness\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.StickySettings.Stickiness\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"StickySettings\"], baseName = MName \"Stickiness\"}), hsRawDefault = Just \"UNKNOWN_STICKINESS\", hsDefault = Just (HsDef'Enum \"UNKNOWN_STICKINESS\")}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType StickySettings where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg StickySettings where
  textPut msg
   = do
       P'.tellT "vertical_stickiness" (vertical_stickiness msg)
       P'.tellT "top_horizontal_stickiness" (top_horizontal_stickiness msg)
       P'.tellT "bottom_horizontal_stickiness" (bottom_horizontal_stickiness msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice [parse'vertical_stickiness, parse'top_horizontal_stickiness, parse'bottom_horizontal_stickiness])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'vertical_stickiness
         = P'.try
            (do
               v <- P'.getT "vertical_stickiness"
               Prelude'.return (\ o -> o{vertical_stickiness = v}))
        parse'top_horizontal_stickiness
         = P'.try
            (do
               v <- P'.getT "top_horizontal_stickiness"
               Prelude'.return (\ o -> o{top_horizontal_stickiness = v}))
        parse'bottom_horizontal_stickiness
         = P'.try
            (do
               v <- P'.getT "bottom_horizontal_stickiness"
               Prelude'.return (\ o -> o{bottom_horizontal_stickiness = v}))