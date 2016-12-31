module Exercises where

import Data.Time

data DatabaseItem = DbString String
                    | DbNumber Integer
                    | DbDate UTCTime
                    deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
    [DbDate ( UTCTime
                (fromGregorian 1911 11 5)
                (secondsToDiffTime 34123))
    , DbNumber 9001
    , DbNumber 9003
    , DbString "Hello World"
    , DbDate ( UTCTime
                     (fromGregorian 1921 5 1)
                     (secondsToDiffTime 34123))]

isDate (DbDate _) = True
isDate (_) = False

isNumber (DbNumber _) = True
isNumber (_) = False

filterDates :: [DatabaseItem] -> [UTCTime]
filterDates xs = map (\(DbDate y) -> y) $ filter isDate xs

filterNumbers :: [DatabaseItem] -> [Integer]
filterNumbers xs = map (\(DbNumber y) -> y) $ filter isNumber xs

maxDate :: [DatabaseItem] -> UTCTime
maxDate xs = foldr1 max $ filterDates xs

sumDb :: [DatabaseItem] -> Integer
sumDb xs = foldr (+) 0 $ filterNumbers xs

avgDb :: [DatabaseItem] -> Double
avgDb xs = fromIntegral (sumDb xs) / fromIntegral (length (filterNumbers xs))
