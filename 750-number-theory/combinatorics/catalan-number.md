# Catalan number

https://en.wikipedia.org/wiki/Catalan_number

In combinatorics, **the Catalan numbers**, named after the French-Belgian mathematician Eugène Charles Catalan (1814-1894), are a sequence of natural numbers that occur in various counting problems, often involving recursively defined objects.

The `n`th Catalan number can be expressed directly in terms of binomial coefficients by

```js
       1    ⎛ 2n ⎞       (2n)!                  n + k
Cₙ = ------      ⎜    ⎟ = ------------ = ∏ {k = 2..n} ------    for n >= 0
     n + 1  ⎝  n ⎠    (n + 1)! n!                  k
```

The first Catalan numbers for `n = 0,1,2,3,…` are recorded by the sequence [A000108][1] in the OEIS: `1, 1, 2, 5, 14, 42, 132, 429, 1430, 4862, 16796, …`

[1]: https://oeis.org/A000108
