qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort smallerSort ++ [x] ++ qsort biggerSort
               where smallerSort = filter (x>) xs
                     biggerSort = filter (x<=) xs
        
