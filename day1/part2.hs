import System.IO

main = do
  handle <- openFile "source" ReadMode
  contents <- hGetContents handle
  let result = takeWhile (twfunction) (foldl (\(acc,cnt) char -> if char=='(' then (acc+1,cnt+1) else if char==')' then (acc-1,cnt+1) else (acc,cnt)) (0,0) contents)
  putStrLn (show result)
  hClose handle


twfunction a
 | (fst a)==0 = False
 | otherwise = True
