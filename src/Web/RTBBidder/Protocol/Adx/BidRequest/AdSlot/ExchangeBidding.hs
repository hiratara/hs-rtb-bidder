{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.ExchangeBidding (ExchangeBidding(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.KeyValue as Adx.BidRequest (KeyValue)

data ExchangeBidding = ExchangeBidding{publisher_parameter :: !(P'.Seq P'.Utf8), key_value :: !(P'.Seq Adx.BidRequest.KeyValue)}
                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable ExchangeBidding where
  mergeAppend (ExchangeBidding x'1 x'2) (ExchangeBidding y'1 y'2)
   = ExchangeBidding (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)

instance P'.Default ExchangeBidding where
  defaultValue = ExchangeBidding P'.defaultValue P'.defaultValue

instance P'.Wire ExchangeBidding where
  wireSize ft' self'@(ExchangeBidding x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 9 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePut ft' self'@(ExchangeBidding x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 9 x'1
             P'.wirePutRep 26 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{publisher_parameter = P'.append (publisher_parameter old'Self) new'Field})
                    (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{key_value = P'.append (key_value old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ExchangeBidding) ExchangeBidding where
  getVal m' f' = f' m'

instance P'.GPB ExchangeBidding

instance P'.ReflectDescriptor ExchangeBidding where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.ExchangeBidding\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"ExchangeBidding\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"AdSlot\",\"ExchangeBidding.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.ExchangeBidding.publisher_parameter\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"ExchangeBidding\"], baseName' = FName \"publisher_parameter\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.ExchangeBidding.key_value\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"ExchangeBidding\"], baseName' = FName \"key_value\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.KeyValue\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"KeyValue\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType ExchangeBidding where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ExchangeBidding where
  textPut msg
   = do
       P'.tellT "publisher_parameter" (publisher_parameter msg)
       P'.tellT "key_value" (key_value msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'publisher_parameter, parse'key_value]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'publisher_parameter
         = P'.try
            (do
               v <- P'.getT "publisher_parameter"
               Prelude'.return (\ o -> o{publisher_parameter = P'.append (publisher_parameter o) v}))
        parse'key_value
         = P'.try
            (do
               v <- P'.getT "key_value"
               Prelude'.return (\ o -> o{key_value = P'.append (key_value o) v}))