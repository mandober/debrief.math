# Harmonic series

A series of reciprocals of numbers is also called harmonic series. We can denote it by `H` and express it as a function `H(n)`, so `H(k)` is the harmonic number k, i.e. `H(k) = 1 + 1/2 + 1/3 + … + 1/k`.

```js
// Harmonic series: series of reciprocals
⎲∞    1          1      1      1          1
⎳ₙ₌₁ ---- = 1 + ---- + ---- + ---- + … + ----
       n           2      3      4          n

            1      1      1          1
H(n) = 1 + ---- + ---- + ---- + … + ----
            2      3      4          n

H(1) =     1
H(2) =     1   + 1/2 =   3/2                                          = 1.5
H(3) =    3/2  + 1/3 =   9/6  +  2/6  =  11/6                         = 1.83͘
H(4) =   11/6  + 1/4 =  22/12 +  3/12 =  25/12         = 1.83͘  + 0.25 = 2.083͘ 
H(5) =   25/12 + 1/5 = 125/60 + 12/60 = 137/60         = 2.083͘ + 0.20 = 2.283͘
H(6) =  137/60 + 1/6 = 137/60 + 10/60 = 147/60 = 49/20 = 2.283͘ + 0.6͘  = 2.45
H(7) =   49/20 + 1/7 = 343/140 + 20/140 = 363/140                     = 2.59
H(8) = 363/140 + 1/8 = 726/280 + 35/280 = 761/280                     = 2.71
e = 2.718281
```


```js
353 is prime
353/140 = 2.52 142857 142857 142857 = 2.52(142857)∙
741/208 = 57/16
// prime factorization
208 = 2⁴ × 13
741 = 3 × 13 × 19
thus, gcf(741,208) = 13


//    1   2       3
R  = (1 + 1/2 + 1/3 + 1/4 + 1/5 + 1/6 + 1/7 + 1/8 + 1/9)
Sᴿ = (1, 3/2, )
R  = (1 + 0.5 + 0.3⋅ + 0.25 + 0.2 + 0.16⋅ + 0.142857 + 0.125 + 0.1⋅)
```


## Another form

```js
  1     1      1      1      1       1
---- + ---- + ---- + ---- + ---- + ----- =
  1     2      3      4      5       6

// denom is the factor to leave out from the nom
6!/1 + 6!/2 + 6!/3 + 6!/4 + 6!/5 + 6!/6
--------------------------------------- =
                  6!

// denom is the factor to leave out from the nom
2×3×4×5×6 + 3×4×5×6 + 2×4×5×6 + 2×3×5×6 + 2×3×4×6 + 2×3×4×5
------------------------------------------------------------ =
                           6!

// 6! = 1×2×3×4×5×6
// term 1: 6!/1 = 2×3×4×5×6 = 720
// term 2: 6!/2 = 1×3×4×5×6 = 720/2 = 360
// term 3: 6!/3 = 1×2×4×5×6 = 720/3 = 240
// term 4: 6!/4 = 1×2×3×5×6 = 720/4 = 180
// term 5: 6!/5 = 1×2×3×4×6 = 720/5 = 144
// term 6: 6!/6 = 1×2×3×4×5 = 720/6 = 120

720 + 360 + 240 + 180 + 144 + 120    1764     49
--------------------------------- = ------ = ----
               720                   720      20
```


## Sequence of reciprocals

```js
// Harmonic series: series of reciprocals
⎲∞    1          1      1      1          1
⎳ₙ₌₁ ---- = 1 + ---- + ---- + ---- + … + ----
       n           2      3      4          n

            1      1      1          1
H(n) = 1 + ---- + ---- + ---- + … + ----
            2      3      4          n

H(n) = H(n-1) + 1/(n-1)
H(n+1) = H(n) + 1/n
H(4+1) = H(4) + 1/4
H(5) = H(4) + 1/4
H(4) = H(3) + 1/3
H(2) = H(1) + 1/2
H(1) = H(2) - 1/2
H(2) = H(3) - 1/3
H(3) = H(4) - 1/4



// This means that the next term can be obtained from the previous one.
// H(4) = H(3) + 1/4
// H(5) = H(4) + 1/5
// H(4+1) = H(4) + 1/(4+1)
// H(5) = H(4+1) + 1/5

// thus:

// H is a recursive function
H(1) = 1             // base case
H(n) = H(n-1) + 1/n  // recursive case
// e.g.
H(1) = 1
H(2) = H(1) + 1/2 = 1     + 1/2 = 3/2
H(3) = H(2) + 1/3 = 3/2   + 1/3 = 11/6
H(4) = H(3) + 1/4 = 11/6  + 1/4 = 25/12
H(5) = H(4) + 1/5 = 25/12 + 1/5 = 137/60
H(100) = 5.187…


// from this we can also get:
H(x+1) = H(x) + 1/(x+1)   // forward terms formula
H(x-1) = H(x) - 1/x       // backward terms formula

H(x+1) = H(x) + 1/(x+1)   // forward terms formula
H(2+1) = H(2) + 1/(2+1)   H(3) = H(2) + 1/3  // x=2
H(3+1) = H(3) + 1/(3+1)   H(4) = H(3) + 1/4  // x=3

H(x-1) = H(x) - 1/x       // backward terms formula
H(2-1) = H(2) - 1/2       H(1) = H(2) - 1/2  // x=2
H(3-1) = H(3) - 1/3       H(2) = H(3) - 1/2  // x=3
H(4-1) = H(4) - 1/4       H(3) = H(4) - 1/4  // x=4


// nested formulas
H(x+1) = H(x)   + 1/(x+1)
H(x+2) = H(x+1) + 1/(x+2)
H(x+2) = H(x)   + 1/(x+1) + 1/(x+2)
H(x+3) = H(x+2) + 1/(x+3)
H(x+3) = H(x)   + 1/(x+1) + 1/(x+2) + 1/(x+3)
H(x+4) = H(x+3) + 1/(x+4)
H(x+4) = H(x)   + 1/(x+1) + 1/(x+2) + 1/(x+3) + 1/(x+4)

// in sigma notation:
                ⎲⁴    1
H(x+4) = H(x) + ⎳  ------
                ᵏ⁼¹  x + k

// generelized
H(x+n) = H(x) + 1/(x+1) + 1/(x+2) + ⋯ + 1/(x+n)

// super-recursive formula
                ⎲ⁿ    1
H(x+n) = H(x) + ⎳  ------
                ᵏ⁼¹  x + k

```


## Extending the Harmonic Numbers to the Reals

To find a value of `H(0.5)` i.e. `H(x)` at `x=0.5`, we got to a huge number `x`, denoted by `N`, where `H(N) ≈ H(N+1)`. There, `H(N+0.5) ≈ H(N)`, that is the difference `H(N+0.5)` and `H(N)` is 0 as N tends to infinity.

```js
// this difference tends to 0 as N tends to ∞
lim{N→∞} (H(N + x) - H(N)) = 0

// H(N) may be rewritten as the original formula/function
         ⎛            ⎲ᴺ   1   ⎞
lim{N→∞} ⎢ H(N + x) - ⎳  ----  ⎢ = 0
         ⎝            ᵏ⁼¹   k   ⎠

// and H(N+x) as the super-recursive function
         ⎛         ⎲ᴺ   1      ⎲ᴺ   1  ⎞
lim{N→∞} ⎢ H(x) + ⎳  ------ - ⎳  ---- ⎢ = 0
         ⎝        ᵏ⁼¹  x + k   ᵏ⁼¹    k  ⎠

// since H(x) does not depend on N, it can be pulled out
       ⎛            ⎛ ⎲ᴺ   1      ⎲ᴺ   1  ⎞ ⎞
H(x) + ⎢ lim{N→∞} ⎢ ⎳  ------ - ⎳  ---- ⎢ ⎢ = 0
       ⎝          ⎝  ᵏ⁼¹  x + k   ᵏ⁼¹   k  ⎠ ⎠

// after some rearranging…

                ⎛   ⎲ᴺ   1      ⎲ᴺ   1  ⎞
H(x) = lim{N→∞} ⎢ - ⎳  ------ + ⎳  ---- ⎢
                ⎝   ᵏ⁼¹  x + k   ᵏ⁼¹    k  ⎠

                ⎛   ⎲ᴺ   1    ⎲ᴺ   1    ⎞
H(x) = lim{N→∞} ⎢   ⎳  ---- - ⎳  ------ ⎢
                ⎝   ᵏ⁼¹   k    ᵏ⁼¹  x + k  ⎠

// …we get to this:

                ⎲ᴺ   1       1
H(x) = lim{N→∞} ⎳  ---- - ------
                ᵏ⁼¹   k     x + k

// we can use ∞ as the upper bound replacing N there,
// in order to replace the explicit limit N→∞
        ∞
       ⎲    1       1
H(x) = ⎳  ---- - ------
       ᵏ⁼¹   k     x + k
```
