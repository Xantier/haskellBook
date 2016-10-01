module Exercises where

f :: (Ord a) => a -> a -> Bool
f = undefined

tensDigit :: Integral a => a -> a
tensDigit x = d
    where xLast = x `div` 10
          d   = xLast `mod` 10

tensDigit' :: Integral a => a -> a
tensDigit' x = d
    where (xLast, _) = x `divMod` 10
          (_, d) = xLast `divMod` 10

hunsD x = mod (div x 100) 100

foldBool :: a -> a-> Bool -> a
foldBool x y b = case (x,y,b) of
    (x,y,True) -> x
    (x,y,False) -> y

foldBool' :: a -> a-> Bool -> a
foldBool' x y b
    | (b == True)  = x
    | (b == False) = y

g :: (a -> b) -> (a,c) -> (b,c)
g fn (a,c) = (fn a,c)