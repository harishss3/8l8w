## Tasks

A. The task was to implement the following simple functions:
   1. word2int :: [Char] -> Integer
      Reads a number in words and converts it to integer. (Standard conventions)
      Example of a number in word : "Four hundred and twenty billion, seventy nine million, two hundred and nine thousand, five hundred and thirty eight" = 420079209538
   2. int2word :: Integer -> [Char]
      Does the exact opposite of word2int.
   3. myMap :: (a -> b) -> [a] -> [b]
      map function without recursion
   4. myFilter :: (a -> Bool) -> [a] -> [a]
      filter function without recursion
   5. string2int :: [Char] -> Integer
      Converts a number in string to an integer. Returns -1 if no number is found in the string.</br>
   To use the functions, please load the tasks_module.hs file.
   
  B. parNum.hs module has a function which can be used to find out n-parsitic number given the value of n and the last digit. e.g. parNum n x d will return an n-parasitic number with last digit d and minimum of x digits long. Note that numbers with                            leading zeroes haven't been considered and program can run on infinite loop if such a number is searched for.
Parasitic numbers : https://en.wikipedia.org/wiki/Parasitic_number</br></br>
C. Resources for Haskell</br>
The book/website "Learn you a haskell for great good" will help you get started : http://learnyouahaskell.com/chapters
