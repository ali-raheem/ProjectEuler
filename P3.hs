import Data.Numbers.Primes

           
--main = putStrLn $ show $ head [n | n <- [300425737572, 300425737571..], isPrime n, (600851475143 `mod` n) == 0]
main = putStrLn $ show $ head $ reverse (primeFactors 600851475143)
--main = putStrLn $ show $ head [n | n <- [7500, 7499..], isPrime n, (13195 `mod` n) == 0]
