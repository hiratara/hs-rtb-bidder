{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidResponse (BidResponse(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidResponse.Ad as Adx.BidResponse (Ad)
 
data BidResponse = BidResponse{ad :: !(P'.Seq Adx.BidResponse.Ad), debug_string :: !(P'.Maybe P'.Utf8),
                               processing_time_ms :: !(P'.Maybe P'.Int32), dEPRECATED_protocol_version :: !(P'.Maybe P'.Int32)}
                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable BidResponse where
  mergeAppend (BidResponse x'1 x'2 x'3 x'4) (BidResponse y'1 y'2 y'3 y'4)
   = BidResponse (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
 
instance P'.Default BidResponse where
  defaultValue = BidResponse P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire BidResponse where
  wireSize ft' self'@(BidResponse x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 5 x'3 + P'.wireSizeOpt 1 5 x'4)
  wirePut ft' self'@(BidResponse x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 5 x'4
             P'.wirePutRep 18 11 x'1
             P'.wirePutOpt 32 5 x'3
             P'.wirePutOpt 42 9 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{ad = P'.append (ad old'Self) new'Field}) (P'.wireGet 11)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{debug_string = Prelude'.Just new'Field}) (P'.wireGet 9)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{processing_time_ms = Prelude'.Just new'Field}) (P'.wireGet 5)
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_protocol_version = Prelude'.Just new'Field}) (P'.wireGet 5)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> BidResponse) BidResponse where
  getVal m' f' = f' m'
 
instance P'.GPB BidResponse
 
instance P'.ReflectDescriptor BidResponse where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18, 32, 42])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidResponse\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\"], baseName = MName \"BidResponse\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidResponse.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.ad\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\"], baseName' = FName \"ad\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidResponse.Ad\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidResponse\"], baseName = MName \"Ad\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.debug_string\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\"], baseName' = FName \"debug_string\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.processing_time_ms\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\"], baseName' = FName \"processing_time_ms\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.DEPRECATED_protocol_version\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\"], baseName' = FName \"dEPRECATED_protocol_version\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False}"
 
instance P'.TextType BidResponse where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg BidResponse where
  textPut msg
   = do
       P'.tellT "ad" (ad msg)
       P'.tellT "debug_string" (debug_string msg)
       P'.tellT "processing_time_ms" (processing_time_ms msg)
       P'.tellT "DEPRECATED_protocol_version" (dEPRECATED_protocol_version msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'ad, parse'debug_string, parse'processing_time_ms, parse'dEPRECATED_protocol_version])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'ad
         = P'.try
            (do
               v <- P'.getT "ad"
               Prelude'.return (\ o -> o{ad = P'.append (ad o) v}))
        parse'debug_string
         = P'.try
            (do
               v <- P'.getT "debug_string"
               Prelude'.return (\ o -> o{debug_string = v}))
        parse'processing_time_ms
         = P'.try
            (do
               v <- P'.getT "processing_time_ms"
               Prelude'.return (\ o -> o{processing_time_ms = v}))
        parse'dEPRECATED_protocol_version
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_protocol_version"
               Prelude'.return (\ o -> o{dEPRECATED_protocol_version = v}))