-- Numbers
-- Integers: -1, 0, 1,...
-- Naturals: 0, 1, 2,...
-- Rationals: -1, 1, 1/3,...

-- Types：Sets
-- Classes：Contains some types and operations

-- Class: Num
-- Types: Integer, Natural, Rational...
-- Operations: Addition, multiplication...

-- Bool: True, False
-- Char: 'a', 'b', '1'
-- Data keyword Type name = False or True
data Bool = False | True

-- 3 < 6 ==> True
-- "hao" == "jiang" ==> False
-- elem 5 [1..5] ==> True

-- Functions: Mappings between sets

-- name :: input type -> output type
spell :: Int -> String
-- name arg = function body
spell int =
  -- pattern matching: switch in js
  case int of
    1 -> "one"
    2 -> "two"
    3 -> "three"
    4 -> "four"
    _ -> "God damn it! I don't know what it is!"

-- spell 6 ==> "God damn it! I don't know what it is!"

-- Partial functions: functions that work for a part of available input values
-- Total functions: functions that work for all available input values

-- Write a function that takes in a name as its arguments
-- and returns an age as the result.

tellAge :: String -> Int
tellAge name =
  case name of
    "hao" -> 25
    "x" -> 52
    "y" -> 54
    _ -> 0

-- 10 == 10.0
-- 10 == 10 / 1

-- Typeclass
-- Specify constraints that should be on arguments when we use this function
-- define a typeclass of Num, which contains Int, Double and so on,
-- and orderables, which allow comparison operation on the value
idk :: (Num a, Ord a) => a -> a
idk x =
  if x < 10 -- takes a number and orderable
    then negate x -- takes a number
    else x + 10 -- takes a number

-- Exercise
preferJ :: String -> String -> String
preferJ x y = if 'j' `elem` x then x else y

-- preferJ "arvis" "hao" ==> "hao"

idk2 :: (Ord a, Num a) => a -> a
idk2 x =
  case x < 10 of
    Prelude.True -> negate x
    Prelude.False -> x + 10

data Maybe a = Nothing | Just a
