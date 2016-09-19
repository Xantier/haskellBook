module Exercises where

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

