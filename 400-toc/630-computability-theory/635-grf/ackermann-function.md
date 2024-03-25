# Ackermann function

https://en.wikipedia.org/wiki/Ackermann_function



```hs
op f n m = ?
-- 0 = succ
op 0 n m = n + 1

-- 1 = add
op 1    n     0  = n
-- add Sn  m = S (add n m)
op 1 (S n)    m  = op 0 (op 1 n m) 0
-- add Sn Sm = S (S (add n m))
op 1 (S n) (S m) = op 0 (op 0 (op 1 n m) 0) 0

-- 2 = mul
op 2 0 0 = 0
-- 3 = exp
op 3 0 0 = 0
```
