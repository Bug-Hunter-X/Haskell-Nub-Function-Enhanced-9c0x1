# Haskell Nub Function Error with Non-Ord Types

This repository demonstrates a common error when using the `nub` function from `Data.List` in Haskell.  The `nub` function removes duplicate elements from a list, but it requires the elements to be instances of the `Ord` typeclass (meaning they must be comparable).  If you attempt to use `nub` on a list containing elements that are not instances of `Ord`, you'll encounter a compile-time error.

The `bug.hs` file shows the problematic code, and the `bugSolution.hs` file provides a solution using a custom function that handles non-`Ord` types.  This example highlights the importance of understanding type classes and constraints in Haskell.