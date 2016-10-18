module PoemLines where

firstSen = "Tyger tyger, burning bright\n"
sndSen = "In the forests of the night\n"
thrdSen = "What immortal hand or eye\n"
frthSen = "Could frame thy fearful symmetry?"

sentences = firstSen ++ sndSen ++ thrdSen ++ frthSen

myLines :: String -> [String]
myLines xs
    | xs == "" = []
    | otherwise = takeWhile notSpace xs : myLines (dropWhile (=='\n') (dropWhile notSpace xs))
     where notSpace = (/='\n')

shouldEqual = [
    "Tyger tyger, burning bright",
    "In the forests of the night",
    "What immortal hand or eye",
    "Could frame thy fearful symmetry?"]

main :: IO ()
main = print $ "are they equal? " ++ show (myLines sentences == shouldEqual)