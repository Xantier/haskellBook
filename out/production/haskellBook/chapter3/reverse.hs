module Reverse where

rvrs :: String -> String
rvrs x = y ++ " " ++ z ++ " " ++ zz
    where zz = take 5 x
          z = take 2 $ drop 6 x
          y = take 7 (drop 9 x)

main :: String -> IO()
main x = print $ rvrs x