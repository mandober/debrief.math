# Number of morphisms

https://oeis.org/A231344

Considering the category 𝗦𝗲𝘁,   
the number of morphisms in full subcategories of 𝗦𝗲𝘁 spanned by    
`{ {}, {1}, {1, 2}, ..., {1, 2, ..., n} }`   
is calculated by the formula below.

For any natural number `k`, consider the set `X_k = {1, 2, ..., k}`.
In particular, `X_0` is empty. 
For any natural number `n`, 
let `S_n` be the full subcategory 
of 𝗦𝗲𝘁 category spanned by the objects `X_0, X_1,...,X_n`. 
Then `S_n` has some number of morphisms, `#S_n`. 
When `n = -1`, we consider `S_n` to be empty. 
So this sequence is: #S_0, #S_1, #S_2, etc. 

```hs
arrows :: Integral a => a -> a
arrows n = sum [ i ^ j | i <- [0..n], j <- [0..n] ]
```

```js
The formula is
  a(n) = sum_{ 0 <= i,j <= n } i^j
that is
  a(n) = Σ mᵏ  for m=[0..n], k=[0..n]

n    n
⎲  ⎲
⎳  ⎳  mᵏ
m=0 k=0


for m in 0..n:
  for k in 0..n:
    mᵏ

if n = 0 then a(n) = 1:
  0⁰ = 1

if n = 1 then a(n) = 3:
  0⁰ + 0¹  =  1 + 0 = 1
  1⁰ + 1¹  =  1 + 1 = 2

if n = 2 then a(n) = 11:
  0⁰ + 0¹ + 0²       =    1 + 0 + 0       = 1
  1⁰ + 1¹ + 1²       =    1 + 1 + 1       = 3
  2⁰ + 2¹ + 2²       =    1 + 2 + 4       = 7

if n = 3 then a(n) = 60:
  0⁰ + 0¹ + 0² + 0³  =    1 + 0 + 0 + 0   = 1
  1⁰ + 1¹ + 1² + 1³  =    1 + 1 + 1 + 1   = 3+1
  2⁰ + 2¹ + 2² + 2³  =    1 + 2 + 4 + 8   = 7+8
  3⁰ + 3¹ + 3² + 3³  =    1 + 2 + 4 + 27  = 7+27


0⁰        0¹ + 0² + 0³ + 0⁴ + 0⁵ + 0⁶ + 0⁷
1⁰ + 1¹        1² + 1³ + 1⁴ + 1⁵ + 1⁶ + 1⁷
2⁰ + 2¹ + 2²        2³ + 2⁴ + 2⁵ + 2⁶ + 2⁷
3⁰ + 3¹ + 3² + 3³        3⁴ + 3⁵ + 3⁶ + 3⁷
4⁰ + 4¹ + 4² + 4³ + 4⁴        4⁵ + 4⁶ + 4⁷
5⁰ + 5¹ + 5² + 5³ + 5⁴ + 5⁵        5⁶ + 5⁷
6⁰ + 6¹ + 6² + 6³ + 6⁴ + 6⁵ + 6⁶        6⁷
7⁰ + 7¹ + 7² + 7³ + 7⁴ + 7⁵ + 7⁶ + 7⁷
```


n | a(n) | +increase | type
--|------|-----------|---------
0 |    1 |         0 | Void
1 |    3 |        +2 | Unit
2 |   11 |        +8 | Bool
3 |   60 |       +49 | Ordering



## Subcategory of 𝗛𝗮𝘀𝗸 with 3 types

The 3 objects are: `Void`, `Unit` and `Bool`

There are 11 arrows in this subcategory:

|  # |  function signature        |
|---:|---------------------------:|
|  1 |         id :: Void → Void  |
|  2 |  void2Unit :: Void → ()    |
|  4 |  void2Bool :: Void → Bool  |
| 10 |  unit2True :: ()   → Bool  |
| 11 | unit2False :: ()   → Bool  |
|  3 |         id :: ()   → ()    |
|  9 |  bool2Unit :: Bool → ()    |
|  5 |         id :: Bool → Bool  |
|  6 |        not :: Bool → Bool  |
|  7 |          ⟙ :: Bool → Bool  |
|  8 |          ⟘ :: Bool → Bool  |


Summary
- each type has an identity arrow, 3 id arrows total
- the type `Void` is uninhabited
- the type `Unit` has 1 term (value)
- the type `Bool` has 2 terms (values)
- there are no functions going into `Void` (except id on Void)
  - these functions cannot be constructed anyway
  - no function `∅ :: () → Void`   since 0¹ = 0
  - no function `∅ :: Bool → Void` since 0² = 0
- there is 1 function from any type to `Void`,  here
  - 1 function from `Void` to `Unit`
  - 1 function from `Void` to `Bool`
- there are 7 functions into `Bool`
  - Void to Bool exists but cannot be constructed
  - Unit to Bool comes in 2 variants:
    - a function that sends unit to True
    - a function that sends unit to False
  - there are 4 functions from Bool to Bool: 
    id, not, ⟙ (alwaysTrue), ⟘ (alwaysFalse)


## Void domain

It is evident that there's only 1 function from Void to unit, but it might be strange there's only 1 function from Void to Bool - since Bool has two elements (terms or values), one might expect there are two constant functions, like 'always true' and 'always false'. This is indeed true when the domain is unit, but not in the case of Void because all functions from Void to Bool (or any other type `a`) are (extensionally) the same. That is, there's no value of type Void to feed into such function, which makes all such functions collapse into one. A function `devoid :: Void -> Bool` need not have a ody defined at all - we can just put `undefined` since it will never be called anyway; it's futile to define it as `devoid _ = False` as it is to define it as `devoid _ = True`, so we just do `devoid _ = undefined`. Also, because `n⁰ = 1` hints that, no matter how many inhabitants a type `n` has, there is only a single function from it to Void (which has 0 inhabitants). It may seem there are as many functions as there are elements in `n`, but it turns out they are indistinguishable from each other with Void as domain.

*Extensional equality*: two functions are equal if, for every argument, they produce the same result. Or, conversely, to prove that two functions are different, you have to provide a value for the argument on which these two functions differ. Obviously, if the argument type is Void, you cannot do that.
