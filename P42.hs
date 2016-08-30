import Data.List.Split
import Data.Char
    
tri :: Int -> Int
tri 1 = 1
tri n = n + tri (n-1)

isTri :: Int -> Bool
isTri x = x `elem` (map (tri) [1.. (fromIntegral x)])

main = do
  wordsF <- readFile "p042_words.txt"
  let wordsQ = splitOn "," wordsF
  let words = [filter (/= '"') s | s <- wordsQ]
  putStrLn $ show (length [n | n <- words, isTri (sum (map (1 - (ord 'A') +) (map (ord) n))     )])
