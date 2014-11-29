{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.UserDemographic (UserDemographic(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.UserDemographic.Gender as Adx.BidRequest.UserDemographic (Gender)
 
data UserDemographic = UserDemographic{gender :: !(P'.Maybe Adx.BidRequest.UserDemographic.Gender), age_low :: !(P'.Maybe P'.Int32),
                                       age_high :: !(P'.Maybe P'.Int32)}
                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable UserDemographic where
  mergeAppend (UserDemographic x'1 x'2 x'3) (UserDemographic y'1 y'2 y'3)
   = UserDemographic (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
 
instance P'.Default UserDemographic where
  defaultValue = UserDemographic (Prelude'.Just (Prelude'.read "UNKNOWN")) (Prelude'.Just 0) (Prelude'.Just 999)
 
instance P'.Wire UserDemographic where
  wireSize ft' self'@(UserDemographic x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeOpt 1 5 x'2 + P'.wireSizeOpt 1 5 x'3)
  wirePut ft' self'@(UserDemographic x'1 x'2 x'3)
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
             P'.wirePutOpt 16 5 x'2
             P'.wirePutOpt 24 5 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{gender = Prelude'.Just new'Field}) (P'.wireGet 14)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{age_low = Prelude'.Just new'Field}) (P'.wireGet 5)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{age_high = Prelude'.Just new'Field}) (P'.wireGet 5)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> UserDemographic) UserDemographic where
  getVal m' f' = f' m'
 
instance P'.GPB UserDemographic
 
instance P'.ReflectDescriptor UserDemographic where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.UserDemographic\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"UserDemographic\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"UserDemographic.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.UserDemographic.gender\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"UserDemographic\"], baseName' = FName \"gender\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.UserDemographic.Gender\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"UserDemographic\"], baseName = MName \"Gender\"}), hsRawDefault = Just \"UNKNOWN\", hsDefault = Just (HsDef'Enum \"UNKNOWN\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.UserDemographic.age_low\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"UserDemographic\"], baseName' = FName \"age_low\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.UserDemographic.age_high\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"UserDemographic\"], baseName' = FName \"age_high\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Just \"999\", hsDefault = Just (HsDef'Integer 999)}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False}"
 
instance P'.TextType UserDemographic where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg UserDemographic where
  textPut msg
   = do
       P'.tellT "gender" (gender msg)
       P'.tellT "age_low" (age_low msg)
       P'.tellT "age_high" (age_high msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'gender, parse'age_low, parse'age_high]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'gender
         = P'.try
            (do
               v <- P'.getT "gender"
               Prelude'.return (\ o -> o{gender = v}))
        parse'age_low
         = P'.try
            (do
               v <- P'.getT "age_low"
               Prelude'.return (\ o -> o{age_low = v}))
        parse'age_high
         = P'.try
            (do
               v <- P'.getT "age_high"
               Prelude'.return (\ o -> o{age_high = v}))