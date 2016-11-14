module Exercises where

import Data.Char

listUppers :: String -> String
listUppers xs = filter isUpper xs

capit :: String -> String
capit (x:xs) = toUpper x : xs

cap :: String -> String
cap [] = ""
cap (x:xs) = toUpper x : cap xs

takeHead :: String -> Char
takeHead = toUpper . head