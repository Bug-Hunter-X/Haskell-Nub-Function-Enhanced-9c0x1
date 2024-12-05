```haskell
import Data.List (nub)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = nub xs
  print ys
```
This code snippet uses `nub` from `Data.List` to remove duplicates. However, if the list contains elements that are not instances of `Ord` (like custom data types without defined comparison operators), it will result in a compile-time error.  The `nub` function requires the elements to be comparable using `Ord`.