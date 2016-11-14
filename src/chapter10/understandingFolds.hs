module UnderstandingFolds where

a = foldr (++) ["woot", "WOOT", "woot"] []
b = foldr max "fear is the little death" []
c = foldr (&&) True [False, True]
d = foldr (||) True [False, True]
e = foldr ((++) . show) "" [1..5]
f = foldl const "a" [1..5]
g = foldr const '0' "tacos"
h = foldl (flip const) '0' "burritos"
i = foldr (flip const) 'z' [1..5]