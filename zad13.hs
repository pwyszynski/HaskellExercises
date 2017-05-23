foldr2 p z [] = z
foldr2 p z (x:xs) =  (foldr2 p (p (last (x:xs)) z) (init (x:xs)))