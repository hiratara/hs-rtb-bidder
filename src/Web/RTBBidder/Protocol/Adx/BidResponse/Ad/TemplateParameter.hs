{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidResponse.Ad.TemplateParameter (TemplateParameter(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data TemplateParameter = TemplateParameter{parameter_value :: !(P'.Maybe P'.Utf8), blank_ad_parameter_value :: !(P'.Maybe P'.Utf8),
                                           buyer_creative_id :: !(P'.Maybe P'.Utf8), click_through_url :: !(P'.Maybe P'.Utf8),
                                           left :: !(P'.Maybe P'.Int32), right :: !(P'.Maybe P'.Int32), top :: !(P'.Maybe P'.Int32),
                                           bottom :: !(P'.Maybe P'.Int32), backup_index :: !(P'.Maybe P'.Int32)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable TemplateParameter where
  mergeAppend (TemplateParameter x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9) (TemplateParameter y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9)
   = TemplateParameter (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
 
instance P'.Default TemplateParameter where
  defaultValue
   = TemplateParameter P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire TemplateParameter where
  wireSize ft' self'@(TemplateParameter x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeOpt 1 5 x'5
             + P'.wireSizeOpt 1 5 x'6
             + P'.wireSizeOpt 1 5 x'7
             + P'.wireSizeOpt 1 5 x'8
             + P'.wireSizeOpt 1 5 x'9)
  wirePut ft' self'@(TemplateParameter x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 9 x'1
             P'.wirePutOpt 18 9 x'3
             P'.wirePutOpt 26 9 x'4
             P'.wirePutOpt 32 5 x'5
             P'.wirePutOpt 40 5 x'6
             P'.wirePutOpt 48 5 x'7
             P'.wirePutOpt 56 5 x'8
             P'.wirePutOpt 66 9 x'2
             P'.wirePutOpt 72 5 x'9
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{parameter_value = Prelude'.Just new'Field}) (P'.wireGet 9)
             66 -> Prelude'.fmap (\ !new'Field -> old'Self{blank_ad_parameter_value = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{buyer_creative_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{click_through_url = Prelude'.Just new'Field}) (P'.wireGet 9)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{left = Prelude'.Just new'Field}) (P'.wireGet 5)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{right = Prelude'.Just new'Field}) (P'.wireGet 5)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{top = Prelude'.Just new'Field}) (P'.wireGet 5)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{bottom = Prelude'.Just new'Field}) (P'.wireGet 5)
             72 -> Prelude'.fmap (\ !new'Field -> old'Self{backup_index = Prelude'.Just new'Field}) (P'.wireGet 5)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> TemplateParameter) TemplateParameter where
  getVal m' f' = f' m'
 
instance P'.GPB TemplateParameter
 
instance P'.ReflectDescriptor TemplateParameter where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 32, 40, 48, 56, 66, 72])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidResponse.Ad.TemplateParameter\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName = MName \"TemplateParameter\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidResponse\",\"Ad\",\"TemplateParameter.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.TemplateParameter.parameter_value\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"TemplateParameter\"], baseName' = FName \"parameter_value\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.TemplateParameter.blank_ad_parameter_value\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"TemplateParameter\"], baseName' = FName \"blank_ad_parameter_value\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.TemplateParameter.buyer_creative_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"TemplateParameter\"], baseName' = FName \"buyer_creative_id\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.TemplateParameter.click_through_url\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"TemplateParameter\"], baseName' = FName \"click_through_url\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.TemplateParameter.left\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"TemplateParameter\"], baseName' = FName \"left\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.TemplateParameter.right\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"TemplateParameter\"], baseName' = FName \"right\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.TemplateParameter.top\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"TemplateParameter\"], baseName' = FName \"top\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.TemplateParameter.bottom\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"TemplateParameter\"], baseName' = FName \"bottom\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.TemplateParameter.backup_index\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"TemplateParameter\"], baseName' = FName \"backup_index\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 72}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False}"
 
instance P'.TextType TemplateParameter where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg TemplateParameter where
  textPut msg
   = do
       P'.tellT "parameter_value" (parameter_value msg)
       P'.tellT "blank_ad_parameter_value" (blank_ad_parameter_value msg)
       P'.tellT "buyer_creative_id" (buyer_creative_id msg)
       P'.tellT "click_through_url" (click_through_url msg)
       P'.tellT "left" (left msg)
       P'.tellT "right" (right msg)
       P'.tellT "top" (top msg)
       P'.tellT "bottom" (bottom msg)
       P'.tellT "backup_index" (backup_index msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'parameter_value, parse'blank_ad_parameter_value, parse'buyer_creative_id, parse'click_through_url,
                   parse'left, parse'right, parse'top, parse'bottom, parse'backup_index])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'parameter_value
         = P'.try
            (do
               v <- P'.getT "parameter_value"
               Prelude'.return (\ o -> o{parameter_value = v}))
        parse'blank_ad_parameter_value
         = P'.try
            (do
               v <- P'.getT "blank_ad_parameter_value"
               Prelude'.return (\ o -> o{blank_ad_parameter_value = v}))
        parse'buyer_creative_id
         = P'.try
            (do
               v <- P'.getT "buyer_creative_id"
               Prelude'.return (\ o -> o{buyer_creative_id = v}))
        parse'click_through_url
         = P'.try
            (do
               v <- P'.getT "click_through_url"
               Prelude'.return (\ o -> o{click_through_url = v}))
        parse'left
         = P'.try
            (do
               v <- P'.getT "left"
               Prelude'.return (\ o -> o{left = v}))
        parse'right
         = P'.try
            (do
               v <- P'.getT "right"
               Prelude'.return (\ o -> o{right = v}))
        parse'top
         = P'.try
            (do
               v <- P'.getT "top"
               Prelude'.return (\ o -> o{top = v}))
        parse'bottom
         = P'.try
            (do
               v <- P'.getT "bottom"
               Prelude'.return (\ o -> o{bottom = v}))
        parse'backup_index
         = P'.try
            (do
               v <- P'.getT "backup_index"
               Prelude'.return (\ o -> o{backup_index = v}))