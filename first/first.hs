import System.IO

main = do
  handle <- openFile "source" ReadMode
  contents <- hGetContents handle
  putStr show (foldl (+) 0 contents)
  hClose handle
