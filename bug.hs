```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys -- Output: [1,2,3,4,5]
  let zs = reverse ys
  print zs -- Output: [5,4,3,2,1]
  let ws = sort zs
  print ws -- Output: [1,2,3,4,5]

  let numbers = [1..100000]
  let sorted_numbers = sort numbers
  print (length sorted_numbers) -- Output: 100000

  let reversed_sorted_numbers = reverse sorted_numbers
  print (length reversed_sorted_numbers) -- Output: 100000
  let sorted_reversed_numbers = sort reversed_sorted_numbers
  print (length sorted_reversed_numbers) -- Output: 100000

  let large_list = [1..10000000]
  let sorted_large_list = sort large_list
  print (length sorted_large_list) --Stack Overflow Error
```