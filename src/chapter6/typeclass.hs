module DerivingInstances where

data Trivial = Trivial

instance Eq Trivial where
    (==) Trivial Trivial = True

data DayOfWeek =
    Mon | Tue | Wed | Thu | Fri | Sat | Sun
    deriving (Ord, Show)

instance Eq DayOfWeek where
    (==) Mon Mon = True
    (==) Tue Tue = True
    (==) Wed Wed = True
    (==) Thu Thu = True
    (==) Fri Fri = True
    (==) Sat Sat = True
    (==) Sun Sun = True
    (==) _ _ = False


data Date =
    Date DayOfWeek Int

instance Eq Date where
    (==) (Date weekday dayOfMonth) (Date weekday' dayOfMonth') =
        weekday == weekday' && dayOfMonth == dayOfMonth'

data TisAnInteger = TisAn Integer

instance Eq TisAnInteger where
    (==) (TisAn i) (TisAn i2)  = i == i2

data TwoIntegers = Two Integer Integer

instance Eq TwoIntegers where
   (==) (Two a b) (Two c d) = a == b && c == d

data StringOrInt =
    TisAnInt Int | TisAString String

instance Eq StringOrInt where
    (==) (TisAnInt i ) (TisAnInt i2) = i == i2
    (==) (TisAString s) (TisAString s2) = s == s2
    (==) _ _ = False

data Pair a = Pair a a

instance Eq a => Eq (Pair a) where
   (==) (Pair a _) (Pair a2 _) = a == a2

data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
    (==) (Tuple a b) (Tuple a' b') = a == a' && b == b'

data Which a =
    ThisOne a
    | ThatOne a

instance Eq a => Eq (Which a) where
    (==) (ThisOne a) (ThisOne a') = a == a'
    (==) (ThatOne a) (ThatOne a') = a == a'
    (==) (ThisOne _) (ThatOne _) = False
    (==) (ThatOne _) (ThisOne _) = False

data EitherOr a b =
    Hello a
    | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
    (==) (Hello _) (Goodbye _) = False
    (==) (Hello a) (Hello a') = a == a'
    (==) (Goodbye a) (Goodbye a') = a == a'

