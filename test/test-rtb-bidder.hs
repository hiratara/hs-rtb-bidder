{-# LANGUAGE OverloadedStrings #-}
module Main (main) where
import Network.Wai.Test
import Web.RTBBidder (bidderApp)
import Data.ByteString.Lazy.Char8 (pack)

main :: IO ()
main = do
  jsonstr <- readFile "test/asset/openrtb22.json"
  runSession (test jsonstr) bidderApp
  where
    test jsonstr = do
      res <- srequest (SRequest defaultRequest (pack jsonstr))
      assertStatus 200 res
      assertBodyContains "\"80ce30c53c16e6ede735f123ef6e32361bfc7b22\"" res
