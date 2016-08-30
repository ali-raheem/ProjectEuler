qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort smallList ++ [x] ++ qsort bigList
           where smallList = filter (x<=) xs
                 bigList = filter (x>) xs
