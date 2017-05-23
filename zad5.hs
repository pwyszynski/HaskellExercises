gcd2 x 0 = x
gcd2 x y = gcd2 y (x `rem` y)

lcm2 :: Int -> Int -> Int
lcm2 x y = (x*y) `div` (gcd2 x y)