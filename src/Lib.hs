module Lib
    ( getCurrentDirContents
    ) where
import System.Directory
import Data.List

getCurrentDirContents :: IO String
getCurrentDirContents = toString <$> sort <$> (listDirectory =<< getCurrentDirectory) where
  toString :: [String] -> String
  toString x = concat $ map addSpace x where
    addSpace :: String -> String
    addSpace x = x ++ " "
