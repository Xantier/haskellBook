module Exercises where

x = (+)
awesome = ["papuchon", "curry", ":)"]
alsoAwesome = ["Quake", "Mr Robot"]
allAwesome = [awesome, alsoAwesome]

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == reverse xs

myAbs :: Integer -> Integer
myAbs x = if (x > 0) then x else (-x)

f :: (a,b) -> (c,d) -> ((b,d),(a,c))
f x y = ((snd x, snd y), (fst x, fst y))


addOneToLength :: [a] -> Int
addOneToLength xs = w `x` 1
    where w = length xs

id' :: a -> a
id' x = x

first :: [a] -> a
first (x:xs) = x

fst' :: (a,b) -> (a)
fst' x = fst x