{-# LANGUAGE BangPatterns, DeriveDataTypeable, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest (BidRequest(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.AdSlot as Adx.BidRequest (AdSlot)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.BidResponseFeedback as Adx.BidRequest (BidResponseFeedback)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.KeyValue as Adx.BidRequest (KeyValue)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.MatchingNetwork as Adx.BidRequest (MatchingNetwork)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Mobile as Adx.BidRequest (Mobile)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.UserDataTreatment as Adx.BidRequest (UserDataTreatment)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.UserDemographic as Adx.BidRequest (UserDemographic)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.UserList as Adx.BidRequest (UserList)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Vertical as Adx.BidRequest (Vertical)
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Video as Adx.BidRequest (Video)
 
data BidRequest = BidRequest{id :: !(P'.ByteString), ip :: !(P'.Maybe P'.ByteString),
                             user_data_treatment :: !(P'.Seq Adx.BidRequest.UserDataTreatment),
                             google_user_id :: !(P'.Maybe P'.Utf8), constrained_usage_google_user_id :: !(P'.Maybe P'.Utf8),
                             cookie_version :: !(P'.Maybe P'.Word32), cookie_age_seconds :: !(P'.Maybe P'.Int32),
                             hosted_match_data :: !(P'.Maybe P'.ByteString),
                             constrained_usage_hosted_match_data :: !(P'.Maybe P'.ByteString), user_agent :: !(P'.Maybe P'.Utf8),
                             geo_criteria_id :: !(P'.Maybe P'.Int32), postal_code :: !(P'.Maybe P'.Utf8),
                             postal_code_prefix :: !(P'.Maybe P'.Utf8), encrypted_hyperlocal_set :: !(P'.Maybe P'.ByteString),
                             timezone_offset :: !(P'.Maybe P'.Int32), user_vertical :: !(P'.Seq P'.Int32),
                             user_demographic :: !(P'.Maybe Adx.BidRequest.UserDemographic),
                             user_list :: !(P'.Seq Adx.BidRequest.UserList), seller_network_id :: !(P'.Maybe P'.Int32),
                             url :: !(P'.Maybe P'.Utf8), anonymous_id :: !(P'.Maybe P'.Utf8),
                             detected_language :: !(P'.Seq P'.Utf8), detected_vertical :: !(P'.Seq Adx.BidRequest.Vertical),
                             vertical_dictionary_version :: !(P'.Maybe P'.Int32), detected_content_label :: !(P'.Seq P'.Int32),
                             site_list_id :: !(P'.Seq P'.Int32), key_value :: !(P'.Seq Adx.BidRequest.KeyValue),
                             mobile :: !(P'.Maybe Adx.BidRequest.Mobile), video :: !(P'.Maybe Adx.BidRequest.Video),
                             publisher_settings_list_id :: !(P'.Maybe P'.Word64), adslot :: !(P'.Seq Adx.BidRequest.AdSlot),
                             bid_response_feedback :: !(P'.Seq Adx.BidRequest.BidResponseFeedback), is_test :: !(P'.Maybe P'.Bool),
                             is_ping :: !(P'.Maybe P'.Bool), is_predicted_to_be_ignored :: !(P'.Maybe P'.Bool),
                             dEPRECATED_protocol_version :: !(P'.Maybe P'.Int32),
                             dEPRECATED_click_tracking_url :: !(P'.Maybe P'.Utf8), dEPRECATED_cookie :: !(P'.Maybe P'.Word64),
                             dEPRECATED_country :: !(P'.Maybe P'.Utf8), dEPRECATED_region :: !(P'.Maybe P'.Utf8),
                             dEPRECATED_city :: !(P'.Maybe P'.Utf8), dEPRECATED_metro :: !(P'.Maybe P'.Int32),
                             dEPRECATED_hashed_cookie :: !(P'.Maybe P'.ByteString),
                             dEPRECATED_excluded_click_through_url :: !(P'.Seq P'.Utf8),
                             dEPRECATED_seller_network :: !(P'.Maybe P'.Utf8),
                             dEPRECATED_publisher_settings_list_id :: !(P'.Maybe P'.ByteString),
                             dEPRECATED_matching_network :: !(P'.Seq Adx.BidRequest.MatchingNetwork),
                             dEPRECATED_experimental_deadline :: !(P'.Maybe P'.Bool)}
                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data)
 
instance P'.Mergeable BidRequest where
  mergeAppend
   (BidRequest x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24 x'25
     x'26 x'27 x'28 x'29 x'30 x'31 x'32 x'33 x'34 x'35 x'36 x'37 x'38 x'39 x'40 x'41 x'42 x'43 x'44 x'45 x'46 x'47 x'48)
   (BidRequest y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16 y'17 y'18 y'19 y'20 y'21 y'22 y'23 y'24 y'25
     y'26 y'27 y'28 y'29 y'30 y'31 y'32 y'33 y'34 y'35 y'36 y'37 y'38 y'39 y'40 y'41 y'42 y'43 y'44 y'45 y'46 y'47 y'48)
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
      (P'.mergeAppend x'39 y'39)
      (P'.mergeAppend x'40 y'40)
      (P'.mergeAppend x'41 y'41)
      (P'.mergeAppend x'42 y'42)
      (P'.mergeAppend x'43 y'43)
      (P'.mergeAppend x'44 y'44)
      (P'.mergeAppend x'45 y'45)
      (P'.mergeAppend x'46 y'46)
      (P'.mergeAppend x'47 y'47)
      (P'.mergeAppend x'48 y'48)
 
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
      (Prelude'.Just Prelude'.False)
      (Prelude'.Just Prelude'.False)
      (Prelude'.Just Prelude'.False)
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
      (Prelude'.Just Prelude'.False)
 
instance P'.Wire BidRequest where
  wireSize ft'
   self'@(BidRequest x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24
           x'25 x'26 x'27 x'28 x'29 x'30 x'31 x'32 x'33 x'34 x'35 x'36 x'37 x'38 x'39 x'40 x'41 x'42 x'43 x'44 x'45 x'46 x'47 x'48)
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
             + P'.wireSizeOpt 2 5 x'11
             + P'.wireSizeOpt 2 9 x'12
             + P'.wireSizeOpt 2 9 x'13
             + P'.wireSizeOpt 2 12 x'14
             + P'.wireSizeOpt 2 5 x'15
             + P'.wireSizePacked 2 5 x'16
             + P'.wireSizeOpt 2 11 x'17
             + P'.wireSizeRep 2 11 x'18
             + P'.wireSizeOpt 2 5 x'19
             + P'.wireSizeOpt 1 9 x'20
             + P'.wireSizeOpt 2 9 x'21
             + P'.wireSizeRep 1 9 x'22
             + P'.wireSizeRep 1 11 x'23
             + P'.wireSizeOpt 2 5 x'24
             + P'.wireSizePacked 2 5 x'25
             + P'.wireSizeRep 2 5 x'26
             + P'.wireSizeRep 2 11 x'27
             + P'.wireSizeOpt 2 11 x'28
             + P'.wireSizeOpt 2 11 x'29
             + P'.wireSizeOpt 2 6 x'30
             + P'.wireSizeRep 1 11 x'31
             + P'.wireSizeRep 2 11 x'32
             + P'.wireSizeOpt 1 8 x'33
             + P'.wireSizeOpt 2 8 x'34
             + P'.wireSizeOpt 2 8 x'35
             + P'.wireSizeOpt 1 5 x'36
             + P'.wireSizeOpt 1 9 x'37
             + P'.wireSizeOpt 1 4 x'38
             + P'.wireSizeOpt 1 9 x'39
             + P'.wireSizeOpt 1 9 x'40
             + P'.wireSizeOpt 1 9 x'41
             + P'.wireSizeOpt 1 5 x'42
             + P'.wireSizeOpt 2 12 x'43
             + P'.wireSizeRep 2 9 x'44
             + P'.wireSizeOpt 2 9 x'45
             + P'.wireSizeOpt 2 12 x'46
             + P'.wireSizeRep 2 11 x'47
             + P'.wireSizeOpt 2 8 x'48)
  wirePut ft'
   self'@(BidRequest x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24
           x'25 x'26 x'27 x'28 x'29 x'30 x'31 x'32 x'33 x'34 x'35 x'36 x'37 x'38 x'39 x'40 x'41 x'42 x'43 x'44 x'45 x'46 x'47 x'48)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 5 x'36
             P'.wirePutReq 18 12 x'1
             P'.wirePutOpt 26 9 x'37
             P'.wirePutOpt 34 12 x'2
             P'.wirePutOpt 40 4 x'38
             P'.wirePutOpt 50 9 x'10
             P'.wirePutOpt 58 9 x'39
             P'.wirePutOpt 66 9 x'40
             P'.wirePutOpt 74 9 x'41
             P'.wirePutOpt 80 5 x'42
             P'.wirePutOpt 90 9 x'20
             P'.wirePutRep 98 9 x'22
             P'.wirePutRep 106 11 x'23
             P'.wirePutRep 114 11 x'31
             P'.wirePutOpt 120 8 x'33
             P'.wirePutOpt 130 12 x'43
             P'.wirePutOpt 136 8 x'34
             P'.wirePutRep 146 9 x'44
             P'.wirePutOpt 154 9 x'21
             P'.wirePutOpt 160 13 x'6
             P'.wirePutOpt 170 9 x'4
             P'.wirePutOpt 178 9 x'45
             P'.wirePutOpt 186 12 x'46
             P'.wirePutOpt 192 5 x'24
             P'.wirePutOpt 200 5 x'15
             P'.wirePutPacked 210 5 x'25
             P'.wirePutRep 218 11 x'47
             P'.wirePutOpt 226 11 x'28
             P'.wirePutOpt 234 11 x'29
             P'.wirePutPacked 242 5 x'16
             P'.wirePutOpt 248 5 x'7
             P'.wirePutRep 258 11 x'18
             P'.wirePutOpt 266 9 x'12
             P'.wirePutOpt 274 9 x'13
             P'.wirePutOpt 280 8 x'48
             P'.wirePutRep 288 5 x'26
             P'.wirePutOpt 298 12 x'8
             P'.wirePutRep 306 11 x'27
             P'.wirePutOpt 312 5 x'11
             P'.wirePutOpt 322 12 x'14
             P'.wirePutOpt 328 5 x'19
             P'.wirePutOpt 337 6 x'30
             P'.wirePutRep 354 11 x'32
             P'.wirePutOpt 360 8 x'35
             P'.wirePutOpt 378 9 x'5
             P'.wirePutOpt 386 12 x'9
             P'.wirePutRep 392 14 x'3
             P'.wirePutOpt 402 11 x'17
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
             312 -> Prelude'.fmap (\ !new'Field -> old'Self{geo_criteria_id = Prelude'.Just new'Field}) (P'.wireGet 5)
             266 -> Prelude'.fmap (\ !new'Field -> old'Self{postal_code = Prelude'.Just new'Field}) (P'.wireGet 9)
             274 -> Prelude'.fmap (\ !new'Field -> old'Self{postal_code_prefix = Prelude'.Just new'Field}) (P'.wireGet 9)
             322 -> Prelude'.fmap (\ !new'Field -> old'Self{encrypted_hyperlocal_set = Prelude'.Just new'Field}) (P'.wireGet 12)
             200 -> Prelude'.fmap (\ !new'Field -> old'Self{timezone_offset = Prelude'.Just new'Field}) (P'.wireGet 5)
             240 -> Prelude'.fmap (\ !new'Field -> old'Self{user_vertical = P'.append (user_vertical old'Self) new'Field})
                     (P'.wireGet 5)
             242 -> Prelude'.fmap (\ !new'Field -> old'Self{user_vertical = P'.mergeAppend (user_vertical old'Self) new'Field})
                     (P'.wireGetPacked 5)
             402 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{user_demographic = P'.mergeAppend (user_demographic old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             258 -> Prelude'.fmap (\ !new'Field -> old'Self{user_list = P'.append (user_list old'Self) new'Field}) (P'.wireGet 11)
             328 -> Prelude'.fmap (\ !new'Field -> old'Self{seller_network_id = Prelude'.Just new'Field}) (P'.wireGet 5)
             90 -> Prelude'.fmap (\ !new'Field -> old'Self{url = Prelude'.Just new'Field}) (P'.wireGet 9)
             154 -> Prelude'.fmap (\ !new'Field -> old'Self{anonymous_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             98 -> Prelude'.fmap (\ !new'Field -> old'Self{detected_language = P'.append (detected_language old'Self) new'Field})
                    (P'.wireGet 9)
             106 -> Prelude'.fmap (\ !new'Field -> old'Self{detected_vertical = P'.append (detected_vertical old'Self) new'Field})
                     (P'.wireGet 11)
             192 -> Prelude'.fmap (\ !new'Field -> old'Self{vertical_dictionary_version = Prelude'.Just new'Field}) (P'.wireGet 5)
             208 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{detected_content_label = P'.append (detected_content_label old'Self) new'Field})
                     (P'.wireGet 5)
             210 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{detected_content_label = P'.mergeAppend (detected_content_label old'Self) new'Field})
                     (P'.wireGetPacked 5)
             288 -> Prelude'.fmap (\ !new'Field -> old'Self{site_list_id = P'.append (site_list_id old'Self) new'Field})
                     (P'.wireGet 5)
             290 -> Prelude'.fmap (\ !new'Field -> old'Self{site_list_id = P'.mergeAppend (site_list_id old'Self) new'Field})
                     (P'.wireGetPacked 5)
             306 -> Prelude'.fmap (\ !new'Field -> old'Self{key_value = P'.append (key_value old'Self) new'Field}) (P'.wireGet 11)
             226 -> Prelude'.fmap (\ !new'Field -> old'Self{mobile = P'.mergeAppend (mobile old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             234 -> Prelude'.fmap (\ !new'Field -> old'Self{video = P'.mergeAppend (video old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             337 -> Prelude'.fmap (\ !new'Field -> old'Self{publisher_settings_list_id = Prelude'.Just new'Field}) (P'.wireGet 6)
             114 -> Prelude'.fmap (\ !new'Field -> old'Self{adslot = P'.append (adslot old'Self) new'Field}) (P'.wireGet 11)
             354 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{bid_response_feedback = P'.append (bid_response_feedback old'Self) new'Field})
                     (P'.wireGet 11)
             120 -> Prelude'.fmap (\ !new'Field -> old'Self{is_test = Prelude'.Just new'Field}) (P'.wireGet 8)
             136 -> Prelude'.fmap (\ !new'Field -> old'Self{is_ping = Prelude'.Just new'Field}) (P'.wireGet 8)
             360 -> Prelude'.fmap (\ !new'Field -> old'Self{is_predicted_to_be_ignored = Prelude'.Just new'Field}) (P'.wireGet 8)
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_protocol_version = Prelude'.Just new'Field}) (P'.wireGet 5)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_click_tracking_url = Prelude'.Just new'Field}) (P'.wireGet 9)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_cookie = Prelude'.Just new'Field}) (P'.wireGet 4)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_country = Prelude'.Just new'Field}) (P'.wireGet 9)
             66 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_region = Prelude'.Just new'Field}) (P'.wireGet 9)
             74 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_city = Prelude'.Just new'Field}) (P'.wireGet 9)
             80 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_metro = Prelude'.Just new'Field}) (P'.wireGet 5)
             130 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_hashed_cookie = Prelude'.Just new'Field}) (P'.wireGet 12)
             146 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{dEPRECATED_excluded_click_through_url =
                                 P'.append (dEPRECATED_excluded_click_through_url old'Self) new'Field})
                     (P'.wireGet 9)
             178 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_seller_network = Prelude'.Just new'Field}) (P'.wireGet 9)
             186 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_publisher_settings_list_id = Prelude'.Just new'Field})
                     (P'.wireGet 12)
             218 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{dEPRECATED_matching_network = P'.append (dEPRECATED_matching_network old'Self) new'Field})
                     (P'.wireGet 11)
             280 -> Prelude'.fmap (\ !new'Field -> old'Self{dEPRECATED_experimental_deadline = Prelude'.Just new'Field})
                     (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self
 
instance P'.MessageAPI msg' (msg' -> BidRequest) BidRequest where
  getVal m' f' = f' m'
 
instance P'.GPB BidRequest
 
instance P'.ReflectDescriptor BidRequest where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [18])
      (P'.fromDistinctAscList
        [8, 18, 26, 34, 40, 50, 58, 66, 74, 80, 90, 98, 106, 114, 120, 130, 136, 146, 154, 160, 170, 178, 186, 192, 200, 208, 210,
         218, 226, 234, 240, 242, 248, 258, 266, 274, 280, 288, 290, 298, 306, 312, 322, 328, 337, 354, 360, 378, 386, 392, 394,
         402])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\"], baseName = MName \"BidRequest\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"id\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.ip\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"ip\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.user_data_treatment\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"user_data_treatment\"}, fieldNumber = FieldId {getFieldId = 49}, wireTag = WireTag {getWireTag = 392}, packedTag = Just (WireTag {getWireTag = 392},WireTag {getWireTag = 394}), wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.UserDataTreatment\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"UserDataTreatment\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.google_user_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"google_user_id\"}, fieldNumber = FieldId {getFieldId = 21}, wireTag = WireTag {getWireTag = 170}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.constrained_usage_google_user_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"constrained_usage_google_user_id\"}, fieldNumber = FieldId {getFieldId = 47}, wireTag = WireTag {getWireTag = 378}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.cookie_version\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"cookie_version\"}, fieldNumber = FieldId {getFieldId = 20}, wireTag = WireTag {getWireTag = 160}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.cookie_age_seconds\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"cookie_age_seconds\"}, fieldNumber = FieldId {getFieldId = 31}, wireTag = WireTag {getWireTag = 248}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.hosted_match_data\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"hosted_match_data\"}, fieldNumber = FieldId {getFieldId = 37}, wireTag = WireTag {getWireTag = 298}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.constrained_usage_hosted_match_data\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"constrained_usage_hosted_match_data\"}, fieldNumber = FieldId {getFieldId = 48}, wireTag = WireTag {getWireTag = 386}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.user_agent\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"user_agent\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.geo_criteria_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"geo_criteria_id\"}, fieldNumber = FieldId {getFieldId = 39}, wireTag = WireTag {getWireTag = 312}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.postal_code\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"postal_code\"}, fieldNumber = FieldId {getFieldId = 33}, wireTag = WireTag {getWireTag = 266}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.postal_code_prefix\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"postal_code_prefix\"}, fieldNumber = FieldId {getFieldId = 34}, wireTag = WireTag {getWireTag = 274}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.encrypted_hyperlocal_set\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"encrypted_hyperlocal_set\"}, fieldNumber = FieldId {getFieldId = 40}, wireTag = WireTag {getWireTag = 322}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.timezone_offset\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"timezone_offset\"}, fieldNumber = FieldId {getFieldId = 25}, wireTag = WireTag {getWireTag = 200}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.user_vertical\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"user_vertical\"}, fieldNumber = FieldId {getFieldId = 30}, wireTag = WireTag {getWireTag = 242}, packedTag = Just (WireTag {getWireTag = 240},WireTag {getWireTag = 242}), wireTagLength = 2, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.user_demographic\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"user_demographic\"}, fieldNumber = FieldId {getFieldId = 50}, wireTag = WireTag {getWireTag = 402}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.UserDemographic\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"UserDemographic\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.user_list\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"user_list\"}, fieldNumber = FieldId {getFieldId = 32}, wireTag = WireTag {getWireTag = 258}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.UserList\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"UserList\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.seller_network_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"seller_network_id\"}, fieldNumber = FieldId {getFieldId = 41}, wireTag = WireTag {getWireTag = 328}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.url\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"url\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.anonymous_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"anonymous_id\"}, fieldNumber = FieldId {getFieldId = 19}, wireTag = WireTag {getWireTag = 154}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.detected_language\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"detected_language\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 98}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.detected_vertical\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"detected_vertical\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 106}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Vertical\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"Vertical\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.vertical_dictionary_version\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"vertical_dictionary_version\"}, fieldNumber = FieldId {getFieldId = 24}, wireTag = WireTag {getWireTag = 192}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.detected_content_label\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"detected_content_label\"}, fieldNumber = FieldId {getFieldId = 26}, wireTag = WireTag {getWireTag = 210}, packedTag = Just (WireTag {getWireTag = 208},WireTag {getWireTag = 210}), wireTagLength = 2, isPacked = True, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.site_list_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"site_list_id\"}, fieldNumber = FieldId {getFieldId = 36}, wireTag = WireTag {getWireTag = 288}, packedTag = Just (WireTag {getWireTag = 288},WireTag {getWireTag = 290}), wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.key_value\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"key_value\"}, fieldNumber = FieldId {getFieldId = 38}, wireTag = WireTag {getWireTag = 306}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.KeyValue\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"KeyValue\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.mobile\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"mobile\"}, fieldNumber = FieldId {getFieldId = 28}, wireTag = WireTag {getWireTag = 226}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Mobile\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"Mobile\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.video\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"video\"}, fieldNumber = FieldId {getFieldId = 29}, wireTag = WireTag {getWireTag = 234}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Video\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"Video\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.publisher_settings_list_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"publisher_settings_list_id\"}, fieldNumber = FieldId {getFieldId = 42}, wireTag = WireTag {getWireTag = 337}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 6}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.adslot\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"adslot\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 114}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.AdSlot\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"AdSlot\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.bid_response_feedback\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"bid_response_feedback\"}, fieldNumber = FieldId {getFieldId = 44}, wireTag = WireTag {getWireTag = 354}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.BidResponseFeedback\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"BidResponseFeedback\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.is_test\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"is_test\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 120}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.is_ping\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"is_ping\"}, fieldNumber = FieldId {getFieldId = 17}, wireTag = WireTag {getWireTag = 136}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.is_predicted_to_be_ignored\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"is_predicted_to_be_ignored\"}, fieldNumber = FieldId {getFieldId = 45}, wireTag = WireTag {getWireTag = 360}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.DEPRECATED_protocol_version\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"dEPRECATED_protocol_version\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.DEPRECATED_click_tracking_url\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"dEPRECATED_click_tracking_url\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.DEPRECATED_cookie\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"dEPRECATED_cookie\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.DEPRECATED_country\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"dEPRECATED_country\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.DEPRECATED_region\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"dEPRECATED_region\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.DEPRECATED_city\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"dEPRECATED_city\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.DEPRECATED_metro\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"dEPRECATED_metro\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 80}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.DEPRECATED_hashed_cookie\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"dEPRECATED_hashed_cookie\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 130}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.DEPRECATED_excluded_click_through_url\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"dEPRECATED_excluded_click_through_url\"}, fieldNumber = FieldId {getFieldId = 18}, wireTag = WireTag {getWireTag = 146}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.DEPRECATED_seller_network\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"dEPRECATED_seller_network\"}, fieldNumber = FieldId {getFieldId = 22}, wireTag = WireTag {getWireTag = 178}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.DEPRECATED_publisher_settings_list_id\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"dEPRECATED_publisher_settings_list_id\"}, fieldNumber = FieldId {getFieldId = 23}, wireTag = WireTag {getWireTag = 186}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.DEPRECATED_matching_network\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"dEPRECATED_matching_network\"}, fieldNumber = FieldId {getFieldId = 27}, wireTag = WireTag {getWireTag = 218}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.MatchingNetwork\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"MatchingNetwork\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.DEPRECATED_experimental_deadline\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\"], baseName' = FName \"dEPRECATED_experimental_deadline\"}, fieldNumber = FieldId {getFieldId = 35}, wireTag = WireTag {getWireTag = 280}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Just \"false\", hsDefault = Just (HsDef'Bool False)}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False}"
 
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
       P'.tellT "geo_criteria_id" (geo_criteria_id msg)
       P'.tellT "postal_code" (postal_code msg)
       P'.tellT "postal_code_prefix" (postal_code_prefix msg)
       P'.tellT "encrypted_hyperlocal_set" (encrypted_hyperlocal_set msg)
       P'.tellT "timezone_offset" (timezone_offset msg)
       P'.tellT "user_vertical" (user_vertical msg)
       P'.tellT "user_demographic" (user_demographic msg)
       P'.tellT "user_list" (user_list msg)
       P'.tellT "seller_network_id" (seller_network_id msg)
       P'.tellT "url" (url msg)
       P'.tellT "anonymous_id" (anonymous_id msg)
       P'.tellT "detected_language" (detected_language msg)
       P'.tellT "detected_vertical" (detected_vertical msg)
       P'.tellT "vertical_dictionary_version" (vertical_dictionary_version msg)
       P'.tellT "detected_content_label" (detected_content_label msg)
       P'.tellT "site_list_id" (site_list_id msg)
       P'.tellT "key_value" (key_value msg)
       P'.tellT "mobile" (mobile msg)
       P'.tellT "video" (video msg)
       P'.tellT "publisher_settings_list_id" (publisher_settings_list_id msg)
       P'.tellT "adslot" (adslot msg)
       P'.tellT "bid_response_feedback" (bid_response_feedback msg)
       P'.tellT "is_test" (is_test msg)
       P'.tellT "is_ping" (is_ping msg)
       P'.tellT "is_predicted_to_be_ignored" (is_predicted_to_be_ignored msg)
       P'.tellT "DEPRECATED_protocol_version" (dEPRECATED_protocol_version msg)
       P'.tellT "DEPRECATED_click_tracking_url" (dEPRECATED_click_tracking_url msg)
       P'.tellT "DEPRECATED_cookie" (dEPRECATED_cookie msg)
       P'.tellT "DEPRECATED_country" (dEPRECATED_country msg)
       P'.tellT "DEPRECATED_region" (dEPRECATED_region msg)
       P'.tellT "DEPRECATED_city" (dEPRECATED_city msg)
       P'.tellT "DEPRECATED_metro" (dEPRECATED_metro msg)
       P'.tellT "DEPRECATED_hashed_cookie" (dEPRECATED_hashed_cookie msg)
       P'.tellT "DEPRECATED_excluded_click_through_url" (dEPRECATED_excluded_click_through_url msg)
       P'.tellT "DEPRECATED_seller_network" (dEPRECATED_seller_network msg)
       P'.tellT "DEPRECATED_publisher_settings_list_id" (dEPRECATED_publisher_settings_list_id msg)
       P'.tellT "DEPRECATED_matching_network" (dEPRECATED_matching_network msg)
       P'.tellT "DEPRECATED_experimental_deadline" (dEPRECATED_experimental_deadline msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'id, parse'ip, parse'user_data_treatment, parse'google_user_id, parse'constrained_usage_google_user_id,
                   parse'cookie_version, parse'cookie_age_seconds, parse'hosted_match_data,
                   parse'constrained_usage_hosted_match_data, parse'user_agent, parse'geo_criteria_id, parse'postal_code,
                   parse'postal_code_prefix, parse'encrypted_hyperlocal_set, parse'timezone_offset, parse'user_vertical,
                   parse'user_demographic, parse'user_list, parse'seller_network_id, parse'url, parse'anonymous_id,
                   parse'detected_language, parse'detected_vertical, parse'vertical_dictionary_version,
                   parse'detected_content_label, parse'site_list_id, parse'key_value, parse'mobile, parse'video,
                   parse'publisher_settings_list_id, parse'adslot, parse'bid_response_feedback, parse'is_test, parse'is_ping,
                   parse'is_predicted_to_be_ignored, parse'dEPRECATED_protocol_version, parse'dEPRECATED_click_tracking_url,
                   parse'dEPRECATED_cookie, parse'dEPRECATED_country, parse'dEPRECATED_region, parse'dEPRECATED_city,
                   parse'dEPRECATED_metro, parse'dEPRECATED_hashed_cookie, parse'dEPRECATED_excluded_click_through_url,
                   parse'dEPRECATED_seller_network, parse'dEPRECATED_publisher_settings_list_id, parse'dEPRECATED_matching_network,
                   parse'dEPRECATED_experimental_deadline])
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
        parse'user_demographic
         = P'.try
            (do
               v <- P'.getT "user_demographic"
               Prelude'.return (\ o -> o{user_demographic = v}))
        parse'user_list
         = P'.try
            (do
               v <- P'.getT "user_list"
               Prelude'.return (\ o -> o{user_list = P'.append (user_list o) v}))
        parse'seller_network_id
         = P'.try
            (do
               v <- P'.getT "seller_network_id"
               Prelude'.return (\ o -> o{seller_network_id = v}))
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
        parse'vertical_dictionary_version
         = P'.try
            (do
               v <- P'.getT "vertical_dictionary_version"
               Prelude'.return (\ o -> o{vertical_dictionary_version = v}))
        parse'detected_content_label
         = P'.try
            (do
               v <- P'.getT "detected_content_label"
               Prelude'.return (\ o -> o{detected_content_label = P'.append (detected_content_label o) v}))
        parse'site_list_id
         = P'.try
            (do
               v <- P'.getT "site_list_id"
               Prelude'.return (\ o -> o{site_list_id = P'.append (site_list_id o) v}))
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
        parse'dEPRECATED_protocol_version
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_protocol_version"
               Prelude'.return (\ o -> o{dEPRECATED_protocol_version = v}))
        parse'dEPRECATED_click_tracking_url
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_click_tracking_url"
               Prelude'.return (\ o -> o{dEPRECATED_click_tracking_url = v}))
        parse'dEPRECATED_cookie
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_cookie"
               Prelude'.return (\ o -> o{dEPRECATED_cookie = v}))
        parse'dEPRECATED_country
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_country"
               Prelude'.return (\ o -> o{dEPRECATED_country = v}))
        parse'dEPRECATED_region
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_region"
               Prelude'.return (\ o -> o{dEPRECATED_region = v}))
        parse'dEPRECATED_city
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_city"
               Prelude'.return (\ o -> o{dEPRECATED_city = v}))
        parse'dEPRECATED_metro
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_metro"
               Prelude'.return (\ o -> o{dEPRECATED_metro = v}))
        parse'dEPRECATED_hashed_cookie
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_hashed_cookie"
               Prelude'.return (\ o -> o{dEPRECATED_hashed_cookie = v}))
        parse'dEPRECATED_excluded_click_through_url
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_excluded_click_through_url"
               Prelude'.return
                (\ o -> o{dEPRECATED_excluded_click_through_url = P'.append (dEPRECATED_excluded_click_through_url o) v}))
        parse'dEPRECATED_seller_network
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_seller_network"
               Prelude'.return (\ o -> o{dEPRECATED_seller_network = v}))
        parse'dEPRECATED_publisher_settings_list_id
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_publisher_settings_list_id"
               Prelude'.return (\ o -> o{dEPRECATED_publisher_settings_list_id = v}))
        parse'dEPRECATED_matching_network
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_matching_network"
               Prelude'.return (\ o -> o{dEPRECATED_matching_network = P'.append (dEPRECATED_matching_network o) v}))
        parse'dEPRECATED_experimental_deadline
         = P'.try
            (do
               v <- P'.getT "DEPRECATED_experimental_deadline"
               Prelude'.return (\ o -> o{dEPRECATED_experimental_deadline = v}))