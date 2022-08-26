devide2 :: Int -> Int
devide2 n = div n 2

tripple :: Int -> Int
tripple n = n + n + n

add1 :: Int -> Int
add1 n = n + 1

next :: Int -> Int
next n = if even n
         then devide2 n
         else add1 (tripple n) 


collatz :: Int -> Int
collatz 1 = 0
collatz n = 1 + collatz (next n)

longest :: Int -> String
longest upperBound = print1 (longest' (0, 0, upperBound))

print1 :: (Int,Int,Int) -> String
print1 (a,b,c) = "Longest at " ++ show a ++ " with value " ++ show b

longest' :: (Int,Int,Int) -> (Int,Int,Int)
longest' (number, n, 0) = (number,n,0)

longest' (number,maxlength, n) = if length > maxlength
                              then longest' (n,length, (n-1))
                              else longest' (number, maxlength, (n-1) )
        where length = collatz n

