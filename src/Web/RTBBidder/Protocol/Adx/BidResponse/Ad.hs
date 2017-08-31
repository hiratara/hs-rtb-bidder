{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidResponse.Ad (Ad(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidResponse.Ad.AdSlot as Adx.BidResponse.Ad (AdSlot)
import qualified Web.RTBBidder.Protocol.Adx.BidResponse.Ad.NativeAd as Adx.BidResponse.Ad (NativeAd)

data Ad = Ad{buyer_creative_id :: !(P'.Maybe P'.Utf8), html_snippet :: !(P'.Maybe P'.Utf8), video_url :: !(P'.Maybe P'.Utf8),
             video_vast_xml :: !(P'.Maybe P'.Utf8), native_ad :: !(P'.Maybe Adx.BidResponse.Ad.NativeAd),
             click_through_url :: !(P'.Seq P'.Utf8), vendor_type :: !(P'.Seq P'.Int32), attribute :: !(P'.Seq P'.Int32),
             category :: !(P'.Seq P'.Int32), restricted_category :: !(P'.Seq P'.Int32), advertiser_name :: !(P'.Seq P'.Utf8),
             bidder_name :: !(P'.Maybe P'.Utf8), width :: !(P'.Maybe P'.Int32), height :: !(P'.Maybe P'.Int32),
             agency_id :: !(P'.Maybe P'.Int64), adslot :: !(P'.Seq Adx.BidResponse.Ad.AdSlot),
             impression_tracking_url :: !(P'.Seq P'.Utf8), ad_choices_destination_url :: !(P'.Maybe P'.Utf8)}
        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Ad where
  mergeAppend (Ad x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18)
   (Ad y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16 y'17 y'18)
   = Ad (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4) (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)
      (P'.mergeAppend x'12 y'12)
      (P'.mergeAppend x'13 y'13)
      (P'.mergeAppend x'14 y'14)
      (P'.mergeAppend x'15 y'15)
      (P'.mergeAppend x'16 y'16)
      (P'.mergeAppend x'17 y'17)
      (P'.mergeAppend x'18 y'18)

instance P'.Default Ad where
  defaultValue
   = Ad P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue

instance P'.Wire Ad where
  wireSize ft' self'@(Ad x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 2 9 x'4 +
             P'.wireSizeOpt 2 11 x'5
             + P'.wireSizeRep 1 9 x'6
             + P'.wireSizeRep 1 5 x'7
             + P'.wireSizeRep 1 5 x'8
             + P'.wireSizeRep 1 5 x'9
             + P'.wireSizeRep 2 5 x'10
             + P'.wireSizeRep 1 9 x'11
             + P'.wireSizeOpt 2 9 x'12
             + P'.wireSizeOpt 1 5 x'13
             + P'.wireSizeOpt 1 5 x'14
             + P'.wireSizeOpt 2 3 x'15
             + P'.wireSizeRep 1 11 x'16
             + P'.wireSizeRep 2 9 x'17
             + P'.wireSizeOpt 2 9 x'18)
  wirePut ft' self'@(Ad x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 9 x'2
             P'.wirePutRep 26 11 x'16
             P'.wirePutRep 34 9 x'6
             P'.wirePutRep 40 5 x'7
             P'.wirePutRep 48 5 x'8
             P'.wirePutRep 56 5 x'9
             P'.wirePutOpt 74 9 x'3
             P'.wirePutOpt 82 9 x'1
             P'.wirePutRep 90 9 x'11
             P'.wirePutOpt 112 5 x'13
             P'.wirePutOpt 120 5 x'14
             P'.wirePutOpt 128 3 x'15
             P'.wirePutRep 136 5 x'10
             P'.wirePutOpt 146 11 x'5
             P'.wirePutRep 154 9 x'17
             P'.wirePutOpt 170 9 x'18
             P'.wirePutOpt 178 9 x'12
             P'.wirePutOpt 194 9 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             82 -> Prelude'.fmap (\ !new'Field -> old'Self{buyer_creative_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{html_snippet = Prelude'.Just new'Field}) (P'.wireGet 9)
             74 -> Prelude'.fmap (\ !new'Field -> old'Self{video_url = Prelude'.Just new'Field}) (P'.wireGet 9)
             194 -> Prelude'.fmap (\ !new'Field -> old'Self{video_vast_xml = Prelude'.Just new'Field}) (P'.wireGet 9)
             146 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{native_ad = P'.mergeAppend (native_ad old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{click_through_url = P'.append (click_through_url old'Self) new'Field})
                    (P'.wireGet 9)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{vendor_type = P'.append (vendor_type old'Self) new'Field}) (P'.wireGet 5)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{vendor_type = P'.mergeAppend (vendor_type old'Self) new'Field})
                    (P'.wireGetPacked 5)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{attribute = P'.append (attribute old'Self) new'Field}) (P'.wireGet 5)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{attribute = P'.mergeAppend (attribute old'Self) new'Field})
                    (P'.wireGetPacked 5)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{category = P'.append (category old'Self) new'Field}) (P'.wireGet 5)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{category = P'.mergeAppend (category old'Self) new'Field})
                    (P'.wireGetPacked 5)
             136 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{restricted_category = P'.append (restricted_category old'Self) new'Field})
                     (P'.wireGet 5)
             138 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{restricted_category = P'.mergeAppend (restricted_category old'Self) new'Field})
                     (P'.wireGetPacked 5)
             90 -> Prelude'.fmap (\ !new'Field -> old'Self{advertiser_name = P'.append (advertiser_name old'Self) new'Field})
                    (P'.wireGet 9)
             178 -> Prelude'.fmap (\ !new'Field -> old'Self{bidder_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             112 -> Prelude'.fmap (\ !new'Field -> old'Self{width = Prelude'.Just new'Field}) (P'.wireGet 5)
             120 -> Prelude'.fmap (\ !new'Field -> old'Self{height = Prelude'.Just new'Field}) (P'.wireGet 5)
             128 -> Prelude'.fmap (\ !new'Field -> old'Self{agency_id = Prelude'.Just new'Field}) (P'.wireGet 3)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{adslot = P'.append (adslot old'Self) new'Field}) (P'.wireGet 11)
             154 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{impression_tracking_url = P'.append (impression_tracking_url old'Self) new'Field})
                     (P'.wireGet 9)
             170 -> Prelude'.fmap (\ !new'Field -> old'Self{ad_choices_destination_url = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Ad) Ad where
  getVal m' f' = f' m'

instance P'.GPB Ad

instance P'.ReflectDescriptor Ad where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [])
      (P'.fromDistinctAscList [10, 26, 34, 40, 42, 48, 50, 56, 58, 74, 82, 90, 112, 120, 128, 136, 138, 146, 154, 170, 178, 194])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidResponse.Ad\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidResponse\"], baseName = MName \"Ad\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidResponse\",\"Ad.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.buyer_creative_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"buyer_creative_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.html_snippet\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"html_snippet\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.video_url\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"video_url\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.video_vast_xml\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"video_vast_xml\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 24}, wireTag = WireTag {getWireTag = 194}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.native_ad\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"native_ad\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 18}, wireTag = WireTag {getWireTag = 146}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidResponse.Ad.NativeAd\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName = MName \"NativeAd\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.click_through_url\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"click_through_url\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.vendor_type\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"vendor_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Just (WireTag {getWireTag = 40},WireTag {getWireTag = 42}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.attribute\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"attribute\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Just (WireTag {getWireTag = 48},WireTag {getWireTag = 50}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.category\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"category\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Just (WireTag {getWireTag = 56},WireTag {getWireTag = 58}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.restricted_category\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"restricted_category\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 17}, wireTag = WireTag {getWireTag = 136}, packedTag = Just (WireTag {getWireTag = 136},WireTag {getWireTag = 138}), wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.advertiser_name\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"advertiser_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.bidder_name\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"bidder_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 22}, wireTag = WireTag {getWireTag = 178}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.width\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"width\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 112}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.height\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"height\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 120}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.agency_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"agency_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 128}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.adslot\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"adslot\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidResponse.Ad.AdSlot\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName = MName \"AdSlot\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.impression_tracking_url\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"impression_tracking_url\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 19}, wireTag = WireTag {getWireTag = 154}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidResponse.Ad.ad_choices_destination_url\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidResponse\",MName \"Ad\"], baseName' = FName \"ad_choices_destination_url\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 21}, wireTag = WireTag {getWireTag = 170}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType Ad where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Ad where
  textPut msg
   = do
       P'.tellT "buyer_creative_id" (buyer_creative_id msg)
       P'.tellT "html_snippet" (html_snippet msg)
       P'.tellT "video_url" (video_url msg)
       P'.tellT "video_vast_xml" (video_vast_xml msg)
       P'.tellT "native_ad" (native_ad msg)
       P'.tellT "click_through_url" (click_through_url msg)
       P'.tellT "vendor_type" (vendor_type msg)
       P'.tellT "attribute" (attribute msg)
       P'.tellT "category" (category msg)
       P'.tellT "restricted_category" (restricted_category msg)
       P'.tellT "advertiser_name" (advertiser_name msg)
       P'.tellT "bidder_name" (bidder_name msg)
       P'.tellT "width" (width msg)
       P'.tellT "height" (height msg)
       P'.tellT "agency_id" (agency_id msg)
       P'.tellT "adslot" (adslot msg)
       P'.tellT "impression_tracking_url" (impression_tracking_url msg)
       P'.tellT "ad_choices_destination_url" (ad_choices_destination_url msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'buyer_creative_id, parse'html_snippet, parse'video_url, parse'video_vast_xml, parse'native_ad,
                   parse'click_through_url, parse'vendor_type, parse'attribute, parse'category, parse'restricted_category,
                   parse'advertiser_name, parse'bidder_name, parse'width, parse'height, parse'agency_id, parse'adslot,
                   parse'impression_tracking_url, parse'ad_choices_destination_url])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'buyer_creative_id
         = P'.try
            (do
               v <- P'.getT "buyer_creative_id"
               Prelude'.return (\ o -> o{buyer_creative_id = v}))
        parse'html_snippet
         = P'.try
            (do
               v <- P'.getT "html_snippet"
               Prelude'.return (\ o -> o{html_snippet = v}))
        parse'video_url
         = P'.try
            (do
               v <- P'.getT "video_url"
               Prelude'.return (\ o -> o{video_url = v}))
        parse'video_vast_xml
         = P'.try
            (do
               v <- P'.getT "video_vast_xml"
               Prelude'.return (\ o -> o{video_vast_xml = v}))
        parse'native_ad
         = P'.try
            (do
               v <- P'.getT "native_ad"
               Prelude'.return (\ o -> o{native_ad = v}))
        parse'click_through_url
         = P'.try
            (do
               v <- P'.getT "click_through_url"
               Prelude'.return (\ o -> o{click_through_url = P'.append (click_through_url o) v}))
        parse'vendor_type
         = P'.try
            (do
               v <- P'.getT "vendor_type"
               Prelude'.return (\ o -> o{vendor_type = P'.append (vendor_type o) v}))
        parse'attribute
         = P'.try
            (do
               v <- P'.getT "attribute"
               Prelude'.return (\ o -> o{attribute = P'.append (attribute o) v}))
        parse'category
         = P'.try
            (do
               v <- P'.getT "category"
               Prelude'.return (\ o -> o{category = P'.append (category o) v}))
        parse'restricted_category
         = P'.try
            (do
               v <- P'.getT "restricted_category"
               Prelude'.return (\ o -> o{restricted_category = P'.append (restricted_category o) v}))
        parse'advertiser_name
         = P'.try
            (do
               v <- P'.getT "advertiser_name"
               Prelude'.return (\ o -> o{advertiser_name = P'.append (advertiser_name o) v}))
        parse'bidder_name
         = P'.try
            (do
               v <- P'.getT "bidder_name"
               Prelude'.return (\ o -> o{bidder_name = v}))
        parse'width
         = P'.try
            (do
               v <- P'.getT "width"
               Prelude'.return (\ o -> o{width = v}))
        parse'height
         = P'.try
            (do
               v <- P'.getT "height"
               Prelude'.return (\ o -> o{height = v}))
        parse'agency_id
         = P'.try
            (do
               v <- P'.getT "agency_id"
               Prelude'.return (\ o -> o{agency_id = v}))
        parse'adslot
         = P'.try
            (do
               v <- P'.getT "adslot"
               Prelude'.return (\ o -> o{adslot = P'.append (adslot o) v}))
        parse'impression_tracking_url
         = P'.try
            (do
               v <- P'.getT "impression_tracking_url"
               Prelude'.return (\ o -> o{impression_tracking_url = P'.append (impression_tracking_url o) v}))
        parse'ad_choices_destination_url
         = P'.try
            (do
               v <- P'.getT "ad_choices_destination_url"
               Prelude'.return (\ o -> o{ad_choices_destination_url = v}))