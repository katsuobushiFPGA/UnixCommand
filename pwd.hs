import System.Directory

main :: IO()
main = do
       dir <- getCurrentDirectory
       print dir
