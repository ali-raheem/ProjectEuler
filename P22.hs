import Data.List
import Data.Char
import Data.List.Split
import Data.Ord

getNamesFiles = readFile "p022_names.txt"
namesSplitComma = splitOn ","
namesToAlpha = map (filter isAlpha)
nameToOrd = map ord
scoreName  = sum .( map negate ).(map (64-)) . map ord 
scoreNameList = map scoreName 
procNamesRaw = sort . namesToAlpha. namesSplitComma                                      


main = do
  namesRaw <- getNamesFiles
  let scores = (scoreNameList .procNamesRaw) namesRaw
  let nameList = zip scores [1..]
  let scoreSum = sum [n*p | (n, p) <- nameList]
  print scoreSum
