# Set theory :: Index :: Cardinalities


- Bijection between ℕ and ℤ
- Bijection between ℕ and ℚ
- Bijection between ℤ and ℚ
- No bijection between ℕ (or ℤ or ℚ) and ℝ
- No bijection between ℕ and 𝒫(ℕ)
- No bijection between any set A and its powerset 𝒫(A)
- Bijection between (0,1) and (a,b) where a,b ∈ ℝ and a < b
- Bijection between (0,1) and ℝ
- Bijection between `(0,1)` and `(0,1)`   0 < y < 1     (e.g. `id`)
- Bijection between `(0,1)` and `(0,1]`   0 < y ≤ 1
- Bijection between `(0,1)` and `[0,1)`   0 ≤ y < 1
- Bijection between `(0,1)` and `[0,1]`   0 ≤ y ≤ 1
- Bijection between `(0,1)` <=> `(0,1]` <=> `[0,1)` <=> `[0,1]`
- Bijection between `[0,1]` and `[0,1)` (sure, see above)


## Bijection between (0,1) and ℝ

`f : (0,1) ⟼ ℝ`

Bijection `f(x) = tan (π(x - 1/2))`
- `- 1/2` shifts the graph to the right
- `* π`   squeezes the width of the graph from π to 1 (horizontal squeeze)
- f⁻¹(y) = ?

Other bijections
- `f(x) = cot(πx)` and `f⁻¹(y) = ?`
- `f(x) = ln(1/x - 1)` and `f⁻¹(y) = 1 / (1 + eʸ)`


## Bijection between (0, 1) and (0, 1]

f : (0, 1) ⟼ (0, 1]

- if x ≠ 1/2ⁿ (for any n ∈ ℕ) then `f(x) = x`, i.e. `f = id` ; 
- otherwise, `f(x) = 1/2ⁿ⁻¹`

```h
f(x) = x (f is id),      if x ∈ (0,1) ∖ { 0.5ⁿ (for any n ∈ ℕ) }          (1)
f(x) = 0.5ⁿ⁻¹,           if x =           0.5ⁿ (for any n ∈ ℕ)            (2)
```

To find the bijection between `(0,1)` and `(0,1]` we realize that this is a lot like the bijection between `(0,1)` and `(0,1)`, which is just `id`, except we also need to handle `1`. So, `id` should partake, as one of the equations defining `f`.

The bijection is a two-part function: the first equation deals with the reals that do not have the form `0.5ⁿ` (for some `n ∈ ℕ`), and in this case `f` is just the `id` function.

In case the input `x` doesn't have the form `1/2ⁿ`, 
we realize, that after excluding from our interval set `(0,1)` 
all the reals corresponding to the `f(x) = x` 
BUT that DO NOT have the form `1/2ⁿ`, 
we are left with the set 
`{   1/2, 1/2², 1/2³, 1/2⁴, …}` as the domain and the set 
    ↙    ↙    ↙     ↙
`{1, 1/2, 1/2², 1/2³, 1/2⁴, …}` as the codomain, 
and there is a bijection between ℚ, 
e.g. `f(x) = 1/2ⁿ⁻¹`.


(0, 1) | (0, 1]
-------'----------- (2)
1/2    | 1
1/2²   | 1/2
1/2³   | 1/2²
1/2⁴   | 1/2³
1/2⁵   | 1/2⁴
…      | …
1/2ⁿ   | 1/2ⁿ⁻¹
-------'----------- (1) other x's maps to themselves
x      | x



- BTW, if the first digit after the point is not
       {0,1,2,5} then x does not have the form 1/2ⁿ


> 1/2 to the power of n ∈ ℕ

```
0.5¹  =                               0 . 5 = 1/2
0.5²  =                             0 . 2 5 = 1/4
0.5³  =                           0 . 1 2 5 = 1/8
0.5⁴  =                         0 . 0 6 2 5 = 1/16
0.5⁵  =                       0 . 0 3 1 2 5 = 1/32
0.5⁶  =                     0 . 0 1 5 6 2 5 = 1/64
0.5⁷  =                   0 . 0 0 7 8 1 2 5 = 1/128
0.5⁸  =                 0 . 0 0 3 9 0 6 2 5 = 1/256
0.5⁹  =               0 . 0 0 1 9 5 3 1 2 5 = 1/512
0.5¹⁰ =             0 . 0 0 0 9 7 6 5 6 2 5 = 1/1024
0.5¹¹ =           0 . 0 0 0 4 8 8 2 8 1 2 5 = 1/2048
0.5¹² =         0 . 0 0 0 2 4 4 1 4 0 6 2 5 = 1/4096
0.5¹³ =       0 . 0 0 0 1 2 2 0 7 0 3 1 2 5 = 1/8192
0.5¹⁴ =     0 . 0 0 0 0 6 1 0 3 5 1 5 6 2 5 = 1/16384
0.5¹⁵ =   0 . 0 0 0 0 3 0 5 1 7 5 7 8 1 2 5 = 1/32768
0.5¹⁶ = 0 . 0 0 0 0 1 5 2 5 8 7 8 9 0 6 2 5 = 1/65536
-------------------------------------------.
            0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 5| 1
              0 0 0 0 0 0 0 0 0 0 1 3 6 . .| 2
                0 0 0 0 0 0 0 1 3 7 5 . . .| 3
                  0 0 0 1 2 4 9 9 9 8 . . .| 4
                    1 3 6 2 4 8 7 5 . . . .| 5
                      5 0 1 2 4 8 6 . . . .| 6
                        2 5 0 0 1 2 . . . .| 7
                          5 1 3 7 4 . . . .| 8
                            8 7 5 . . . . .| 9
                              7 5 . . . . .|10
                                8 . . . . .|11
                                  . . . . .|12
                                  . . . . .|13
                                  . . . . .|14
                                  . . . . .|15
                                  . . . . .|16
-------------------------------------------'
                                  3 2 1 0 0 (= n)
                                  8 4 2 1 1 (= 2ⁿ)
```


## Bijection between (0, 1) and (a, b)

Bijection between open unit interval and any interval

`|(0, 1)| = |(a, b)|` where `a,b ∈ ℝ` and `a < b`

bijection:
- f  (x) = a + (b - a) * x
- f⁻¹(y) = (y - a) / (b - a)

```
f(x) = a + (b - a) * x

f(x) = y
f(x) = a + (b - a) * x
f⁻¹(y) = x
------------------------
         y - a   a - y
f⁻¹(y) = ----- = -----
         b - a   a - b
------------------------
since:
y = a + (b - a) * x
y - a = (b - a) * x
x = (y - a) / (b - a)
```


Thus, the open unit interval `(0,1)` and any interval `(a,b)` have the same cardinality (where a,b ∈ ℝ and a < b).

- `f′` is inverse of `f` since `f` is a bijection
- `f (x) = y` where input `x` is `0 < x < 1` and output `y` is `a < y < b`
- `f′(y) = x` where input `y` is `a < y < b` and output `x` is `0 < x < 1`
- in both functions, the term `b - a > 0` since a < b

```
a = -10
b =  10

⁻10  ⁻7  ⁻5  ⁻3  ⁻1 0 1 2 3 4 5 6 7 8 9 10
|-|-|-|-|-|-|-|-|-|-|~|-|-|-|-|-|-|-|-|-|
a                   |~|                 b
                    0 1

(0,1) | (-10,10)
------|-------------
0.1   | -8
0.5   |  0
0.2   | -6


--------------------------------------------------
x ∈ (0,1), y ∈ (-10,10)
--------------------------------------------------
let x = 0.5
f(x)   = y                    (where -10 < y < 10)
f(0.5) = a + (b - a) * x
       = -10 + 20 * 0.5
       = -10 + 10
       = 0                    ✔

f⁻¹(0) = (0 + 10) / 20
       = 10 / 20
       = 1 / 2
       = 0.5                  ✔
--------------------------------------------------
let x = 0.2
f(x)   = y
f(0.2) = a + (b - a) * x
       = -10 + 0.2 * 20
       = -10 + 4
       = -6
f(0.2) = -6                   ✔

f⁻¹(y)  = x
f⁻¹(-6) = (y - a) / (b - a)
        = (-6 + 10) / 20
        = 4 / 20
        = 0.2                 ✔

--------------------------------------------------
f⁻¹(y)  = x                   (where 0 < x < 1)
f⁻¹(-8) = (y - a) / (b - a)
        = (-8 - (-10)) / 20
        = (-8 + 10) / 20
        = 2 / 20
        = 0.1

f(0.1) = -10 + 0.1 * 20
       = -10 + 2
       = -8
--------------------------------------------------

```
