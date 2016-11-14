module Exercises where

import Data.List

add :: Int -> Int -> Int
add a b = a + b

addWeird :: Int -> Int -> Int
addWeird x y =
    if x > 1
    then x + y
    else x

check' :: Int -> Int -> Bool
check' a a' = a == a'

{-

Not type checking

data Person = Person Bool

printPerson :: Person -> IO()
printPerson person = putStrLn (show person)-}


data Rocks =
    Rocks String deriving (Eq, Ord)

data Yeah =
    Yeah Bool deriving (Eq, Ord)

data Papu =
    Papu Rocks Yeah deriving (Eq, Ord)

equalityForAll :: Papu -> Papu -> Bool
equalityForAll p p' = p == p'

orderingForAll :: Papu -> Papu -> Bool
orderingForAll p p' = p > p'

i :: Num a => a
{-i :: a-} -- Doesn't typecheck
i = 1

{-f :: Num a => a  -} -- Doesn't typecheck
{-f :: Float-} -- typechecks
f :: RealFrac a => a
f = 1.0

{-freud :: a -> a-} -- typechecks
{-freud :: Ord a => a -> a-} -- typechecks
freud :: Int -> Int
freud x = x

myX = 1 :: Int

{-sigmund :: Int -> Int-}
{-sigmund :: a -> a -} -- doesn't type check
{-sigmund :: Num a => a -> a-} -- doesn't type check, too wide for Int
sigmund x = myX

jung :: Ord a => [a] -> a
{-jung :: [Int] -> Int-} -- typechecks
{-jung :: [Char] -> Char-} -- typechecks
{-jung :: Ord a => [a] -> a-} -- typechecks
jung xs = head (sort xs)

mySort :: [Char] -> [Char]
mySort = sort

signifier :: [Char] -> Char
{-signifier :: Ord a => [a] -> a-} -- Doesn't typecheck, too wide for Char
signifier xs = head (mySort xs)