# Dependence on the input

```hs
f(x) = y
f(x) = x + 2x - 1
f(x) = 3
f(x) = if x > 4 then x² else x(x - 1) / 2

-- regular function
f : A -> B

-- dependent function
f : a:A -> B(a)
```

Normally, we say that the output of a function depends on its input. This is usually the case, as in e.g. `f(x) = x + 2x - 1`, but not so much in case a function ignores its input, like the constant functions, e.g. `f(x) = 3`.

The piecewise functions are defined by a set of equations and they also depend on the input and then some! They must first scrutinize the input to determine which of their bodies to use. They dispatch to the appropriate body depending on the input; i.e. depending on a predicate that usually involves the input.


And then there are dependent functions whose output depends on the input, but in a deeper sense then before. Such functions can name their inputs, and these named parameters can then be used by the output. So not only they know their domain (the set of all the possible inputs, i.e. the type), but they also know the concrete input value. An example of a dependent functions is a function that takes a natural number `n` and a real number `r`, and then returns a vector of length `n` filled with `r`'s (hmm…); maybe better a function that appends two vectors: it knows that the resulting vector's length must be the sum of the lengths of the two input vectors.

```hs
-- sort of…
f : {n : Nat} -> Real -> Vec n Real
f   {0} r = []
f {S n} r = r : f n r

v1 = f {4} 0.3 -- [0.3, 0.3, 0.3, 0.3]
```
