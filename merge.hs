module Main where
import System.Environment
import System.IO
import Debug.Trace(trace)
import Control.Monad
usage = putStrLn "Bad case."
main :: IO()
main = do
       args <- getArgs
       file1 <- readFile (args !! 0) -- FilePath
       file2 <- readFile (args !! 1) -- FilePath
       let newFile = (args !! 2) --newFile Path
       appendFile  newFile (file1 ++ "\n" ++ file2)
