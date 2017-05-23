insertionSort :: (Ord a) => [a] -> [a]
insertionSort xs = insertionSort'' xs []
    where