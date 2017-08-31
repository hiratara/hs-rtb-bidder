{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Video (Video(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Video.CompanionSlot as Adx.BidRequest.Video (CompanionSlot)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Video.ContentAttributes as Adx.BidRequest.Video (ContentAttributes)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Video.EndCapSupport as Adx.BidRequest.Video (EndCapSupport)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Video.InventoryType as Adx.BidRequest.Video (InventoryType)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Video.Placement as Adx.BidRequest.Video (Placement)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Video.SkippableBidRequestType as Adx.BidRequest.Video
       (SkippableBidRequestType)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Video.VideoFormat as Adx.BidRequest.Video (VideoFormat)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Video.VideoProtocol as Adx.BidRequest.Video (VideoProtocol)

data Video = Video{placement :: !(P'.Maybe Adx.BidRequest.Video.Placement), description_url :: !(P'.Maybe P'.Utf8),
                   is_embedded_offsite :: !(P'.Maybe P'.Bool), is_clickable :: !(P'.Maybe P'.Bool),
                   videoad_start_delay :: !(P'.Maybe P'.Int32), max_ad_duration :: !(P'.Maybe P'.Int32),
                   min_ad_duration :: !(P'.Maybe P'.Int32), max_ads_in_pod :: !(P'.Maybe P'.Int32),
                   video_ad_skippable :: !(P'.Maybe Adx.BidRequest.Video.SkippableBidRequestType),
                   skippable_max_ad_duration :: !(P'.Maybe P'.Int32), protocols :: !(P'.Seq Adx.BidRequest.Video.VideoProtocol),
                   allowed_video_formats :: !(P'.Seq Adx.BidRequest.Video.VideoFormat),
                   companion_slot :: !(P'.Seq Adx.BidRequest.Video.CompanionSlot),
                   end_cap_support :: !(P'.Maybe Adx.BidRequest.Video.EndCapSupport),
                   content_attributes :: !(P'.Maybe Adx.BidRequest.Video.ContentAttributes),
                   dEPRECATED_inventory_type :: !(P'.Maybe Adx.BidRequest.Video.InventoryType)}
           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Video where
  mergeAppend (Video x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16)
   (Video y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16)
   = Video (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
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

instance P'.Default Video where
  defaultValue
   = Video (Prelude'.Just (Prelude'.read "UNKNOWN_PLACEMENT")) P'.defaultValue (Prelude'.Just Prelude'.False) P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just (Prelude'.read "ALLOW_SKIPPABLE"))
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just (Prelude'.read "END_CAP_NOT_ENABLED"))
      P'.defaultValue
      (Prelude'.Just (Prelude'.read "WEB_VIDEO"))

instance P'.Wire Video where
  wireSize ft' self'@(Video x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 2 14 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 8 x'3 + P'.wireSizeOpt 1 8 x'4 +
             P'.wireSizeOpt 1 5 x'5
             + P'.wireSizeOpt 1 5 x'6
             + P'.wireSizeOpt 1 5 x'7
             + P'.wireSizeOpt 1 5 x'8
             + P'.wireSizeOpt 1 14 x'9
             + P'.wireSizeOpt 1 5 x'10
             + P'.wireSizePacked 2 14 x'11
             + P'.wireSizeRep 1 14 x'12
             + P'.wireSizeRep 1 11 x'13
             + P'.wireSizeOpt 1 14 x'14
             + P'.wireSizeOpt 1 11 x'15
             + P'.wireSizeOpt 1 14 x'16)
  wirePut ft' self'@(Video x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 5 x'5
             P'.wirePutOpt 16 5 x'6
             P'.wirePutOpt 24 14 x'16
             P'.wirePutOpt 32 14 x'9
             P'.wirePutOpt 40 5 x'10
             P'.wirePutRep 48 14 x'12
             P'.wirePutRep 58 11 x'13
             P'.wirePutOpt 64 5 x'7
             P'.wirePutOpt 74 11 x'15
             P'.wirePutOpt 82 9 x'2
             P'.wirePutOpt 88 8 x'3
             P'.wirePutOpt 96 5 x'8
             P'.wirePutOpt 104 14 x'14
             P'.wirePutOpt 120 8 x'4
             P'.wirePutOpt 128 14 x'1
             P'.wirePutPacked 138 14 x'11
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             128 -> Prelude'.fmap (\ !new'Field -> old'Self{placement = Prelude'.Just new'Field}) (P'.wireGet 14)
             82 -> Prelude'.fmap (\ !new'Field -> old'Self{description_url = Prelude'.Just new'Field}) (P'.wireGet 9)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{is_embedded_offsite = Prelude'.Just new'Field}) (P'.wireGet 8)
             120 -> Prelude'.fmap (\ !new'Field -> old'Self{is_clickable = Prelude'.Just new'Field}) (P'.wireGet 8)
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{videoad_start_delay = Prelude'.Just new'Field}) (P'.wireGet 5)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{max_ad_duration = Prelude'.Just new'Field}) (P'.wireGet 5)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{min_ad_duration = Prelude'.Just new'Field}) (P'.wireGet 5)
             96 -> Prelude'.fmap (\ !new'Field -> old'Self{max_ads_in_pod = Prelude'.Just new'Field}) (P'.wireGet 5)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{video_ad_skippable = Prelude'.Just new'Field}) (P'.wireGet 14)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{skippable_max_ad_duration = Prelude'.Just new'Field}) (P'.wireGet 5)
             136 -> Prelude'.fmap (\ !new'Field -> old'Self{protocols = P'.append (protocols old'Self) new'Field}) (P'.wireGet 14)
             138 -> Prelude'.fmap (\ !new'Field -> old'Self{protocols = P'.mergeAppend (protocols old'Self) new'Field})
                     (P'.wireGetPacked 14)
             48 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{allowed_video_formats = P'.append (allowed_video_formats old'Self) new'Field})
                    (P'.wireGet 14)
             50 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{allowed_video_formats = P'.mergeAppend (allowed_video_formats old'Self) new'Field})
                    (P'.wireGetPacked 14)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{companion_slot = P'.append (companion_slot old'Self) new'Field})
                    (P'.wireGet 11)
             104 -> Prelude'.fmap (\ !new'Field -> old'Self{end_cap_support = Prelude'.Just new'Field}) (P'.wireGet 14)
             74 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{content_attributes = P'.mergeAppend (content_attributes old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_inventory_type = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Video) Video where
  getVal m' f' = f' m'

instance P'.GPB Video

instance P'.ReflectDescriptor Video where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [])
      (P'.fromDistinctAscList [8, 16, 24, 32, 40, 48, 50, 58, 64, 74, 82, 88, 96, 104, 120, 128, 136, 138])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.Video\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"Video\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"Video.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.placement\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName' = FName \"placement\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 128}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Video.Placement\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName = MName \"Placement\"}), hsRawDefault = Just \"UNKNOWN_PLACEMENT\", hsDefault = Just (HsDef'Enum \"UNKNOWN_PLACEMENT\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.description_url\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName' = FName \"description_url\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.is_embedded_offsite\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName' = FName \"is_embedded_offsite\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.is_clickable\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName' = FName \"is_clickable\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 120}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.videoad_start_delay\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName' = FName \"videoad_start_delay\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.max_ad_duration\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName' = FName \"max_ad_duration\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.min_ad_duration\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName' = FName \"min_ad_duration\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.max_ads_in_pod\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName' = FName \"max_ads_in_pod\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 96}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.video_ad_skippable\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName' = FName \"video_ad_skippable\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Video.SkippableBidRequestType\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName = MName \"SkippableBidRequestType\"}), hsRawDefault = Just \"ALLOW_SKIPPABLE\", hsDefault = Just (HsDef'Enum \"ALLOW_SKIPPABLE\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.skippable_max_ad_duration\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName' = FName \"skippable_max_ad_duration\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.protocols\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName' = FName \"protocols\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 17}, wireTag = WireTag {getWireTag = 138}, packedTag = Just (WireTag {getWireTag = 136},WireTag {getWireTag = 138}), wireTagLength = 2, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Video.VideoProtocol\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName = MName \"VideoProtocol\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.allowed_video_formats\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName' = FName \"allowed_video_formats\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Just (WireTag {getWireTag = 48},WireTag {getWireTag = 50}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Video.VideoFormat\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName = MName \"VideoFormat\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.companion_slot\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName' = FName \"companion_slot\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Video.CompanionSlot\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName = MName \"CompanionSlot\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.end_cap_support\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName' = FName \"end_cap_support\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 104}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Video.EndCapSupport\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName = MName \"EndCapSupport\"}), hsRawDefault = Just \"END_CAP_NOT_ENABLED\", hsDefault = Just (HsDef'Enum \"END_CAP_NOT_ENABLED\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.content_attributes\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName' = FName \"content_attributes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Video.ContentAttributes\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName = MName \"ContentAttributes\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Video.DEPRECATED_inventory_type\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName' = FName \"dEPRECATED_inventory_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Video.InventoryType\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Video\"], baseName = MName \"InventoryType\"}), hsRawDefault = Just \"WEB_VIDEO\", hsDefault = Just (HsDef'Enum \"WEB_VIDEO\")}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType Video where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Video where
  textPut msg
   = do
       P'.tellT "placement" (placement msg)
       P'.tellT "description_url" (description_url msg)
       P'.tellT "is_embedded_offsite" (is_embedded_offsite msg)
       P'.tellT "is_clickable" (is_clickable msg)
       P'.tellT "videoad_start_delay" (videoad_start_delay msg)
       P'.tellT "max_ad_duration" (max_ad_duration msg)
       P'.tellT "min_ad_duration" (min_ad_duration msg)
       P'.tellT "max_ads_in_pod" (max_ads_in_pod msg)
       P'.tellT "video_ad_skippable" (video_ad_skippable msg)
       P'.tellT "skippable_max_ad_duration" (skippable_max_ad_duration msg)
       P'.tellT "protocols" (protocols msg)
       P'.tellT "allowed_video_formats" (allowed_video_formats msg)
       P'.tellT "companion_slot" (companion_slot msg)
       P'.tellT "end_cap_support" (end_cap_support msg)
       P'.tellT "content_attributes" (content_attributes msg)
       P'.tellT "DEPRECATED_inventory_type" (dEPRECATED_inventory_type msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'placement, parse'description_url, parse'is_embedded_offsite, parse'is_clickable, parse'videoad_start_delay,
                   parse'max_ad_duration, parse'min_ad_duration, parse'max_ads_in_pod, parse'video_ad_skippable,
                   parse'skippable_max_ad_duration, parse'protocols, parse'allowed_video_formats, parse'companion_slot,
                   parse'end_cap_support, parse'content_attributes, parse'dEPRECATED_inventory_type])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'placement
         = P'.try
            (do
               v <- P'.getT "placement"
               Prelude'.return (\ o -> o{placement = v}))
        parse'description_url
         = P'.try
            (do
               v <- P'.getT "description_url"
               Prelude'.return (\ o -> o{description_url = v}))
        parse'is_embedded_offsite
         = P'.try
            (do
               v <- P'.getT "is_embedded_offsite"
               Prelude'.return (\ o -> o{is_embedded_offsite = v}))
        parse'is_clickable
         = P'.try
            (do
               v <- P'.getT "is_clickable"
               Prelude'.return (\ o -> o{is_clickable = v}))
        parse'videoad_start_delay
         = P'.try
            (do
               v <- P'.getT "videoad_start_delay"
               Prelude'.return (\ o -> o{videoad_start_delay = v}))
        parse'max_ad_duration
         = P'.try
            (do
               v <- P'.getT "max_ad_duration"
               Prelude'.return (\ o -> o{max_ad_duration = v}))
        parse'min_ad_duration
         = P'.try
            (do
               v <- P'.getT "min_ad_duration"
               Prelude'.return (\ o -> o{min_ad_duration = v}))
        parse'max_ads_in_pod
         = P'.try
            (do
               v <- P'.getT "max_ads_in_pod"
               Prelude'.return (\ o -> o{max_ads_in_pod = v}))
        parse'video_ad_skippable
         = P'.try
            (do
               v <- P'.getT "video_ad_skippable"
               Prelude'.return (\ o -> o{video_ad_skippable = v}))
        parse'skippable_max_ad_duration
         = P'.try
            (do
               v <- P'.getT "skippable_max_ad_duration"
               Prelude'.return (\ o -> o{skippable_max_ad_duration = v}))
        parse'protocols
         = P'.try
            (do
               v <- P'.getT "protocols"
               Prelude'.return (\ o -> o{protocols = P'.append (protocols o) v}))
        parse'allowed_video_formats
         = P'.try
            (do
               v <- P'.getT "allowed_video_formats"
               Prelude'.return (\ o -> o{allowed_video_formats = P'.append (allowed_video_formats o) v}))
        parse'companion_slot
         = P'.try
            (do
               v <- P'.getT "companion_slot"
               Prelude'.return (\ o -> o{companion_slot = P'.append (companion_slot o) v}))
        parse'end_cap_support
         = P'.try
            (do
               v <- P'.getT "end_cap_support"
               Prelude'.return (\ o -> o{end_cap_support = v}))
        parse'content_attributes
         = P'.try
            (do
               v <- P'.getT "content_attributes"
               Prelude'.return (\ o -> o{content_attributes = v}))
        parse'dEPRECATED_inventory_type
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_inventory_type"
               Prelude'.return (\ o -> o{dEPRECATED_inventory_type = v}))