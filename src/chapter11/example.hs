{-# LANGUAGE FlexibleInstances #-}

module Example where


data Example = MakeExample deriving Show

class TooMany a where
  tooMany :: a -> Bool

instance TooMany Int where
  tooMany n = n > 42

newtype Goats = Goats Int deriving (Eq, Show)

instance TooMany Goats where
  tooMany (Goats n) = n > 43

instance TooMany (Int, String) where
  tooMany (n, s) = n > 42

instance TooMany (Int, Int) where
  tooMany (n, m) = (+) n m > 42

{--
Does not compile, no Ord in sight

instance (Num a, TooMany a) => TooMany (a, a) where
  tooMany (n, s) = n > 42 && tooMany s

--}

instance (Num a, TooMany a) => TooMany (a, a) where
  tooMany (n, s) = tooMany n && tooMany s