import System.Directory
import System.Environment(getArgs)

usage = putStrLn "Bad use.\ncmd:mkdir dirName"
main :: IO()
main = do
       args <- getArgs
       if length args /= 1 
          then usage
          else createDirectory $ head args 
