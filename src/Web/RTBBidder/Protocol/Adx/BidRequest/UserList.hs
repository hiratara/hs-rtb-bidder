{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.UserList (UserList(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
 
data UserList = UserList{id :: !(P'.Maybe P'.Int64), age_seconds :: !(P'.Maybe P'.Int32)}
              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable UserList where
  mergeAppend (UserList x'1 x'2) (UserList y'1 y'2) = UserList (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default UserList where
  defaultValue = UserList P'.defaultValue P'.defaultValue
 
instance P'.Wire UserList where
  wireSize ft' self'@(UserList x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 3 x'1 + P'.wireSizeOpt 1 5 x'2)
  wirePut ft' self'@(UserList x'1 x'2)
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
             P'.wirePutOpt 16 5 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{id = Prelude'.Just new'Field}) (P'.wireGet 3)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{age_seconds = Prelude'.Just new'Field}) (P'.wireGet 5)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> UserList) UserList where
  getVal m' f' = f' m'
 
instance P'.GPB UserList
 
instance P'.ReflectDescriptor UserList where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.UserList\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"UserList\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"UserList.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.UserList.id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"UserList\"], baseName' = FName \"id\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.UserList.age_seconds\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"UserList\"], baseName' = FName \"age_seconds\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False}"
 
instance P'.TextType UserList where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg UserList where
  textPut msg
   = do
       P'.tellT "id" (id msg)
       P'.tellT "age_seconds" (age_seconds msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'id, parse'age_seconds]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'id
         = P'.try
            (do
               v <- P'.getT "id"
               Prelude'.return (\ o -> o{id = v}))
        parse'age_seconds
         = P'.try
            (do
               v <- P'.getT "age_seconds"
               Prelude'.return (\ o -> o{age_seconds = v}))