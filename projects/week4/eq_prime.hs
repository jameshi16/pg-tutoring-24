-- structure (will not compile because there's a self-reference in there)
class Eq' a where
  -- these two lines are called "type declarations"
  (==) :: a -> a -> Bool
  (/=) :: a -> a -> Bool

  -- and these two lines are called the function bodies
  x == y = not (x /= y)
  x /= y = not (x == y)
