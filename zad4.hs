-- ZAD 4
even2 :: Int -> Bool
even2 0 = True
even2 n = odd2 (n - 1)

odd2 :: Int -> Bool
odd2 0 = False
odd2 n = even2 (n - 1)