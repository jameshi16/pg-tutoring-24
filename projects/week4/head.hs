head' :: [a] -> a
head' [] = error "No head for empty list!"
head' (x:_) = x

head'' :: [a] -> a
head'' xs = case xs of [] -> error "No head for empty list!"
                       (x:_) -> x

head' :: [a] -> a
head' xs
  | length xs == 0 = error "bruh" -- arms
  | otherwise = let x:_ = xs in x
