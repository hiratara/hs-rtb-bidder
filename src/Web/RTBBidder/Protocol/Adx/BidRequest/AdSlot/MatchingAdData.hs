{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MatchingAdData (MatchingAdData(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MatchingAdData.BuyerPricingRule
       as Adx.BidRequest.AdSlot.MatchingAdData (BuyerPricingRule)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal as Adx.BidRequest.AdSlot.MatchingAdData
       (DirectDeal)
 
data MatchingAdData = MatchingAdData{adgroup_id :: !(P'.Maybe P'.Int64), minimum_cpm_micros :: !(P'.Maybe P'.Int64),
                                     pricing_rule :: !(P'.Seq Adx.BidRequest.AdSlot.MatchingAdData.BuyerPricingRule),
                                     direct_deal :: !(P'.Seq Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal),
                                     dEPRECATED_campaign_id :: !(P'.Maybe P'.Int64),
                                     dEPRECATED_per_buyer_minimum_cpm :: !(P'.Maybe P'.Bool),
                                     dEPRECATED_fixed_cpm_micros :: !(P'.Maybe P'.Int64)}
                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable MatchingAdData where
  mergeAppend (MatchingAdData x'1 x'2 x'3 x'4 x'5 x'6 x'7) (MatchingAdData y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = MatchingAdData (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
 
instance P'.Default MatchingAdData where
  defaultValue
   = MatchingAdData P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
 
instance P'.Wire MatchingAdData where
  wireSize ft' self'@(MatchingAdData x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 3 x'1 + P'.wireSizeOpt 1 3 x'2 + P'.wireSizeRep 1 11 x'3 + P'.wireSizeRep 1 11 x'4 +
             P'.wireSizeOpt 1 3 x'5
             + P'.wireSizeOpt 1 8 x'6
             + P'.wireSizeOpt 1 3 x'7)
  wirePut ft' self'@(MatchingAdData x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 3 x'5
             P'.wirePutOpt 16 3 x'1
             P'.wirePutOpt 24 8 x'6
             P'.wirePutOpt 32 3 x'7
             P'.wirePutOpt 40 3 x'2
             P'.wirePutRep 50 11 x'4
             P'.wirePutRep 58 11 x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{adgroup_id = Prelude'.Just new'Field}) (P'.wireGet 3)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{minimum_cpm_micros = Prelude'.Just new'Field}) (P'.wireGet 3)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{pricing_rule = P'.append (pricing_rule old'Self) new'Field})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{direct_deal = P'.append (direct_deal old'Self) new'Field})
                    (P'.wireGet 11)
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_campaign_id = Prelude'.Just new'Field}) (P'.wireGet 3)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_per_buyer_minimum_cpm = Prelude'.Just new'Field})
                    (P'.wireGet 8)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_fixed_cpm_micros = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> MatchingAdData) MatchingAdData where
  getVal m' f' = f' m'
 
instance P'.GPB MatchingAdData
 
instance P'.ReflectDescriptor MatchingAdData where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 24, 32, 40, 50, 58])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.MatchingAdData\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"MatchingAdData\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"AdSlot\",\"MatchingAdData.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.adgroup_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\"], baseName' = FName \"adgroup_id\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.minimum_cpm_micros\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\"], baseName' = FName \"minimum_cpm_micros\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.pricing_rule\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\"], baseName' = FName \"pricing_rule\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.BuyerPricingRule\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\"], baseName = MName \"BuyerPricingRule\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.direct_deal\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\"], baseName' = FName \"direct_deal\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\"], baseName = MName \"DirectDeal\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.DEPRECATED_campaign_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\"], baseName' = FName \"dEPRECATED_campaign_id\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.DEPRECATED_per_buyer_minimum_cpm\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\"], baseName' = FName \"dEPRECATED_per_buyer_minimum_cpm\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.DEPRECATED_fixed_cpm_micros\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\"], baseName' = FName \"dEPRECATED_fixed_cpm_micros\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False}"
 
instance P'.TextType MatchingAdData where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg MatchingAdData where
  textPut msg
   = do
       P'.tellT "adgroup_id" (adgroup_id msg)
       P'.tellT "minimum_cpm_micros" (minimum_cpm_micros msg)
       P'.tellT "pricing_rule" (pricing_rule msg)
       P'.tellT "direct_deal" (direct_deal msg)
       P'.tellT "DEPRECATED_campaign_id" (dEPRECATED_campaign_id msg)
       P'.tellT "DEPRECATED_per_buyer_minimum_cpm" (dEPRECATED_per_buyer_minimum_cpm msg)
       P'.tellT "DEPRECATED_fixed_cpm_micros" (dEPRECATED_fixed_cpm_micros msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'adgroup_id, parse'minimum_cpm_micros, parse'pricing_rule, parse'direct_deal, parse'dEPRECATED_campaign_id,
                   parse'dEPRECATED_per_buyer_minimum_cpm, parse'dEPRECATED_fixed_cpm_micros])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'adgroup_id
         = P'.try
            (do
               v <- P'.getT "adgroup_id"
               Prelude'.return (\ o -> o{adgroup_id = v}))
        parse'minimum_cpm_micros
         = P'.try
            (do
               v <- P'.getT "minimum_cpm_micros"
               Prelude'.return (\ o -> o{minimum_cpm_micros = v}))
        parse'pricing_rule
         = P'.try
            (do
               v <- P'.getT "pricing_rule"
               Prelude'.return (\ o -> o{pricing_rule = P'.append (pricing_rule o) v}))
        parse'direct_deal
         = P'.try
            (do
               v <- P'.getT "direct_deal"
               Prelude'.return (\ o -> o{direct_deal = P'.append (direct_deal o) v}))
        parse'dEPRECATED_campaign_id
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_campaign_id"
               Prelude'.return (\ o -> o{dEPRECATED_campaign_id = v}))
        parse'dEPRECATED_per_buyer_minimum_cpm
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_per_buyer_minimum_cpm"
               Prelude'.return (\ o -> o{dEPRECATED_per_buyer_minimum_cpm = v}))
        parse'dEPRECATED_fixed_cpm_micros
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_fixed_cpm_micros"
               Prelude'.return (\ o -> o{dEPRECATED_fixed_cpm_micros = v}))