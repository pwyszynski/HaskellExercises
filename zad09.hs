-- a)
append2 [] m = m
append2 (h:t) m = h: append2 t m

-- b)
member x [] = False
member x l = if ((head l) == x) then True else member x (tail l)

-- c)
reverse2 [] = []
reverse2 (x:xs) = (reverse2 xs) `append2` [x]

-- d)
last2 [l] = l
last2 (x:xs) = last2 xs

-- e)
delete2 _ [] = []
delete2 x (y:ys) | x == y = delete2 x ys
                 | otherwise = y : delete2 x ys

-- e) - wersja z usuwaniem tylko pierwszego wystąpienia elementu
delete3 _ [] = []
delete3 x (y:ys) | x == y = ys
                 | otherwise = y : delete3 x ys

-- f)
split1 x l = splitIntoTwo x l [] []
splitIntoTwo x [] l1 l2 = [reverse2 l1, reverse2 l2]
splitIntoTwo x (h:t) l1 l2 | x < h = splitIntoTwo x t (h:l1) l2
                           | otherwise = splitIntoTwo x t l1 (h:l2)


