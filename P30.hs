digits :: Integral t => t -> [t]
digits 0 = [0]
digits x = [(x `mod` 10)] ++ digits (quot x 10)

expo :: Floating a => a -> a
expo x = x^5

main = do
  print $ map expo (digits 134)
