module Print3Broken where

myGreeting :: String
myGreeting = "Hello"

printSecond :: IO()
printSecond = putStrLn myGreeting

main :: IO()
main = do
    putStrLn myGreeting
    printSecond
