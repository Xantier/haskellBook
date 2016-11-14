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
    , DbString "Hello World"
    , DbDate ( UTCTime
                     (fromGregorian 1921 5 1)
                     (secondsToDiffTime 34123))]

filterDates :: [DatabaseItem] -> [UTCTime]
filterDates xs = map (\(DbDate y) -> y) $ filter isDate xs
                where isDate (DbDate _) = True
                      isDate (_) = False

filterNumbers :: [DatabaseItem] -> [Integer]
filterNumbers xs = map (\(DbNumber y) -> y) $ filter isNumber xs
                where isNumber (DbNumber _) = True
                      isNumber (_) = False

maxDate :: [DatabaseItem] -> UTCTime
maxDate xs = foldr1 max $ map (\(DbDate y) -> y) $ filter isDate xs
              where isDate (DbDate _) = True
                    isDate (_) = False

sumDb :: [DatabaseItem] -> Integer
sumDb xs = foldr (+) 0 $ map (\(DbNumber y) -> y) $ filter isNumber xs
            where isNumber (DbNumber _) = True
                  isNumber (_) = False

{--
avgDb :: [DatabaseItem] -> Double
avgDb xs = foldr (+) 0 $ map (\(DbNumber y) -> y) $ filter isNumber xs
           where isNumber (DbNumber _) = True
                 isNumber (_) = False
--}