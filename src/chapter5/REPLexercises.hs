Prelude> let h :: (Num a, Num b) => a -> b -> b; h = undefined
Prelude> :t h 5 (5.5 :: Double)
h 5 (5.5 :: Double) :: Double
Prelude> let j :: (Ord a, Eq b) => a -> b -> a; j = undefined
Prelude> :t j "a" "fdfa"
j "a" "fdfa" :: [Char]
Prelude> :t j "ass"
j "ass" :: Eq b => b -> [Char]
Prelude> let k :: (Ord a, Num b) => a -> b -> a; k = undefined
Prelude> :t k 1 1
k 1 1 :: (Num a, Ord a) => a
Prelude> :t k 1 (1 :: Integer)
k 1 (1 :: Integer) :: (Num a, Ord a) => a
Prelude> :t k (1 :: Integer) 2
k (1 :: Integer) 2 :: Integer