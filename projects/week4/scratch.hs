data Node z = Tree z (Node z) (Node z) | None
data Nat = Succ Nat | Zero deriving (Show)

toList :: Node a -> [a]
toList None = []
toList (Tree x l r) = (toList l) ++ x : (toList r)

add :: Nat -> Nat -> Nat
add x Zero = x
add Zero x = x
add (Succ n) y = Succ (add n y)

crazy :: (-> r) -> (-> r)
crazy x = x
