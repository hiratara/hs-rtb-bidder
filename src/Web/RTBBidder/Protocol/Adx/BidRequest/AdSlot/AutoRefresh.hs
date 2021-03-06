{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AutoRefresh (AutoRefresh(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AutoRefresh.AutoRefreshSettings as Adx.BidRequest.AdSlot.AutoRefresh
       (AutoRefreshSettings)

data AutoRefresh = AutoRefresh{refresh_settings :: !(P'.Seq Adx.BidRequest.AdSlot.AutoRefresh.AutoRefreshSettings),
                               refresh_count :: !(P'.Maybe P'.Int32)}
                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable AutoRefresh where
  mergeAppend (AutoRefresh x'1 x'2) (AutoRefresh y'1 y'2) = AutoRefresh (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)

instance P'.Default AutoRefresh where
  defaultValue = AutoRefresh P'.defaultValue (Prelude'.Just 0)

instance P'.Wire AutoRefresh where
  wireSize ft' self'@(AutoRefresh x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeOpt 1 5 x'2)
  wirePut ft' self'@(AutoRefresh x'1 x'2)
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
             P'.wirePutOpt 16 5 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{refresh_settings = P'.append (refresh_settings old'Self) new'Field})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{refresh_count = Prelude'.Just new'Field}) (P'.wireGet 5)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> AutoRefresh) AutoRefresh where
  getVal m' f' = f' m'

instance P'.GPB AutoRefresh

instance P'.ReflectDescriptor AutoRefresh where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.AutoRefresh\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"AutoRefresh\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"AdSlot\",\"AutoRefresh.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.AutoRefresh.refresh_settings\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"AutoRefresh\"], baseName' = FName \"refresh_settings\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.AutoRefresh.AutoRefreshSettings\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"AutoRefresh\"], baseName = MName \"AutoRefreshSettings\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.AutoRefresh.refresh_count\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"AutoRefresh\"], baseName' = FName \"refresh_count\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType AutoRefresh where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg AutoRefresh where
  textPut msg
   = do
       P'.tellT "refresh_settings" (refresh_settings msg)
       P'.tellT "refresh_count" (refresh_count msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'refresh_settings, parse'refresh_count]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'refresh_settings
         = P'.try
            (do
               v <- P'.getT "refresh_settings"
               Prelude'.return (\ o -> o{refresh_settings = P'.append (refresh_settings o) v}))
        parse'refresh_count
         = P'.try
            (do
               v <- P'.getT "refresh_count"
               Prelude'.return (\ o -> o{refresh_count = v}))