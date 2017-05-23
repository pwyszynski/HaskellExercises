-- REKURENCYJNIE
silnia 0 = 1
silnia n = n * (silnia (n-1))

fib 0 = 0
fib 1 = 1
fib n = (fib (n-1)) + (fib(n-2))

-- AKUMULATOR
silaku n m aku = 
    if n==m then aku
    else silak n (+ m 1) (* m aku)