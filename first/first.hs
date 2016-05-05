import System.IO

main = do
  handle <- openFile "source" ReadMode
  contents <- hGetContents handle
  let result = (foldl (\acc char -> if char=='(' then (acc + 1) else if char==')' then (acc -1) else acc) 0 contents)
  putStrLn (show result)
  hClose handle
