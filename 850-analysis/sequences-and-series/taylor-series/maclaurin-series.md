# Maclaurin series

**Maclaurin series** is a Taylor series with `a` fixed at 0 (`a` is an input value, `x=a`). By setting `a=0`, the trailing term of Taylor series, `(x-a)ᵏ`, reduces to `xᵏ`. The derivatives in a Taylor series, from 1st to k-th derivative were `f⁽ᵏ⁾(a)`, but with `a=0`, they become `f⁽ᵏ⁾(0)` (the first `k` derivatives evaluated at 0).

```js
/* Taylor series */
        ∞
       ⎲  f⁽ᵏ⁾(a)
T(x) = ⎳ -------- (x-a)ᵏ
       ᵏ⁼⁰    k!

/* Taylor series */
// This is Taylor series of the function f(x) centered around 'a'.
       f⁽⁰⁾(a)   f⁽¹⁾(a)         f⁽²⁾(a)          f⁽³⁾(a)
f(x) = ------- + ------- (x-a) + ------- (x-a)² + ------- (x-a)³ + …
         0!        1!              2!               3!

/* Maclaurin series */
        ∞
       ⎲  f⁽ᵏ⁾(0)
M(x) = ⎳ -------- xᵏ
       ᵏ⁼⁰    k!

// Maclaurin series of the function f(x) centered around a.
       f⁽⁰⁾(a)   f⁽¹⁾(a)     f⁽²⁾(a)      f⁽³⁾(a)      f⁽⁴⁾(a)
f(x) = ------- + ------- x + ------- x² + ------- x³ + ------- x⁴ + …
         0!        1!           2!           3!           4!

/* Maclaurin series */
// Maclaurin series: all derivatives are evaluted at x=a=0
       f⁽⁰⁾(0)   f⁽¹⁾(0)     f⁽²⁾(0)      f⁽³⁾(0)      f⁽⁴⁾(0)
f(x) = ------- + ------- x + ------- x² + ------- x³ + ------- x⁴ + …
         0!        1!           2!           3!           4!
```

A Maclaurin series is just a special case of a Taylor series, nevertheless the change of name was warrented by extensive research done by Maclaurin for this special case when `a=0`. Many functions are indeed centered around 0, so Maclaurin series has a lot of practical uses.

Taylor series is a more general form which the Maclaurin series specializes by fixing `a` at zero.


## Some functions as Maclaurin series

## Example 1: `eˣ`

`f(x) = eˣ` expressed as Maclaurin power series

```js
// Maclaurin series
                        f′′(a)       f′′′(a)
f(x) = f(a) + f′(a) x + ------- x² + ------- x³ + …
                          2!           3!

// Maclaurin series, a=0
              f′(0)     f′′(0)      f⁽³⁾(0)       f⁽⁴⁾(0)
f(x) = f(0) + ----- x + ------ x² + ------- x³ + ------- x³ + …
                1!        2!           3!           4!

// All derivatives of eˣ are eˣ
f⁽⁰⁾(x) = eˣ
f⁽¹⁾(x) = eˣ
f⁽²⁾(x) = eˣ
f⁽³⁾(x) = eˣ

// Evaluating these derivatives at x=a=0 we get
f⁽⁰⁾(0) = e⁰ = 1
f⁽¹⁾(0) = e⁰ = 1
f⁽²⁾(0) = e⁰ = 1
f⁽³⁾(0) = e⁰ = 1

// Plugging this back into the main form of Maclaurin series
                        f′′(0)       f′′′(0)
f(0) = f(0) + f′(0) x + ------- x² + ------- x³ + …
                          2            3!
// we get
                  1        1
f(0) = 1 + 1 x + --- x² + --- x³ + …
                  2        6
// which further simplifies to
                x²     x³
f(0) = 1 + x + ---- + ---- + …
                2      6

// but the general pattern is
        x⁰     x¹     x²     x³     x⁴     x⁵
f(x) = ---- + ---- + ---- + ---- + ---- + ---- + …
        0!     1!     2!     3!     4!     5!

// expressed in sigma notation as
      ∞
     ⎲  xⁿ
eˣ = ⎳ ----
    ⁿ⁼⁰  n!

// Maclaurin series of eˣ
              x²     x³     x⁴     x⁵
eˣ = 1 + x + ---- + ---- + ---- + ---- + …
              2!     3!     4!     5!

// Moreover, if we set x=1, we get a formula for the value of 'e', eˣ ⟼ e¹
e = 1 + 1 + 1/2! + 1/3! + 1/4! + 1/5! + 1/6! + …

e = 1 + 1 + 1/2 + 1/6 + 1/24 + 1/120 + 1/720 + …

// the sum of first 7 terms gets us 'e':
e = 1 + 1 + 1/2 + 1/6 + 1/24 + 1/120 + 1/720 = 2.7181

e ≈ 2.71 82 81 82 84
```

## Find the Maclaurin Series for sin

```js
// Maclaurin series
       f⁽⁰⁾(0)   f⁽¹⁾(0)     f⁽²⁾(0)      f⁽³⁾(0)      f⁽⁴⁾(0)
f(x) = ------- + ------- x + ------- x² + ------- x³ + ------- x⁴ + …
         0!        1!           2!           3!           4!

// Find the derivatives
f⁽⁰⁾(x) = sin(x)
f⁽¹⁾(x) = cos(x)
f⁽²⁾(x) = -sin(x)
f⁽³⁾(x) = -cos(x)
f⁽⁴⁾(x) = sin(x)
f⁽⁵⁾(x) = cos(x)

// Eval the derivatives at x=0
f⁽⁰⁾(0) =  sin(0) = 0
f⁽¹⁾(0) =  cos(0) = 1
f⁽²⁾(0) = -sin(0) = 0
f⁽³⁾(0) = -cos(0) = -1
f⁽⁴⁾(0) =  sin(0) = 0
f⁽⁵⁾(0) =  cos(0) = 1


                          sin(0)      cos(0)      sin(0)      sin(0)
f(x) = sin(0) + cos(0)x - ------ x² - ------ x³ + ------ x⁴ + ------ x⁵ + …
                            2!          3!          4!          5!

                  0          1          0          1
f(x) = 0 + 1x - ----- x² - ----- x³ + ----- x⁴ + ----- x⁵ + …
                  2!         3!         4!         5!

/* Maclaurin series of sin(x) */
               x³     x⁵       x⁷     x⁹
sin(x) = x - ----- + ----- - ----- + ---- - …
               3!      5!      7!     9!

// x is the angle is radians

// expressed in sigma notation
          ∞
         ⎲        x²ⁿᐩ¹
sin(x) = ⎳ (-1)ⁿ --------
         ⁿ⁼⁰       (2n+1)!
```

## Find the Maclaurin Series for cos

`cos` is derivative of `sin`, so we can reuse the `sin` infinite sequence and find its derivative to get the `cos` as infinite sequence.

```js
               x³     x⁵       x⁷     x⁹
sin(x) = x - ----- + ----- - ----- + ---- - …
               3!      5!      7!     9!

sin′(x) = cos(x)

// each term follows the same derivation pattern
(x³/3!)′ = 1/3! 3x² = x²/2!

/* Maclaurin series of cos(x) */
              x²     x⁴     x⁶     x⁸
cos(x) = 1 - ---- + ---- - ---- + ---- - …
              2!     4!     6!     8!

// x is the angle is radians
// cos(x) < |1| i.e. -1 < cos(x) < 1
// Radius of convergence is R=1

// expressed in sigma notation
          ∞
         ⎲        x²ⁿ
cos(x) = ⎳ (-1)ⁿ ------
         ⁿ⁼⁰       (2n)!
```

## Maclaurin series for a binomial expansion

The function `f(x) = (1 + x)ᵏ` is a binomal expansion, where `k ∈ ℝ`, but for now we stick with the easier cases when `k ∈ ℕ`.

Expansions for smaller `k`. The coefficients are obtained from the Pascal's triangle: exponent `k` means consult row `k` (second column).

```js
1 0
1 1
1 2 1
1 3 3 1
1 4 6 4 1
1 5 10 10 5 1
1 6 15 20 15 6 1

(1 + x)⁰ = 1
(1 + x)¹ = 1 + x
(1 + x)² = 1 + 2x + x²
(1 + x)³ = 1 + 3x + 3x² + x³
(1 + x)⁴ = 1 + 4x + 6x² + 4x³ + x⁴
(1 + x)⁵ = 1 + 5x + 10x² + 10x³ + 5x⁴ + x⁵
(1 + x)⁶ = 1 + 6x + 15x² + 20x³ + 15x⁴ + 6x⁵ + x⁶
```

```js
f(x) = (1 + x)ᵏ
// evaluate f(x) at x=0
f(0) = (1 + 0)ᵏ = 1ᵏ = 1

// Get 1st derivative of f(x)
//   use the chain rule with f(x) = xᵏ, g(x) = (1+x)
//   Chain rule: (f(g(x)))′ = f′(g(x)) ∙ g′(x)
//   f′(x) = kxᵏ⁻¹, g′(x) = 1
//   (f(g(x)))′ = k(x+1)ᵏ⁻¹
f′(x) = ((1 + x)ᵏ)′ = k∙(1 + x)ᵏ⁻¹
// eval f′(x) at x=0
f′(0) = k∙(1 + 0)ᵏ⁻¹ = k∙1ᵏ⁻¹ = k∙1 = k

// Get 2nd derivative of f(x)
f′′(x) = ((1 + x)ᵏ)′′ = (k∙(1 + x)ᵏ⁻¹)′
f′′(x) = k∙(k-1)∙(1+x)ᵏ⁻²
// eval f′′(x) at x=0
f′′(0) = k∙(k-1)∙(1+0)ᵏ⁻² = k∙(k-1)∙1ᵏ⁻² = k(k-1)

// Get 3rd derivative of f(x)
f′′′(x) = ((1 + x)ᵏ)′′′ = (k∙(1 + x)ᵏ⁻¹)′′ = (k∙(k-1)∙(1+x)ᵏ⁻²)′
f′′′(x) = k(k-1)(k-2)(1+x)ᵏ⁻³
// eval f′′′(x) at x=0
f′′′(0) = k(k-1)(k-2)(1+0)ᵏ⁻³ = k(k-1)(k-2)

// So this pattern continues for nth derivative
f⁽ⁿ⁾(x) = k(k-1)(k-2)…(k-n+1)(1+x)ᵏ⁻ⁿ
// evaled at x=0
f⁽ⁿ⁾(0) = k(k-1)(k-2)…(k-n+1)

/* Maclaurin series for a binomial expansion */
// As sigma notation
                 ∞                 ∞
                ⎲  f⁽ⁿ⁾(0)       ⎲ k(k-1)(k-2)…(k-n+1)
f(x) = (1+x)ᵏ = ⎳ --------- xⁿ = ⎳ ------------------- xⁿ
                ⁿ⁼⁰    n!         ⁿ⁼⁰           n!

/* Maclaurin series can also be written as a combination */
 ∞ 
⎲ ⎛ k ⎞          k!
⎳ ⎝ n ⎠ xⁿ = ----------
ⁿ⁼⁰            n!(k - n)!

          ∞                ∞
         ⎲ f⁽ⁿ⁾(0)      ⎲ ⎛ k ⎞           k     k(k-1)     k(k-1)(k-2)
(1 + x)ᵏ=⎳ ------- xⁿ = ⎳ ⎝ n ⎠ xⁿ = 1 + ---x + ------x² + -----------x³ + …
         ⁿ⁼⁰   n!        ⁿ⁼⁰                 1!      2!            3!
```

## Maclaurin series can also be written as a combination

```js
            ∞                  ∞             
           ⎲   f⁽ⁿ⁾(0)       ⎲ ⎛ k ⎞       
(1 + x)ᵏ = ⎳  --------- xⁿ = ⎳ ⎝ n ⎠ xⁿ    
           ⁿ⁼⁰     n!         ⁿ⁼⁰            


          ∞                ∞
         ⎲ f⁽ⁿ⁾(0)      ⎲ ⎛ k ⎞           k     k(k-1)     k(k-1)(k-2)
(1 + x)ᵏ=⎳ ------- xⁿ = ⎳ ⎝ n ⎠ xⁿ = 1 + ---x + ------x² + -----------x³ + …
       ⁿ⁼⁰   n!        ⁿ⁼⁰                 1!      2!            3!


       k       k(k-1)      k(k-1)(k-2)      k(k-1)(k-2)(k-3)
= 1 + ---- x + ------ x² + ----------- x³ + ----------------- x⁴ + …
       1!        2!            3!                   4!
```


## Maclaurin series for binomal expansion: check

```c
When n=0:
                f⁽⁰⁾(0) ∙ 0⁰   1∙1
f(0) = (1+0)ᵏ = ------------ = ---- = 1
                     0!         1
// This means the 1st term of any binomial expansion of (1+x)ᵏ is always 1

When n=1:
                f⁽¹⁾(0) ∙ x¹    kx
f(0) = (1+0)ᵏ = ------------ = ---- = kx
                     1!         1
// This means the 2nd term of any binomial expansion of (1+x)ᵏ is always kx

When n=2:
                f⁽²⁾(0) ∙ x²   k(k-1) x²
f(0) = (1+0)ᵏ = ------------ = ---------
                     2!            2

```

Binomial expansions for some different `k`'s
- (1 + x)⁰ = 1
- (1 + x)¹ = 1 + x
- (1 + x)² = 1 + 2x + x²
- (1 + x)³ = 1 + 3x + 3x² + x³
- (1 + x)⁴ = 1 + 4x + 6x² + 4x³ + x⁴
- (1 + x)⁵ = 1 + 5x + 10x² + 10x³ + 5x⁴ + x⁵
- (1 + x)⁶ = 1 + 6x + 15x² + 20x³ + 15x⁴ + 6x⁵ + x⁶

The case `n=0` shows the first term of any binomial expansion of `(1+x)ᵏ`, i.e. for any exponent `k`, will always be 1. We confirm this is true by going over a few expansions for different `k`'s.

The case `n=1` shows the second term of any binomial expansion of `(1+x)ᵏ`, i.e. for any exponent `k`, will is always be `kx`. This is also confirmed by the sample of binomal expansions above. For example, when k=2, the second term is `2x`, and when k=6, the second term is 6x. Moreover, the term with the highest exponent (i.e. the exponent 6) is the last term (`k+1`th addend in expansion) in the `k`-th row of the Pascal's triangle. The Pascal's triangle helps us determine the coefficients of addends in a binomial expansion. The 6th row of the Pascal's triangle is `1 6 15 20 15 6 1`, meaning the second column (or second to last since all entries are reflected around a central position/term) identifies the row's number. In fact, rows identified with an even number `r` contain `r+1` addends (row 0 has 1 entry, row 2 has 3 entries, row 4 has 5 entries, …) and these even rows are reflected about a central number rather then around the position between two central numbers like odd numbered row are.

```c
/* Pascal's triangle */
rowID (second column)
  ↓
1                           // row: 0, entries: 1, sum: 1
1 1                         // row: 1, entries: 2, sum: 2
1 2 1                       // row: 2, entries: 3, sum: 4
1 3 3 1                     // row: 3, entries: 4, sum: 8
1 4 6 4 1
1 5 10 10 5 1
1 6 15 20 15 6 1
1 7 21 35 35 21 7 1
1 8 28 56 70 56 28 8 1
1 9 36 84 126 126 84 36 1
```

## Example: Binomial expansion of Maclaurin series as a combination

```js
// function to write as a binomial expansion of Maclaurin series
         1
f(x) = --------
       √(4 - x)

// We must express it in a way that is compatible with the "template" (1 + x)ᵏ
         1           1             1             1
f(x) = ------ = ----------- = ---------- = ------------- = 1/2 ∙ (1-x/4)⁻¹′²
       √(4-x)   √(4(1-x/4))   √4√(1-x/4)   2∙√(1-x/4)¹′²

// So we have k ⟼ -1/2 and x ⟼ -x/4
   1 ⎛   -1/2        -1/2(-1/2 - 1)          -1/2(-1/2-1)(-1/2-2)             ⎞
= ---⎜1+ ---- -x/4 + --------------(-x/4)² + -------------------- (-x/4)³ + … ⎟
   2 ⎝    1!               2!                          3!                     ⎠
//    ₁   ₂                 ₃                          ₄

// term (1)
1/2 × 1 = 1/2

// term (2)
1/2 × ( (-1/2) (-x/4) / 1! ) =
1/2 × ( (-1/2) (-x/4) ) =
1/2 × (x/8) =
x/16 =
x/2⁴

// term (3)
1/2 × ( (-1/2) (-1/2 - 1) (-x/4)² / 2 ) =
1/2 × ( (-1/2) (-3/2) (x²/16) / 2 ) =
1/2 × ( (3/4) (x²/16) / 2 ) =
1/2 × ( (3x²/64) / 2 ) =
1/2 × 3x²/128 =
3x²/256 =
3x²/2⁸

// term (4)
1/2 × ( (-1/2) (-1/2 - 1) (-1/2 - 2) (-x/4)³ / 6 ) =
1/2 × ( (-1/2) (-3/2) (-1/2 - 2) (-x/4)³ / 6 ) =
1/2 × ( (3/4) (-5/2) (-x³/64) / 6 ) =
1/2 × ( (-15/8) (-x³/64) / 6 ) =
1/2 × ( (-15x³/8×64) / 6 ) =
1/2 × -15x³/8×64×6 =
-15x³/8×64×6×2 =
-15x³/6144
-5x³/2048
-5x³/2¹¹

// term (5)
1/2 × ( (-1/2) (-1/2 - 1) (-1/2 - 2) (-1/2 - 3) (-x/4)⁴ / 4! ) =
1/2 × ( (-1/2) (-3/2) (-5/2) (-7/2) (x⁴/4⁴) / 24 ) =
1/2 × ( (3/4) (35/4) (x⁴/4⁴) / 24 ) =
1/2 × ( (105/16) (x⁴/4⁴) / 24 ) =
1/2 × ( 105x⁴/16×256 / 24 ) =
1/2 × ( 105x⁴/16×256×24 ) =
105x⁴/16×256×24×2 =
105x⁴/196608 =
35x⁴/65536



// term (n)
1/2 × ((-1/2) (-1/2 - 1) (-1/2 - 2) (-1/2 - 3) … (-1/2 - n-1) (-x/n)ⁿ / n!) =



   1      x     3x²      5x³      35x³      
= --- + ---- + ----- + ------ + ------- + …
   2     16     256     2048     65536      

   1      x     3x²      5x³
= --- + ---- + ----- + ------ + …
   2     2⁴      2⁸      2¹¹




   1 ⎛       1        1×3        1×3×5       1×3×5×7         1×3×5×7×…×(2n-1) ⎞
= ---⎜ 1 + ----- x + ----- x² + ------- x³ + ------- x⁴ + … + --------------xⁿ⎟
   2 ⎝      1!8       2!8²       3!8³         4!8⁴                  n!8ⁿ      ⎠


   1      x      3x²      5x³       35x⁴        1×3×5×7×…×(2n-1)
= --- + ----- + ----- + ------- + -------- + … + ----------------- xⁿ
   2     16      128      2048      65536              n!8ⁿ


   1      x      3x²      5x³       35x⁴        1×3×5×7×…×(2n-1)
= --- + ----- + ----- + ------- + -------- + … + ----------------- xⁿ
   2     2⁴      2⁸       2¹¹       2¹⁶               n!8ⁿ


//    105        35        35
// -------- = -------- = ------
//  196608     65,536     2¹⁶


// The nominators can be expressed as double factorials
// double factorial:
  if n odd,  n!! = 1×3×5×7×9×…×n
  if n even, n!! = 2×4×6×8×…×n
// n = 2k    n even
// n = 2k+1  n odd
  if n even, (2k)!!   = 2×4×6×8×…×2k
  if n odd,  (2k+1)!! = 1×3×5×7×9×…×(2k+1)


   1 ⎛      1        3!!       5!!       7!!          (2n+1)!!    ⎞
= ---⎜ 1 + ---- x + ---- x² + ---- x³ + ---- x⁴ + … + -------- xⁿ ⎟
   2 ⎝     1!8      2!8²      3!8³      4!8⁴            n!8ⁿ      ⎠





// template or schema we consult
          ∞               ∞
         ⎲ f⁽ⁿ⁾(0)      ⎲ ⎛ k ⎞
(1+x)ᵏ = ⎳ ------- xⁿ = ⎳ ⎝ n ⎠ xⁿ
         ⁿ⁼⁰   n!        ⁿ⁼⁰

       k       k(k-1)      k(k-1)(k-2)      k(k-1)(k-2)(k-3)
= 1 + ---- x + ------ x² + ----------- x³ + ----------------- x⁴ + …
       1!        2!            3!                   4!

       k       k(k-1)      k(k-1)(k-2)      k(k-1)(k-2)(k-3)
= 1 + ---- x + ------ x² + ----------- x³ + ----------------- x⁴ + …
       1!        2!            3!                   4!

```

## Overview of Maclaurin series

```js
// R=1
         ∞
  1     ⎲
----- = ⎳ xⁿ
1 - x   ⁿ⁼⁰

// R=∞
      ∞
     ⎲    xⁿ
eˣ = ⎳ -------
     ⁿ⁼⁰   n!

// R=∞
        ∞
       ⎲         x²ⁿᐩ¹
sinx = ⎳ (-1)ⁿ --------
       ⁿ⁼⁰       (2n+1)!

// R=∞
        ∞
       ⎲         x²ⁿ
cosx = ⎳ (-1)ⁿ --------
       ⁿ⁼⁰        (2n)!

// R=1
          ∞
         ⎲         x²ⁿᐩ¹
tan⁻¹x = ⎳ (-1)ⁿ ---------
         ⁿ⁼⁰        2n + 1

// R=1
           ∞
          ⎲           xⁿ
ln(1+x) = ⎳ (-1)ⁿ⁻¹ ------
          ⁿ⁼¹           n

// R=1
          ∞
         ⎲ ⎛ k ⎞
(1+x)ᵏ = ⎳ ⎝ n ⎠ xⁿ
         ⁿ⁼⁰
```
