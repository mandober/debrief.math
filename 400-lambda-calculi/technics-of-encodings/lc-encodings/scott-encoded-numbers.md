# Scott Encoded Numbers

`Encoding Data in Lambda Calculus: An Introduction - Frank(Peng) Fu, 2017`

Scott encoded numbers, or more generally, *Scott encoding*, is attributed to Dana Scott (who himself did not remember this encoding according to folklore).

**Scott numerals**

```
zero,                   Z := λz. λs. z
successor,              S := λn. λz. λs. s n
pattern matching,   caseN := λn. λu. λf. n u f
```

The normal form of natural numbers in Scott encoding:

```
s0 := λz.λs.z
s1 := λz.λs.s s0
s2 := λz.λs.s s1
s3 := λz.λs.s s2
```

With the pattern matching, we can define `pred` for natural number:

```hs
pred = \ n -> caseN n Z (\n0 -> n0)
```

A typical recursive definition of addition:

```hs
add n m = case n of
  Z      -> m
  (S n') -> S (add n' m)

-- To obtain the Scott encoded addition, observe the following:
add = \ n -> \ m ->
          caseN n
                m
                (\ n' -> S (add n' m))

G = \ r -> \ n -> \ m ->
                    caseN n
                          m
                          (\ n' -> S (r n' m))

add = G add

add' = fix G
```
