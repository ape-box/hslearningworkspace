{-# LANGUAGE OverloadedStrings, ScopedTypeVariables  #-}

-- HW
helloWorld :: [Char]
helloWorld = "Hello World!"

-- Comprehensions
x1 :: [Int]
x1 = [x*2 | x <- [1..10]]

x2 :: [Int]
x2 = [x*2 | x <- [1..10], x*2 >= 12]

x3 :: [Int]
x3 = [x | x <- [50..100], x `mod` 7 ==3]

j1 :: [Int]
j1 = [7..13]

boomBangs :: Integral a => [a] -> [String]
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

x4 :: [String]
x4  = boomBangs j1

-- Comprehension of comprehensions
x5 :: [Int]
x5 = [ x*y | x <- [2,5,10], y <- [8,10,11]]

x6 :: [Int]
x6 = [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]

nouns :: [String]
nouns = ["hobo", "frog", "pope"]

adjectives :: [String]
adjectives = ["lazy", "grouchy", "scheming"]

x7 :: [String]
x7 = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

length' :: Num a => [t] -> a
length' xs = sum [ 1 | _ <- xs ]

x7' :: [Int]
x7' = map length x7

main :: IO()
main = print x1
    >> print x2
    >> print x3
    >> print j1
    >> print x4
    >> print x5
    >> print x6
    >> print nouns
    >> print adjectives
    >> print x7
    >> print x7'
    >> print helloWorld

