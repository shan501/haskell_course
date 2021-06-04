fac :: Int ->Int
fac 0 = 1
fac n = n * fac(n-1)

products :: [Int] -> Int 
products [] = 1
products (x:xs)= x * products xs

lengths :: [a]->Int
lengths [] = 0
lengths (_:xs) = 1 + length xs

reverses :: [a] -> [a]
reverses [] = []
reverses (x:xs) = reverses xs ++ [x]

zips :: [a]->[b]->[(a,b)]
zips _ [] = []
zips [] _ = [] 
zips (x:xs)(y:ys)= (x,y) : zips xs ys

drops :: Int -> [a] -> [a]
drops 0 xs = xs 
drops _ [] = []
drops n (_:xs)=drop (n-1) xs

appends :: [a] -> [a] -> [a]
appends [] ys = ys 
appends (x:xs) ys = x : appends xs ys

qsorts :: Ord a => [a] -> [a]
qsorts [] = []
qsorts (x:xs) = qsorts small ++ [x] ++ qsorts big 
                where
                   small=[a | a <- xs , a <= x]
                   big = [a | a <- xs , a > x]
