import qualified Data.Map as Map
import Data.List.Split
import Data.Maybe
import Data.String
import Data.List
import Data.Char
-- ----------------------------------------------------------------------------------------------------------------
-- 1. Coverting word to numbers
word2int w = sum[w2n num | num <- splitOn ", " w]

-- 2. Coverting numbers to word
int2word n = makeStr (intersperse (", ") (reverse [join ntup | ntup <- zip ([threeDigToW num | num <- splitNum n]) listBigInt ]))

-- 3. map function without recursion
myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f x = [f y | y <- x] 

-- 4. filter function without recursion
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter f x = [y | y <- x, f y]

-- 5. Coverting string to integer
string2int :: [Char] -> Integer
string2int x = makeNum (findDig x)            
-- ----------------------------------------------------------------------------------------------------------------
-- Defining maps, lists and functions needed
swap (a,b) = (b,a)

makeStr :: [[Char]] -> [Char]
makeStr [] = ""
makeStr w = head w ++ makeStr (tail w) 

join :: ([Char],[Char]) -> [Char]
join (a,b) = a ++ " " ++ b

transMap :: (Ord k, Ord a) => Map.Map k a -> Map.Map a k
transMap = Map.fromList . map swap . Map.toList

map1 = Map.fromList [("hundred",100),("one",1),("two",2),("three",3),("four",4),("five",5),("six",6),("seven",7),("eight",8),("nine",9),("eleven",11),("twelve",12),("thirteen",13),("fourteen",14),("fifteen",15),("sixteen",16),("seventeen",17),("eighteen",18),("nineteen",19),("twenty",20),("thirty",30),("forty",40),("fifty",50),("sixty",60),("seventy",70),("eighty",80),("ninety",90),("thousand",1000),("million",1000000),("billion",1000000000),("trillion",1000000000000),("Quadrillion",1000000000000000),("Quintillion",1000000000000000000)]

mapInv = transMap map1

listBigInt = ["","thousand","million","billion","trillion","Quadrillion","Quintillion"]
-- --------------------------------------------------------------------------------------------------------------
-- Building the second function
convToInt w = fromJust (Map.lookup w map1)

convToInt' w = if ('h' `elem` w)&&('u' `elem` w)&&('n' `elem` w)
               then product[convToInt num| num <- words w]
               else sum[convToInt num| num <- words w]

conv3dig w = sum[convToInt' num| num <- splitOn " and " w]

w2n :: [Char] -> Integer
w2n w = if (last (words w)) `elem` listBigInt
        then product[conv3dig num| num <- [unwords (init (words w)),last (words w)]]
        else conv3dig w
-- ---------------------------------------------------------------------------------------------------------------
-- Building the first function
splitNum :: Integer -> [Integer]
splitNum x 
       | x <1000 = [x]
       | otherwise = (x `mod` 1000):splitNum ((x - (x `mod` 1000)) `div` 1000)

intToW n = fromJust (Map.lookup n mapInv)

twoDigToW n 
          | n>19 = intToW (n - (n `mod` 10)) ++ " " ++ intToW (n `mod` 10)
          | otherwise = intToW n

threeDigToW n
          | n>99 = intToW (n `div` 100) ++ " hundred and " ++ twoDigToW (n `mod` 100)
          | otherwise = twoDigToW n
-- ---------------------------------------------------------------------------------------------------------------
isInt :: Char -> Bool
isInt n = if (ord n < 58) && (ord n > 46)
          then True
          else False

findDig  :: [Char] -> [Integer]
findDig x = reverse [fromIntegral((ord dig) - (ord '0')) | dig <- x, isInt dig]

makeNum :: [Integer] -> Integer
makeNum [] = -1
makeNum (x:[]) = x
makeNum (x:xs) = x + 10 * (makeNum xs)

