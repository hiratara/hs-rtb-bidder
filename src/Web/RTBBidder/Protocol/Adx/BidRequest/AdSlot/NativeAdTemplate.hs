{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.NativeAdTemplate (NativeAdTemplate(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.NativeAdTemplate.LayoutType as Adx.BidRequest.AdSlot.NativeAdTemplate
       (LayoutType)

data NativeAdTemplate = NativeAdTemplate{required_fields :: !(P'.Maybe P'.Int64), recommended_fields :: !(P'.Maybe P'.Int64),
                                         headline_max_safe_length :: !(P'.Maybe P'.Int32),
                                         body_max_safe_length :: !(P'.Maybe P'.Int32),
                                         call_to_action_max_safe_length :: !(P'.Maybe P'.Int32),
                                         advertiser_max_safe_length :: !(P'.Maybe P'.Int32),
                                         store_max_safe_length :: !(P'.Maybe P'.Int32),
                                         price_max_safe_length :: !(P'.Maybe P'.Int32), image_width :: !(P'.Maybe P'.Int32),
                                         image_height :: !(P'.Maybe P'.Int32), logo_width :: !(P'.Maybe P'.Int32),
                                         logo_height :: !(P'.Maybe P'.Int32), app_icon_width :: !(P'.Maybe P'.Int32),
                                         app_icon_height :: !(P'.Maybe P'.Int32), style_id :: !(P'.Maybe P'.Int32),
                                         style_layout_type :: !(P'.Maybe Adx.BidRequest.AdSlot.NativeAdTemplate.LayoutType),
                                         style_height :: !(P'.Maybe P'.Int32), style_width :: !(P'.Maybe P'.Int32)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable NativeAdTemplate where
  mergeAppend (NativeAdTemplate x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18)
   (NativeAdTemplate y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16 y'17 y'18)
   = NativeAdTemplate (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)
      (P'.mergeAppend x'12 y'12)
      (P'.mergeAppend x'13 y'13)
      (P'.mergeAppend x'14 y'14)
      (P'.mergeAppend x'15 y'15)
      (P'.mergeAppend x'16 y'16)
      (P'.mergeAppend x'17 y'17)
      (P'.mergeAppend x'18 y'18)

instance P'.Default NativeAdTemplate where
  defaultValue
   = NativeAdTemplate P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just (Prelude'.read "PIXEL"))
      P'.defaultValue
      P'.defaultValue

instance P'.Wire NativeAdTemplate where
  wireSize ft' self'@(NativeAdTemplate x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 3 x'1 + P'.wireSizeOpt 1 3 x'2 + P'.wireSizeOpt 1 5 x'3 + P'.wireSizeOpt 1 5 x'4 +
             P'.wireSizeOpt 1 5 x'5
             + P'.wireSizeOpt 1 5 x'6
             + P'.wireSizeOpt 1 5 x'7
             + P'.wireSizeOpt 1 5 x'8
             + P'.wireSizeOpt 1 5 x'9
             + P'.wireSizeOpt 1 5 x'10
             + P'.wireSizeOpt 1 5 x'11
             + P'.wireSizeOpt 1 5 x'12
             + P'.wireSizeOpt 1 5 x'13
             + P'.wireSizeOpt 1 5 x'14
             + P'.wireSizeOpt 2 5 x'15
             + P'.wireSizeOpt 2 14 x'16
             + P'.wireSizeOpt 2 5 x'17
             + P'.wireSizeOpt 2 5 x'18)
  wirePut ft' self'@(NativeAdTemplate x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 3 x'1
             P'.wirePutOpt 16 3 x'2
             P'.wirePutOpt 24 5 x'3
             P'.wirePutOpt 32 5 x'4
             P'.wirePutOpt 40 5 x'5
             P'.wirePutOpt 48 5 x'6
             P'.wirePutOpt 56 5 x'9
             P'.wirePutOpt 64 5 x'10
             P'.wirePutOpt 72 5 x'11
             P'.wirePutOpt 80 5 x'12
             P'.wirePutOpt 88 5 x'13
             P'.wirePutOpt 96 5 x'14
             P'.wirePutOpt 112 5 x'7
             P'.wirePutOpt 120 5 x'8
             P'.wirePutOpt 128 5 x'15
             P'.wirePutOpt 136 14 x'16
             P'.wirePutOpt 144 5 x'17
             P'.wirePutOpt 152 5 x'18
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{required_fields = Prelude'.Just new'Field}) (P'.wireGet 3)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{recommended_fields = Prelude'.Just new'Field}) (P'.wireGet 3)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{headline_max_safe_length = Prelude'.Just new'Field}) (P'.wireGet 5)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{body_max_safe_length = Prelude'.Just new'Field}) (P'.wireGet 5)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{call_to_action_max_safe_length = Prelude'.Just new'Field}) (P'.wireGet 5)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{advertiser_max_safe_length = Prelude'.Just new'Field}) (P'.wireGet 5)
             112 -> Prelude'.fmap (\ !new'Field -> old'Self{store_max_safe_length = Prelude'.Just new'Field}) (P'.wireGet 5)
             120 -> Prelude'.fmap (\ !new'Field -> old'Self{price_max_safe_length = Prelude'.Just new'Field}) (P'.wireGet 5)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{image_width = Prelude'.Just new'Field}) (P'.wireGet 5)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{image_height = Prelude'.Just new'Field}) (P'.wireGet 5)
             72 -> Prelude'.fmap (\ !new'Field -> old'Self{logo_width = Prelude'.Just new'Field}) (P'.wireGet 5)
             80 -> Prelude'.fmap (\ !new'Field -> old'Self{logo_height = Prelude'.Just new'Field}) (P'.wireGet 5)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{app_icon_width = Prelude'.Just new'Field}) (P'.wireGet 5)
             96 -> Prelude'.fmap (\ !new'Field -> old'Self{app_icon_height = Prelude'.Just new'Field}) (P'.wireGet 5)
             128 -> Prelude'.fmap (\ !new'Field -> old'Self{style_id = Prelude'.Just new'Field}) (P'.wireGet 5)
             136 -> Prelude'.fmap (\ !new'Field -> old'Self{style_layout_type = Prelude'.Just new'Field}) (P'.wireGet 14)
             144 -> Prelude'.fmap (\ !new'Field -> old'Self{style_height = Prelude'.Just new'Field}) (P'.wireGet 5)
             152 -> Prelude'.fmap (\ !new'Field -> old'Self{style_width = Prelude'.Just new'Field}) (P'.wireGet 5)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> NativeAdTemplate) NativeAdTemplate where
  getVal m' f' = f' m'

instance P'.GPB NativeAdTemplate

instance P'.ReflectDescriptor NativeAdTemplate where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [])
      (P'.fromDistinctAscList [8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 112, 120, 128, 136, 144, 152])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"NativeAdTemplate\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"AdSlot\",\"NativeAdTemplate.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.required_fields\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"required_fields\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.recommended_fields\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"recommended_fields\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.headline_max_safe_length\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"headline_max_safe_length\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.body_max_safe_length\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"body_max_safe_length\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.call_to_action_max_safe_length\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"call_to_action_max_safe_length\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.advertiser_max_safe_length\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"advertiser_max_safe_length\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.store_max_safe_length\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"store_max_safe_length\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 112}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.price_max_safe_length\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"price_max_safe_length\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 120}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.image_width\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"image_width\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.image_height\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"image_height\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.logo_width\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"logo_width\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 72}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.logo_height\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"logo_height\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 80}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.app_icon_width\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"app_icon_width\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.app_icon_height\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"app_icon_height\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 96}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.style_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"style_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 128}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.style_layout_type\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"style_layout_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 17}, wireTag = WireTag {getWireTag = 136}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.LayoutType\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName = MName \"LayoutType\"}), hsRawDefault = Just \"PIXEL\", hsDefault = Just (HsDef'Enum \"PIXEL\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.style_height\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"style_height\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 18}, wireTag = WireTag {getWireTag = 144}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate.style_width\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"NativeAdTemplate\"], baseName' = FName \"style_width\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 19}, wireTag = WireTag {getWireTag = 152}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType NativeAdTemplate where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg NativeAdTemplate where
  textPut msg
   = do
       P'.tellT "required_fields" (required_fields msg)
       P'.tellT "recommended_fields" (recommended_fields msg)
       P'.tellT "headline_max_safe_length" (headline_max_safe_length msg)
       P'.tellT "body_max_safe_length" (body_max_safe_length msg)
       P'.tellT "call_to_action_max_safe_length" (call_to_action_max_safe_length msg)
       P'.tellT "advertiser_max_safe_length" (advertiser_max_safe_length msg)
       P'.tellT "store_max_safe_length" (store_max_safe_length msg)
       P'.tellT "price_max_safe_length" (price_max_safe_length msg)
       P'.tellT "image_width" (image_width msg)
       P'.tellT "image_height" (image_height msg)
       P'.tellT "logo_width" (logo_width msg)
       P'.tellT "logo_height" (logo_height msg)
       P'.tellT "app_icon_width" (app_icon_width msg)
       P'.tellT "app_icon_height" (app_icon_height msg)
       P'.tellT "style_id" (style_id msg)
       P'.tellT "style_layout_type" (style_layout_type msg)
       P'.tellT "style_height" (style_height msg)
       P'.tellT "style_width" (style_width msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'required_fields, parse'recommended_fields, parse'headline_max_safe_length, parse'body_max_safe_length,
                   parse'call_to_action_max_safe_length, parse'advertiser_max_safe_length, parse'store_max_safe_length,
                   parse'price_max_safe_length, parse'image_width, parse'image_height, parse'logo_width, parse'logo_height,
                   parse'app_icon_width, parse'app_icon_height, parse'style_id, parse'style_layout_type, parse'style_height,
                   parse'style_width])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'required_fields
         = P'.try
            (do
               v <- P'.getT "required_fields"
               Prelude'.return (\ o -> o{required_fields = v}))
        parse'recommended_fields
         = P'.try
            (do
               v <- P'.getT "recommended_fields"
               Prelude'.return (\ o -> o{recommended_fields = v}))
        parse'headline_max_safe_length
         = P'.try
            (do
               v <- P'.getT "headline_max_safe_length"
               Prelude'.return (\ o -> o{headline_max_safe_length = v}))
        parse'body_max_safe_length
         = P'.try
            (do
               v <- P'.getT "body_max_safe_length"
               Prelude'.return (\ o -> o{body_max_safe_length = v}))
        parse'call_to_action_max_safe_length
         = P'.try
            (do
               v <- P'.getT "call_to_action_max_safe_length"
               Prelude'.return (\ o -> o{call_to_action_max_safe_length = v}))
        parse'advertiser_max_safe_length
         = P'.try
            (do
               v <- P'.getT "advertiser_max_safe_length"
               Prelude'.return (\ o -> o{advertiser_max_safe_length = v}))
        parse'store_max_safe_length
         = P'.try
            (do
               v <- P'.getT "store_max_safe_length"
               Prelude'.return (\ o -> o{store_max_safe_length = v}))
        parse'price_max_safe_length
         = P'.try
            (do
               v <- P'.getT "price_max_safe_length"
               Prelude'.return (\ o -> o{price_max_safe_length = v}))
        parse'image_width
         = P'.try
            (do
               v <- P'.getT "image_width"
               Prelude'.return (\ o -> o{image_width = v}))
        parse'image_height
         = P'.try
            (do
               v <- P'.getT "image_height"
               Prelude'.return (\ o -> o{image_height = v}))
        parse'logo_width
         = P'.try
            (do
               v <- P'.getT "logo_width"
               Prelude'.return (\ o -> o{logo_width = v}))
        parse'logo_height
         = P'.try
            (do
               v <- P'.getT "logo_height"
               Prelude'.return (\ o -> o{logo_height = v}))
        parse'app_icon_width
         = P'.try
            (do
               v <- P'.getT "app_icon_width"
               Prelude'.return (\ o -> o{app_icon_width = v}))
        parse'app_icon_height
         = P'.try
            (do
               v <- P'.getT "app_icon_height"
               Prelude'.return (\ o -> o{app_icon_height = v}))
        parse'style_id
         = P'.try
            (do
               v <- P'.getT "style_id"
               Prelude'.return (\ o -> o{style_id = v}))
        parse'style_layout_type
         = P'.try
            (do
               v <- P'.getT "style_layout_type"
               Prelude'.return (\ o -> o{style_layout_type = v}))
        parse'style_height
         = P'.try
            (do
               v <- P'.getT "style_height"
               Prelude'.return (\ o -> o{style_height = v}))
        parse'style_width
         = P'.try
            (do
               v <- P'.getT "style_width"
               Prelude'.return (\ o -> o{style_width = v}))