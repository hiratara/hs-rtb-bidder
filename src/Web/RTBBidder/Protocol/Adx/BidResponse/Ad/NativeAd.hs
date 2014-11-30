{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidResponse.Ad.NativeAd (NativeAd(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidResponse.Ad.NativeAd.Image as Adx.BidResponse.Ad.NativeAd (Image)
 
data NativeAd = NativeAd{headline :: !(P'.Maybe P'.Utf8), body :: !(P'.Maybe P'.Utf8), call_to_action :: !(P'.Maybe P'.Utf8),
                         advertiser :: !(P'.Maybe P'.Utf8), image :: !(P'.Maybe Adx.BidResponse.Ad.NativeAd.Image),
                         logo :: !(P'.Maybe Adx.BidResponse.Ad.NativeAd.Image),
                         app_icon :: !(P'.Maybe Adx.BidResponse.Ad.NativeAd.Image), star_rating :: !(P'.Maybe P'.Double),
                         impression_tracking_url :: !(P'.Seq P'.Utf8), click_tracking_url :: !(P'.Maybe P'.Utf8),
                         price :: !(P'.Maybe P'.Utf8), store :: !(P'.Maybe P'.Utf8)}
              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable NativeAd where
  mergeAppend (NativeAd x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
   (NativeAd y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12)
   = NativeAd (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)
      (P'.mergeAppend x'12 y'12)
 
instance P'.Default NativeAd where
  defaultValue
   = NativeAd P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
 
instance P'.Wire NativeAd where
  wireSize ft' self'@(NativeAd x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeOpt 1 11 x'5
             + P'.wireSizeOpt 1 11 x'6
             + P'.wireSizeOpt 1 11 x'7
             + P'.wireSizeOpt 1 1 x'8
             + P'.wireSizeRep 1 9 x'9
             + P'.wireSizeOpt 1 9 x'10
             + P'.wireSizeOpt 1 9 x'11
             + P'.wireSizeOpt 1 9 x'12)
  wirePut ft' self'@(NativeAd x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 9 x'1
             P'.wirePutOpt 18 9 x'2
             P'.wirePutOpt 26 9 x'3
             P'.wirePutOpt 34 9 x'4
             P'.wirePutOpt 42 11 x'5
             P'.wirePutOpt 50 11 x'6
             P'.wirePutOpt 58 11 x'7
             P'.wirePutOpt 65 1 x'8
             P'.wirePutRep 74 9 x'9
             P'.wirePutOpt 82 9 x'11
             P'.wirePutOpt 90 9 x'10
             P'.wirePutOpt 98 9 x'12
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{headline = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{body = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{call_to_action = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{advertiser = Prelude'.Just new'Field}) (P'.wireGet 9)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{image = P'.mergeAppend (image old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{logo = P'.mergeAppend (logo old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{app_icon = P'.mergeAppend (app_icon old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             65 -> Prelude'.fmap (\ !new'Field -> old'Self{star_rating = Prelude'.Just new'Field}) (P'.wireGet 1)
             74 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{impression_tracking_url = P'.append (impression_tracking_url old'Self) new'Field})
                    (P'.wireGet 9)
             90 -> Prelude'.fmap (\ !new'Field -> old'Self{click_tracking_url = Prelude'.Just new'Field}) (P'.wireGet 9)
             82 -> Prelude'.fmap (\ !new'Field -> old'Self{price = Prelude'.Just new'Field}) (P'.wireGet 9)
             98 -> Prelude'.fmap (\ !new'Field -> old'Self{store = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> NativeAd) NativeAd where
  getVal m' f' = f' m'
 
instance P'.GPB NativeAd
 
instance P'.ReflectDescriptor NativeAd where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 42, 50, 58, 65, 74, 82, 90, 98])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidResponse.Ad.NativeAd\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName = MName \"NativeAd\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidResponse\",\"Ad\",\"NativeAd.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.NativeAd.headline\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"NativeAd\"], baseName' = FName \"headline\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.NativeAd.body\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"NativeAd\"], baseName' = FName \"body\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.NativeAd.call_to_action\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"NativeAd\"], baseName' = FName \"call_to_action\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.NativeAd.advertiser\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"NativeAd\"], baseName' = FName \"advertiser\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.NativeAd.image\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"NativeAd\"], baseName' = FName \"image\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidResponse.Ad.NativeAd.Image\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"NativeAd\"], baseName = MName \"Image\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.NativeAd.logo\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"NativeAd\"], baseName' = FName \"logo\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidResponse.Ad.NativeAd.Image\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"NativeAd\"], baseName = MName \"Image\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.NativeAd.app_icon\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"NativeAd\"], baseName' = FName \"app_icon\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidResponse.Ad.NativeAd.Image\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"NativeAd\"], baseName = MName \"Image\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.NativeAd.star_rating\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"NativeAd\"], baseName' = FName \"star_rating\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 65}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 1}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.NativeAd.impression_tracking_url\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"NativeAd\"], baseName' = FName \"impression_tracking_url\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.NativeAd.click_tracking_url\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"NativeAd\"], baseName' = FName \"click_tracking_url\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.NativeAd.price\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"NativeAd\"], baseName' = FName \"price\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.NativeAd.store\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\",MName \"NativeAd\"], baseName' = FName \"store\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 98}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False}"
 
instance P'.TextType NativeAd where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage
 
instance P'.TextMsg NativeAd where
  textPut msg
   = do
       P'.tellT "headline" (headline msg)
       P'.tellT "body" (body msg)
       P'.tellT "call_to_action" (call_to_action msg)
       P'.tellT "advertiser" (advertiser msg)
       P'.tellT "image" (image msg)
       P'.tellT "logo" (logo msg)
       P'.tellT "app_icon" (app_icon msg)
       P'.tellT "star_rating" (star_rating msg)
       P'.tellT "impression_tracking_url" (impression_tracking_url msg)
       P'.tellT "click_tracking_url" (click_tracking_url msg)
       P'.tellT "price" (price msg)
       P'.tellT "store" (store msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'headline, parse'body, parse'call_to_action, parse'advertiser, parse'image, parse'logo, parse'app_icon,
                   parse'star_rating, parse'impression_tracking_url, parse'click_tracking_url, parse'price, parse'store])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'headline
         = P'.try
            (do
               v <- P'.getT "headline"
               Prelude'.return (\ o -> o{headline = v}))
        parse'body
         = P'.try
            (do
               v <- P'.getT "body"
               Prelude'.return (\ o -> o{body = v}))
        parse'call_to_action
         = P'.try
            (do
               v <- P'.getT "call_to_action"
               Prelude'.return (\ o -> o{call_to_action = v}))
        parse'advertiser
         = P'.try
            (do
               v <- P'.getT "advertiser"
               Prelude'.return (\ o -> o{advertiser = v}))
        parse'image
         = P'.try
            (do
               v <- P'.getT "image"
               Prelude'.return (\ o -> o{image = v}))
        parse'logo
         = P'.try
            (do
               v <- P'.getT "logo"
               Prelude'.return (\ o -> o{logo = v}))
        parse'app_icon
         = P'.try
            (do
               v <- P'.getT "app_icon"
               Prelude'.return (\ o -> o{app_icon = v}))
        parse'star_rating
         = P'.try
            (do
               v <- P'.getT "star_rating"
               Prelude'.return (\ o -> o{star_rating = v}))
        parse'impression_tracking_url
         = P'.try
            (do
               v <- P'.getT "impression_tracking_url"
               Prelude'.return (\ o -> o{impression_tracking_url = P'.append (impression_tracking_url o) v}))
        parse'click_tracking_url
         = P'.try
            (do
               v <- P'.getT "click_tracking_url"
               Prelude'.return (\ o -> o{click_tracking_url = v}))
        parse'price
         = P'.try
            (do
               v <- P'.getT "price"
               Prelude'.return (\ o -> o{price = v}))
        parse'store
         = P'.try
            (do
               v <- P'.getT "store"
               Prelude'.return (\ o -> o{store = v}))