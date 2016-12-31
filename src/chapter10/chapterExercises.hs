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