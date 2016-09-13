module Bools where

greetIfCool :: String -> IO()
greetIfCool str =
    if cool
        then putStrLn "Cool Beans"
    else
        putStrLn "Warm Beans"
    where cool = (str == "cool")

greetIfCoolInnerFun :: String -> IO()
greetIfCoolInnerFun str =
    if cool str
        then putStrLn "Cool Beans"
    else
        putStrLn "Warm Beans"
    where cool x = (x == "cool")