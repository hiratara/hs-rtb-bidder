{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Web.RTBBidder.Protocol.Adx.BidRequest.Hyperlocal (Hyperlocal(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Web.RTBBidder.Protocol.Adx.BidRequest.Hyperlocal.Point as Adx.BidRequest.Hyperlocal (Point)

data Hyperlocal = Hyperlocal{corners :: !(P'.Seq Adx.BidRequest.Hyperlocal.Point)}
                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Hyperlocal where
  mergeAppend (Hyperlocal x'1) (Hyperlocal y'1) = Hyperlocal (P'.mergeAppend x'1 y'1)

instance P'.Default Hyperlocal where
  defaultValue = Hyperlocal P'.defaultValue

instance P'.Wire Hyperlocal where
  wireSize ft' self'@(Hyperlocal x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePut ft' self'@(Hyperlocal x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 11 x'1
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{corners = P'.append (corners old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Hyperlocal) Hyperlocal where
  getVal m' f' = f' m'

instance P'.GPB Hyperlocal

instance P'.ReflectDescriptor Hyperlocal where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".Adx.BidRequest.Hyperlocal\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\"], baseName = MName \"Hyperlocal\"}, descFilePath = [\"Web\",\"RTBBidder\",\"Protocol\",\"Adx\",\"BidRequest\",\"Hyperlocal.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".Adx.BidRequest.Hyperlocal.corners\", haskellPrefix' = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule' = [MName \"Adx\",MName \"BidRequest\",MName \"Hyperlocal\"], baseName' = FName \"corners\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Adx.BidRequest.Hyperlocal.Point\", haskellPrefix = [MName \"Web\",MName \"RTBBidder\",MName \"Protocol\"], parentModule = [MName \"Adx\",MName \"BidRequest\",MName \"Hyperlocal\"], baseName = MName \"Point\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType Hyperlocal where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Hyperlocal where
  textPut msg
   = do
       P'.tellT "corners" (corners msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'corners]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'corners
         = P'.try
            (do
               v <- P'.getT "corners"
               Prelude'.return (\ o -> o{corners = P'.append (corners o) v}))