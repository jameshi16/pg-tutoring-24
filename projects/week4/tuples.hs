some_fn :: [(Int, Char, Int)] -> [Char]
some_fn [] = []
some_fn ((_, c, _):xs) = c:some_fn xs
