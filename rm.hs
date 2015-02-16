import System.Directory
import System.Environment(getArgs)
import Control.Monad

main :: IO()
main = do
       args <- getArgs
       forM_  args removeFile
