{-# LANGUAGE OverloadedStrings #-}
module Main (main) where
import Network.Wai.Test
import Web.RTBBidder (bidderApp)

main :: IO ()
main = runSession test bidderApp
  where
    test = do
      res <- srequest (SRequest defaultRequest "")
      assertStatus 200 res
