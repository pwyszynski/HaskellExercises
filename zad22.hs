data BinTree a = Leaf a | Node (BinTree a) (BinTree a)

heightBinTree :: BinTree a -> Int
heightBinTree (Leaf a)          = 0
heightBinTree (Node left right) = 1 + max (heightBinTree left) (heightBinTree right)

sumTree (Leaf a) = a
sumTree (Node left right) = (sumTree left) + (sumTree right) 

sizeBinTree (Leaf a) = 0
sizeBinTree (Node left right) = 1 + (sizeBinTree left) + (sizeBinTree right)

maxBinTree (Leaf a) = a
maxBinTree (Node left right) = max (maxBinTree left) (maxBinTree right)

minBinTree (Leaf a) = a
minBinTree (Node left right) = min (minBinTree left) (minBinTree right)

preBinTree (Leaf a) = [a]
preBinTree (Node left right) = (preBinTree left) ++ (preBinTree right)

data ATree a = ANode a [ATree a]


t1 = Node
    (Node
        (Leaf 2)
        (Leaf 3)
    )
    (Node
        (Leaf 9)
        (Node
            (Leaf 8)
            (Node
                (Leaf 7)
                (Leaf 11)
            )
        )
    )