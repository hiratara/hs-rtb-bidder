{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AutoRefresh.AutoRefreshSettings (AutoRefreshSettings(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AutoRefresh.AutoRefreshSettings.AutoRefreshType
       as Adx.BidRequest.AdSlot.AutoRefresh.AutoRefreshSettings (AutoRefreshType)

data AutoRefreshSettings = AutoRefreshSettings{refresh_type ::
                                               !(P'.Maybe Adx.BidRequest.AdSlot.AutoRefresh.AutoRefreshSettings.AutoRefreshType),
                                               min_refresh_interval_seconds :: !(P'.Maybe P'.Int32)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable AutoRefreshSettings where
  mergeAppend (AutoRefreshSettings x'1 x'2) (AutoRefreshSettings y'1 y'2)
   = AutoRefreshSettings (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)

instance P'.Default AutoRefreshSettings where
  defaultValue = AutoRefreshSettings (Prelude'.Just (Prelude'.read "UNKNOWN_AUTO_REFRESH_TYPE")) P'.defaultValue

instance P'.Wire AutoRefreshSettings where
  wireSize ft' self'@(AutoRefreshSettings x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeOpt 1 5 x'2)
  wirePut ft' self'@(AutoRefreshSettings x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 14 x'1
             P'.wirePutOpt 16 5 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{refresh_type = Prelude'.Just new'Field}) (P'.wireGet 14)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{min_refresh_interval_seconds = Prelude'.Just new'Field}) (P'.wireGet 5)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> AutoRefreshSettings) AutoRefreshSettings where
  getVal m' f' = f' m'

instance P'.GPB AutoRefreshSettings

instance P'.ReflectDescriptor AutoRefreshSettings where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.AutoRefresh.AutoRefreshSettings\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"AutoRefresh\"], baseName = MName \"AutoRefreshSettings\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"AdSlot\",\"AutoRefresh\",\"AutoRefreshSettings.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.AutoRefresh.AutoRefreshSettings.refresh_type\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"AutoRefresh\",MName \"AutoRefreshSettings\"], baseName' = FName \"refresh_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.AutoRefresh.AutoRefreshSettings.AutoRefreshType\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"AutoRefresh\",MName \"AutoRefreshSettings\"], baseName = MName \"AutoRefreshType\"}), hsRawDefault = Just \"UNKNOWN_AUTO_REFRESH_TYPE\", hsDefault = Just (HsDef'Enum \"UNKNOWN_AUTO_REFRESH_TYPE\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.AutoRefresh.AutoRefreshSettings.min_refresh_interval_seconds\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\",MName \"AutoRefresh\",MName \"AutoRefreshSettings\"], baseName' = FName \"min_refresh_interval_seconds\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType AutoRefreshSettings where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg AutoRefreshSettings where
  textPut msg
   = do
       P'.tellT "refresh_type" (refresh_type msg)
       P'.tellT "min_refresh_interval_seconds" (min_refresh_interval_seconds msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'refresh_type, parse'min_refresh_interval_seconds]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'refresh_type
         = P'.try
            (do
               v <- P'.getT "refresh_type"
               Prelude'.return (\ o -> o{refresh_type = v}))
        parse'min_refresh_interval_seconds
         = P'.try
            (do
               v <- P'.getT "min_refresh_interval_seconds"
               Prelude'.return (\ o -> o{min_refresh_interval_seconds = v}))