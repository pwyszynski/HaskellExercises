-- a) length
foldr2 p z [] = z
foldr2 p z (x:xs) =  (foldr2 p (p (last (x:xs)) z) (init (x:xs)))

incr y x = x + 1

length2 = foldr2 incr 0

-- b) and
and2 = foldr2 (&&) True

-- c) prod
prod2 = foldr2 (*) 1

-- d) nwd
gcd2 x 0 = x
gcd2 x y = gcd2 y (x `rem` y)

nwd2 = foldr2 gcd2 0

-- i) forall pred l
forall pred l = foldr2 (pred) l