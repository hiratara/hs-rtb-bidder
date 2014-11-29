{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.HyperlocalSet (HyperlocalSet(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Hyperlocal as Adx.BidRequest (Hyperlocal)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Hyperlocal.Point as Adx.BidRequest.Hyperlocal (Point)
 
data HyperlocalSet = HyperlocalSet{hyperlocal :: !(P'.Seq Adx.BidRequest.Hyperlocal),
                                   center_point :: !(P'.Maybe Adx.BidRequest.Hyperlocal.Point)}
                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable HyperlocalSet where
  mergeAppend (HyperlocalSet x'1 x'2) (HyperlocalSet y'1 y'2) = HyperlocalSet (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)
 
instance P'.Default HyperlocalSet where
  defaultValue = HyperlocalSet P'.defaultValue P'.defaultValue
 
instance P'.Wire HyperlocalSet where
  wireSize ft' self'@(HyperlocalSet x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePut ft' self'@(HyperlocalSet x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 11 x'1
             P'.wirePutOpt 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{hyperlocal = P'.append (hyperlocal old'Self) new'Field}) (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{center_point = P'.mergeAppend (center_point old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> HyperlocalSet) HyperlocalSet where
  getVal m' f' = f' m'
 
instance P'.GPB HyperlocalSet
 
instance P'.ReflectDescriptor HyperlocalSet where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.HyperlocalSet\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"HyperlocalSet\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"HyperlocalSet.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.HyperlocalSet.hyperlocal\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"HyperlocalSet\"], baseName' = FName \"hyperlocal\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Hyperlocal\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"Hyperlocal\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.HyperlocalSet.center_point\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"HyperlocalSet\"], baseName' = FName \"center_point\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Hyperlocal.Point\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Hyperlocal\"], baseName = MName \"Point\"}), hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False}"
 
instance P'.TextType HyperlocalSet where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg HyperlocalSet where
  textPut msg
   = do
       P'.tellT "hyperlocal" (hyperlocal msg)
       P'.tellT "center_point" (center_point msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'hyperlocal, parse'center_point]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'hyperlocal
         = P'.try
            (do
               v <- P'.getT "hyperlocal"
               Prelude'.return (\ o -> o{hyperlocal = P'.append (hyperlocal o) v}))
        parse'center_point
         = P'.try
            (do
               v <- P'.getT "center_point"
               Prelude'.return (\ o -> o{center_point = v}))