module BinaryTree where

data BinaryTree a =
    Leaf
    | Node (BinaryTree a) a (BinaryTree a)
    deriving (Eq, Ord, Show)

mapTree :: (a -> b) -> BinaryTree a -> BinaryTree b
mapTree _ Leaf = Leaf
mapTree f (Node left a right) =
    Node (mapTree f left) (f a) (mapTree f right)

testTree' :: BinaryTree Integer
testTree' = Node (Node Leaf 3 Leaf) 1 (Node Leaf 4 Leaf)

mapExpected = Node (Node Leaf 4 Leaf) 2 (Node Leaf 5 Leaf)

mapOkay =
    if mapTree (+1) testTree' == mapExpected
    then print "Yup okay"
    else error "Nope, that's wrong"

preorder :: BinaryTree a -> [a]
preorder Leaf = []
preorder (Node left a right) = [a] ++ (preorder left) ++ (preorder right)

inorder :: BinaryTree a -> [a]
inorder Leaf = []
inorder (Node left a right) = (inorder left) ++ [a] ++ (inorder right)

postorder :: BinaryTree a -> [a]
postorder Leaf = []
postorder (Node left a right) = (postorder left) ++ (postorder right) ++ [a]

testtree :: BinaryTree Integer
testtree = Node (Node Leaf 1 Leaf) 2 (Node Leaf 3 Leaf)

testBench :: (BinaryTree Integer -> [Integer]) -> [Integer] -> IO ()
testBench f exp =
    if val == exp
    then putStrLn "Order fine.!"
    else putStrLn ("Bad news Bears! " ++ show val)
    where val = f testtree


testPreorder :: IO ()
testPreorder = testBench preorder [2,1,3]

testInorder :: IO ()
testInorder = testBench inorder [1,2,3]

testPostorder :: IO ()
testPostorder = testBench postorder [1,3,2]

foldTree :: (a -> b -> b) -> b -> BinaryTree a -> b
foldTree _ acc Leaf = acc
foldTree f acc (Node left a right) = f a (foldTree f (foldTree f acc left) right)

