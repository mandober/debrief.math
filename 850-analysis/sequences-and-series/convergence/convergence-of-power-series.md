# Convergence of power series

```js
 n
⎲
⎳ cₙ(x - a)ⁿ
ⁿ⁼⁰
```

A power series converges
- if `x = a`
- it may converge for all values of `x`
- if `|x - a| < R`


*Radius Of Convergence*, `R`:

```js
|x-a| < R
-R < x-a < R
-R+a < x < R+a
```

`(-R+a, R+a)` is the *Interval Of Convergence*.

# Radius of Convergence

Finding the radius of convergence given a power series and the nth term.

Example

```js
// a power series
 n
⎲    1
⎳ ------- xⁿ
ⁿ⁼⁰ 2n - 1

// nth term
       1
aₙ = ------- xⁿ
     2n - 1
```

First, we find the ratio of sequencw by dividing a term with a previous one:

```js
    xⁿᐩ¹
 ----------
 2(n+1) - 1     xⁿᐩ¹(2n - 1)     x(2n - 1)      x(2n - 1)
----------- = --------------- = ------------ = ----------
     xⁿ        xⁿ(2(n+1) - 1)    2n + 2 - 1       2n + 1
  -------
  2n - 1
```

Then we find the limit of that ratio

```js
         │ 2n - 1   │    ∞
lim{n→∞} │ ------ x │ = ---- x = |x|
         │ 2n + 1   │    ∞
```

The series converges if `|x| < 1`. 1 is the radius of convergence, so the interval of convergence is `-1 < x < 1`.
