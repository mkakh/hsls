module Main where

import Lib

main :: IO ()
main = do
  currentDir <- getCurrentDirContents
  putStrLn currentDir
