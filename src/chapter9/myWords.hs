module MyWords where

myWords :: String -> [String]
myWords xs
    | xs == "" = []
    | otherwise = takeWhile notSpace xs : myWords (dropWhile (==' ') (dropWhile notSpace xs))
     where notSpace = (/=' ')