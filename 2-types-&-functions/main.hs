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