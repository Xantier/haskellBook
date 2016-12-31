module Scans where

fibs = 1 : scanl (+) 1 fibs
fibsN x = fibs !! x


fibs20 :: [Integer]
fibs20 = take 20 fibs

fibs100 :: [Integer]
fibs100 = takeWhile (<100) fibs

factorial :: [Integer]
factorial = scanl (*) 1 [2..]