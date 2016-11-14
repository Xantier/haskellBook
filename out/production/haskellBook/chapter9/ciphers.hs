module Ciphers where

import Data.Char

caesar :: String -> Int -> [Int]
caesar xs y = map (\x -> (mod (aOrd x y) 26) + (ord 'a')) xs

aOrd x y = (ord x) - (ord 'a') + y

unCaesar :: [Int] -> Int -> String
unCaesar xs y = map (\x -> chr (aChr x y)) xs

aChr x y
    | x - y < (ord 'a') = x + 26 - y
    | otherwise = x - y