import System.Environment(getArgs)
import System.Directory

usage :: IO()
usage = putStrLn "Usage: cat fileName"

main :: IO()
main = do 
       args <- getArgs
       if length args /= 1
          then usage
          else do
               let filename = head args
               str <- readFile $ filename
               putStrLn str
