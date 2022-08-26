-- pattern matching
-- a bit like switch case in other languages

greet :: String -> String -> String -- accept 2 arguments, return 1 value
greet "Finland" name = "Hei, " ++ name
greet "Italy"   name = "Ciao, " ++ name
greet "England" name = "How do you do, " ++ name
greet _         name = "Hello, " ++ name

-- [_] matching all string

describe :: Integer -> String
describe 0 = "Zero"
describe 1 = "One"
describe 2 = "Two"
describe n  ="the number " ++ show n

login :: String -> String -> String
login "admin" "admin" = "admin logged in"
login "admin" _       = "wrong password"
login _       _       = "unknow user"