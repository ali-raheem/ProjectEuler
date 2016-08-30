fib :: Int -> Int
fib 1 = 1
fib 2 = 2
fib n = fib (n-1) + fib (n-2)        

main = print $ sum [n| n <- takeWhile (<=4000000) (map fib [1..]), n `mod` 2 == 0]
