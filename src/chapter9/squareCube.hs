module SquareCube where

mySqr = [x^2 | x <- [1..5]]
myCube = [x^3 | x <- [1..5]]

sqrCubeTuples = [(x,y) | x <- mySqr, x < 50, y <- myCube, y < 50]
numberOfTuples = length sqrCubeTuples