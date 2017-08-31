{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Video.CompanionSlot (CompanionSlot(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Video.CompanionSlot.CreativeFormat as Adx.BidRequest.Video.CompanionSlot
       (CreativeFormat)

data CompanionSlot = CompanionSlot{height :: !(P'.Seq P'.Int32), width :: !(P'.Seq P'.Int32),
                                   creative_format :: !(P'.Seq Adx.BidRequest.Video.CompanionSlot.CreativeFormat)}
                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable CompanionSlot where
  mergeAppend (CompanionSlot x'1 x'2 x'3) (CompanionSlot y'1 y'2 y'3)
   = CompanionSlot (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)

instance P'.Default CompanionSlot where
  defaultValue = CompanionSlot P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire CompanionSlot where
  wireSize ft' self'@(CompanionSlot x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizePacked 1 5 x'1 + P'.wireSizePacked 1 5 x'2 + P'.wireSizeRep 1 14 x'3)
  wirePut ft' self'@(CompanionSlot x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutPacked 10 5 x'1
             P'.wirePutPacked 18 5 x'2
             P'.wirePutRep 24 14 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{height = P'.append (height old'Self) new'Field}) (P'.wireGet 5)
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{height = P'.mergeAppend (height old'Self) new'Field})
                    (P'.wireGetPacked 5)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{width = P'.append (width old'Self) new'Field}) (P'.wireGet 5)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{width = P'.mergeAppend (width old'Self) new'Field}) (P'.wireGetPacked 5)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{creative_format = P'.append (creative_format old'Self) new'Field})
                    (P'.wireGet 14)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{creative_format = P'.mergeAppend (creative_format old'Self) new'Field})
                    (P'.wireGetPacked 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> CompanionSlot) CompanionSlot where
  getVal m' f' = f' m'

instance P'.GPB CompanionSlot

instance P'.ReflectDescriptor CompanionSlot where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 10, 16, 18, 24, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.Video.CompanionSlot\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName = MName \"CompanionSlot\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"Video\",\"CompanionSlot.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.CompanionSlot.height\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\",MName \"CompanionSlot\"], baseName' = FName \"height\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Just (WireTag {getWireTag = 8},WireTag {getWireTag = 10}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.CompanionSlot.width\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\",MName \"CompanionSlot\"], baseName' = FName \"width\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Just (WireTag {getWireTag = 16},WireTag {getWireTag = 18}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.CompanionSlot.creative_format\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\",MName \"CompanionSlot\"], baseName' = FName \"creative_format\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Just (WireTag {getWireTag = 24},WireTag {getWireTag = 26}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Video.CompanionSlot.CreativeFormat\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Video\",MName \"CompanionSlot\"], baseName = MName \"CreativeFormat\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType CompanionSlot where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg CompanionSlot where
  textPut msg
   = do
       P'.tellT "height" (height msg)
       P'.tellT "width" (width msg)
       P'.tellT "creative_format" (creative_format msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'height, parse'width, parse'creative_format]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'height
         = P'.try
            (do
               v <- P'.getT "height"
               Prelude'.return (\ o -> o{height = P'.append (height o) v}))
        parse'width
         = P'.try
            (do
               v <- P'.getT "width"
               Prelude'.return (\ o -> o{width = P'.append (width o) v}))
        parse'creative_format
         = P'.try
            (do
               v <- P'.getT "creative_format"
               Prelude'.return (\ o -> o{creative_format = P'.append (creative_format o) v}))