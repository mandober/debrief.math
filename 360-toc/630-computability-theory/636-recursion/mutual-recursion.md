# Mutual recursion

Recursion need not consist of a single function that calls itself, but may instead involve several functions that call each other in an alternating pattern. Recursion that involves more than one function is called *mutual recursion*.

```hs
even' :: Int -> Bool
even' 0 = True
even' 1 = False
even' n = odd' (n - 1)

odd' :: Int -> Bool
odd' 0 = False
odd' 1 = True
odd' n = even' (n - 1)
```
