{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot (AdSlot(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.IFramingDepth as Adx.BidRequest.AdSlot (IFramingDepth)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.IFramingState as Adx.BidRequest.AdSlot (IFramingState)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MatchingAdData as Adx.BidRequest.AdSlot (MatchingAdData)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.NativeAdTemplate as Adx.BidRequest.AdSlot (NativeAdTemplate)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.SlotVisibility as Adx.BidRequest.AdSlot (SlotVisibility)
 
data AdSlot = AdSlot{id :: !(P'.Int32), ad_block_key :: !(P'.Maybe P'.Word64), targetable_channel :: !(P'.Seq P'.Utf8),
                     width :: !(P'.Seq P'.Int32), height :: !(P'.Seq P'.Int32), excluded_attribute :: !(P'.Seq P'.Int32),
                     allowed_vendor_type :: !(P'.Seq P'.Int32), excluded_sensitive_category :: !(P'.Seq P'.Int32),
                     allowed_restricted_category :: !(P'.Seq P'.Int32), excluded_product_category :: !(P'.Seq P'.Int32),
                     matching_ad_data :: !(P'.Seq Adx.BidRequest.AdSlot.MatchingAdData),
                     publisher_settings_list_id :: !(P'.Maybe P'.Word64),
                     slot_visibility :: !(P'.Maybe Adx.BidRequest.AdSlot.SlotVisibility), viewability :: !(P'.Maybe P'.Int32),
                     iframing_state :: !(P'.Maybe Adx.BidRequest.AdSlot.IFramingState),
                     iframing_depth :: !(P'.Maybe Adx.BidRequest.AdSlot.IFramingDepth),
                     native_ad_template :: !(P'.Seq Adx.BidRequest.AdSlot.NativeAdTemplate),
                     dEPRECATED_allowed_attribute :: !(P'.Seq P'.Int32),
                     dEPRECATED_publisher_settings_list_id :: !(P'.Seq P'.ByteString),
                     dEPRECATED_excluded_click_through_url :: !(P'.Seq P'.Utf8)}
            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable AdSlot where
  mergeAppend (AdSlot x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20)
   (AdSlot y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16 y'17 y'18 y'19 y'20)
   = AdSlot (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
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
      (P'.mergeAppend x'19 y'19)
      (P'.mergeAppend x'20 y'20)
 
instance P'.Default AdSlot where
  defaultValue
   = AdSlot P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just (Prelude'.read "NO_DETECTION"))
      (Prelude'.Just (-1))
      (Prelude'.Just (Prelude'.read "UNKNOWN_IFRAME_STATE"))
      (Prelude'.Just (Prelude'.read "UNKNOWN_IFRAME_DEPTH"))
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire AdSlot where
  wireSize ft' self'@(AdSlot x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 5 x'1 + P'.wireSizeOpt 1 4 x'2 + P'.wireSizeRep 1 9 x'3 + P'.wireSizeRep 1 5 x'4 +
             P'.wireSizeRep 1 5 x'5
             + P'.wireSizePacked 1 5 x'6
             + P'.wireSizePacked 1 5 x'7
             + P'.wireSizePacked 1 5 x'8
             + P'.wireSizePacked 2 5 x'9
             + P'.wireSizePacked 1 5 x'10
             + P'.wireSizeRep 1 11 x'11
             + P'.wireSizeOpt 1 6 x'12
             + P'.wireSizeOpt 1 14 x'13
             + P'.wireSizeOpt 2 5 x'14
             + P'.wireSizeOpt 2 14 x'15
             + P'.wireSizeOpt 2 14 x'16
             + P'.wireSizeRep 2 11 x'17
             + P'.wireSizeRep 1 5 x'18
             + P'.wireSizeRep 1 12 x'19
             + P'.wireSizeRep 1 9 x'20)
  wirePut ft' self'@(AdSlot x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 8 5 x'1
             P'.wirePutRep 16 5 x'4
             P'.wirePutRep 24 5 x'5
             P'.wirePutPacked 34 5 x'6
             P'.wirePutRep 40 5 x'18
             P'.wirePutPacked 50 5 x'7
             P'.wirePutPacked 58 5 x'8
             P'.wirePutRep 66 9 x'20
             P'.wirePutRep 74 11 x'11
             P'.wirePutRep 82 9 x'3
             P'.wirePutRep 90 12 x'19
             P'.wirePutOpt 96 14 x'13
             P'.wirePutPacked 106 5 x'10
             P'.wirePutOpt 112 4 x'2
             P'.wirePutOpt 121 6 x'12
             P'.wirePutPacked 130 5 x'9
             P'.wirePutOpt 152 14 x'15
             P'.wirePutOpt 160 14 x'16
             P'.wirePutOpt 168 5 x'14
             P'.wirePutRep 410 11 x'17
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{id = new'Field}) (P'.wireGet 5)
             112 -> Prelude'.fmap (\ !new'Field -> old'Self{ad_block_key = Prelude'.Just new'Field}) (P'.wireGet 4)
             82 -> Prelude'.fmap (\ !new'Field -> old'Self{targetable_channel = P'.append (targetable_channel old'Self) new'Field})
                    (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{width = P'.append (width old'Self) new'Field}) (P'.wireGet 5)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{width = P'.mergeAppend (width old'Self) new'Field}) (P'.wireGetPacked 5)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{height = P'.append (height old'Self) new'Field}) (P'.wireGet 5)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{height = P'.mergeAppend (height old'Self) new'Field})
                    (P'.wireGetPacked 5)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{excluded_attribute = P'.append (excluded_attribute old'Self) new'Field})
                    (P'.wireGet 5)
             34 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{excluded_attribute = P'.mergeAppend (excluded_attribute old'Self) new'Field})
                    (P'.wireGetPacked 5)
             48 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{allowed_vendor_type = P'.append (allowed_vendor_type old'Self) new'Field})
                    (P'.wireGet 5)
             50 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{allowed_vendor_type = P'.mergeAppend (allowed_vendor_type old'Self) new'Field})
                    (P'.wireGetPacked 5)
             56 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{excluded_sensitive_category = P'.append (excluded_sensitive_category old'Self) new'Field})
                    (P'.wireGet 5)
             58 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{excluded_sensitive_category = P'.mergeAppend (excluded_sensitive_category old'Self) new'Field})
                    (P'.wireGetPacked 5)
             128 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{allowed_restricted_category = P'.append (allowed_restricted_category old'Self) new'Field})
                     (P'.wireGet 5)
             130 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{allowed_restricted_category = P'.mergeAppend (allowed_restricted_category old'Self) new'Field})
                     (P'.wireGetPacked 5)
             104 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{excluded_product_category = P'.append (excluded_product_category old'Self) new'Field})
                     (P'.wireGet 5)
             106 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{excluded_product_category = P'.mergeAppend (excluded_product_category old'Self) new'Field})
                     (P'.wireGetPacked 5)
             74 -> Prelude'.fmap (\ !new'Field -> old'Self{matching_ad_data = P'.append (matching_ad_data old'Self) new'Field})
                    (P'.wireGet 11)
             121 -> Prelude'.fmap (\ !new'Field -> old'Self{publisher_settings_list_id = Prelude'.Just new'Field}) (P'.wireGet 6)
             96 -> Prelude'.fmap (\ !new'Field -> old'Self{slot_visibility = Prelude'.Just new'Field}) (P'.wireGet 14)
             168 -> Prelude'.fmap (\ !new'Field -> old'Self{viewability = Prelude'.Just new'Field}) (P'.wireGet 5)
             152 -> Prelude'.fmap (\ !new'Field -> old'Self{iframing_state = Prelude'.Just new'Field}) (P'.wireGet 14)
             160 -> Prelude'.fmap (\ !new'Field -> old'Self{iframing_depth = Prelude'.Just new'Field}) (P'.wireGet 14)
             410 -> Prelude'.fmap (\ !new'Field -> old'Self{native_ad_template = P'.append (native_ad_template old'Self) new'Field})
                     (P'.wireGet 11)
             40 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{dEPRECATED_allowed_attribute = P'.append (dEPRECATED_allowed_attribute old'Self) new'Field})
                    (P'.wireGet 5)
             42 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{dEPRECATED_allowed_attribute = P'.mergeAppend (dEPRECATED_allowed_attribute old'Self) new'Field})
                    (P'.wireGetPacked 5)
             90 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{dEPRECATED_publisher_settings_list_id =
                                P'.append (dEPRECATED_publisher_settings_list_id old'Self) new'Field})
                    (P'.wireGet 12)
             66 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{dEPRECATED_excluded_click_through_url =
                                P'.append (dEPRECATED_excluded_click_through_url old'Self) new'Field})
                    (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> AdSlot) AdSlot where
  getVal m' f' = f' m'
 
instance P'.GPB AdSlot
 
instance P'.ReflectDescriptor AdSlot where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [8])
      (P'.fromDistinctAscList
        [8, 16, 18, 24, 26, 32, 34, 40, 42, 48, 50, 56, 58, 66, 74, 82, 90, 96, 104, 106, 112, 121, 128, 130, 152, 160, 168, 410])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"AdSlot\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"AdSlot.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"id\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.ad_block_key\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"ad_block_key\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 112}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.targetable_channel\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"targetable_channel\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.width\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"width\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Just (WireTag {getWireTag = 16},WireTag {getWireTag = 18}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.height\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"height\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Just (WireTag {getWireTag = 24},WireTag {getWireTag = 26}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.excluded_attribute\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"excluded_attribute\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Just (WireTag {getWireTag = 32},WireTag {getWireTag = 34}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.allowed_vendor_type\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"allowed_vendor_type\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Just (WireTag {getWireTag = 48},WireTag {getWireTag = 50}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.excluded_sensitive_category\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"excluded_sensitive_category\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Just (WireTag {getWireTag = 56},WireTag {getWireTag = 58}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.allowed_restricted_category\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"allowed_restricted_category\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 130}, packedTag = Just (WireTag {getWireTag = 128},WireTag {getWireTag = 130}), wireTagLength = 2, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.excluded_product_category\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"excluded_product_category\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 106}, packedTag = Just (WireTag {getWireTag = 104},WireTag {getWireTag = 106}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.matching_ad_data\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"matching_ad_data\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.MatchingAdData\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"MatchingAdData\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.publisher_settings_list_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"publisher_settings_list_id\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 121}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 6}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.slot_visibility\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"slot_visibility\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 96}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.SlotVisibility\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"SlotVisibility\"}), hsRawDefault = Just \"NO_DETECTION\", hsDefault = Just (HsDef'Enum \"NO_DETECTION\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.viewability\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"viewability\"}, fieldNumber = FieldId {getFieldId = 21}, wireTag = WireTag {getWireTag = 168}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Just \"-1\", hsDefault = Just (HsDef'Integer (-1))},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.iframing_state\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"iframing_state\"}, fieldNumber = FieldId {getFieldId = 19}, wireTag = WireTag {getWireTag = 152}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.IFramingState\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"IFramingState\"}), hsRawDefault = Just \"UNKNOWN_IFRAME_STATE\", hsDefault = Just (HsDef'Enum \"UNKNOWN_IFRAME_STATE\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.iframing_depth\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"iframing_depth\"}, fieldNumber = FieldId {getFieldId = 20}, wireTag = WireTag {getWireTag = 160}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.IFramingDepth\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"IFramingDepth\"}), hsRawDefault = Just \"UNKNOWN_IFRAME_DEPTH\", hsDefault = Just (HsDef'Enum \"UNKNOWN_IFRAME_DEPTH\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.native_ad_template\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"native_ad_template\"}, fieldNumber = FieldId {getFieldId = 51}, wireTag = WireTag {getWireTag = 410}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"NativeAdTemplate\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.DEPRECATED_allowed_attribute\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"dEPRECATED_allowed_attribute\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Just (WireTag {getWireTag = 40},WireTag {getWireTag = 42}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.DEPRECATED_publisher_settings_list_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"dEPRECATED_publisher_settings_list_id\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.DEPRECATED_excluded_click_through_url\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"dEPRECATED_excluded_click_through_url\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False}"
 
instance P'.TextType AdSlot where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg AdSlot where
  textPut msg
   = do
       P'.tellT "id" (id msg)
       P'.tellT "ad_block_key" (ad_block_key msg)
       P'.tellT "targetable_channel" (targetable_channel msg)
       P'.tellT "width" (width msg)
       P'.tellT "height" (height msg)
       P'.tellT "excluded_attribute" (excluded_attribute msg)
       P'.tellT "allowed_vendor_type" (allowed_vendor_type msg)
       P'.tellT "excluded_sensitive_category" (excluded_sensitive_category msg)
       P'.tellT "allowed_restricted_category" (allowed_restricted_category msg)
       P'.tellT "excluded_product_category" (excluded_product_category msg)
       P'.tellT "matching_ad_data" (matching_ad_data msg)
       P'.tellT "publisher_settings_list_id" (publisher_settings_list_id msg)
       P'.tellT "slot_visibility" (slot_visibility msg)
       P'.tellT "viewability" (viewability msg)
       P'.tellT "iframing_state" (iframing_state msg)
       P'.tellT "iframing_depth" (iframing_depth msg)
       P'.tellT "native_ad_template" (native_ad_template msg)
       P'.tellT "DEPRECATED_allowed_attribute" (dEPRECATED_allowed_attribute msg)
       P'.tellT "DEPRECATED_publisher_settings_list_id" (dEPRECATED_publisher_settings_list_id msg)
       P'.tellT "DEPRECATED_excluded_click_through_url" (dEPRECATED_excluded_click_through_url msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'id, parse'ad_block_key, parse'targetable_channel, parse'width, parse'height, parse'excluded_attribute,
                   parse'allowed_vendor_type, parse'excluded_sensitive_category, parse'allowed_restricted_category,
                   parse'excluded_product_category, parse'matching_ad_data, parse'publisher_settings_list_id, parse'slot_visibility,
                   parse'viewability, parse'iframing_state, parse'iframing_depth, parse'native_ad_template,
                   parse'dEPRECATED_allowed_attribute, parse'dEPRECATED_publisher_settings_list_id,
                   parse'dEPRECATED_excluded_click_through_url])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'id
         = P'.try
            (do
               v <- P'.getT "id"
               Prelude'.return (\ o -> o{id = v}))
        parse'ad_block_key
         = P'.try
            (do
               v <- P'.getT "ad_block_key"
               Prelude'.return (\ o -> o{ad_block_key = v}))
        parse'targetable_channel
         = P'.try
            (do
               v <- P'.getT "targetable_channel"
               Prelude'.return (\ o -> o{targetable_channel = P'.append (targetable_channel o) v}))
        parse'width
         = P'.try
            (do
               v <- P'.getT "width"
               Prelude'.return (\ o -> o{width = P'.append (width o) v}))
        parse'height
         = P'.try
            (do
               v <- P'.getT "height"
               Prelude'.return (\ o -> o{height = P'.append (height o) v}))
        parse'excluded_attribute
         = P'.try
            (do
               v <- P'.getT "excluded_attribute"
               Prelude'.return (\ o -> o{excluded_attribute = P'.append (excluded_attribute o) v}))
        parse'allowed_vendor_type
         = P'.try
            (do
               v <- P'.getT "allowed_vendor_type"
               Prelude'.return (\ o -> o{allowed_vendor_type = P'.append (allowed_vendor_type o) v}))
        parse'excluded_sensitive_category
         = P'.try
            (do
               v <- P'.getT "excluded_sensitive_category"
               Prelude'.return (\ o -> o{excluded_sensitive_category = P'.append (excluded_sensitive_category o) v}))
        parse'allowed_restricted_category
         = P'.try
            (do
               v <- P'.getT "allowed_restricted_category"
               Prelude'.return (\ o -> o{allowed_restricted_category = P'.append (allowed_restricted_category o) v}))
        parse'excluded_product_category
         = P'.try
            (do
               v <- P'.getT "excluded_product_category"
               Prelude'.return (\ o -> o{excluded_product_category = P'.append (excluded_product_category o) v}))
        parse'matching_ad_data
         = P'.try
            (do
               v <- P'.getT "matching_ad_data"
               Prelude'.return (\ o -> o{matching_ad_data = P'.append (matching_ad_data o) v}))
        parse'publisher_settings_list_id
         = P'.try
            (do
               v <- P'.getT "publisher_settings_list_id"
               Prelude'.return (\ o -> o{publisher_settings_list_id = v}))
        parse'slot_visibility
         = P'.try
            (do
               v <- P'.getT "slot_visibility"
               Prelude'.return (\ o -> o{slot_visibility = v}))
        parse'viewability
         = P'.try
            (do
               v <- P'.getT "viewability"
               Prelude'.return (\ o -> o{viewability = v}))
        parse'iframing_state
         = P'.try
            (do
               v <- P'.getT "iframing_state"
               Prelude'.return (\ o -> o{iframing_state = v}))
        parse'iframing_depth
         = P'.try
            (do
               v <- P'.getT "iframing_depth"
               Prelude'.return (\ o -> o{iframing_depth = v}))
        parse'native_ad_template
         = P'.try
            (do
               v <- P'.getT "native_ad_template"
               Prelude'.return (\ o -> o{native_ad_template = P'.append (native_ad_template o) v}))
        parse'dEPRECATED_allowed_attribute
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_allowed_attribute"
               Prelude'.return (\ o -> o{dEPRECATED_allowed_attribute = P'.append (dEPRECATED_allowed_attribute o) v}))
        parse'dEPRECATED_publisher_settings_list_id
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_publisher_settings_list_id"
               Prelude'.return
                (\ o -> o{dEPRECATED_publisher_settings_list_id = P'.append (dEPRECATED_publisher_settings_list_id o) v}))
        parse'dEPRECATED_excluded_click_through_url
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_excluded_click_through_url"
               Prelude'.return
                (\ o -> o{dEPRECATED_excluded_click_through_url = P'.append (dEPRECATED_excluded_click_through_url o) v}))