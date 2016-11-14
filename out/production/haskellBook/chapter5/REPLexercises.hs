Prelude> let f :: a -> a -> a -> a; f = undefined
Prelude> let x :: Char; x = undefined
Prelude> :t f x
f x :: Char -> Char -> Char

Prelude> let f :: a -> a -> a -> a; f = undefined
Prelude> let x :: Char; x = undefined
Prelude> :t f x
f x :: Char -> Char -> Char

Prelude> let g :: a -> b -> c -> b; g = undefined
Prelude> :t g 0 'c' "woot"
g 0 'c' "woot" :: Char

Prelude> let h :: (Num a, Num b) => a -> b -> b; h = undefined
Prelude> :t h 1.0 2
h 1.0 2 :: Num b => b

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