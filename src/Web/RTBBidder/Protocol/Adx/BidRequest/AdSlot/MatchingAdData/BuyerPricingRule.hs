{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MatchingAdData.BuyerPricingRule (BuyerPricingRule(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data BuyerPricingRule = BuyerPricingRule{included_advertisers :: !(P'.Seq P'.Int64), excluded_advertisers :: !(P'.Seq P'.Int64),
                                         included_agencies :: !(P'.Seq P'.Int64), excluded_agencies :: !(P'.Seq P'.Int64),
                                         blocked :: !(P'.Maybe P'.Bool), minimum_cpm_micros :: !(P'.Maybe P'.Int64)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable BuyerPricingRule where
  mergeAppend (BuyerPricingRule x'1 x'2 x'3 x'4 x'5 x'6) (BuyerPricingRule y'1 y'2 y'3 y'4 y'5 y'6)
   = BuyerPricingRule (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)

instance P'.Default BuyerPricingRule where
  defaultValue = BuyerPricingRule P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire BuyerPricingRule where
  wireSize ft' self'@(BuyerPricingRule x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeRep 1 3 x'1 + P'.wireSizeRep 1 3 x'2 + P'.wireSizeRep 1 3 x'3 + P'.wireSizeRep 1 3 x'4 +
             P'.wireSizeOpt 1 8 x'5
             + P'.wireSizeOpt 1 3 x'6)
  wirePut ft' self'@(BuyerPricingRule x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 8 3 x'1
             P'.wirePutRep 16 3 x'2
             P'.wirePutRep 24 3 x'3
             P'.wirePutRep 32 3 x'4
             P'.wirePutOpt 40 8 x'5
             P'.wirePutOpt 48 3 x'6
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap
                   (\ !new'Field -> old'Self{included_advertisers = P'.append (included_advertisers old'Self) new'Field})
                   (P'.wireGet 3)
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{included_advertisers = P'.mergeAppend (included_advertisers old'Self) new'Field})
                    (P'.wireGetPacked 3)
             16 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{excluded_advertisers = P'.append (excluded_advertisers old'Self) new'Field})
                    (P'.wireGet 3)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{excluded_advertisers = P'.mergeAppend (excluded_advertisers old'Self) new'Field})
                    (P'.wireGetPacked 3)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{included_agencies = P'.append (included_agencies old'Self) new'Field})
                    (P'.wireGet 3)
             26 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{included_agencies = P'.mergeAppend (included_agencies old'Self) new'Field})
                    (P'.wireGetPacked 3)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{excluded_agencies = P'.append (excluded_agencies old'Self) new'Field})
                    (P'.wireGet 3)
             34 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{excluded_agencies = P'.mergeAppend (excluded_agencies old'Self) new'Field})
                    (P'.wireGetPacked 3)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{blocked = Prelude'.Just new'Field}) (P'.wireGet 8)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{minimum_cpm_micros = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> BuyerPricingRule) BuyerPricingRule where
  getVal m' f' = f' m'

instance P'.GPB BuyerPricingRule

instance P'.ReflectDescriptor BuyerPricingRule where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 10, 16, 18, 24, 26, 32, 34, 40, 48])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.BuyerPricingRule\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\"], baseName = MName \"BuyerPricingRule\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"AdSlot\",\"MatchingAdData\",\"BuyerPricingRule.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.BuyerPricingRule.included_advertisers\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\",MName \"BuyerPricingRule\"], baseName' = FName \"included_advertisers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Just (WireTag {getWireTag = 8},WireTag {getWireTag = 10}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.BuyerPricingRule.excluded_advertisers\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\",MName \"BuyerPricingRule\"], baseName' = FName \"excluded_advertisers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Just (WireTag {getWireTag = 16},WireTag {getWireTag = 18}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.BuyerPricingRule.included_agencies\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\",MName \"BuyerPricingRule\"], baseName' = FName \"included_agencies\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Just (WireTag {getWireTag = 24},WireTag {getWireTag = 26}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.BuyerPricingRule.excluded_agencies\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\",MName \"BuyerPricingRule\"], baseName' = FName \"excluded_agencies\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Just (WireTag {getWireTag = 32},WireTag {getWireTag = 34}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.BuyerPricingRule.blocked\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\",MName \"BuyerPricingRule\"], baseName' = FName \"blocked\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.BuyerPricingRule.minimum_cpm_micros\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\",MName \"BuyerPricingRule\"], baseName' = FName \"minimum_cpm_micros\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType BuyerPricingRule where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg BuyerPricingRule where
  textPut msg
   = do
       P'.tellT "included_advertisers" (included_advertisers msg)
       P'.tellT "excluded_advertisers" (excluded_advertisers msg)
       P'.tellT "included_agencies" (included_agencies msg)
       P'.tellT "excluded_agencies" (excluded_agencies msg)
       P'.tellT "blocked" (blocked msg)
       P'.tellT "minimum_cpm_micros" (minimum_cpm_micros msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'included_advertisers, parse'excluded_advertisers, parse'included_agencies, parse'excluded_agencies,
                   parse'blocked, parse'minimum_cpm_micros])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'included_advertisers
         = P'.try
            (do
               v <- P'.getT "included_advertisers"
               Prelude'.return (\ o -> o{included_advertisers = P'.append (included_advertisers o) v}))
        parse'excluded_advertisers
         = P'.try
            (do
               v <- P'.getT "excluded_advertisers"
               Prelude'.return (\ o -> o{excluded_advertisers = P'.append (excluded_advertisers o) v}))
        parse'included_agencies
         = P'.try
            (do
               v <- P'.getT "included_agencies"
               Prelude'.return (\ o -> o{included_agencies = P'.append (included_agencies o) v}))
        parse'excluded_agencies
         = P'.try
            (do
               v <- P'.getT "excluded_agencies"
               Prelude'.return (\ o -> o{excluded_agencies = P'.append (excluded_agencies o) v}))
        parse'blocked
         = P'.try
            (do
               v <- P'.getT "blocked"
               Prelude'.return (\ o -> o{blocked = v}))
        parse'minimum_cpm_micros
         = P'.try
            (do
               v <- P'.getT "minimum_cpm_micros"
               Prelude'.return (\ o -> o{minimum_cpm_micros = v}))