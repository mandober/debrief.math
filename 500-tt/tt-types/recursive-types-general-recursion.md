# Recursive types :: General recursion

## General recursion

The schema of iteration:
```hs
f    0  = c
f (S n) = g (f n)
```

The schema of primitive recursion:
```hs
f    0  = c
f (S n) = g n (f n)
```
