-- Learn recursion
-- Very important in function programming

--factorial
factorial :: Int -> Int
factorial 1 = 1
factorial n = n * factorial (n - 1)
-- pattern matching


-- squareSum
squareSum :: Int -> Int
squareSum 1 = 1
squareSum n = n^2 + squareSum (n-1)

-- fibonacci
fibonacci :: Int -> Int
fibonacci 1 = 1
fibonacci 2 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)