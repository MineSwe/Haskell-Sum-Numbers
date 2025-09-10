import Data.List
import qualified Data.Ord

main :: IO()
main = do
    listLength <- readLn :: IO Int
    listInput <- getLine
    let list = map read (words listInput) :: [Int]
        sumOfTopHalf = getSumOfTopHalf listLength list
    print sumOfTopHalf

getSumOfTopHalf :: Int -> [Int] -> Int
getSumOfTopHalf listLength list =
    let sortedList = sortList list
        lengthOfTopHalf = getHalfLengthOfListLength listLength
        topHalfList = chopList lengthOfTopHalf sortedList
        sumOfTopHalf = sum topHalfList
    in sumOfTopHalf

-- Sort list
sortList :: [Int] -> [Int]
sortList list =    -- VSCode complains when using "reverse (sort list)" and autocompletes to this
    let sortedList = sortBy (Data.Ord.comparing Data.Ord.Down) list
    in sortedList

-- Get length of half a list by length/2 or if odd (length+1)/2
getHalfLengthOfListLength :: Int -> Int
getHalfLengthOfListLength listLength =
    let halfLength = (if odd listLength then (listLength+1) `div` 2 else listLength `div` 2)
    in halfLength

-- Get top half by listLength / 2
chopList :: Int -> [Int] -> [Int]
chopList length list =
    let choppedList = take length list
    in choppedList