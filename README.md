# Haskell Stack Overflow with Data.List.sort
This repository demonstrates a stack overflow error that can occur when using `Data.List.sort` from the Haskell `Data.List` library on very large lists.  The error is subtle and doesn't manifest with smaller lists, making it a potentially difficult-to-debug issue.

## The Bug
The `bug.hs` file contains Haskell code that sorts a list.  For smaller lists, the code works as expected. However, when the list size increases significantly (e.g., to 10 million elements), it results in a stack overflow error due to the recursive nature of the sorting algorithm used by `Data.List.sort`. This is because the default sorting algorithm used in `Data.List.sort` is a mergesort implementation that uses recursion, and large input may cause it to exceed the maximum stack size allowed by your system.

## The Solution
The `bugSolution.hs` file offers a solution using `Data.List.sort` with the `-XBangPatterns` extension. This extension allows for strict evaluation, leading to improved performance. Furthermore, for truly large datasets, alternative sorting methods using more optimized libraries might be necessary. 
