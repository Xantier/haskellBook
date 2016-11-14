module WordNumber where

import Data.List (intersperse)

digitToWord :: Int -> String
digitToWord n = concat $ intersperse "-" $ wordMapper n

wordMapper :: Int -> [String]
wordMapper n = map wordNumber $ digits n

digits :: Int -> [Int]
digits n
    | n > 10 = (digits $ div n 10) ++ mod n 10 : []
    | otherwise = mod n 10 : []

wordNumber :: Int -> String
wordNumber n
    | n == 0 = "Zero"
    | n == 1 = "One"
    | n == 2 = "Two"
    | n == 3 = "Three"
    | n == 4 = "Four"
    | n == 5 = "Five"
    | n == 6 = "Six"
    | n == 7 = "Seven"
    | n == 8 = "Eight"
    | n == 9 = "Nine"
    | otherwise = "Nope, not today"

