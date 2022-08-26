module Gold where

-- The gold ratio

phi :: Double -- declare a variable
phi = (sqrt 5 + 1) / 2 -- definition


poly :: Double -> Double -- declare a function, accept a double argument and return a double
poly x = x^2 - x - 1


f x = poly (poly x) -- auto deduce the function signature

main = do -- function main, 
    print (poly phi)
    print (f phi)