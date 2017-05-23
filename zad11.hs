map2 f [] [] = []
map2 f l1 [] = l1
map2 f [] l2 = l2
map2 f (x:xs) (y:ys) = (x `f` y) : (map2 f xs ys)