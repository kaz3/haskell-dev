module Util.Sort (quicksort) where
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
 let smallerOrEqual = [a | a <- xs, a <= x]
     larger = [a | a <- xs, a > x]
 in quicksort smallerOrEqual ++ [x] ++ quicksort larger
