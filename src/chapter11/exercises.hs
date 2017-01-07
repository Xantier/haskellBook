module Exercises where

import Data.Char

vigenere :: String -> String -> String
vigenere word key = zipWith swap word keyLetters
                    where keyLetters =
                            foldr swapOrSpace "" [0..(fromIntegral $ length word - 1)]
                          swapOrSpace =
                            (\a b -> if ((cycle word) !! a) == ' '  then [' '] ++ b else [((cycle key) !! a)] ++ b)
                          swap a b =
                            chr ((ord b) - (ord a) + ord b)