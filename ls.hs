import System.Directory
import Control.Monad

main :: IO()
main = do
       dir <- getCurrentDirectory
       cont <- getDirectoryContents dir
       forM_ cont putStrLn
