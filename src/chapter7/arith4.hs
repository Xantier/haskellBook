module Arith4 where

roundtrip :: (Show a, Read a) => a -> a
roundtrip a = read (show a)

roundtrip' :: (Integral a, Show a, Integral b, Read b) => a -> b
roundtrip' = read . show

main = do
    print (roundtrip 4)
    print (roundtrip' 4)
    print (id 4)