pyths :: Int -> [(Int,Int,Int)]
pyths x = [(z,y,x)|y<-[1..x],z<-[1..y],y^2 + z^2 == x^2]

perfect :: Int -> Bool
perfect n = sum ( init (factor n) ) == n 
factor x = [i |i <-[1..x],x `mod` i == 0 ]
perfects x =[x | x <- [1..x], perfect x ]

sp:: [Int] -> [Int] -> Int
-- sp xs ys = sum [xs !! i * ys !! i,i<-[0..n-1] ]
--where n = length xs
sp xs ys = sum [x*y | (x,y) <-zip xs ys ]
