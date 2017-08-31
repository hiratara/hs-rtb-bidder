{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MatchingAdData (MatchingAdData(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MatchingAdData.BuyerPricingRule
       as Adx.BidRequest.AdSlot.MatchingAdData (BuyerPricingRule)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal as Adx.BidRequest.AdSlot.MatchingAdData
       (DirectDeal)

data MatchingAdData = MatchingAdData{billing_id :: !(P'.Seq P'.Int64), minimum_cpm_micros :: !(P'.Maybe P'.Int64),
                                     pricing_rule :: !(P'.Seq Adx.BidRequest.AdSlot.MatchingAdData.BuyerPricingRule),
                                     direct_deal :: !(P'.Seq Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal)}
                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable MatchingAdData where
  mergeAppend (MatchingAdData x'1 x'2 x'3 x'4) (MatchingAdData y'1 y'2 y'3 y'4)
   = MatchingAdData (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)

instance P'.Default MatchingAdData where
  defaultValue = MatchingAdData P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire MatchingAdData where
  wireSize ft' self'@(MatchingAdData x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 3 x'1 + P'.wireSizeOpt 1 3 x'2 + P'.wireSizeRep 1 11 x'3 + P'.wireSizeRep 1 11 x'4)
  wirePut ft' self'@(MatchingAdData x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 16 3 x'1
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
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{billing_id = P'.append (billing_id old'Self) new'Field}) (P'.wireGet 3)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{billing_id = P'.mergeAppend (billing_id old'Self) new'Field})
                    (P'.wireGetPacked 3)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{minimum_cpm_micros = Prelude'.Just new'Field}) (P'.wireGet 3)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{pricing_rule = P'.append (pricing_rule old'Self) new'Field})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{direct_deal = P'.append (direct_deal old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> MatchingAdData) MatchingAdData where
  getVal m' f' = f' m'

instance P'.GPB MatchingAdData

instance P'.ReflectDescriptor MatchingAdData where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [16, 18, 40, 50, 58])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.MatchingAdData\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"MatchingAdData\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"AdSlot\",\"MatchingAdData.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.billing_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\"], baseName' = FName \"billing_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Just (WireTag {getWireTag = 16},WireTag {getWireTag = 18}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.minimum_cpm_micros\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\"], baseName' = FName \"minimum_cpm_micros\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.pricing_rule\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\"], baseName' = FName \"pricing_rule\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.BuyerPricingRule\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\"], baseName = MName \"BuyerPricingRule\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.direct_deal\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\"], baseName' = FName \"direct_deal\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\"], baseName = MName \"DirectDeal\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType MatchingAdData where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg MatchingAdData where
  textPut msg
   = do
       P'.tellT "billing_id" (billing_id msg)
       P'.tellT "minimum_cpm_micros" (minimum_cpm_micros msg)
       P'.tellT "pricing_rule" (pricing_rule msg)
       P'.tellT "direct_deal" (direct_deal msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'billing_id, parse'minimum_cpm_micros, parse'pricing_rule, parse'direct_deal]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'billing_id
         = P'.try
            (do
               v <- P'.getT "billing_id"
               Prelude'.return (\ o -> o{billing_id = P'.append (billing_id o) v}))
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