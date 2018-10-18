module Lib
    ( getCurrentDirContents
    ) where
import System.Directory

getCurrentDirContents :: IO String
getCurrentDirContents = fmap toString $ listDirectory =<< getCurrentDirectory

toString :: [String] -> String
toString x = concat $ map addSpace x where
  addSpace :: String -> String
  addSpace x = x ++ " "


