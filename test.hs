import Data.List

getAverageOfTopHalf :: Int -> [Int] -> Int
getAverageOfTopHalf listLength list =
    let sortedList = sortList list
        topHalf = chopList listLength sorted
        averageOfTopHalf = averageList topHalf
    in averageOfTopHalf

-- Sort list
sortList :: [Int] -> [Int]
sortList list =
    let sortedList = sort list
    in sortedList

-- Get top half by listLength / 2

-- Get average by sum or sum+1 and divide by 2 