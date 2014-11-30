{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Mobile (Mobile(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Mobile.DeviceOsVersion as Adx.BidRequest.Mobile (DeviceOsVersion)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Mobile.MobileDeviceType as Adx.BidRequest.Mobile (MobileDeviceType)
 
data Mobile = Mobile{platform :: !(P'.Maybe P'.Utf8), brand :: !(P'.Maybe P'.Utf8), model :: !(P'.Maybe P'.Utf8),
                     os_version :: !(P'.Maybe Adx.BidRequest.Mobile.DeviceOsVersion), carrier_id :: !(P'.Maybe P'.Int64),
                     is_app :: !(P'.Maybe P'.Bool), app_id :: !(P'.Maybe P'.Utf8),
                     mobile_device_type :: !(P'.Maybe Adx.BidRequest.Mobile.MobileDeviceType), screen_width :: !(P'.Maybe P'.Int32),
                     screen_height :: !(P'.Maybe P'.Int32), screen_orientation :: !(P'.Maybe P'.Int32),
                     is_interstitial_request :: !(P'.Maybe P'.Bool), app_category_ids :: !(P'.Seq P'.Int32),
                     is_mobile_web_optimized :: !(P'.Maybe P'.Bool), device_pixel_ratio_millis :: !(P'.Maybe P'.Int32),
                     encrypted_advertising_id :: !(P'.Maybe P'.ByteString), encrypted_hashed_idfa :: !(P'.Maybe P'.ByteString),
                     constrained_usage_encrypted_advertising_id :: !(P'.Maybe P'.ByteString),
                     constrained_usage_encrypted_hashed_idfa :: !(P'.Maybe P'.ByteString), app_name :: !(P'.Maybe P'.Utf8),
                     app_rating :: !(P'.Maybe P'.Float), dEPRECATED_app_name :: !(P'.Maybe P'.Utf8),
                     dEPRECATED_company_name :: !(P'.Maybe P'.Utf8), dEPRECATED_carrier_name :: !(P'.Maybe P'.Utf8),
                     dEPRECATED_carrier_country :: !(P'.Maybe P'.Utf8)}
            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable Mobile where
  mergeAppend
   (Mobile x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24 x'25)
   (Mobile y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16 y'17 y'18 y'19 y'20 y'21 y'22 y'23 y'24 y'25)
   = Mobile (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
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
      (P'.mergeAppend x'21 y'21)
      (P'.mergeAppend x'22 y'22)
      (P'.mergeAppend x'23 y'23)
      (P'.mergeAppend x'24 y'24)
      (P'.mergeAppend x'25 y'25)
 
instance P'.Default Mobile where
  defaultValue
   = Mobile P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue (Prelude'.Just Prelude'.False)
      P'.defaultValue
      (Prelude'.Just (Prelude'.read "UNKNOWN"))
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just 0)
      (Prelude'.Just Prelude'.False)
      P'.defaultValue
      (Prelude'.Just Prelude'.False)
      (Prelude'.Just 1000)
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire Mobile where
  wireSize ft'
   self'@(Mobile x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24
           x'25)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 2 3 x'5
             + P'.wireSizeOpt 1 8 x'6
             + P'.wireSizeOpt 1 9 x'7
             + P'.wireSizeOpt 1 14 x'8
             + P'.wireSizeOpt 1 5 x'9
             + P'.wireSizeOpt 2 5 x'10
             + P'.wireSizeOpt 1 5 x'11
             + P'.wireSizeOpt 1 8 x'12
             + P'.wireSizeRep 1 5 x'13
             + P'.wireSizeOpt 2 8 x'14
             + P'.wireSizeOpt 2 5 x'15
             + P'.wireSizeOpt 2 12 x'16
             + P'.wireSizeOpt 2 12 x'17
             + P'.wireSizeOpt 2 12 x'18
             + P'.wireSizeOpt 2 12 x'19
             + P'.wireSizeOpt 2 9 x'20
             + P'.wireSizeOpt 2 2 x'21
             + P'.wireSizeOpt 1 9 x'22
             + P'.wireSizeOpt 1 9 x'23
             + P'.wireSizeOpt 1 9 x'24
             + P'.wireSizeOpt 1 9 x'25)
  wirePut ft'
   self'@(Mobile x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24
           x'25)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 9 x'22
             P'.wirePutOpt 18 9 x'23
             P'.wirePutOpt 26 9 x'1
             P'.wirePutOpt 34 9 x'24
             P'.wirePutOpt 42 9 x'25
             P'.wirePutOpt 50 9 x'7
             P'.wirePutOpt 56 8 x'6
             P'.wirePutOpt 64 14 x'8
             P'.wirePutOpt 72 5 x'11
             P'.wirePutOpt 80 8 x'12
             P'.wirePutRep 88 5 x'13
             P'.wirePutOpt 98 9 x'2
             P'.wirePutOpt 106 9 x'3
             P'.wirePutOpt 114 11 x'4
             P'.wirePutOpt 120 5 x'9
             P'.wirePutOpt 128 5 x'10
             P'.wirePutOpt 136 8 x'14
             P'.wirePutOpt 144 3 x'5
             P'.wirePutOpt 152 5 x'15
             P'.wirePutOpt 162 12 x'16
             P'.wirePutOpt 170 12 x'17
             P'.wirePutOpt 178 12 x'18
             P'.wirePutOpt 186 12 x'19
             P'.wirePutOpt 194 9 x'20
             P'.wirePutOpt 205 2 x'21
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{platform = Prelude'.Just new'Field}) (P'.wireGet 9)
             98 -> Prelude'.fmap (\ !new'Field -> old'Self{brand = Prelude'.Just new'Field}) (P'.wireGet 9)
             106 -> Prelude'.fmap (\ !new'Field -> old'Self{model = Prelude'.Just new'Field}) (P'.wireGet 9)
             114 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{os_version = P'.mergeAppend (os_version old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             144 -> Prelude'.fmap (\ !new'Field -> old'Self{carrier_id = Prelude'.Just new'Field}) (P'.wireGet 3)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{is_app = Prelude'.Just new'Field}) (P'.wireGet 8)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{app_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{mobile_device_type = Prelude'.Just new'Field}) (P'.wireGet 14)
             120 -> Prelude'.fmap (\ !new'Field -> old'Self{screen_width = Prelude'.Just new'Field}) (P'.wireGet 5)
             128 -> Prelude'.fmap (\ !new'Field -> old'Self{screen_height = Prelude'.Just new'Field}) (P'.wireGet 5)
             72 -> Prelude'.fmap (\ !new'Field -> old'Self{screen_orientation = Prelude'.Just new'Field}) (P'.wireGet 5)
             80 -> Prelude'.fmap (\ !new'Field -> old'Self{is_interstitial_request = Prelude'.Just new'Field}) (P'.wireGet 8)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{app_category_ids = P'.append (app_category_ids old'Self) new'Field})
                    (P'.wireGet 5)
             90 -> Prelude'.fmap (\ !new'Field -> old'Self{app_category_ids = P'.mergeAppend (app_category_ids old'Self) new'Field})
                    (P'.wireGetPacked 5)
             136 -> Prelude'.fmap (\ !new'Field -> old'Self{is_mobile_web_optimized = Prelude'.Just new'Field}) (P'.wireGet 8)
             152 -> Prelude'.fmap (\ !new'Field -> old'Self{device_pixel_ratio_millis = Prelude'.Just new'Field}) (P'.wireGet 5)
             162 -> Prelude'.fmap (\ !new'Field -> old'Self{encrypted_advertising_id = Prelude'.Just new'Field}) (P'.wireGet 12)
             170 -> Prelude'.fmap (\ !new'Field -> old'Self{encrypted_hashed_idfa = Prelude'.Just new'Field}) (P'.wireGet 12)
             178 -> Prelude'.fmap (\ !new'Field -> old'Self{constrained_usage_encrypted_advertising_id = Prelude'.Just new'Field})
                     (P'.wireGet 12)
             186 -> Prelude'.fmap (\ !new'Field -> old'Self{constrained_usage_encrypted_hashed_idfa = Prelude'.Just new'Field})
                     (P'.wireGet 12)
             194 -> Prelude'.fmap (\ !new'Field -> old'Self{app_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             205 -> Prelude'.fmap (\ !new'Field -> old'Self{app_rating = Prelude'.Just new'Field}) (P'.wireGet 2)
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_app_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_company_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_carrier_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_carrier_country = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> Mobile) Mobile where
  getVal m' f' = f' m'
 
instance P'.GPB Mobile
 
instance P'.ReflectDescriptor Mobile where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [])
      (P'.fromDistinctAscList
        [10, 18, 26, 34, 42, 50, 56, 64, 72, 80, 88, 90, 98, 106, 114, 120, 128, 136, 144, 152, 162, 170, 178, 186, 194, 205])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.Mobile\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"Mobile\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"Mobile.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.platform\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"platform\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.brand\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"brand\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 98}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.model\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"model\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 106}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.os_version\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"os_version\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 114}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Mobile.DeviceOsVersion\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName = MName \"DeviceOsVersion\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.carrier_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"carrier_id\"}, fieldNumber = FieldId {getFieldId = 18}, wireTag = WireTag {getWireTag = 144}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.is_app\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"is_app\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.app_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"app_id\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.mobile_device_type\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"mobile_device_type\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Mobile.MobileDeviceType\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName = MName \"MobileDeviceType\"}), hsRawDefault = Just \"UNKNOWN\", hsDefault = Just (HsDef'Enum \"UNKNOWN\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.screen_width\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"screen_width\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 120}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.screen_height\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"screen_height\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 128}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.screen_orientation\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"screen_orientation\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 72}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.is_interstitial_request\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"is_interstitial_request\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 80}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.app_category_ids\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"app_category_ids\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Just (WireTag {getWireTag = 88},WireTag {getWireTag = 90}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.is_mobile_web_optimized\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"is_mobile_web_optimized\"}, fieldNumber = FieldId {getFieldId = 17}, wireTag = WireTag {getWireTag = 136}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.device_pixel_ratio_millis\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"device_pixel_ratio_millis\"}, fieldNumber = FieldId {getFieldId = 19}, wireTag = WireTag {getWireTag = 152}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Just \"1000\", hsDefault = Just (HsDef'Integer 1000)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.encrypted_advertising_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"encrypted_advertising_id\"}, fieldNumber = FieldId {getFieldId = 20}, wireTag = WireTag {getWireTag = 162}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.encrypted_hashed_idfa\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"encrypted_hashed_idfa\"}, fieldNumber = FieldId {getFieldId = 21}, wireTag = WireTag {getWireTag = 170}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.constrained_usage_encrypted_advertising_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"constrained_usage_encrypted_advertising_id\"}, fieldNumber = FieldId {getFieldId = 22}, wireTag = WireTag {getWireTag = 178}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.constrained_usage_encrypted_hashed_idfa\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"constrained_usage_encrypted_hashed_idfa\"}, fieldNumber = FieldId {getFieldId = 23}, wireTag = WireTag {getWireTag = 186}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.app_name\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"app_name\"}, fieldNumber = FieldId {getFieldId = 24}, wireTag = WireTag {getWireTag = 194}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.app_rating\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"app_rating\"}, fieldNumber = FieldId {getFieldId = 25}, wireTag = WireTag {getWireTag = 205}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 2}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.DEPRECATED_app_name\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"dEPRECATED_app_name\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.DEPRECATED_company_name\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"dEPRECATED_company_name\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.DEPRECATED_carrier_name\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"dEPRECATED_carrier_name\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.DEPRECATED_carrier_country\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"dEPRECATED_carrier_country\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False}"
 
instance P'.TextType Mobile where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg Mobile where
  textPut msg
   = do
       P'.tellT "platform" (platform msg)
       P'.tellT "brand" (brand msg)
       P'.tellT "model" (model msg)
       P'.tellT "os_version" (os_version msg)
       P'.tellT "carrier_id" (carrier_id msg)
       P'.tellT "is_app" (is_app msg)
       P'.tellT "app_id" (app_id msg)
       P'.tellT "mobile_device_type" (mobile_device_type msg)
       P'.tellT "screen_width" (screen_width msg)
       P'.tellT "screen_height" (screen_height msg)
       P'.tellT "screen_orientation" (screen_orientation msg)
       P'.tellT "is_interstitial_request" (is_interstitial_request msg)
       P'.tellT "app_category_ids" (app_category_ids msg)
       P'.tellT "is_mobile_web_optimized" (is_mobile_web_optimized msg)
       P'.tellT "device_pixel_ratio_millis" (device_pixel_ratio_millis msg)
       P'.tellT "encrypted_advertising_id" (encrypted_advertising_id msg)
       P'.tellT "encrypted_hashed_idfa" (encrypted_hashed_idfa msg)
       P'.tellT "constrained_usage_encrypted_advertising_id" (constrained_usage_encrypted_advertising_id msg)
       P'.tellT "constrained_usage_encrypted_hashed_idfa" (constrained_usage_encrypted_hashed_idfa msg)
       P'.tellT "app_name" (app_name msg)
       P'.tellT "app_rating" (app_rating msg)
       P'.tellT "DEPRECATED_app_name" (dEPRECATED_app_name msg)
       P'.tellT "DEPRECATED_company_name" (dEPRECATED_company_name msg)
       P'.tellT "DEPRECATED_carrier_name" (dEPRECATED_carrier_name msg)
       P'.tellT "DEPRECATED_carrier_country" (dEPRECATED_carrier_country msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'platform, parse'brand, parse'model, parse'os_version, parse'carrier_id, parse'is_app, parse'app_id,
                   parse'mobile_device_type, parse'screen_width, parse'screen_height, parse'screen_orientation,
                   parse'is_interstitial_request, parse'app_category_ids, parse'is_mobile_web_optimized,
                   parse'device_pixel_ratio_millis, parse'encrypted_advertising_id, parse'encrypted_hashed_idfa,
                   parse'constrained_usage_encrypted_advertising_id, parse'constrained_usage_encrypted_hashed_idfa, parse'app_name,
                   parse'app_rating, parse'dEPRECATED_app_name, parse'dEPRECATED_company_name, parse'dEPRECATED_carrier_name,
                   parse'dEPRECATED_carrier_country])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'platform
         = P'.try
            (do
               v <- P'.getT "platform"
               Prelude'.return (\ o -> o{platform = v}))
        parse'brand
         = P'.try
            (do
               v <- P'.getT "brand"
               Prelude'.return (\ o -> o{brand = v}))
        parse'model
         = P'.try
            (do
               v <- P'.getT "model"
               Prelude'.return (\ o -> o{model = v}))
        parse'os_version
         = P'.try
            (do
               v <- P'.getT "os_version"
               Prelude'.return (\ o -> o{os_version = v}))
        parse'carrier_id
         = P'.try
            (do
               v <- P'.getT "carrier_id"
               Prelude'.return (\ o -> o{carrier_id = v}))
        parse'is_app
         = P'.try
            (do
               v <- P'.getT "is_app"
               Prelude'.return (\ o -> o{is_app = v}))
        parse'app_id
         = P'.try
            (do
               v <- P'.getT "app_id"
               Prelude'.return (\ o -> o{app_id = v}))
        parse'mobile_device_type
         = P'.try
            (do
               v <- P'.getT "mobile_device_type"
               Prelude'.return (\ o -> o{mobile_device_type = v}))
        parse'screen_width
         = P'.try
            (do
               v <- P'.getT "screen_width"
               Prelude'.return (\ o -> o{screen_width = v}))
        parse'screen_height
         = P'.try
            (do
               v <- P'.getT "screen_height"
               Prelude'.return (\ o -> o{screen_height = v}))
        parse'screen_orientation
         = P'.try
            (do
               v <- P'.getT "screen_orientation"
               Prelude'.return (\ o -> o{screen_orientation = v}))
        parse'is_interstitial_request
         = P'.try
            (do
               v <- P'.getT "is_interstitial_request"
               Prelude'.return (\ o -> o{is_interstitial_request = v}))
        parse'app_category_ids
         = P'.try
            (do
               v <- P'.getT "app_category_ids"
               Prelude'.return (\ o -> o{app_category_ids = P'.append (app_category_ids o) v}))
        parse'is_mobile_web_optimized
         = P'.try
            (do
               v <- P'.getT "is_mobile_web_optimized"
               Prelude'.return (\ o -> o{is_mobile_web_optimized = v}))
        parse'device_pixel_ratio_millis
         = P'.try
            (do
               v <- P'.getT "device_pixel_ratio_millis"
               Prelude'.return (\ o -> o{device_pixel_ratio_millis = v}))
        parse'encrypted_advertising_id
         = P'.try
            (do
               v <- P'.getT "encrypted_advertising_id"
               Prelude'.return (\ o -> o{encrypted_advertising_id = v}))
        parse'encrypted_hashed_idfa
         = P'.try
            (do
               v <- P'.getT "encrypted_hashed_idfa"
               Prelude'.return (\ o -> o{encrypted_hashed_idfa = v}))
        parse'constrained_usage_encrypted_advertising_id
         = P'.try
            (do
               v <- P'.getT "constrained_usage_encrypted_advertising_id"
               Prelude'.return (\ o -> o{constrained_usage_encrypted_advertising_id = v}))
        parse'constrained_usage_encrypted_hashed_idfa
         = P'.try
            (do
               v <- P'.getT "constrained_usage_encrypted_hashed_idfa"
               Prelude'.return (\ o -> o{constrained_usage_encrypted_hashed_idfa = v}))
        parse'app_name
         = P'.try
            (do
               v <- P'.getT "app_name"
               Prelude'.return (\ o -> o{app_name = v}))
        parse'app_rating
         = P'.try
            (do
               v <- P'.getT "app_rating"
               Prelude'.return (\ o -> o{app_rating = v}))
        parse'dEPRECATED_app_name
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_app_name"
               Prelude'.return (\ o -> o{dEPRECATED_app_name = v}))
        parse'dEPRECATED_company_name
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_company_name"
               Prelude'.return (\ o -> o{dEPRECATED_company_name = v}))
        parse'dEPRECATED_carrier_name
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_carrier_name"
               Prelude'.return (\ o -> o{dEPRECATED_carrier_name = v}))
        parse'dEPRECATED_carrier_country
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_carrier_country"
               Prelude'.return (\ o -> o{dEPRECATED_carrier_country = v}))