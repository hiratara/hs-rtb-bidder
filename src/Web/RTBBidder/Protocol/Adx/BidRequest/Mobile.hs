{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Mobile (Mobile(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Mobile = Mobile{is_app :: !(P'.Maybe P'.Bool), app_id :: !(P'.Maybe P'.Utf8), is_interstitial_request :: !(P'.Maybe P'.Bool),
                     app_category_ids :: !(P'.Seq P'.Int32), is_mobile_web_optimized :: !(P'.Maybe P'.Bool),
                     encrypted_advertising_id :: !(P'.Maybe P'.ByteString), advertising_id :: !(P'.Maybe P'.ByteString),
                     encrypted_hashed_idfa :: !(P'.Maybe P'.ByteString), hashed_idfa :: !(P'.Maybe P'.ByteString),
                     constrained_usage_encrypted_advertising_id :: !(P'.Maybe P'.ByteString),
                     constrained_usage_advertising_id :: !(P'.Maybe P'.ByteString),
                     constrained_usage_encrypted_hashed_idfa :: !(P'.Maybe P'.ByteString),
                     constrained_usage_hashed_idfa :: !(P'.Maybe P'.ByteString), app_name :: !(P'.Maybe P'.Utf8),
                     app_rating :: !(P'.Maybe P'.Float)}
            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Mobile where
  mergeAppend (Mobile x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15)
   (Mobile y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15)
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

instance P'.Default Mobile where
  defaultValue
   = Mobile (Prelude'.Just Prelude'.False) P'.defaultValue (Prelude'.Just Prelude'.False) P'.defaultValue
      (Prelude'.Just Prelude'.False)
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
  wireSize ft' self'@(Mobile x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 8 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 8 x'3 + P'.wireSizeRep 1 5 x'4 +
             P'.wireSizeOpt 2 8 x'5
             + P'.wireSizeOpt 2 12 x'6
             + P'.wireSizeOpt 2 12 x'7
             + P'.wireSizeOpt 2 12 x'8
             + P'.wireSizeOpt 2 12 x'9
             + P'.wireSizeOpt 2 12 x'10
             + P'.wireSizeOpt 2 12 x'11
             + P'.wireSizeOpt 2 12 x'12
             + P'.wireSizeOpt 2 12 x'13
             + P'.wireSizeOpt 2 9 x'14
             + P'.wireSizeOpt 2 2 x'15)
  wirePut ft' self'@(Mobile x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 50 9 x'2
             P'.wirePutOpt 56 8 x'1
             P'.wirePutOpt 80 8 x'3
             P'.wirePutRep 88 5 x'4
             P'.wirePutOpt 136 8 x'5
             P'.wirePutOpt 162 12 x'6
             P'.wirePutOpt 170 12 x'8
             P'.wirePutOpt 178 12 x'10
             P'.wirePutOpt 186 12 x'12
             P'.wirePutOpt 194 9 x'14
             P'.wirePutOpt 205 2 x'15
             P'.wirePutOpt 218 12 x'7
             P'.wirePutOpt 226 12 x'9
             P'.wirePutOpt 234 12 x'11
             P'.wirePutOpt 242 12 x'13
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{is_app = Prelude'.Just new'Field}) (P'.wireGet 8)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{app_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             80 -> Prelude'.fmap (\ !new'Field -> old'Self{is_interstitial_request = Prelude'.Just new'Field}) (P'.wireGet 8)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{app_category_ids = P'.append (app_category_ids old'Self) new'Field})
                    (P'.wireGet 5)
             90 -> Prelude'.fmap (\ !new'Field -> old'Self{app_category_ids = P'.mergeAppend (app_category_ids old'Self) new'Field})
                    (P'.wireGetPacked 5)
             136 -> Prelude'.fmap (\ !new'Field -> old'Self{is_mobile_web_optimized = Prelude'.Just new'Field}) (P'.wireGet 8)
             162 -> Prelude'.fmap (\ !new'Field -> old'Self{encrypted_advertising_id = Prelude'.Just new'Field}) (P'.wireGet 12)
             218 -> Prelude'.fmap (\ !new'Field -> old'Self{advertising_id = Prelude'.Just new'Field}) (P'.wireGet 12)
             170 -> Prelude'.fmap (\ !new'Field -> old'Self{encrypted_hashed_idfa = Prelude'.Just new'Field}) (P'.wireGet 12)
             226 -> Prelude'.fmap (\ !new'Field -> old'Self{hashed_idfa = Prelude'.Just new'Field}) (P'.wireGet 12)
             178 -> Prelude'.fmap (\ !new'Field -> old'Self{constrained_usage_encrypted_advertising_id = Prelude'.Just new'Field})
                     (P'.wireGet 12)
             234 -> Prelude'.fmap (\ !new'Field -> old'Self{constrained_usage_advertising_id = Prelude'.Just new'Field})
                     (P'.wireGet 12)
             186 -> Prelude'.fmap (\ !new'Field -> old'Self{constrained_usage_encrypted_hashed_idfa = Prelude'.Just new'Field})
                     (P'.wireGet 12)
             242 -> Prelude'.fmap (\ !new'Field -> old'Self{constrained_usage_hashed_idfa = Prelude'.Just new'Field})
                     (P'.wireGet 12)
             194 -> Prelude'.fmap (\ !new'Field -> old'Self{app_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             205 -> Prelude'.fmap (\ !new'Field -> old'Self{app_rating = Prelude'.Just new'Field}) (P'.wireGet 2)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Mobile) Mobile where
  getVal m' f' = f' m'

instance P'.GPB Mobile

instance P'.ReflectDescriptor Mobile where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [])
      (P'.fromDistinctAscList [50, 56, 80, 88, 90, 136, 162, 170, 178, 186, 194, 205, 218, 226, 234, 242])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.Mobile\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"Mobile\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"Mobile.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.is_app\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"is_app\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.app_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"app_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.is_interstitial_request\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"is_interstitial_request\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 80}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.app_category_ids\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"app_category_ids\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Just (WireTag {getWireTag = 88},WireTag {getWireTag = 90}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.is_mobile_web_optimized\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"is_mobile_web_optimized\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 17}, wireTag = WireTag {getWireTag = 136}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.encrypted_advertising_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"encrypted_advertising_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 20}, wireTag = WireTag {getWireTag = 162}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.advertising_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"advertising_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 27}, wireTag = WireTag {getWireTag = 218}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.encrypted_hashed_idfa\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"encrypted_hashed_idfa\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 21}, wireTag = WireTag {getWireTag = 170}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.hashed_idfa\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"hashed_idfa\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 28}, wireTag = WireTag {getWireTag = 226}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.constrained_usage_encrypted_advertising_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"constrained_usage_encrypted_advertising_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 22}, wireTag = WireTag {getWireTag = 178}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.constrained_usage_advertising_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"constrained_usage_advertising_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 29}, wireTag = WireTag {getWireTag = 234}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.constrained_usage_encrypted_hashed_idfa\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"constrained_usage_encrypted_hashed_idfa\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 23}, wireTag = WireTag {getWireTag = 186}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.constrained_usage_hashed_idfa\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"constrained_usage_hashed_idfa\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 30}, wireTag = WireTag {getWireTag = 242}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.app_name\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"app_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 24}, wireTag = WireTag {getWireTag = 194}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Mobile.app_rating\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Mobile\"], baseName' = FName \"app_rating\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 25}, wireTag = WireTag {getWireTag = 205}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 2}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType Mobile where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Mobile where
  textPut msg
   = do
       P'.tellT "is_app" (is_app msg)
       P'.tellT "app_id" (app_id msg)
       P'.tellT "is_interstitial_request" (is_interstitial_request msg)
       P'.tellT "app_category_ids" (app_category_ids msg)
       P'.tellT "is_mobile_web_optimized" (is_mobile_web_optimized msg)
       P'.tellT "encrypted_advertising_id" (encrypted_advertising_id msg)
       P'.tellT "advertising_id" (advertising_id msg)
       P'.tellT "encrypted_hashed_idfa" (encrypted_hashed_idfa msg)
       P'.tellT "hashed_idfa" (hashed_idfa msg)
       P'.tellT "constrained_usage_encrypted_advertising_id" (constrained_usage_encrypted_advertising_id msg)
       P'.tellT "constrained_usage_advertising_id" (constrained_usage_advertising_id msg)
       P'.tellT "constrained_usage_encrypted_hashed_idfa" (constrained_usage_encrypted_hashed_idfa msg)
       P'.tellT "constrained_usage_hashed_idfa" (constrained_usage_hashed_idfa msg)
       P'.tellT "app_name" (app_name msg)
       P'.tellT "app_rating" (app_rating msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'is_app, parse'app_id, parse'is_interstitial_request, parse'app_category_ids, parse'is_mobile_web_optimized,
                   parse'encrypted_advertising_id, parse'advertising_id, parse'encrypted_hashed_idfa, parse'hashed_idfa,
                   parse'constrained_usage_encrypted_advertising_id, parse'constrained_usage_advertising_id,
                   parse'constrained_usage_encrypted_hashed_idfa, parse'constrained_usage_hashed_idfa, parse'app_name,
                   parse'app_rating])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
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
        parse'encrypted_advertising_id
         = P'.try
            (do
               v <- P'.getT "encrypted_advertising_id"
               Prelude'.return (\ o -> o{encrypted_advertising_id = v}))
        parse'advertising_id
         = P'.try
            (do
               v <- P'.getT "advertising_id"
               Prelude'.return (\ o -> o{advertising_id = v}))
        parse'encrypted_hashed_idfa
         = P'.try
            (do
               v <- P'.getT "encrypted_hashed_idfa"
               Prelude'.return (\ o -> o{encrypted_hashed_idfa = v}))
        parse'hashed_idfa
         = P'.try
            (do
               v <- P'.getT "hashed_idfa"
               Prelude'.return (\ o -> o{hashed_idfa = v}))
        parse'constrained_usage_encrypted_advertising_id
         = P'.try
            (do
               v <- P'.getT "constrained_usage_encrypted_advertising_id"
               Prelude'.return (\ o -> o{constrained_usage_encrypted_advertising_id = v}))
        parse'constrained_usage_advertising_id
         = P'.try
            (do
               v <- P'.getT "constrained_usage_advertising_id"
               Prelude'.return (\ o -> o{constrained_usage_advertising_id = v}))
        parse'constrained_usage_encrypted_hashed_idfa
         = P'.try
            (do
               v <- P'.getT "constrained_usage_encrypted_hashed_idfa"
               Prelude'.return (\ o -> o{constrained_usage_encrypted_hashed_idfa = v}))
        parse'constrained_usage_hashed_idfa
         = P'.try
            (do
               v <- P'.getT "constrained_usage_hashed_idfa"
               Prelude'.return (\ o -> o{constrained_usage_hashed_idfa = v}))
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