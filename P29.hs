import Data.List

expo'' x = map (x**) [2..100]
expo' = map expo'' [2..100]
expo = foldr (++) [] expo'

main = do
  print $ length $ nub expo
