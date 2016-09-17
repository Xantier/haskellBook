module TypeInference where

f :: Num a => a -> a -> a
f x y = x + y + 3

g x y = x + y + 3

myConcat x = "yo" ++ x
myMult x = (x / 3) * 54
myTake x = take x "hey"
myCom x = x > (length [1..10])
myAlph x = x < 'z'