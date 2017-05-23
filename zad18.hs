{-Proszę obliczyć typ następujących wyrażeń.
a) map square [1,2,3]
b) map square ['a','b','c']
c) \x -> 2 * x
d) \f -> f 3
e) \f x -> f (f x)
f) (\f x -> f (f x)) square
g) \x -> x x
h) f 7 (g 'a')
Można używać map :: (a -> b) -> [a] -> [b] oraz square :: Int -> Int. 
-}

-- a)
map square [1,2,3] :: Num b => [b]

-- b) nie istnieje, bo square nie działa dla char'ów

-- c)
\x -> 2 * x :: Num a => a -> a

-- d)
\f -> f 3 :: Num t => (t -> t1) -> t1

-- e)
\f x -> f (f x) :: (t -> t) -> t -> t

-- f)
(\f x -> f (f x)) square :: Num t => t -> t

-- g) nie istnieje

-- h)
-- Variable not in scope: f :: Integer -> t0 -> t
-- Variable not in scope: g :: Char -> t0