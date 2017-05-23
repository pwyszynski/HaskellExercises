import Data.Maybe

---------------------
-- a) Proszę napisać funkcję pozycja, która znajduje pozycję elementu x w liście l. Należy używać typ Maybe a.
---------------------

pozycja :: (Num t, Eq t1) => [t1] -> t1 -> Maybe t
pozycja l el = pozycjaInner l el 0

pozycjaInner :: (Eq t1, Num t) => [t1] -> t1 -> t -> Maybe t
pozycjaInner (h:t) element answer
    | h == element = Just answer
    | h /= element = pozycjaInner t element (answer+1)

pozycjaInner [] element answer = Nothing

--------------------
-- b) Proszę napisać funkcję drop, która eliminuje pierwsze n elementy z listy l. Należy używać typ Maybe a. 
--------------------

drop2 a (h:t)
    | a == 0 = Just (h:t)
    | a /= 0 = drop2 (a-1) t
drop2 a [] = Nothing

--------------------
-- c) Proszę napisać funkcję sum, która sumuje elementy listy typu [Maybe Int]. 
--------------------

mySum l = mySumInner l 0
mySumInner [] suma = suma
mySumInner (h:t) suma = mySumInner t (suma + (fromMaybe h))