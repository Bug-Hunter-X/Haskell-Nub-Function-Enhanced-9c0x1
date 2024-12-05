```haskell
import Data.List (nub)
import Data.List (delete)

-- Custom nub function for lists of elements that may not be instances of Ord
nub' :: (Eq a) => [a] -> [a]
nub' [] = []
nub' (x:xs) = x : nub' (filter (/= x) xs)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = nub xs  -- This works fine
  print ys

  -- Example with a custom data type that is not an instance of Ord
data MyData = MyData Int deriving (Show, Eq) --deriving (Eq) only

  let myData = [MyData 1, MyData 2, MyData 1, MyData 3]
  let myDataNub = nub' myData -- Using our custom nub' function
  print myDataNub 

  --Alternative solution with delete function to remove duplicates
  let myDataNub2 = foldl (
ewList element -> if elem element newList then newList else newList ++ [element]) [] myData
  print myDataNub2
```