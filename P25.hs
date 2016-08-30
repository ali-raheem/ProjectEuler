--fib :: Int a -> Integer a
fib 1 = 1
fib 2 = 1
fib n = fib (n-1) + fib (n-2)

main = print ( take 1 [n|n <- [1..], length (show (fib n)) == 1000])
