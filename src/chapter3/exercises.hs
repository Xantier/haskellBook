module Chapter3 where

appendExcl :: String -> String
appendExcl x = x ++ "!"

takeFourth :: String -> Char
takeFourth x = head $ drop 4 x

rvrs :: String -> String
rvrs x = y ++ " " ++ z ++ " " ++ zz
    where zz = take 5 x
          z = take 2 $ drop 6 x
          y = take 7 (drop 9 x)