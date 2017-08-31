{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Hyperlocal.Point (Point(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Point = Point{latitude :: !(P'.Maybe P'.Float), longitude :: !(P'.Maybe P'.Float)}
           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Point where
  mergeAppend (Point x'1 x'2) (Point y'1 y'2) = Point (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)

instance P'.Default Point where
  defaultValue = Point P'.defaultValue P'.defaultValue

instance P'.Wire Point where
  wireSize ft' self'@(Point x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 2 x'1 + P'.wireSizeOpt 1 2 x'2)
  wirePut ft' self'@(Point x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 13 2 x'1
             P'.wirePutOpt 21 2 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             13 -> Prelude'.fmap (\ !new'Field -> old'Self{latitude = Prelude'.Just new'Field}) (P'.wireGet 2)
             21 -> Prelude'.fmap (\ !new'Field -> old'Self{longitude = Prelude'.Just new'Field}) (P'.wireGet 2)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Point) Point where
  getVal m' f' = f' m'

instance P'.GPB Point

instance P'.ReflectDescriptor Point where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [13, 21])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.Hyperlocal.Point\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Hyperlocal\"], baseName = MName \"Point\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"Hyperlocal\",\"Point.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Hyperlocal.Point.latitude\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Hyperlocal\",MName \"Point\"], baseName' = FName \"latitude\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 13}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 2}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Hyperlocal.Point.longitude\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Hyperlocal\",MName \"Point\"], baseName' = FName \"longitude\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 21}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 2}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType Point where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Point where
  textPut msg
   = do
       P'.tellT "latitude" (latitude msg)
       P'.tellT "longitude" (longitude msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'latitude, parse'longitude]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'latitude
         = P'.try
            (do
               v <- P'.getT "latitude"
               Prelude'.return (\ o -> o{latitude = v}))
        parse'longitude
         = P'.try
            (do
               v <- P'.getT "longitude"
               Prelude'.return (\ o -> o{longitude = v}))