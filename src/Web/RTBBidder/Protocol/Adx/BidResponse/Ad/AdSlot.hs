{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidResponse.Ad.AdSlot (AdSlot(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidResponse.Ad.AdSlot.ExchangeDealType as Adx.BidResponse.Ad.AdSlot (ExchangeDealType)

data AdSlot = AdSlot{id :: !(P'.Int32), max_cpm_micros :: !(P'.Int64), min_cpm_micros :: !(P'.Maybe P'.Int64),
                     billing_id :: !(P'.Maybe P'.Int64), deal_id :: !(P'.Maybe P'.Int64), exchange_deal_id :: !(P'.Maybe P'.Utf8),
                     exchange_deal_type :: !(P'.Maybe Adx.BidResponse.Ad.AdSlot.ExchangeDealType)}
            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable AdSlot where
  mergeAppend (AdSlot x'1 x'2 x'3 x'4 x'5 x'6 x'7) (AdSlot y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = AdSlot (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)

instance P'.Default AdSlot where
  defaultValue
   = AdSlot P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue (Prelude'.Just 0) P'.defaultValue
      (Prelude'.Just (Prelude'.read "OPEN_AUCTION"))

instance P'.Wire AdSlot where
  wireSize ft' self'@(AdSlot x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 5 x'1 + P'.wireSizeReq 1 3 x'2 + P'.wireSizeOpt 1 3 x'3 + P'.wireSizeOpt 1 3 x'4 +
             P'.wireSizeOpt 1 3 x'5
             + P'.wireSizeOpt 1 9 x'6
             + P'.wireSizeOpt 1 14 x'7)
  wirePut ft' self'@(AdSlot x'1 x'2 x'3 x'4 x'5 x'6 x'7)
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
             P'.wirePutReq 16 3 x'2
             P'.wirePutOpt 24 3 x'3
             P'.wirePutOpt 32 3 x'4
             P'.wirePutOpt 40 3 x'5
             P'.wirePutOpt 50 9 x'6
             P'.wirePutOpt 56 14 x'7
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{id = new'Field}) (P'.wireGet 5)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{max_cpm_micros = new'Field}) (P'.wireGet 3)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{min_cpm_micros = Prelude'.Just new'Field}) (P'.wireGet 3)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{billing_id = Prelude'.Just new'Field}) (P'.wireGet 3)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{deal_id = Prelude'.Just new'Field}) (P'.wireGet 3)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{exchange_deal_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{exchange_deal_type = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> AdSlot) AdSlot where
  getVal m' f' = f' m'

instance P'.GPB AdSlot

instance P'.ReflectDescriptor AdSlot where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList [8, 16]) (P'.fromDistinctAscList [8, 16, 24, 32, 40, 50, 56])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidResponse.Ad.AdSlot\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName = MName \"AdSlot\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidResponse\",\"Ad\",\"AdSlot.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.AdSlot.id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"AdSlot\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.AdSlot.max_cpm_micros\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"AdSlot\"], baseName' = FName \"max_cpm_micros\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.AdSlot.min_cpm_micros\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"AdSlot\"], baseName' = FName \"min_cpm_micros\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.AdSlot.billing_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"AdSlot\"], baseName' = FName \"billing_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.AdSlot.deal_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"AdSlot\"], baseName' = FName \"deal_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Just \"0\", hsDefault = Just (HsDef'Integer 0)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.AdSlot.exchange_deal_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"AdSlot\"], baseName' = FName \"exchange_deal_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.AdSlot.exchange_deal_type\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"AdSlot\"], baseName' = FName \"exchange_deal_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidResponse.Ad.AdSlot.ExchangeDealType\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"AdSlot\"], baseName = MName \"ExchangeDealType\"}), hsRawDefault = Just \"OPEN_AUCTION\", hsDefault = Just (HsDef'Enum \"OPEN_AUCTION\")}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType AdSlot where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg AdSlot where
  textPut msg
   = do
       P'.tellT "id" (id msg)
       P'.tellT "max_cpm_micros" (max_cpm_micros msg)
       P'.tellT "min_cpm_micros" (min_cpm_micros msg)
       P'.tellT "billing_id" (billing_id msg)
       P'.tellT "deal_id" (deal_id msg)
       P'.tellT "exchange_deal_id" (exchange_deal_id msg)
       P'.tellT "exchange_deal_type" (exchange_deal_type msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'id, parse'max_cpm_micros, parse'min_cpm_micros, parse'billing_id, parse'deal_id, parse'exchange_deal_id,
                   parse'exchange_deal_type])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'id
         = P'.try
            (do
               v <- P'.getT "id"
               Prelude'.return (\ o -> o{id = v}))
        parse'max_cpm_micros
         = P'.try
            (do
               v <- P'.getT "max_cpm_micros"
               Prelude'.return (\ o -> o{max_cpm_micros = v}))
        parse'min_cpm_micros
         = P'.try
            (do
               v <- P'.getT "min_cpm_micros"
               Prelude'.return (\ o -> o{min_cpm_micros = v}))
        parse'billing_id
         = P'.try
            (do
               v <- P'.getT "billing_id"
               Prelude'.return (\ o -> o{billing_id = v}))
        parse'deal_id
         = P'.try
            (do
               v <- P'.getT "deal_id"
               Prelude'.return (\ o -> o{deal_id = v}))
        parse'exchange_deal_id
         = P'.try
            (do
               v <- P'.getT "exchange_deal_id"
               Prelude'.return (\ o -> o{exchange_deal_id = v}))
        parse'exchange_deal_type
         = P'.try
            (do
               v <- P'.getT "exchange_deal_type"
               Prelude'.return (\ o -> o{exchange_deal_type = v}))