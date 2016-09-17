module Parametricity where

a :: a -> a -> a
a x y = x

b :: a -> a -> a
b x y = y

c :: a -> b -> b
c x y = y