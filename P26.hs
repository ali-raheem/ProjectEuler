import Data.Numbers.Primes
import Data.List
import Data.Ord

primes' = dropWhile (<11) $ takeWhile (<1000) primes
-- We need only check the primes, we are looking under 1000 and we don't want any factors of 10 (2, 5).
repLen p = head [k | k <- [1..], ((10^k) `mod` p) == 1 ]
-- Solve the discrete logrithim by buteforce
repLenPrimes = map repLen primes'

primes'' = zip repLenPrimes primes'

main = print $ snd $ maximumBy (comparing fst)  primes''
