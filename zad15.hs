type DivideConquer a b = (a -> Bool) -> (a -> b) -> (a -> [a]) -> (a -> [b] -> b) -> a -> b
dc :: DivideConquer a b
dc test koniec podziel polacz = rec_dc
    where
        rec_dc x = if test x then koniec x
                   else polacz x (map rec_dc (podziel x))

sortMerge :: Ord a => [a] -> [a] -> [a]
sortMerge [] ylist = ylist
sortMerge xlist [] = xlist
sortMerge xlist@(x:xs) ylist@(y:ys)
    | x <= y = x : sortMerge xs ylist
    | x > y = y : sortMerge xlist ys

mergeSort :: Ord a => [a] -> [a]
mergeSort = dc test koniec podziel polacz
    where 
        test :: [a] -> Bool
        test = null xs || null (tail xs)

        koniec :: [a] -> [a]
        koniec = id

        podziel :: [a] -> [[a]]
        podziel = splitAt (length list `div` 2)

        polacz :: [a] -> [[b]] -> [b]
        polacz _ (xs1:xs2:_) = sortMerge xs1 xs2