import System.Directory
import System.Environment

usage :: IO()
usage = putStrLn "No such to use \ncopyFile: origin copy (2 args)"

main :: IO()
main = do
       args <- getArgs
       if length args /= 2
           then usage
	   else copyFile (head args) (last args)
