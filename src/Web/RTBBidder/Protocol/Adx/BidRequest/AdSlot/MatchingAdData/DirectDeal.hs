{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal (DirectDeal(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal.DealType
       as Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal (DealType)

data DirectDeal = DirectDeal{direct_deal_id :: !(P'.Maybe P'.Int64), fixed_cpm_micros :: !(P'.Maybe P'.Int64),
                             deal_type :: !(P'.Maybe Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal.DealType),
                             publisher_blocks_overridden :: !(P'.Maybe P'.Bool),
                             remaining_impressions_to_buy :: !(P'.Maybe P'.Int64)}
                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable DirectDeal where
  mergeAppend (DirectDeal x'1 x'2 x'3 x'4 x'5) (DirectDeal y'1 y'2 y'3 y'4 y'5)
   = DirectDeal (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)

instance P'.Default DirectDeal where
  defaultValue
   = DirectDeal P'.defaultValue P'.defaultValue (Prelude'.Just (Prelude'.read "UNKNOWN_DEAL_TYPE")) (Prelude'.Just Prelude'.False)
      P'.defaultValue

instance P'.Wire DirectDeal where
  wireSize ft' self'@(DirectDeal x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 3 x'1 + P'.wireSizeOpt 1 3 x'2 + P'.wireSizeOpt 1 14 x'3 + P'.wireSizeOpt 1 8 x'4 +
             P'.wireSizeOpt 1 3 x'5)
  wirePut ft' self'@(DirectDeal x'1 x'2 x'3 x'4 x'5)
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
             P'.wirePutOpt 16 3 x'2
             P'.wirePutOpt 24 14 x'3
             P'.wirePutOpt 32 8 x'4
             P'.wirePutOpt 48 3 x'5
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{direct_deal_id = Prelude'.Just new'Field}) (P'.wireGet 3)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{fixed_cpm_micros = Prelude'.Just new'Field}) (P'.wireGet 3)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{deal_type = Prelude'.Just new'Field}) (P'.wireGet 14)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{publisher_blocks_overridden = Prelude'.Just new'Field}) (P'.wireGet 8)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{remaining_impressions_to_buy = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> DirectDeal) DirectDeal where
  getVal m' f' = f' m'

instance P'.GPB DirectDeal

instance P'.ReflectDescriptor DirectDeal where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 24, 32, 48])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\"], baseName = MName \"DirectDeal\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"AdSlot\",\"MatchingAdData\",\"DirectDeal.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal.direct_deal_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\",MName \"DirectDeal\"], baseName' = FName \"direct_deal_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal.fixed_cpm_micros\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\",MName \"DirectDeal\"], baseName' = FName \"fixed_cpm_micros\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal.deal_type\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\",MName \"DirectDeal\"], baseName' = FName \"deal_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal.DealType\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\",MName \"DirectDeal\"], baseName = MName \"DealType\"}), hsRawDefault = Just \"UNKNOWN_DEAL_TYPE\", hsDefault = Just (HsDef'Enum \"UNKNOWN_DEAL_TYPE\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal.publisher_blocks_overridden\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\",MName \"DirectDeal\"], baseName' = FName \"publisher_blocks_overridden\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.MatchingAdData.DirectDeal.remaining_impressions_to_buy\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"MatchingAdData\",MName \"DirectDeal\"], baseName' = FName \"remaining_impressions_to_buy\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType DirectDeal where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg DirectDeal where
  textPut msg
   = do
       P'.tellT "direct_deal_id" (direct_deal_id msg)
       P'.tellT "fixed_cpm_micros" (fixed_cpm_micros msg)
       P'.tellT "deal_type" (deal_type msg)
       P'.tellT "publisher_blocks_overridden" (publisher_blocks_overridden msg)
       P'.tellT "remaining_impressions_to_buy" (remaining_impressions_to_buy msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'direct_deal_id, parse'fixed_cpm_micros, parse'deal_type, parse'publisher_blocks_overridden,
                   parse'remaining_impressions_to_buy])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'direct_deal_id
         = P'.try
            (do
               v <- P'.getT "direct_deal_id"
               Prelude'.return (\ o -> o{direct_deal_id = v}))
        parse'fixed_cpm_micros
         = P'.try
            (do
               v <- P'.getT "fixed_cpm_micros"
               Prelude'.return (\ o -> o{fixed_cpm_micros = v}))
        parse'deal_type
         = P'.try
            (do
               v <- P'.getT "deal_type"
               Prelude'.return (\ o -> o{deal_type = v}))
        parse'publisher_blocks_overridden
         = P'.try
            (do
               v <- P'.getT "publisher_blocks_overridden"
               Prelude'.return (\ o -> o{publisher_blocks_overridden = v}))
        parse'remaining_impressions_to_buy
         = P'.try
            (do
               v <- P'.getT "remaining_impressions_to_buy"
               Prelude'.return (\ o -> o{remaining_impressions_to_buy = v}))