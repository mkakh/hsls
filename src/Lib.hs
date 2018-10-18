module Lib
    ( getCurrentDirContents
    ) where

import System.Directory
someFunc :: IO ()
someFunc = putStrLn "someFunc"

getCurrentDirContents :: IO String
--ls = someFunc
getCurrentDirContents = fmap toString $ listDirectory =<< getCurrentDirectory

toString :: [String] -> String
toString x = concat $ map addSpace x where
  addSpace :: String -> String
  addSpace x = x ++ " "


