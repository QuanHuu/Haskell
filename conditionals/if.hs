-- you can write if else in haskell as below


permision :: Int -> String
permision x = if x >= 18 then "You can go into" else "You dont go into"
-- In haskell, you always need else

permision_ :: Float -> String
permision_ x = if x > 8.0
            then "very good"
            else if x > 7.0
            then "good"
            else if x > 6.0
            then "need to learn more hard"
            else "You cannot go to the next class"
-- you also can nested if else 


-- function return bools
greater :: Bool
greater = 4 > 5 -- Should return False

lower :: Bool
lower = 0 > -1 -- Should return True

greaterOrEq :: Bool
greaterOrEq = 5 >= 5.0 -- Should return True

lowerOrEq :: Bool
lowerOrEq = 4 <= 3.5 -- Should return False

notEq :: Bool
notEq = 4 /= 5 -- Should return True

-- Example
login :: String -> String -> String
login user password = if user == "unicorn73"
                      then if password == "123456"
                            then "unicorn73 logged in"
                            else "wrong password"
                       else "unknow user"


-- Local definitions, define variable or function in a definition of another ones
circle :: Double -> Double
circle x = pi * rsquare
    where pi = 3.1415926 -- define variable
          rsquare = x * x -- define varible

circle2 :: Double -> Double
circle2 x = let pi = 3.1415926 -- variable
                rsquare x = x * x -- function
            in pi * rsquare x
