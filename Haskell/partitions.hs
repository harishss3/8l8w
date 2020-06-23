party' :: Int -> [[Int]]
party' 0 = [[]]
party' 1 = [[1]]
party' n = mrg [ app (n-num) num | num <- [1..(n)] ]

party :: Int -> [[Int]]
party n = [ li | li <- party' n, is_asc li ]

app :: Int -> Int -> [[Int]]
app n x = [ x:li | li <- party' n ]

mrg (x:[]) = x
mrg (x:xs) = x ++ mrg xs

is_asc :: [Int] -> Bool
is_asc [] = True
is_asc (x:[]) = True
is_asc (x:xs) = if x > head xs
              then False
              else is_asc xs

num_party n = length (party n)