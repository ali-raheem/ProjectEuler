import Data.Ord
import Data.List

trisWithPer x = [(a, b, c)| c <- [1..(x-2)], b <- [1..c], a <- [1..b], a+b+c == x, a^2 + b^2 == c^2]
tris = map trisWithPer [1..]
    
main = putStrLn $ show $ maximumBy (comparing fst) $ zip (map length (take 500 tris)) [1..]
