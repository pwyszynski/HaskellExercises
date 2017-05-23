-- ZAD 2
-- 2a
let smaller x y = if x < y then True else False in smaller 4 5
-- 2b
let greater x y = if x < y then False else True in greater 5 4
-- 2c
let equal x y = (not (x < y) && not (y<x)) in equal 5 5
-- 2d
let smaller_equal x y = not (y < x) in smaller 5 5
-- 2e
let greater_equal x y = not (x < y) in greater 5 5
-- 2f
let not_equal x y = not (equal x y) in not_equal 5 5