import Data.List

getAverageOfTopHalf :: Int -> [Int] -> Int
getAverageOfTopHalf listLength list =
    let sortedList = sortList list
        topHalfList = chopList (listLength `div` 2) sortedList
        averageOfTopHalf = averageList topHalfList
    in averageOfTopHalf

-- Sort list
sortList :: [Int] -> [Int]
sortList list =
    let sortedList = sort list
    in sortedList

-- Get top half by listLength / 2
chopList :: Int -> [Int] -> [Int]
chopList length list = 
    let choppedList = drop length list
    in choppedList

-- Get average by sum or sum+1 and divide by 2 
averageList :: [Int] -> Int
averageList list =
    let sumOfList = sum list
        averageList = (if odd sumOfList then (sumOfList+1) `div` 2 else sumOfList `div` 2)
    in averageList