# Harmonic sequence

https://en.wikipedia.org/wiki/Harmonic_progression_(mathematics)

A **harmonic sequence** is a progression formed by taking the reciprocals of an arithmetic sequence.

Equivalently, a sequence is a harmonic progression when each term is the *harmonic mean of the neighboring terms*.

The **harmonic mean** is a kind of average, one of the Pythagorean means. It is the most appropriate average for ratios and rates such as speeds, and is normally only used for positive arguments. The harmonic mean is the reciprocal of the arithmetic mean of the reciprocals of the numbers, that is, the generalized f-mean with `f(x) = 1/x`.

For example, given the sequence (1, 4, 4)
- the arithmetic mean is (1+4+4)/3 = 9/3 = 3
- the harmonic mean is a reciprocal of the arithmetic mean of reciprocals:

```js
⎛ 1⁻¹ + 4⁻¹ + 4⁻¹ ⎞⁻¹ ⎛ 1 + 1/4 + 1/4 ⎞⁻¹ ⎛  6/4  ⎞⁻¹
⎜ --------------- ⎟ = ⎜ ------------- ⎟ = ⎜ ----- ⎟ = (6/12)⁻¹ = 12/6 = 2
⎝        3        ⎠   ⎝        3      ⎠   ⎝   3   ⎠
```

As a third equivalent characterization, 
it is an *infinite sequence* of the form:

```js
  1       1       1        1         1
----- + ----- + ------ + ------ + ------- + …
  a     a + d   a + 2d   a + 3d   a + 4d
```

where `a ≠ 0` and `−a/d ∉ ℕ`; 

or, a *finite sequence* of the form:

```js
  1       1       1        1         1             1
----- + ----- + ------ + ------ + ------- + … + -------
  a     a + d   a + 2d   a + 3d   a + 4d        a + kd

  where: a ≠ 0 ∧ k ∈ ℕ ∧ −a/d ∉ ℕ ∧ −a/d < k
```

where 
- `a` is not zero, a ≠ 0
- `k` is a natural number, k ∈ ℕ
- `−a/d` is not a natural number or greater than `k`

## Examples

In the following, `n` is a positive integer
- 1, 1/2, 1/3, 1/4, …, `1/n`, … (harmonic sequence)
- 12, 6, 4, 3, 12/5, 2, …, `12/n`, …
- 30, -30, -10, -6, -30/7, …, `30/(3 - 2n)`, …
- 10, 30, -30, -10, -6, …, `30/(5 - 2n)`, …
