module Chapter10Exercises where

--1
--a
stops = "pbtdkg"
vowels = "aeiou"

tresTuples :: [(Char,Char,Char)]
tresTuples = [(a,b,c) | a <- stops, b <- vowels, c <- stops]

--b
tresTuplesP :: [(Char,Char,Char)]
tresTuplesP = [(a,b,c) | a <- stops, b <- vowels, c <- stops, c == 'p']

--c
nouns = ["thing", "thang"]
verbs = ["does", "doesnt"]

tresTuplesNounVNoun :: [(String,String,String)]
tresTuplesNounVNoun = [(a,b,c) | a <- nouns, b <- verbs, c <- nouns]

-- avg word length
seekritFunc :: String -> Int
seekritFunc x = div (sum (map length (words x))) (length (words x))

--Rewriting to folds
--1.
myOr :: [Bool] -> Bool
myOr = foldr (||) True

--2.
myAny :: (a -> Bool) -> [a] -> Bool
myAny f = foldr ((||) . f) False

--3a.
myElem :: Eq a => a -> [a] -> Bool
myElem x = foldr (\y _-> x == y) False

--3b.
myElemAny :: Eq a => a -> [a] -> Bool
myElemAny x = any (x==)

--4.
myReverse :: [a] -> [a]
myReverse = foldr (\ x y -> y ++ [x]) []

--5.
myMap :: (a -> b) -> [a] -> [b]
myMap f = foldr ((:) . f) []

--6.
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f = foldr (\ x y -> if f x then y ++ [x] else y) []

--7.
squish :: [[a]] -> [a]
squish = foldr (++) []

--8.
squishMap :: (a -> [b]) -> [a] -> [b]
--squishMap f = foldr (\a b -> f a ++ b) []
squishMap f = foldr ((++) . f) []

--9.
squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

--10.
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy _ []     = undefined
myMaximumBy _ [x]    = x
myMaximumBy f (x:xs) = foldl fo x xs
  where fo a b
          | f a b == GT = a
          | otherwise = b

--11.
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy _ []     = undefined
myMinimumBy _ [x]    = x
myMinimumBy f (x:xs) = foldl fo x xs
  where fo a b
          | f a b == GT = b
          | otherwise = a