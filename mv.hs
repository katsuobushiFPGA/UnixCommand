import System.Directory
import System.Environment(getArgs)
import Control.Monad

usage :: IO()
usage = putStrLn "No"
main :: IO()
main = do
       args <- getArgs
       if length args /= 2
       	  then usage
           else if head args == last args 
	   	then  putStrLn "Done."
	   	else do
	       	     copyFile (head args) (last args) --tmp
	             removeFile $ head args
