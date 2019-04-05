module Main where

-- mport Lib
-- import Database.HDBC
-- import Database.HDBC.PostgreSQL
-- import Euterpea.Music.Note.Music
-- 
-- main :: IO ()
-- main = do
--   conn <- connectPostgreSQL "host='54.250.123.50' dbname='mother' password='P0s@uneR3278' user='prd_user'"
--   tables <- getTables conn
--   disconnect conn
--   --forM_ tables $ \s -> do
--   --  forM_ s print
--   print $ show tables
--

main = do
  putStrLn "Hello, what's your name?: "
  name <- getLine

  putStrLn "Please input your weight: "
  weightInput <- getLine
  let weight = read weightInput :: Double

  putStrLn "Please input your height: "
  heightInput <- getLine
  let height = read heightInput :: Double

  putStrLn "Please input your age: "
  ageInput <- getLine
  let age = read ageInput :: Int

  putStrLn "Please input 1 if you are man, otherwise input 2: "
  sexInput <- getLine

  if sexInput == "1" then
    putStr . show $ calForMale weight height age
  else
    putStr . show $ calForFemale weight height age
  putStrLn " cal"

calForMale :: Double -> Double -> Int -> Double
calForMale   w h a = 66.5 + w * 13.75 + h * 5.003 - (fromIntegral a) * 6.775
calForFemale :: Double -> Double -> Int -> Double
calForFemale w h a = 655.2 + w * 9.563 + h * 1.85 - (fromIntegral a) * 4.676
