module Exercises where

cattyConny :: String -> String -> String
cattyConny x y = x ++ "mrow" ++ y

flippy = flip cattyConny

appedCatty = cattyConny "Whoops"
frappe = flippy "haha"

recSum :: (Eq a, Num a) => a -> a
recSum 0 = 0
recSum x = x + recSum (x - 1)

recMult :: (Integral a) => a -> a -> a
recMult _ 0 = 0
recMult x y = x + (recMult x (y - 1))

data DivideResult = Result (Integer, Integer) | DividedByZero deriving Show

dividedBy :: Integer -> Integer -> DivideResult
dividedBy _ 0 = DividedByZero
dividedBy num denom = go (abs num) (abs denom) 0 (ind num denom)
    where go n d count ind
           | n < d = Result(ind *count, n)
           | otherwise = go (n - d) d (count + 1) ind

ind :: Integral a => a -> a -> a
ind _ 0 = 0
ind x y = if ((x < 0 && y < 0) || x > 0 && y > 0) then 1 else -1

mc91 :: (Integral a)  => a -> a
mc91 x
    | x > 100 = x - 10
    | otherwise = mc91 (mc91 (x + 11))




