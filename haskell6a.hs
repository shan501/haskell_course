ands :: [Bool] -> Bool 
ands [] = True
ands (b:bs) = b && ands bs

concads :: [[a]] -> [a]
concads [] =[]
concads (xs:xss)= xs ++ concads xss 

replicates :: Int-> a ->[a]
replicates 0 _ = []
replicates y x = x : replicates (y-1) x

double :: [a]->Int->a
double (x:xs) 0 = x 
double (x:xs) n = double xs (n-1)

insert :: Int ->[Int] ->[Int]

insert n [] = [n]
insert n (x:xs) = if n <= x then n : x : xs else x : insert n xs  

isorts :: [Int] ->[Int]
isorts [] = []
isorts (x:xs)= insert x (isorts xs)

merges :: [Int] ->[Int]->[Int]
merges [] ys = ys 
merges xs [] = xs
merges (x:xs) (y:ys)= if y <= x then y:merges (x:xs) ys else x:merges xs (y:ys)

--msorts :: [Int] ->[Int]
--msorts [] = []
--msorts [a] = [a]
--msorts xs = merges (msorts ns)(msorts ys)
----	where (ns,ys)=halve xs
halfs :: [a]->([a],[a])
halfs xs = splitAt(length xs `div` 2)xs



