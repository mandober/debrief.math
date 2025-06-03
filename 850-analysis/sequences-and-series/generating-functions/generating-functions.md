# Generating functions

The power series
```js
⎲∞
⎳ cₖxᵏ = c₀x⁰ + c₁x¹ + c₂x² + c₃x³ + …
ᵏ⁼⁰
```
has the coefficients: c₀, c₁, c₂, c₃, …

The power series where all coefficients are 1
```js
⎲∞
⎳ xᵏ = x⁰ + x¹ + x² + x³ + … = 1 + x + x² + x³ + …
ᵏ⁼⁰
```
has the coefficients: 1, 1, 1, 1, …

Labelling this power series as `S`, we can multiply it by `x` to get the power series `xS`, and then we can subtract it from `S`.

```js
 S = 1 + x  + x² + x³ + x⁴ + …
xS = x + x² + x³ + x⁴ + x⁵ + …

   S = 1 + x + x² + x³ + x⁴ + x⁵ + …
- xS =     x + x² + x³ + x⁴ + x⁵ + …
     = 1 + 0 + 0 + …
```

We align the series `S` and `xS` to subtract them easily and see that all the terms cancel out except the first term of `S`, a₀ = 1. So `S - x⋅S = 1`, which amounts to `S = 1/(1-x)`. The difference between the `S` series and the `S` series multiplied by `x` is 1.

```js
S - x⋅S = 1
S(1 - x) = 1

      1
S = ------
    1 - x

      1
S = ------ = 1 + x + x² + x³ + x⁴ + x⁵ + …    for |x| < 1
    1 - x
```

There is a correspondence between this power series and the closed formula we obtained, `1/(1-x)`, in that the sequence `S` can be encoded using this formula and then expanded into an infinite polynomial `1 + x + x² + x³ + x⁴ + x⁵ + …` provided `|x| < 1`.

Let's check this claim by setting `x=1/2`

```js
  1
----- = 1 + x + x² + x³ + x⁴ + x⁵ + …    for |x| < 1
1 - x

   1           1    ⎛ 1 ⎞²   ⎛ 1 ⎞³   ⎛ 1 ⎞⁴   ⎛ 1 ⎞⁵
------- = 1 + --- + ⎜---⎟  + ⎜---⎟  + ⎜---⎟  + ⎜---⎟ + …
1 - 1/2        2    ⎝ 2 ⎠    ⎝ 2 ⎠    ⎝ 2 ⎠    ⎝ 2 ⎠ 

 1         1     1     1     1     1
--- = 1 + --- + --- + --- + --- + --- + …
1/2        2     2²    2³    2⁴    2⁵

         1     1     1      1      1
2 = 1 + --- + --- + --- + ---- + ---- + …
         2     4     8     16     32

2 = 2

// because

 1     1     3
--- + --- = ----
 2     4     4

 1     1     1     7
--- + --- + --- = ----
 2     4     8     8

 1     1     1     1     15
--- + --- + --- + --- = ----
 2     4     8    16     16

// and so

 1     1     1     1     1          n-1
--- + --- + --- + --- + ---- + ⋯ = ----
 2     4     8    16     32          n

⎲ⁿ  1          1     1     1
⎳ ----- = 1 + --- + --- + --- + ⋯
ᵏ⁼⁰  2ᵏ          2     4     8


    2ᵏ - 1     ∞
lim ------ = ----- = 1
k→∞   2ᵏ       ∞

2¹⁰ - 1      1023
--------- = ------ ≈ 1
  2¹⁰        1024

2¹⁰⁰ - 1
--------- ≈ 1
  2¹⁰⁰


        2ᵏ - 1        ∞
lim 1 + ------ = 1 + --- = 2
k→∞       2ᵏ          ∞
```

The closed formula `1/(1-x)` can encode the sequence of one's but only under the condition `|x| < 1`, although we won't be pluging in numbers for `x` anyway as we just want to encode sequences - in this case the trivial sequence of one's, but we'll see more complicated formulas that encode more complex sequences.

## Rationale

The rationale with the generating functions is to find a way to compress a long, infnite even, sequence of numbers and have it encoded as a function so can carry it around easily.

>Having a sequence packed as a function that can be expanded whenever needed back into the actual sequence seems like a useful gimmick.

The polynomial we get when expanding the function just needs to have the right coefficients - we won't be plugging in arguments for `x` into the function, the power series or anywhere else since we only want the sequence that corresponds to the coefficients of the power series. This is just to say that even some functions may have conditions attached (like `|x| < 1`), we don't have to sweat about that.

So, it about being compact and succinct, plus a function can represent the entire infinite sequences, so we can avoid the ellipses and doubt re how the next term is created. 

The terms of the expanded power series - each consisting of a coefficient and the variable (usually `x`) - are indexed by the power the variable is raised to, e.g. `ax³` means `a` is a coefficient with index 3. This also suggests that coefficients that are 0 won't be present at all in the expanded power series, but we still need these 0 terms to appear in the sequences in correct positions, so we need to account for them.
