import Data.Char

isPalindrome :: String -> Bool
isPalindrome word = word == reverse word

-- :t reverse
-- reverse :: [a] -> [a]

nonemptyPal :: String -> Maybe Bool
nonemptyPal word =
  case word of
    "" -> Nothing
    _ -> Just (isPalindrome word)

verbose :: String -> String
verbose word =
  case nonemptyPal word of
    Nothing -> "Please enter something."
    Just True -> "Yay! A palindrome."
    Just False -> "Oops! Not a palindrome."

-- toLower :: Char -> Char
-- toLower char =
--   case char of
--     'A' -> 'a'
--     'B' -> 'b'
--     'C' -> 'c'
--     ...

-- Hoogle:
-- toLower :: Char -> Char
-- set: included-with-ghc

-- toLower each char with a map function
-- Input a string, output a string
allLowerCase :: String -> String
allLowerCase = myMap toLower

-- allLowerCase word = myMap toLower word

-- Apply callback function to the first element of the list
-- Map over the rest list and cons the two results together
-- myMap :: (a -> a) -> [a] -> [a]: a callback a list returns a list as args, or
myMap :: (a -> a) -> ([a] -> [a]) -- a callback as arg, returns a function
myMap func list =
  case list of
    [] -> []
    (first : rest) ->
      func first : myMap func rest

myHead :: [a] -> a
-- Descontructing lists with parens and colons
myHead xs =
  case xs of
    [] -> undefined
    (first : rest) -> first

myTail :: [a] -> [a]
myTail xs =
  case xs of
    [] -> []
    (first : rest) -> rest

isPalindromeIgnoringCase :: String -> Bool
isPalindromeIgnoringCase word =
  isPalindrome (allLowerCase word)

main :: IO ()
main = do
  word <- getLine
  print (verbose word)
