gr x = x > 2

filter2 p [] = []
filter2 p (x:xs) = if (p x) then x : filter2 p xs else filter2 p xs 