fact :: Integral a => a -> a
fact 0 = 1
fact n = n * fact (n - 1)

--fib :: Int a => a -> a
fib 1 = 0
fib 2 = 1
fib n = fib (n-1) + fib (n-2)        

tri 1 = 1
tri n = n + tri (n-1)

digits :: Integer -> [Int]
digits n = map (\x -> read [x] :: Int) (show n)

main =  putStrLn $ show (sum $ digits (fact 100))

