# Sums

- *Σn*: Sum of the first `n` natural numbers, `Σ{i=0..n} i = n(n+1)/2`
- *Σn²*:  Sum of squares, `Σ{i=0..n} i² = n(n+1)(2n-1)/6`
- *Σn³*:  Sum of cubes, `Σ{i=0..n} i³ = n²(n+1)²/4` i.e. `(n(n+1)/2)²`

```js
// sum of numbers
     n(n + 1)
Σn = --------
        2

// sum of squares
      n(n + 1)(2n - 1)
Σn² = ----------------
            6

// sum of cubes
      n²(n + 1)²   ⎛ n(n + 1) ⎞²
Σn³ = ---------- = ⎜ -------- ⎟
         4         ⎝     2    ⎠

// sum of 4th powers
      n(n+1)(2n+1)(3n²+3n+1)
Σn⁴ = ----------------------
              30

// sum of 5th powers
      n²(n+1)²(2n²+2n+1)
Σn⁵ = ------------------
            12

// sum of 6th powers
      n(n+1)(2n+1)(3n⁴+6n³-3n+1)
Σn⁶ = --------------------------
                42
```

https://www.mathisfunforum.com/viewtopic.php?id=25783
