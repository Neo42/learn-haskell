-- 10 == 10.0
-- 10 == 10 / 1

-- defined a typeclass of numbers and orderables
idk :: (Num a, Ord a) => a -> a
idk x =
  if x < 10 -- takes a number and orderable
    then negate x -- takes a number
    else x + 10 -- takes a number

preferJ :: String -> String -> String
preferJ x y = if 'j' `elem` x then x else y

-- preferJ "arvis" "hao" ==> "hao"