-- Doesn't work yet

factors x = [n | n <- [1..(x-1)], mod x n == 0]
abundant = [n| n <- [1..], sum (factors n) > n]

main = do
  print $ take 10 abundant
