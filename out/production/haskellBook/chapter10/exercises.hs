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
