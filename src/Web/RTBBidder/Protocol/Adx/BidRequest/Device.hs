{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Device (Device(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Device.DeviceType as Adx.BidRequest.Device (DeviceType)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Device.OsVersion as Adx.BidRequest.Device (OsVersion)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Device.ScreenOrientation as Adx.BidRequest.Device (ScreenOrientation)

data Device = Device{device_type :: !(P'.Maybe Adx.BidRequest.Device.DeviceType), platform :: !(P'.Maybe P'.Utf8),
                     brand :: !(P'.Maybe P'.Utf8), model :: !(P'.Maybe P'.Utf8),
                     os_version :: !(P'.Maybe Adx.BidRequest.Device.OsVersion), carrier_id :: !(P'.Maybe P'.Int64),
                     screen_width :: !(P'.Maybe P'.Int32), screen_height :: !(P'.Maybe P'.Int32),
                     screen_pixel_ratio_millis :: !(P'.Maybe P'.Int32),
                     screen_orientation :: !(P'.Maybe Adx.BidRequest.Device.ScreenOrientation),
                     hardware_version :: !(P'.Maybe P'.Utf8)}
            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Device where
  mergeAppend (Device x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11) (Device y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11)
   = Device (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)

instance P'.Default Device where
  defaultValue
   = Device (Prelude'.Just (Prelude'.read "UNKNOWN_DEVICE")) P'.defaultValue (Prelude'.Just (P'.Utf8 (P'.pack "")))
      (Prelude'.Just (P'.Utf8 (P'.pack "")))
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just 0)
      (Prelude'.Just 0)
      (Prelude'.Just 0)
      (Prelude'.Just (Prelude'.read "UNKNOWN_ORIENTATION"))
      P'.defaultValue

instance P'.Wire Device where
  wireSize ft' self'@(Device x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeOpt 1 11 x'5
             + P'.wireSizeOpt 1 3 x'6
             + P'.wireSizeOpt 1 5 x'7
             + P'.wireSizeOpt 1 5 x'8
             + P'.wireSizeOpt 1 5 x'9
             + P'.wireSizeOpt 1 14 x'10
             + P'.wireSizeOpt 1 9 x'11)
  wirePut ft' self'@(Device x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11)
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
             P'.wirePutOpt 18 9 x'2
             P'.wirePutOpt 26 9 x'3
             P'.wirePutOpt 34 9 x'4
             P'.wirePutOpt 42 11 x'5
             P'.wirePutOpt 48 3 x'6
             P'.wirePutOpt 56 5 x'7
             P'.wirePutOpt 64 5 x'8
             P'.wirePutOpt 72 5 x'9
             P'.wirePutOpt 80 14 x'10
             P'.wirePutOpt 90 9 x'11
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{device_type = Prelude'.Just new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{platform = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{brand = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{model = Prelude'.Just new'Field}) (P'.wireGet 9)
             42 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{os_version = P'.mergeAppend (os_version old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{carrier_id = Prelude'.Just new'Field}) (P'.wireGet 3)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{screen_width = Prelude'.Just new'Field}) (P'.wireGet 5)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{screen_height = Prelude'.Just new'Field}) (P'.wireGet 5)
             72 -> Prelude'.fmap (\ !new'Field -> old'Self{screen_pixel_ratio_millis = Prelude'.Just new'Field}) (P'.wireGet 5)
             80 -> Prelude'.fmap (\ !new'Field -> old'Self{screen_orientation = Prelude'.Just new'Field}) (P'.wireGet 14)
             90 -> Prelude'.fmap (\ !new'Field -> old'Self{hardware_version = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Device) Device where
  getVal m' f' = f' m'

instance P'.GPB Device

instance P'.ReflectDescriptor Device where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18, 26, 34, 42, 48, 56, 64, 72, 80, 90])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.Device\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"Device\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"Device.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Device.device_type\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Device\"], baseName' = FName \"device_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Device.DeviceType\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Device\"], baseName = MName \"DeviceType\"}), hsRawDefault = Just \"UNKNOWN_DEVICE\", hsDefault = Just (HsDef'Enum \"UNKNOWN_DEVICE\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Device.platform\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Device\"], baseName' = FName \"platform\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Device.brand\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Device\"], baseName' = FName \"brand\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Just \"\", hsDefault = Just (HsDef'ByteString \"\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Device.model\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Device\"], baseName' = FName \"model\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Just \"\", hsDefault = Just (HsDef'ByteString \"\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Device.os_version\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Device\"], baseName' = FName \"os_version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Device.OsVersion\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Device\"], baseName = MName \"OsVersion\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Device.carrier_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Device\"], baseName' = FName \"carrier_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Device.screen_width\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Device\"], baseName' = FName \"screen_width\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Device.screen_height\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Device\"], baseName' = FName \"screen_height\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Device.screen_pixel_ratio_millis\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Device\"], baseName' = FName \"screen_pixel_ratio_millis\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 72}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Device.screen_orientation\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Device\"], baseName' = FName \"screen_orientation\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 80}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Device.ScreenOrientation\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Device\"], baseName = MName \"ScreenOrientation\"}), hsRawDefault = Just \"UNKNOWN_ORIENTATION\", hsDefault = Just (HsDef'Enum \"UNKNOWN_ORIENTATION\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Device.hardware_version\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Device\"], baseName' = FName \"hardware_version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType Device where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Device where
  textPut msg
   = do
       P'.tellT "device_type" (device_type msg)
       P'.tellT "platform" (platform msg)
       P'.tellT "brand" (brand msg)
       P'.tellT "model" (model msg)
       P'.tellT "os_version" (os_version msg)
       P'.tellT "carrier_id" (carrier_id msg)
       P'.tellT "screen_width" (screen_width msg)
       P'.tellT "screen_height" (screen_height msg)
       P'.tellT "screen_pixel_ratio_millis" (screen_pixel_ratio_millis msg)
       P'.tellT "screen_orientation" (screen_orientation msg)
       P'.tellT "hardware_version" (hardware_version msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'device_type, parse'platform, parse'brand, parse'model, parse'os_version, parse'carrier_id,
                   parse'screen_width, parse'screen_height, parse'screen_pixel_ratio_millis, parse'screen_orientation,
                   parse'hardware_version])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'device_type
         = P'.try
            (do
               v <- P'.getT "device_type"
               Prelude'.return (\ o -> o{device_type = v}))
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
        parse'screen_pixel_ratio_millis
         = P'.try
            (do
               v <- P'.getT "screen_pixel_ratio_millis"
               Prelude'.return (\ o -> o{screen_pixel_ratio_millis = v}))
        parse'screen_orientation
         = P'.try
            (do
               v <- P'.getT "screen_orientation"
               Prelude'.return (\ o -> o{screen_orientation = v}))
        parse'hardware_version
         = P'.try
            (do
               v <- P'.getT "hardware_version"
               Prelude'.return (\ o -> o{hardware_version = v}))