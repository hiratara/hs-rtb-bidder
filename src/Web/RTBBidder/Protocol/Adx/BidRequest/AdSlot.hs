{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot (AdSlot(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AllowedAdType as Adx.BidRequest.AdSlot (AllowedAdType)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AmpAdRequestType as Adx.BidRequest.AdSlot (AmpAdRequestType)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.AutoRefresh as Adx.BidRequest.AdSlot (AutoRefresh)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.ExchangeBidding as Adx.BidRequest.AdSlot (ExchangeBidding)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.IFramingDepth as Adx.BidRequest.AdSlot (IFramingDepth)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.IFramingState as Adx.BidRequest.AdSlot (IFramingState)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MatchingAdData as Adx.BidRequest.AdSlot (MatchingAdData)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.MediationStatus as Adx.BidRequest.AdSlot (MediationStatus)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.NativeAdTemplate as Adx.BidRequest.AdSlot (NativeAdTemplate)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.NonBrowserSource as Adx.BidRequest.AdSlot (NonBrowserSource)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.Renderer as Adx.BidRequest.AdSlot (Renderer)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.SlotVisibility as Adx.BidRequest.AdSlot (SlotVisibility)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot.StickySettings as Adx.BidRequest.AdSlot (StickySettings)

data AdSlot = AdSlot{id :: !(P'.Int32), ad_block_key :: !(P'.Maybe P'.Word64), targetable_channel :: !(P'.Seq P'.Utf8),
                     width :: !(P'.Seq P'.Int32), height :: !(P'.Seq P'.Int32), excluded_attribute :: !(P'.Seq P'.Int32),
                     allowed_vendor_type :: !(P'.Seq P'.Int32), excluded_sensitive_category :: !(P'.Seq P'.Int32),
                     allowed_restricted_category :: !(P'.Seq P'.Int32), allowed_restricted_category_for_deals :: !(P'.Seq P'.Int32),
                     allowed_languages :: !(P'.Seq P'.Utf8), excluded_product_category :: !(P'.Seq P'.Int32),
                     matching_ad_data :: !(P'.Seq Adx.BidRequest.AdSlot.MatchingAdData),
                     publisher_settings_list_id :: !(P'.Seq P'.Word64),
                     exchange_bidding :: !(P'.Maybe Adx.BidRequest.AdSlot.ExchangeBidding), dfp_ad_unit_code :: !(P'.Maybe P'.Utf8),
                     slot_visibility :: !(P'.Maybe Adx.BidRequest.AdSlot.SlotVisibility), viewability :: !(P'.Maybe P'.Int32),
                     click_through_rate :: !(P'.Maybe P'.Float), video_completion_rate :: !(P'.Maybe P'.Float),
                     iframing_state :: !(P'.Maybe Adx.BidRequest.AdSlot.IFramingState),
                     iframing_depth :: !(P'.Maybe Adx.BidRequest.AdSlot.IFramingDepth),
                     native_ad_template :: !(P'.Seq Adx.BidRequest.AdSlot.NativeAdTemplate),
                     mediation_status :: !(P'.Maybe Adx.BidRequest.AdSlot.MediationStatus),
                     auto_refresh :: !(P'.Maybe Adx.BidRequest.AdSlot.AutoRefresh),
                     sticky_settings :: !(P'.Maybe Adx.BidRequest.AdSlot.StickySettings),
                     non_browser_slot_source :: !(P'.Maybe Adx.BidRequest.AdSlot.NonBrowserSource),
                     is_interstitial_slot :: !(P'.Maybe P'.Bool), renderer :: !(P'.Maybe Adx.BidRequest.AdSlot.Renderer),
                     amp_ad_request_type :: !(P'.Maybe Adx.BidRequest.AdSlot.AmpAdRequestType), is_rewarded :: !(P'.Maybe P'.Bool),
                     allowed_ad_types :: !(P'.Seq Adx.BidRequest.AdSlot.AllowedAdType)}
            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable AdSlot where
  mergeAppend
   (AdSlot x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24 x'25 x'26
     x'27 x'28 x'29 x'30 x'31 x'32)
   (AdSlot y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16 y'17 y'18 y'19 y'20 y'21 y'22 y'23 y'24 y'25 y'26
     y'27 y'28 y'29 y'30 y'31 y'32)
   = AdSlot (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
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
      (P'.mergeAppend x'19 y'19)
      (P'.mergeAppend x'20 y'20)
      (P'.mergeAppend x'21 y'21)
      (P'.mergeAppend x'22 y'22)
      (P'.mergeAppend x'23 y'23)
      (P'.mergeAppend x'24 y'24)
      (P'.mergeAppend x'25 y'25)
      (P'.mergeAppend x'26 y'26)
      (P'.mergeAppend x'27 y'27)
      (P'.mergeAppend x'28 y'28)
      (P'.mergeAppend x'29 y'29)
      (P'.mergeAppend x'30 y'30)
      (P'.mergeAppend x'31 y'31)
      (P'.mergeAppend x'32 y'32)

instance P'.Default AdSlot where
  defaultValue
   = AdSlot P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just (Prelude'.read "NO_DETECTION"))
      (Prelude'.Just (-1))
      (Prelude'.Just (-1.0))
      (Prelude'.Just (-1.0))
      (Prelude'.Just (Prelude'.read "UNKNOWN_IFRAME_STATE"))
      (Prelude'.Just (Prelude'.read "UNKNOWN_IFRAME_DEPTH"))
      P'.defaultValue
      (Prelude'.Just (Prelude'.read "UNKNOWN"))
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just (Prelude'.read "UNDECLARED_SOURCE"))
      (Prelude'.Just Prelude'.False)
      (Prelude'.Just (Prelude'.read "UNKNOWN_RENDERER"))
      (Prelude'.Just (Prelude'.read "NON_AMP_PAGE"))
      (Prelude'.Just Prelude'.False)
      P'.defaultValue

instance P'.Wire AdSlot where
  wireSize ft'
   self'@(AdSlot x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24 x'25
           x'26 x'27 x'28 x'29 x'30 x'31 x'32)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 5 x'1 + P'.wireSizeOpt 1 4 x'2 + P'.wireSizeRep 1 9 x'3 + P'.wireSizeRep 1 5 x'4 +
             P'.wireSizeRep 1 5 x'5
             + P'.wireSizePacked 1 5 x'6
             + P'.wireSizePacked 1 5 x'7
             + P'.wireSizePacked 1 5 x'8
             + P'.wireSizePacked 2 5 x'9
             + P'.wireSizePacked 2 5 x'10
             + P'.wireSizeRep 2 9 x'11
             + P'.wireSizePacked 1 5 x'12
             + P'.wireSizeRep 1 11 x'13
             + P'.wireSizeRep 1 6 x'14
             + P'.wireSizeOpt 2 11 x'15
             + P'.wireSizeOpt 2 9 x'16
             + P'.wireSizeOpt 1 14 x'17
             + P'.wireSizeOpt 2 5 x'18
             + P'.wireSizeOpt 2 2 x'19
             + P'.wireSizeOpt 2 2 x'20
             + P'.wireSizeOpt 2 14 x'21
             + P'.wireSizeOpt 2 14 x'22
             + P'.wireSizeRep 2 11 x'23
             + P'.wireSizeOpt 2 14 x'24
             + P'.wireSizeOpt 2 11 x'25
             + P'.wireSizeOpt 2 11 x'26
             + P'.wireSizeOpt 2 14 x'27
             + P'.wireSizeOpt 2 8 x'28
             + P'.wireSizeOpt 2 14 x'29
             + P'.wireSizeOpt 2 14 x'30
             + P'.wireSizeOpt 2 8 x'31
             + P'.wireSizePacked 2 14 x'32)
  wirePut ft'
   self'@(AdSlot x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24 x'25
           x'26 x'27 x'28 x'29 x'30 x'31 x'32)
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
             P'.wirePutRep 16 5 x'4
             P'.wirePutRep 24 5 x'5
             P'.wirePutPacked 34 5 x'6
             P'.wirePutPacked 50 5 x'7
             P'.wirePutPacked 58 5 x'8
             P'.wirePutRep 74 11 x'13
             P'.wirePutRep 82 9 x'3
             P'.wirePutOpt 96 14 x'17
             P'.wirePutPacked 106 5 x'12
             P'.wirePutOpt 112 4 x'2
             P'.wirePutRep 121 6 x'14
             P'.wirePutPacked 130 5 x'9
             P'.wirePutOpt 152 14 x'21
             P'.wirePutOpt 160 14 x'22
             P'.wirePutOpt 168 5 x'18
             P'.wirePutPacked 178 5 x'10
             P'.wirePutOpt 186 11 x'25
             P'.wirePutOpt 205 2 x'19
             P'.wirePutOpt 208 14 x'29
             P'.wirePutRep 218 9 x'11
             P'.wirePutOpt 226 11 x'15
             P'.wirePutOpt 232 14 x'30
             P'.wirePutOpt 245 2 x'20
             P'.wirePutOpt 250 11 x'26
             P'.wirePutOpt 256 8 x'31
             P'.wirePutOpt 266 9 x'16
             P'.wirePutOpt 272 14 x'27
             P'.wirePutOpt 280 8 x'28
             P'.wirePutPacked 290 14 x'32
             P'.wirePutRep 410 11 x'23
             P'.wirePutOpt 416 14 x'24
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{id = new'Field}) (P'.wireGet 5)
             112 -> Prelude'.fmap (\ !new'Field -> old'Self{ad_block_key = Prelude'.Just new'Field}) (P'.wireGet 4)
             82 -> Prelude'.fmap (\ !new'Field -> old'Self{targetable_channel = P'.append (targetable_channel old'Self) new'Field})
                    (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{width = P'.append (width old'Self) new'Field}) (P'.wireGet 5)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{width = P'.mergeAppend (width old'Self) new'Field}) (P'.wireGetPacked 5)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{height = P'.append (height old'Self) new'Field}) (P'.wireGet 5)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{height = P'.mergeAppend (height old'Self) new'Field})
                    (P'.wireGetPacked 5)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{excluded_attribute = P'.append (excluded_attribute old'Self) new'Field})
                    (P'.wireGet 5)
             34 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{excluded_attribute = P'.mergeAppend (excluded_attribute old'Self) new'Field})
                    (P'.wireGetPacked 5)
             48 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{allowed_vendor_type = P'.append (allowed_vendor_type old'Self) new'Field})
                    (P'.wireGet 5)
             50 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{allowed_vendor_type = P'.mergeAppend (allowed_vendor_type old'Self) new'Field})
                    (P'.wireGetPacked 5)
             56 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{excluded_sensitive_category = P'.append (excluded_sensitive_category old'Self) new'Field})
                    (P'.wireGet 5)
             58 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{excluded_sensitive_category = P'.mergeAppend (excluded_sensitive_category old'Self) new'Field})
                    (P'.wireGetPacked 5)
             128 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{allowed_restricted_category = P'.append (allowed_restricted_category old'Self) new'Field})
                     (P'.wireGet 5)
             130 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{allowed_restricted_category = P'.mergeAppend (allowed_restricted_category old'Self) new'Field})
                     (P'.wireGetPacked 5)
             176 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{allowed_restricted_category_for_deals =
                                 P'.append (allowed_restricted_category_for_deals old'Self) new'Field})
                     (P'.wireGet 5)
             178 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{allowed_restricted_category_for_deals =
                                 P'.mergeAppend (allowed_restricted_category_for_deals old'Self) new'Field})
                     (P'.wireGetPacked 5)
             218 -> Prelude'.fmap (\ !new'Field -> old'Self{allowed_languages = P'.append (allowed_languages old'Self) new'Field})
                     (P'.wireGet 9)
             104 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{excluded_product_category = P'.append (excluded_product_category old'Self) new'Field})
                     (P'.wireGet 5)
             106 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{excluded_product_category = P'.mergeAppend (excluded_product_category old'Self) new'Field})
                     (P'.wireGetPacked 5)
             74 -> Prelude'.fmap (\ !new'Field -> old'Self{matching_ad_data = P'.append (matching_ad_data old'Self) new'Field})
                    (P'.wireGet 11)
             121 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{publisher_settings_list_id = P'.append (publisher_settings_list_id old'Self) new'Field})
                     (P'.wireGet 6)
             122 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{publisher_settings_list_id = P'.mergeAppend (publisher_settings_list_id old'Self) new'Field})
                     (P'.wireGetPacked 6)
             226 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{exchange_bidding = P'.mergeAppend (exchange_bidding old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             266 -> Prelude'.fmap (\ !new'Field -> old'Self{dfp_ad_unit_code = Prelude'.Just new'Field}) (P'.wireGet 9)
             96 -> Prelude'.fmap (\ !new'Field -> old'Self{slot_visibility = Prelude'.Just new'Field}) (P'.wireGet 14)
             168 -> Prelude'.fmap (\ !new'Field -> old'Self{viewability = Prelude'.Just new'Field}) (P'.wireGet 5)
             205 -> Prelude'.fmap (\ !new'Field -> old'Self{click_through_rate = Prelude'.Just new'Field}) (P'.wireGet 2)
             245 -> Prelude'.fmap (\ !new'Field -> old'Self{video_completion_rate = Prelude'.Just new'Field}) (P'.wireGet 2)
             152 -> Prelude'.fmap (\ !new'Field -> old'Self{iframing_state = Prelude'.Just new'Field}) (P'.wireGet 14)
             160 -> Prelude'.fmap (\ !new'Field -> old'Self{iframing_depth = Prelude'.Just new'Field}) (P'.wireGet 14)
             410 -> Prelude'.fmap (\ !new'Field -> old'Self{native_ad_template = P'.append (native_ad_template old'Self) new'Field})
                     (P'.wireGet 11)
             416 -> Prelude'.fmap (\ !new'Field -> old'Self{mediation_status = Prelude'.Just new'Field}) (P'.wireGet 14)
             186 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{auto_refresh = P'.mergeAppend (auto_refresh old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             250 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{sticky_settings = P'.mergeAppend (sticky_settings old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             272 -> Prelude'.fmap (\ !new'Field -> old'Self{non_browser_slot_source = Prelude'.Just new'Field}) (P'.wireGet 14)
             280 -> Prelude'.fmap (\ !new'Field -> old'Self{is_interstitial_slot = Prelude'.Just new'Field}) (P'.wireGet 8)
             208 -> Prelude'.fmap (\ !new'Field -> old'Self{renderer = Prelude'.Just new'Field}) (P'.wireGet 14)
             232 -> Prelude'.fmap (\ !new'Field -> old'Self{amp_ad_request_type = Prelude'.Just new'Field}) (P'.wireGet 14)
             256 -> Prelude'.fmap (\ !new'Field -> old'Self{is_rewarded = Prelude'.Just new'Field}) (P'.wireGet 8)
             288 -> Prelude'.fmap (\ !new'Field -> old'Self{allowed_ad_types = P'.append (allowed_ad_types old'Self) new'Field})
                     (P'.wireGet 14)
             290 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{allowed_ad_types = P'.mergeAppend (allowed_ad_types old'Self) new'Field})
                     (P'.wireGetPacked 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> AdSlot) AdSlot where
  getVal m' f' = f' m'

instance P'.GPB AdSlot

instance P'.ReflectDescriptor AdSlot where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [8])
      (P'.fromDistinctAscList
        [8, 16, 18, 24, 26, 32, 34, 48, 50, 56, 58, 74, 82, 96, 104, 106, 112, 121, 122, 128, 130, 152, 160, 168, 176, 178, 186,
         205, 208, 218, 226, 232, 245, 250, 256, 266, 272, 280, 288, 290, 410, 416])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"AdSlot\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"AdSlot.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.ad_block_key\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"ad_block_key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 112}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.targetable_channel\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"targetable_channel\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.width\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"width\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Just (WireTag {getWireTag = 16},WireTag {getWireTag = 18}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.height\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"height\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Just (WireTag {getWireTag = 24},WireTag {getWireTag = 26}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.excluded_attribute\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"excluded_attribute\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Just (WireTag {getWireTag = 32},WireTag {getWireTag = 34}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.allowed_vendor_type\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"allowed_vendor_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Just (WireTag {getWireTag = 48},WireTag {getWireTag = 50}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.excluded_sensitive_category\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"excluded_sensitive_category\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Just (WireTag {getWireTag = 56},WireTag {getWireTag = 58}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.allowed_restricted_category\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"allowed_restricted_category\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 130}, packedTag = Just (WireTag {getWireTag = 128},WireTag {getWireTag = 130}), wireTagLength = 2, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.allowed_restricted_category_for_deals\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"allowed_restricted_category_for_deals\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 22}, wireTag = WireTag {getWireTag = 178}, packedTag = Just (WireTag {getWireTag = 176},WireTag {getWireTag = 178}), wireTagLength = 2, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.allowed_languages\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"allowed_languages\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 27}, wireTag = WireTag {getWireTag = 218}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.excluded_product_category\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"excluded_product_category\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 106}, packedTag = Just (WireTag {getWireTag = 104},WireTag {getWireTag = 106}), wireTagLength = 1, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.matching_ad_data\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"matching_ad_data\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.MatchingAdData\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"MatchingAdData\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.publisher_settings_list_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"publisher_settings_list_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 121}, packedTag = Just (WireTag {getWireTag = 121},WireTag {getWireTag = 122}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 6}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.exchange_bidding\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"exchange_bidding\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 28}, wireTag = WireTag {getWireTag = 226}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.ExchangeBidding\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"ExchangeBidding\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.dfp_ad_unit_code\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"dfp_ad_unit_code\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 33}, wireTag = WireTag {getWireTag = 266}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.slot_visibility\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"slot_visibility\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 96}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.SlotVisibility\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"SlotVisibility\"}), hsRawDefault = Just \"NO_DETECTION\", hsDefault = Just (HsDef'Enum \"NO_DETECTION\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.viewability\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"viewability\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 21}, wireTag = WireTag {getWireTag = 168}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Just \"-1\", hsDefault = Just (HsDef'Integer (-1))},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.click_through_rate\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"click_through_rate\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 25}, wireTag = WireTag {getWireTag = 205}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 2}, typeName = Nothing, hsRawDefault = Just \"-1.0\", hsDefault = Just (HsDef'RealFloat (SRF'Rational ((-1) % 1)))},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.video_completion_rate\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"video_completion_rate\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 30}, wireTag = WireTag {getWireTag = 245}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 2}, typeName = Nothing, hsRawDefault = Just \"-1.0\", hsDefault = Just (HsDef'RealFloat (SRF'Rational ((-1) % 1)))},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.iframing_state\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"iframing_state\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 19}, wireTag = WireTag {getWireTag = 152}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.IFramingState\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"IFramingState\"}), hsRawDefault = Just \"UNKNOWN_IFRAME_STATE\", hsDefault = Just (HsDef'Enum \"UNKNOWN_IFRAME_STATE\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.iframing_depth\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"iframing_depth\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 20}, wireTag = WireTag {getWireTag = 160}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.IFramingDepth\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"IFramingDepth\"}), hsRawDefault = Just \"UNKNOWN_IFRAME_DEPTH\", hsDefault = Just (HsDef'Enum \"UNKNOWN_IFRAME_DEPTH\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.native_ad_template\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"native_ad_template\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 51}, wireTag = WireTag {getWireTag = 410}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.NativeAdTemplate\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"NativeAdTemplate\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.mediation_status\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"mediation_status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 52}, wireTag = WireTag {getWireTag = 416}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.MediationStatus\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"MediationStatus\"}), hsRawDefault = Just \"UNKNOWN\", hsDefault = Just (HsDef'Enum \"UNKNOWN\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.auto_refresh\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"auto_refresh\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 23}, wireTag = WireTag {getWireTag = 186}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.AutoRefresh\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"AutoRefresh\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.sticky_settings\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"sticky_settings\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 31}, wireTag = WireTag {getWireTag = 250}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.StickySettings\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"StickySettings\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.non_browser_slot_source\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"non_browser_slot_source\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 34}, wireTag = WireTag {getWireTag = 272}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.NonBrowserSource\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"NonBrowserSource\"}), hsRawDefault = Just \"UNDECLARED_SOURCE\", hsDefault = Just (HsDef'Enum \"UNDECLARED_SOURCE\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.is_interstitial_slot\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"is_interstitial_slot\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 35}, wireTag = WireTag {getWireTag = 280}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.renderer\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"renderer\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 26}, wireTag = WireTag {getWireTag = 208}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.Renderer\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"Renderer\"}), hsRawDefault = Just \"UNKNOWN_RENDERER\", hsDefault = Just (HsDef'Enum \"UNKNOWN_RENDERER\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.amp_ad_request_type\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"amp_ad_request_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 29}, wireTag = WireTag {getWireTag = 232}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.AmpAdRequestType\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"AmpAdRequestType\"}), hsRawDefault = Just \"NON_AMP_PAGE\", hsDefault = Just (HsDef'Enum \"NON_AMP_PAGE\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.is_rewarded\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"is_rewarded\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 32}, wireTag = WireTag {getWireTag = 256}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.AdSlot.allowed_ad_types\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName' = FName \"allowed_ad_types\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 36}, wireTag = WireTag {getWireTag = 290}, packedTag = Just (WireTag {getWireTag = 288},WireTag {getWireTag = 290}), wireTagLength = 2, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot.AllowedAdType\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"AdSlot\"], baseName = MName \"AllowedAdType\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType AdSlot where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg AdSlot where
  textPut msg
   = do
       P'.tellT "id" (id msg)
       P'.tellT "ad_block_key" (ad_block_key msg)
       P'.tellT "targetable_channel" (targetable_channel msg)
       P'.tellT "width" (width msg)
       P'.tellT "height" (height msg)
       P'.tellT "excluded_attribute" (excluded_attribute msg)
       P'.tellT "allowed_vendor_type" (allowed_vendor_type msg)
       P'.tellT "excluded_sensitive_category" (excluded_sensitive_category msg)
       P'.tellT "allowed_restricted_category" (allowed_restricted_category msg)
       P'.tellT "allowed_restricted_category_for_deals" (allowed_restricted_category_for_deals msg)
       P'.tellT "allowed_languages" (allowed_languages msg)
       P'.tellT "excluded_product_category" (excluded_product_category msg)
       P'.tellT "matching_ad_data" (matching_ad_data msg)
       P'.tellT "publisher_settings_list_id" (publisher_settings_list_id msg)
       P'.tellT "exchange_bidding" (exchange_bidding msg)
       P'.tellT "dfp_ad_unit_code" (dfp_ad_unit_code msg)
       P'.tellT "slot_visibility" (slot_visibility msg)
       P'.tellT "viewability" (viewability msg)
       P'.tellT "click_through_rate" (click_through_rate msg)
       P'.tellT "video_completion_rate" (video_completion_rate msg)
       P'.tellT "iframing_state" (iframing_state msg)
       P'.tellT "iframing_depth" (iframing_depth msg)
       P'.tellT "native_ad_template" (native_ad_template msg)
       P'.tellT "mediation_status" (mediation_status msg)
       P'.tellT "auto_refresh" (auto_refresh msg)
       P'.tellT "sticky_settings" (sticky_settings msg)
       P'.tellT "non_browser_slot_source" (non_browser_slot_source msg)
       P'.tellT "is_interstitial_slot" (is_interstitial_slot msg)
       P'.tellT "renderer" (renderer msg)
       P'.tellT "amp_ad_request_type" (amp_ad_request_type msg)
       P'.tellT "is_rewarded" (is_rewarded msg)
       P'.tellT "allowed_ad_types" (allowed_ad_types msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'id, parse'ad_block_key, parse'targetable_channel, parse'width, parse'height, parse'excluded_attribute,
                   parse'allowed_vendor_type, parse'excluded_sensitive_category, parse'allowed_restricted_category,
                   parse'allowed_restricted_category_for_deals, parse'allowed_languages, parse'excluded_product_category,
                   parse'matching_ad_data, parse'publisher_settings_list_id, parse'exchange_bidding, parse'dfp_ad_unit_code,
                   parse'slot_visibility, parse'viewability, parse'click_through_rate, parse'video_completion_rate,
                   parse'iframing_state, parse'iframing_depth, parse'native_ad_template, parse'mediation_status, parse'auto_refresh,
                   parse'sticky_settings, parse'non_browser_slot_source, parse'is_interstitial_slot, parse'renderer,
                   parse'amp_ad_request_type, parse'is_rewarded, parse'allowed_ad_types])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'id
         = P'.try
            (do
               v <- P'.getT "id"
               Prelude'.return (\ o -> o{id = v}))
        parse'ad_block_key
         = P'.try
            (do
               v <- P'.getT "ad_block_key"
               Prelude'.return (\ o -> o{ad_block_key = v}))
        parse'targetable_channel
         = P'.try
            (do
               v <- P'.getT "targetable_channel"
               Prelude'.return (\ o -> o{targetable_channel = P'.append (targetable_channel o) v}))
        parse'width
         = P'.try
            (do
               v <- P'.getT "width"
               Prelude'.return (\ o -> o{width = P'.append (width o) v}))
        parse'height
         = P'.try
            (do
               v <- P'.getT "height"
               Prelude'.return (\ o -> o{height = P'.append (height o) v}))
        parse'excluded_attribute
         = P'.try
            (do
               v <- P'.getT "excluded_attribute"
               Prelude'.return (\ o -> o{excluded_attribute = P'.append (excluded_attribute o) v}))
        parse'allowed_vendor_type
         = P'.try
            (do
               v <- P'.getT "allowed_vendor_type"
               Prelude'.return (\ o -> o{allowed_vendor_type = P'.append (allowed_vendor_type o) v}))
        parse'excluded_sensitive_category
         = P'.try
            (do
               v <- P'.getT "excluded_sensitive_category"
               Prelude'.return (\ o -> o{excluded_sensitive_category = P'.append (excluded_sensitive_category o) v}))
        parse'allowed_restricted_category
         = P'.try
            (do
               v <- P'.getT "allowed_restricted_category"
               Prelude'.return (\ o -> o{allowed_restricted_category = P'.append (allowed_restricted_category o) v}))
        parse'allowed_restricted_category_for_deals
         = P'.try
            (do
               v <- P'.getT "allowed_restricted_category_for_deals"
               Prelude'.return
                (\ o -> o{allowed_restricted_category_for_deals = P'.append (allowed_restricted_category_for_deals o) v}))
        parse'allowed_languages
         = P'.try
            (do
               v <- P'.getT "allowed_languages"
               Prelude'.return (\ o -> o{allowed_languages = P'.append (allowed_languages o) v}))
        parse'excluded_product_category
         = P'.try
            (do
               v <- P'.getT "excluded_product_category"
               Prelude'.return (\ o -> o{excluded_product_category = P'.append (excluded_product_category o) v}))
        parse'matching_ad_data
         = P'.try
            (do
               v <- P'.getT "matching_ad_data"
               Prelude'.return (\ o -> o{matching_ad_data = P'.append (matching_ad_data o) v}))
        parse'publisher_settings_list_id
         = P'.try
            (do
               v <- P'.getT "publisher_settings_list_id"
               Prelude'.return (\ o -> o{publisher_settings_list_id = P'.append (publisher_settings_list_id o) v}))
        parse'exchange_bidding
         = P'.try
            (do
               v <- P'.getT "exchange_bidding"
               Prelude'.return (\ o -> o{exchange_bidding = v}))
        parse'dfp_ad_unit_code
         = P'.try
            (do
               v <- P'.getT "dfp_ad_unit_code"
               Prelude'.return (\ o -> o{dfp_ad_unit_code = v}))
        parse'slot_visibility
         = P'.try
            (do
               v <- P'.getT "slot_visibility"
               Prelude'.return (\ o -> o{slot_visibility = v}))
        parse'viewability
         = P'.try
            (do
               v <- P'.getT "viewability"
               Prelude'.return (\ o -> o{viewability = v}))
        parse'click_through_rate
         = P'.try
            (do
               v <- P'.getT "click_through_rate"
               Prelude'.return (\ o -> o{click_through_rate = v}))
        parse'video_completion_rate
         = P'.try
            (do
               v <- P'.getT "video_completion_rate"
               Prelude'.return (\ o -> o{video_completion_rate = v}))
        parse'iframing_state
         = P'.try
            (do
               v <- P'.getT "iframing_state"
               Prelude'.return (\ o -> o{iframing_state = v}))
        parse'iframing_depth
         = P'.try
            (do
               v <- P'.getT "iframing_depth"
               Prelude'.return (\ o -> o{iframing_depth = v}))
        parse'native_ad_template
         = P'.try
            (do
               v <- P'.getT "native_ad_template"
               Prelude'.return (\ o -> o{native_ad_template = P'.append (native_ad_template o) v}))
        parse'mediation_status
         = P'.try
            (do
               v <- P'.getT "mediation_status"
               Prelude'.return (\ o -> o{mediation_status = v}))
        parse'auto_refresh
         = P'.try
            (do
               v <- P'.getT "auto_refresh"
               Prelude'.return (\ o -> o{auto_refresh = v}))
        parse'sticky_settings
         = P'.try
            (do
               v <- P'.getT "sticky_settings"
               Prelude'.return (\ o -> o{sticky_settings = v}))
        parse'non_browser_slot_source
         = P'.try
            (do
               v <- P'.getT "non_browser_slot_source"
               Prelude'.return (\ o -> o{non_browser_slot_source = v}))
        parse'is_interstitial_slot
         = P'.try
            (do
               v <- P'.getT "is_interstitial_slot"
               Prelude'.return (\ o -> o{is_interstitial_slot = v}))
        parse'renderer
         = P'.try
            (do
               v <- P'.getT "renderer"
               Prelude'.return (\ o -> o{renderer = v}))
        parse'amp_ad_request_type
         = P'.try
            (do
               v <- P'.getT "amp_ad_request_type"
               Prelude'.return (\ o -> o{amp_ad_request_type = v}))
        parse'is_rewarded
         = P'.try
            (do
               v <- P'.getT "is_rewarded"
               Prelude'.return (\ o -> o{is_rewarded = v}))
        parse'allowed_ad_types
         = P'.try
            (do
               v <- P'.getT "allowed_ad_types"
               Prelude'.return (\ o -> o{allowed_ad_types = P'.append (allowed_ad_types o) v}))