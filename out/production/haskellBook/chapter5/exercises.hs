{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineType where

example = 1

a = (* 6) 9 -- Num
b = head [(0, "doge"), (1, "katt")] -- Num a => (a, [Char])
c = head [(0 :: Integer, "doge"), (1, "katt")] -- (Integer, [Char])
d = if False then True else False -- Bool
e = length [1,2,3,4,5] -- Int
f = (length [1,2,3,4]) > (length "string") -- Bool

x = 5
y = x + 5
w = y * 10 -- Num
w2 y = y * 10 -- Num a => a -> a
w3 = 4 / y -- Fractional

x1 = "Hask"
y1 = "ell"
w4 = x1 ++ y1 -- [Char]

-- bigNum = (^) 5 $ 10
-- wahoo = bigNum $ 10
bigNum x = (^) 5 $ x
wahoo = bigNum $ 10

x2 = print
y2 = print "woohoo"
z = x2 "Hello"

a1 = (+)
b1 = 5
-- c1 = b1 10
c1 = a1 10
d1 = c1 5

a2 = b2 + 10
b2 = c2 * 5
c2 = 1

-- Write type sig from func
functionH :: [a] -> a
functionH (x:_) = x

functionG :: (Ord a) => a -> a -> Bool
functionG x y = if (x > y) then True else False

functionS :: (a,b) -> b
functionS (x,y) = y

-- Write func from type sig
i :: a  -> a
i x = x

c' :: a -> b -> a
c' x y = x

c'' :: b -> a -> b
c'' = c'

c''' :: a -> b -> b
c'''  x y = y

r :: [a] -> [a]
r xs = xs

r' :: [a] -> [a]
r' xs = reverse xs

r'' :: [a] -> [a]
r'' xs = xs ++ xs

co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB x = bToC $ aToB x

aco :: (a -> c) -> a -> a
aco _ x = x

a'co :: (a -> b) -> a -> b
a'co aToB a = aToB a
