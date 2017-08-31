{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest (BidRequest(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot as Adx.BidRequest (AdSlot)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.BidResponseFeedback as Adx.BidRequest (BidResponseFeedback)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Device as Adx.BidRequest (Device)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.HyperlocalSet as Adx.BidRequest (HyperlocalSet)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.KeyValue as Adx.BidRequest (KeyValue)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Mobile as Adx.BidRequest (Mobile)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.PublisherType as Adx.BidRequest (PublisherType)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.UserDataTreatment as Adx.BidRequest (UserDataTreatment)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.UserList as Adx.BidRequest (UserList)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Vertical as Adx.BidRequest (Vertical)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Video as Adx.BidRequest (Video)

data BidRequest = BidRequest{id :: !(P'.ByteString), ip :: !(P'.Maybe P'.ByteString),
                             user_data_treatment :: !(P'.Seq Adx.BidRequest.UserDataTreatment),
                             google_user_id :: !(P'.Maybe P'.Utf8), constrained_usage_google_user_id :: !(P'.Maybe P'.Utf8),
                             cookie_version :: !(P'.Maybe P'.Word32), cookie_age_seconds :: !(P'.Maybe P'.Int32),
                             hosted_match_data :: !(P'.Maybe P'.ByteString),
                             constrained_usage_hosted_match_data :: !(P'.Maybe P'.ByteString), user_agent :: !(P'.Maybe P'.Utf8),
                             publisher_country :: !(P'.Maybe P'.Utf8), geo_criteria_id :: !(P'.Maybe P'.Int32),
                             postal_code :: !(P'.Maybe P'.Utf8), postal_code_prefix :: !(P'.Maybe P'.Utf8),
                             encrypted_hyperlocal_set :: !(P'.Maybe P'.ByteString),
                             hyperlocal_set :: !(P'.Maybe Adx.BidRequest.HyperlocalSet), timezone_offset :: !(P'.Maybe P'.Int32),
                             user_vertical :: !(P'.Seq P'.Int32), user_list :: !(P'.Seq Adx.BidRequest.UserList),
                             publisher_id :: !(P'.Maybe P'.Utf8), seller_network_id :: !(P'.Maybe P'.Int32),
                             partner_id :: !(P'.Maybe P'.Word64), url :: !(P'.Maybe P'.Utf8), anonymous_id :: !(P'.Maybe P'.Utf8),
                             detected_language :: !(P'.Seq P'.Utf8), detected_vertical :: !(P'.Seq Adx.BidRequest.Vertical),
                             detected_content_label :: !(P'.Seq P'.Int32), device :: !(P'.Maybe Adx.BidRequest.Device),
                             key_value :: !(P'.Seq Adx.BidRequest.KeyValue), mobile :: !(P'.Maybe Adx.BidRequest.Mobile),
                             video :: !(P'.Maybe Adx.BidRequest.Video), publisher_settings_list_id :: !(P'.Maybe P'.Word64),
                             publisher_type :: !(P'.Maybe Adx.BidRequest.PublisherType), adslot :: !(P'.Seq Adx.BidRequest.AdSlot),
                             bid_response_feedback :: !(P'.Seq Adx.BidRequest.BidResponseFeedback), is_test :: !(P'.Maybe P'.Bool),
                             is_ping :: !(P'.Maybe P'.Bool), is_predicted_to_be_ignored :: !(P'.Maybe P'.Bool)}
                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable BidRequest where
  mergeAppend
   (BidRequest x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24 x'25
     x'26 x'27 x'28 x'29 x'30 x'31 x'32 x'33 x'34 x'35 x'36 x'37 x'38)
   (BidRequest y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16 y'17 y'18 y'19 y'20 y'21 y'22 y'23 y'24 y'25
     y'26 y'27 y'28 y'29 y'30 y'31 y'32 y'33 y'34 y'35 y'36 y'37 y'38)
   = BidRequest (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
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
      (P'.mergeAppend x'33 y'33)
      (P'.mergeAppend x'34 y'34)
      (P'.mergeAppend x'35 y'35)
      (P'.mergeAppend x'36 y'36)
      (P'.mergeAppend x'37 y'37)
      (P'.mergeAppend x'38 y'38)

instance P'.Default BidRequest where
  defaultValue
   = BidRequest P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
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
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just (Prelude'.read "UNKNOWN_PUBLISHER_TYPE"))
      P'.defaultValue
      P'.defaultValue
      (Prelude'.Just Prelude'.False)
      (Prelude'.Just Prelude'.False)
      (Prelude'.Just Prelude'.False)

instance P'.Wire BidRequest where
  wireSize ft'
   self'@(BidRequest x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24
           x'25 x'26 x'27 x'28 x'29 x'30 x'31 x'32 x'33 x'34 x'35 x'36 x'37 x'38)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeReq 1 12 x'1 + P'.wireSizeOpt 1 12 x'2 + P'.wireSizeRep 2 14 x'3 + P'.wireSizeOpt 2 9 x'4 +
             P'.wireSizeOpt 2 9 x'5
             + P'.wireSizeOpt 2 13 x'6
             + P'.wireSizeOpt 2 5 x'7
             + P'.wireSizeOpt 2 12 x'8
             + P'.wireSizeOpt 2 12 x'9
             + P'.wireSizeOpt 1 9 x'10
             + P'.wireSizeOpt 2 9 x'11
             + P'.wireSizeOpt 2 5 x'12
             + P'.wireSizeOpt 2 9 x'13
             + P'.wireSizeOpt 2 9 x'14
             + P'.wireSizeOpt 2 12 x'15
             + P'.wireSizeOpt 2 11 x'16
             + P'.wireSizeOpt 2 5 x'17
             + P'.wireSizePacked 2 5 x'18
             + P'.wireSizeRep 2 11 x'19
             + P'.wireSizeOpt 2 9 x'20
             + P'.wireSizeOpt 2 5 x'21
             + P'.wireSizeOpt 2 6 x'22
             + P'.wireSizeOpt 1 9 x'23
             + P'.wireSizeOpt 2 9 x'24
             + P'.wireSizeRep 1 9 x'25
             + P'.wireSizeRep 1 11 x'26
             + P'.wireSizePacked 2 5 x'27
             + P'.wireSizeOpt 2 11 x'28
             + P'.wireSizeRep 2 11 x'29
             + P'.wireSizeOpt 2 11 x'30
             + P'.wireSizeOpt 2 11 x'31
             + P'.wireSizeOpt 2 6 x'32
             + P'.wireSizeOpt 2 14 x'33
             + P'.wireSizeRep 1 11 x'34
             + P'.wireSizeRep 2 11 x'35
             + P'.wireSizeOpt 1 8 x'36
             + P'.wireSizeOpt 2 8 x'37
             + P'.wireSizeOpt 2 8 x'38)
  wirePut ft'
   self'@(BidRequest x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24
           x'25 x'26 x'27 x'28 x'29 x'30 x'31 x'32 x'33 x'34 x'35 x'36 x'37 x'38)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutReq 18 12 x'1
             P'.wirePutOpt 34 12 x'2
             P'.wirePutOpt 50 9 x'10
             P'.wirePutOpt 90 9 x'23
             P'.wirePutRep 98 9 x'25
             P'.wirePutRep 106 11 x'26
             P'.wirePutRep 114 11 x'34
             P'.wirePutOpt 120 8 x'36
             P'.wirePutOpt 136 8 x'37
             P'.wirePutOpt 154 9 x'24
             P'.wirePutOpt 160 13 x'6
             P'.wirePutOpt 170 9 x'4
             P'.wirePutOpt 200 5 x'17
             P'.wirePutPacked 210 5 x'27
             P'.wirePutOpt 226 11 x'30
             P'.wirePutOpt 234 11 x'31
             P'.wirePutPacked 242 5 x'18
             P'.wirePutOpt 248 5 x'7
             P'.wirePutRep 258 11 x'19
             P'.wirePutOpt 266 9 x'13
             P'.wirePutOpt 274 9 x'14
             P'.wirePutOpt 298 12 x'8
             P'.wirePutRep 306 11 x'29
             P'.wirePutOpt 312 5 x'12
             P'.wirePutOpt 322 12 x'15
             P'.wirePutOpt 328 5 x'21
             P'.wirePutOpt 337 6 x'32
             P'.wirePutRep 354 11 x'35
             P'.wirePutOpt 360 8 x'38
             P'.wirePutOpt 378 9 x'5
             P'.wirePutOpt 386 12 x'9
             P'.wirePutRep 392 14 x'3
             P'.wirePutOpt 408 14 x'33
             P'.wirePutOpt 417 6 x'22
             P'.wirePutOpt 426 11 x'16
             P'.wirePutOpt 434 11 x'28
             P'.wirePutOpt 442 9 x'11
             P'.wirePutOpt 450 9 x'20
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{id = new'Field}) (P'.wireGet 12)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{ip = Prelude'.Just new'Field}) (P'.wireGet 12)
             392 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{user_data_treatment = P'.append (user_data_treatment old'Self) new'Field})
                     (P'.wireGet 14)
             394 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{user_data_treatment = P'.mergeAppend (user_data_treatment old'Self) new'Field})
                     (P'.wireGetPacked 14)
             170 -> Prelude'.fmap (\ !new'Field -> old'Self{google_user_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             378 -> Prelude'.fmap (\ !new'Field -> old'Self{constrained_usage_google_user_id = Prelude'.Just new'Field})
                     (P'.wireGet 9)
             160 -> Prelude'.fmap (\ !new'Field -> old'Self{cookie_version = Prelude'.Just new'Field}) (P'.wireGet 13)
             248 -> Prelude'.fmap (\ !new'Field -> old'Self{cookie_age_seconds = Prelude'.Just new'Field}) (P'.wireGet 5)
             298 -> Prelude'.fmap (\ !new'Field -> old'Self{hosted_match_data = Prelude'.Just new'Field}) (P'.wireGet 12)
             386 -> Prelude'.fmap (\ !new'Field -> old'Self{constrained_usage_hosted_match_data = Prelude'.Just new'Field})
                     (P'.wireGet 12)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{user_agent = Prelude'.Just new'Field}) (P'.wireGet 9)
             442 -> Prelude'.fmap (\ !new'Field -> old'Self{publisher_country = Prelude'.Just new'Field}) (P'.wireGet 9)
             312 -> Prelude'.fmap (\ !new'Field -> old'Self{geo_criteria_id = Prelude'.Just new'Field}) (P'.wireGet 5)
             266 -> Prelude'.fmap (\ !new'Field -> old'Self{postal_code = Prelude'.Just new'Field}) (P'.wireGet 9)
             274 -> Prelude'.fmap (\ !new'Field -> old'Self{postal_code_prefix = Prelude'.Just new'Field}) (P'.wireGet 9)
             322 -> Prelude'.fmap (\ !new'Field -> old'Self{encrypted_hyperlocal_set = Prelude'.Just new'Field}) (P'.wireGet 12)
             426 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{hyperlocal_set = P'.mergeAppend (hyperlocal_set old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             200 -> Prelude'.fmap (\ !new'Field -> old'Self{timezone_offset = Prelude'.Just new'Field}) (P'.wireGet 5)
             240 -> Prelude'.fmap (\ !new'Field -> old'Self{user_vertical = P'.append (user_vertical old'Self) new'Field})
                     (P'.wireGet 5)
             242 -> Prelude'.fmap (\ !new'Field -> old'Self{user_vertical = P'.mergeAppend (user_vertical old'Self) new'Field})
                     (P'.wireGetPacked 5)
             258 -> Prelude'.fmap (\ !new'Field -> old'Self{user_list = P'.append (user_list old'Self) new'Field}) (P'.wireGet 11)
             450 -> Prelude'.fmap (\ !new'Field -> old'Self{publisher_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             328 -> Prelude'.fmap (\ !new'Field -> old'Self{seller_network_id = Prelude'.Just new'Field}) (P'.wireGet 5)
             417 -> Prelude'.fmap (\ !new'Field -> old'Self{partner_id = Prelude'.Just new'Field}) (P'.wireGet 6)
             90 -> Prelude'.fmap (\ !new'Field -> old'Self{url = Prelude'.Just new'Field}) (P'.wireGet 9)
             154 -> Prelude'.fmap (\ !new'Field -> old'Self{anonymous_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             98 -> Prelude'.fmap (\ !new'Field -> old'Self{detected_language = P'.append (detected_language old'Self) new'Field})
                    (P'.wireGet 9)
             106 -> Prelude'.fmap (\ !new'Field -> old'Self{detected_vertical = P'.append (detected_vertical old'Self) new'Field})
                     (P'.wireGet 11)
             208 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{detected_content_label = P'.append (detected_content_label old'Self) new'Field})
                     (P'.wireGet 5)
             210 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{detected_content_label = P'.mergeAppend (detected_content_label old'Self) new'Field})
                     (P'.wireGetPacked 5)
             434 -> Prelude'.fmap (\ !new'Field -> old'Self{device = P'.mergeAppend (device old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             306 -> Prelude'.fmap (\ !new'Field -> old'Self{key_value = P'.append (key_value old'Self) new'Field}) (P'.wireGet 11)
             226 -> Prelude'.fmap (\ !new'Field -> old'Self{mobile = P'.mergeAppend (mobile old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             234 -> Prelude'.fmap (\ !new'Field -> old'Self{video = P'.mergeAppend (video old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             337 -> Prelude'.fmap (\ !new'Field -> old'Self{publisher_settings_list_id = Prelude'.Just new'Field}) (P'.wireGet 6)
             408 -> Prelude'.fmap (\ !new'Field -> old'Self{publisher_type = Prelude'.Just new'Field}) (P'.wireGet 14)
             114 -> Prelude'.fmap (\ !new'Field -> old'Self{adslot = P'.append (adslot old'Self) new'Field}) (P'.wireGet 11)
             354 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{bid_response_feedback = P'.append (bid_response_feedback old'Self) new'Field})
                     (P'.wireGet 11)
             120 -> Prelude'.fmap (\ !new'Field -> old'Self{is_test = Prelude'.Just new'Field}) (P'.wireGet 8)
             136 -> Prelude'.fmap (\ !new'Field -> old'Self{is_ping = Prelude'.Just new'Field}) (P'.wireGet 8)
             360 -> Prelude'.fmap (\ !new'Field -> old'Self{is_predicted_to_be_ignored = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> BidRequest) BidRequest where
  getVal m' f' = f' m'

instance P'.GPB BidRequest

instance P'.ReflectDescriptor BidRequest where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [18])
      (P'.fromDistinctAscList
        [18, 34, 50, 90, 98, 106, 114, 120, 136, 154, 160, 170, 200, 208, 210, 226, 234, 240, 242, 248, 258, 266, 274, 298, 306,
         312, 322, 328, 337, 354, 360, 378, 386, 392, 394, 408, 417, 426, 434, 442, 450])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\"], baseName = MName \"BidRequest\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.ip\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"ip\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.user_data_treatment\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"user_data_treatment\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 49}, wireTag = WireTag {getWireTag = 392}, packedTag = Just (WireTag {getWireTag = 392},WireTag {getWireTag = 394}), wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.UserDataTreatment\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"UserDataTreatment\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.google_user_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"google_user_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 21}, wireTag = WireTag {getWireTag = 170}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.constrained_usage_google_user_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"constrained_usage_google_user_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 47}, wireTag = WireTag {getWireTag = 378}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.cookie_version\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"cookie_version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 20}, wireTag = WireTag {getWireTag = 160}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.cookie_age_seconds\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"cookie_age_seconds\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 31}, wireTag = WireTag {getWireTag = 248}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.hosted_match_data\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"hosted_match_data\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 37}, wireTag = WireTag {getWireTag = 298}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.constrained_usage_hosted_match_data\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"constrained_usage_hosted_match_data\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 48}, wireTag = WireTag {getWireTag = 386}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.user_agent\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"user_agent\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.publisher_country\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"publisher_country\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 55}, wireTag = WireTag {getWireTag = 442}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.geo_criteria_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"geo_criteria_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 39}, wireTag = WireTag {getWireTag = 312}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.postal_code\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"postal_code\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 33}, wireTag = WireTag {getWireTag = 266}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.postal_code_prefix\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"postal_code_prefix\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 34}, wireTag = WireTag {getWireTag = 274}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.encrypted_hyperlocal_set\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"encrypted_hyperlocal_set\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 40}, wireTag = WireTag {getWireTag = 322}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.hyperlocal_set\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"hyperlocal_set\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 53}, wireTag = WireTag {getWireTag = 426}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.HyperlocalSet\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"HyperlocalSet\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.timezone_offset\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"timezone_offset\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 25}, wireTag = WireTag {getWireTag = 200}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.user_vertical\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"user_vertical\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 30}, wireTag = WireTag {getWireTag = 242}, packedTag = Just (WireTag {getWireTag = 240},WireTag {getWireTag = 242}), wireTagLength = 2, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.user_list\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"user_list\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 32}, wireTag = WireTag {getWireTag = 258}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.UserList\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"UserList\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.publisher_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"publisher_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 56}, wireTag = WireTag {getWireTag = 450}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.seller_network_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"seller_network_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 41}, wireTag = WireTag {getWireTag = 328}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.partner_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"partner_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 52}, wireTag = WireTag {getWireTag = 417}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 6}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.url\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"url\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.anonymous_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"anonymous_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 19}, wireTag = WireTag {getWireTag = 154}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.detected_language\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"detected_language\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 98}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.detected_vertical\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"detected_vertical\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 106}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Vertical\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"Vertical\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.detected_content_label\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"detected_content_label\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 26}, wireTag = WireTag {getWireTag = 210}, packedTag = Just (WireTag {getWireTag = 208},WireTag {getWireTag = 210}), wireTagLength = 2, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.device\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"device\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 54}, wireTag = WireTag {getWireTag = 434}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Device\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"Device\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.key_value\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"key_value\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 38}, wireTag = WireTag {getWireTag = 306}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.KeyValue\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"KeyValue\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.mobile\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"mobile\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 28}, wireTag = WireTag {getWireTag = 226}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Mobile\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"Mobile\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.video\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"video\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 29}, wireTag = WireTag {getWireTag = 234}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Video\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"Video\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.publisher_settings_list_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"publisher_settings_list_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 42}, wireTag = WireTag {getWireTag = 337}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 6}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.publisher_type\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"publisher_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 51}, wireTag = WireTag {getWireTag = 408}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.PublisherType\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"PublisherType\"}), hsRawDefault = Just \"UNKNOWN_PUBLISHER_TYPE\", hsDefault = Just (HsDef'Enum \"UNKNOWN_PUBLISHER_TYPE\")},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.adslot\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"adslot\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 114}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"AdSlot\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.bid_response_feedback\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"bid_response_feedback\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 44}, wireTag = WireTag {getWireTag = 354}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.BidResponseFeedback\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"BidResponseFeedback\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.is_test\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"is_test\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 120}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.is_ping\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"is_ping\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 17}, wireTag = WireTag {getWireTag = 136}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.is_predicted_to_be_ignored\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"is_predicted_to_be_ignored\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 45}, wireTag = WireTag {getWireTag = 360}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType BidRequest where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg BidRequest where
  textPut msg
   = do
       P'.tellT "id" (id msg)
       P'.tellT "ip" (ip msg)
       P'.tellT "user_data_treatment" (user_data_treatment msg)
       P'.tellT "google_user_id" (google_user_id msg)
       P'.tellT "constrained_usage_google_user_id" (constrained_usage_google_user_id msg)
       P'.tellT "cookie_version" (cookie_version msg)
       P'.tellT "cookie_age_seconds" (cookie_age_seconds msg)
       P'.tellT "hosted_match_data" (hosted_match_data msg)
       P'.tellT "constrained_usage_hosted_match_data" (constrained_usage_hosted_match_data msg)
       P'.tellT "user_agent" (user_agent msg)
       P'.tellT "publisher_country" (publisher_country msg)
       P'.tellT "geo_criteria_id" (geo_criteria_id msg)
       P'.tellT "postal_code" (postal_code msg)
       P'.tellT "postal_code_prefix" (postal_code_prefix msg)
       P'.tellT "encrypted_hyperlocal_set" (encrypted_hyperlocal_set msg)
       P'.tellT "hyperlocal_set" (hyperlocal_set msg)
       P'.tellT "timezone_offset" (timezone_offset msg)
       P'.tellT "user_vertical" (user_vertical msg)
       P'.tellT "user_list" (user_list msg)
       P'.tellT "publisher_id" (publisher_id msg)
       P'.tellT "seller_network_id" (seller_network_id msg)
       P'.tellT "partner_id" (partner_id msg)
       P'.tellT "url" (url msg)
       P'.tellT "anonymous_id" (anonymous_id msg)
       P'.tellT "detected_language" (detected_language msg)
       P'.tellT "detected_vertical" (detected_vertical msg)
       P'.tellT "detected_content_label" (detected_content_label msg)
       P'.tellT "device" (device msg)
       P'.tellT "key_value" (key_value msg)
       P'.tellT "mobile" (mobile msg)
       P'.tellT "video" (video msg)
       P'.tellT "publisher_settings_list_id" (publisher_settings_list_id msg)
       P'.tellT "publisher_type" (publisher_type msg)
       P'.tellT "adslot" (adslot msg)
       P'.tellT "bid_response_feedback" (bid_response_feedback msg)
       P'.tellT "is_test" (is_test msg)
       P'.tellT "is_ping" (is_ping msg)
       P'.tellT "is_predicted_to_be_ignored" (is_predicted_to_be_ignored msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'id, parse'ip, parse'user_data_treatment, parse'google_user_id, parse'constrained_usage_google_user_id,
                   parse'cookie_version, parse'cookie_age_seconds, parse'hosted_match_data,
                   parse'constrained_usage_hosted_match_data, parse'user_agent, parse'publisher_country, parse'geo_criteria_id,
                   parse'postal_code, parse'postal_code_prefix, parse'encrypted_hyperlocal_set, parse'hyperlocal_set,
                   parse'timezone_offset, parse'user_vertical, parse'user_list, parse'publisher_id, parse'seller_network_id,
                   parse'partner_id, parse'url, parse'anonymous_id, parse'detected_language, parse'detected_vertical,
                   parse'detected_content_label, parse'device, parse'key_value, parse'mobile, parse'video,
                   parse'publisher_settings_list_id, parse'publisher_type, parse'adslot, parse'bid_response_feedback, parse'is_test,
                   parse'is_ping, parse'is_predicted_to_be_ignored])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'id
         = P'.try
            (do
               v <- P'.getT "id"
               Prelude'.return (\ o -> o{id = v}))
        parse'ip
         = P'.try
            (do
               v <- P'.getT "ip"
               Prelude'.return (\ o -> o{ip = v}))
        parse'user_data_treatment
         = P'.try
            (do
               v <- P'.getT "user_data_treatment"
               Prelude'.return (\ o -> o{user_data_treatment = P'.append (user_data_treatment o) v}))
        parse'google_user_id
         = P'.try
            (do
               v <- P'.getT "google_user_id"
               Prelude'.return (\ o -> o{google_user_id = v}))
        parse'constrained_usage_google_user_id
         = P'.try
            (do
               v <- P'.getT "constrained_usage_google_user_id"
               Prelude'.return (\ o -> o{constrained_usage_google_user_id = v}))
        parse'cookie_version
         = P'.try
            (do
               v <- P'.getT "cookie_version"
               Prelude'.return (\ o -> o{cookie_version = v}))
        parse'cookie_age_seconds
         = P'.try
            (do
               v <- P'.getT "cookie_age_seconds"
               Prelude'.return (\ o -> o{cookie_age_seconds = v}))
        parse'hosted_match_data
         = P'.try
            (do
               v <- P'.getT "hosted_match_data"
               Prelude'.return (\ o -> o{hosted_match_data = v}))
        parse'constrained_usage_hosted_match_data
         = P'.try
            (do
               v <- P'.getT "constrained_usage_hosted_match_data"
               Prelude'.return (\ o -> o{constrained_usage_hosted_match_data = v}))
        parse'user_agent
         = P'.try
            (do
               v <- P'.getT "user_agent"
               Prelude'.return (\ o -> o{user_agent = v}))
        parse'publisher_country
         = P'.try
            (do
               v <- P'.getT "publisher_country"
               Prelude'.return (\ o -> o{publisher_country = v}))
        parse'geo_criteria_id
         = P'.try
            (do
               v <- P'.getT "geo_criteria_id"
               Prelude'.return (\ o -> o{geo_criteria_id = v}))
        parse'postal_code
         = P'.try
            (do
               v <- P'.getT "postal_code"
               Prelude'.return (\ o -> o{postal_code = v}))
        parse'postal_code_prefix
         = P'.try
            (do
               v <- P'.getT "postal_code_prefix"
               Prelude'.return (\ o -> o{postal_code_prefix = v}))
        parse'encrypted_hyperlocal_set
         = P'.try
            (do
               v <- P'.getT "encrypted_hyperlocal_set"
               Prelude'.return (\ o -> o{encrypted_hyperlocal_set = v}))
        parse'hyperlocal_set
         = P'.try
            (do
               v <- P'.getT "hyperlocal_set"
               Prelude'.return (\ o -> o{hyperlocal_set = v}))
        parse'timezone_offset
         = P'.try
            (do
               v <- P'.getT "timezone_offset"
               Prelude'.return (\ o -> o{timezone_offset = v}))
        parse'user_vertical
         = P'.try
            (do
               v <- P'.getT "user_vertical"
               Prelude'.return (\ o -> o{user_vertical = P'.append (user_vertical o) v}))
        parse'user_list
         = P'.try
            (do
               v <- P'.getT "user_list"
               Prelude'.return (\ o -> o{user_list = P'.append (user_list o) v}))
        parse'publisher_id
         = P'.try
            (do
               v <- P'.getT "publisher_id"
               Prelude'.return (\ o -> o{publisher_id = v}))
        parse'seller_network_id
         = P'.try
            (do
               v <- P'.getT "seller_network_id"
               Prelude'.return (\ o -> o{seller_network_id = v}))
        parse'partner_id
         = P'.try
            (do
               v <- P'.getT "partner_id"
               Prelude'.return (\ o -> o{partner_id = v}))
        parse'url
         = P'.try
            (do
               v <- P'.getT "url"
               Prelude'.return (\ o -> o{url = v}))
        parse'anonymous_id
         = P'.try
            (do
               v <- P'.getT "anonymous_id"
               Prelude'.return (\ o -> o{anonymous_id = v}))
        parse'detected_language
         = P'.try
            (do
               v <- P'.getT "detected_language"
               Prelude'.return (\ o -> o{detected_language = P'.append (detected_language o) v}))
        parse'detected_vertical
         = P'.try
            (do
               v <- P'.getT "detected_vertical"
               Prelude'.return (\ o -> o{detected_vertical = P'.append (detected_vertical o) v}))
        parse'detected_content_label
         = P'.try
            (do
               v <- P'.getT "detected_content_label"
               Prelude'.return (\ o -> o{detected_content_label = P'.append (detected_content_label o) v}))
        parse'device
         = P'.try
            (do
               v <- P'.getT "device"
               Prelude'.return (\ o -> o{device = v}))
        parse'key_value
         = P'.try
            (do
               v <- P'.getT "key_value"
               Prelude'.return (\ o -> o{key_value = P'.append (key_value o) v}))
        parse'mobile
         = P'.try
            (do
               v <- P'.getT "mobile"
               Prelude'.return (\ o -> o{mobile = v}))
        parse'video
         = P'.try
            (do
               v <- P'.getT "video"
               Prelude'.return (\ o -> o{video = v}))
        parse'publisher_settings_list_id
         = P'.try
            (do
               v <- P'.getT "publisher_settings_list_id"
               Prelude'.return (\ o -> o{publisher_settings_list_id = v}))
        parse'publisher_type
         = P'.try
            (do
               v <- P'.getT "publisher_type"
               Prelude'.return (\ o -> o{publisher_type = v}))
        parse'adslot
         = P'.try
            (do
               v <- P'.getT "adslot"
               Prelude'.return (\ o -> o{adslot = P'.append (adslot o) v}))
        parse'bid_response_feedback
         = P'.try
            (do
               v <- P'.getT "bid_response_feedback"
               Prelude'.return (\ o -> o{bid_response_feedback = P'.append (bid_response_feedback o) v}))
        parse'is_test
         = P'.try
            (do
               v <- P'.getT "is_test"
               Prelude'.return (\ o -> o{is_test = v}))
        parse'is_ping
         = P'.try
            (do
               v <- P'.getT "is_ping"
               Prelude'.return (\ o -> o{is_ping = v}))
        parse'is_predicted_to_be_ignored
         = P'.try
            (do
               v <- P'.getT "is_predicted_to_be_ignored"
               Prelude'.return (\ o -> o{is_predicted_to_be_ignored = v}))