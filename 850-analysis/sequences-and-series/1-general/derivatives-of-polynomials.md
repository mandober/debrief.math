# Derivatives of polynomials

A sequence of derivatives by repeatedly differentiating `f(x)` which is
- everywhere continuous
- infinitely differentiable
- defined as a polynomial
- defined as infinite polynomial

Note: the function itself is sometimes referred to as its own zeroth derivative, which may be denoted `f⁽⁰⁾ (x)` (Legrage notation); there is no notation using primes, but the Leibniz notation could perhaps be `d⁰y/dx⁰`.

The function `f` is defined as an infinite polynomial
- f(x) = Σ{i=0..∞} aᵢxⁱ
- f(x) = a₀ + a₁x + a₂x² + a₃x³ + a₄x⁴ + a₅x⁵ + a₆x⁶ + a₇x⁷ + …

To find out derivatives it's convenient to consider a general term `aᵢxⁱ`
- 0th:                     aᵢ × xⁱ               a₄⋅x⁴
- 1st:                 i × aᵢ × xⁱ⁻¹            4⋅a₄⋅x³
- 2nd:         (i-1) × i × aᵢ × xⁱ⁻²           3⋅4⋅a₄⋅x²
- 3rd:         (i-1) × i × aᵢ × xⁱ⁻²          2⋅3⋅4⋅a₄⋅x¹
- 4th:         (i-1) × i × aᵢ × xⁱ⁻²         3⋅2⋅1⋅4⋅a₄⋅x⁰

- k-th: `k! × aₖ × x`


## Polynomial terms

Derivatives of `a₅x⁵`:
- 0:             a₅x⁵ =      a₅x⁵ (term itself)
- 1:           5 a₅x⁴ =   5 a₅x⁴
- 2:         4×5 a₅x³ =  20 a₅x³
- 3:       3×4×5 a₅x² =  60 a₅x²
- 4:     2×3×4×5 a₅x¹ = 120 a₅x
- 5:   1×2×3×4×5 a₅x⁰ = 120 a₅ (coefficient alone)
- 6: 0×1×2×3×4×5 a₅x⁻¹= 0 (zero comes always)

Term of degree `n`
- max number of derivs for a term of degree `n` is `n` (before it hits 0)
- `0`th deriv of a term is the term itself
- `n`th derivative is only coefficient (no `x`)
- `n+1`th is derivative
- for some `k < n`, the multiplied coefficients are 
  (k-2)(k-1)k
  (k..n)!


*New notation*: expression `(n..m)!` ≝ `m! / (n-1)!`
- `(n..m)! = m!/(n-1)!` provided
- 1. `0 < n`
- 2. `0 ≤ m`
- 3. `n ≤ m`

- (4..8)! = 8!/3!
- (3..8)! = 8!/2! = 8!/2 = 8!
- (2..8)! = 8!/1! = 8!/1 = 8!
- (1..8)! = 8!/0! = 8!/1 = 8!
- (0..8)! violation of (1)
- (1..0)! violation of (3)
- (8..1)! undefined of (3)
- (8..8)! = 8!/8! = 1


Derivatives of `aⱼxʲ`
- 0:                              aⱼ xʲ⁻⁰
- 1:                            j aⱼ xʲ⁻¹
- 2:                      (j-1) j aⱼ xʲ⁻²
- 3:                (j-2) (j-1) j aⱼ xʲ⁻³
- 4:          (j-3) (j-2) (j-1) j aⱼ xʲ⁻⁴
- 5:    (j-4) (j-3) (j-2) (j-1) j aⱼ xʲ⁻⁵
- 5:    (j-4, j)! aⱼ xʲ⁻⁵

- k: (j-k) … (j-4) (j-3) (j-2) (j-1) j aⱼ xʲ⁻⁵



Conclusions:
- general term `aᵢxⁱ`
- we can take `i` derivatives before we hit 0
- `i+1`th derivative is necessarily 0
- e.g. when `i=5`, the term with higheest degree is `a₅x⁵`
- when `i = k`
  - we have a polynomial of degree `k`
  - the term with highest degree is `aₖxᵏ`
  - it has the coefficient `aₖ`
  - its power is `k` as `xᵏ`
  - its `k`th derivative is (i-(k-1))





## (work section)

If we have a function `f(x)` that is
- everywhere continuous
- infinitely differentiable
- defined as an infinite polynomial
- infinite polynomial :     `f  (x) = Σ{i=0..∞}   aᵢ ⋅ xⁱ`
- 1st derivative of ∞ poly: `f′ (x) = Σ{i=0..∞} i ⋅ aᵢ ⋅ xⁱ⁻¹`
- 2nd derivative of ∞ poly: `f′′(x) = Σ{i=0..∞} i ⋅ aᵢ ⋅ xⁱ⁻¹`

The infinite polynomial, defined as a sum, is inbounded, i.e. its lower bound is 0 but upper is infinity. If we fix the upper bound to an integer `n ∈ ℕ`, then we get a polynomial of degree `n`, `f(x) = Σ{i=0..n} aᵢxⁱ`
- n = 2 quadratic, a₀ + a₁x + a₂x²
- n = 3 cubic,     a₀ + a₁x + a₂x² + a₃x³
- n = 4 quartic,   a₀ + a₁x + a₂x² + a₃x³ + a₄x⁴
- n = 5 quintic,   a₀ + a₁x + a₂x² + a₃x³ + a₄x⁴ + a₅x⁵
- n = 6 sextic,    a₀ + a₁x + a₂x² + a₃x³ + a₄x⁴ + a₅x⁵ + a₆x⁶
- n = 7 septic,    a₀ + a₁x + a₂x² + a₃x³ + a₄x⁴ + a₅x⁵ + a₆x⁶ + a₇x⁷
- n = 8 octic,     a₀ + a₁x + a₂x² + a₃x³ + a₄x⁴ + a₅x⁵ + a₆x⁶ + a₇x⁷ + a₈x⁸
- n = 9 novic,     a₀ + a₁x + a₂x² + a₃x³ + a₄x⁴ + a₅x⁵ + a₆x⁶ + … + a₉x⁹
- n = 10 decic,    a₀ + a₁x + a₂x² + a₃x³ + a₄x⁴ + a₅x⁵ + a₆x⁶ + … + a₁₀x¹⁰


```js
// finite polynomial of degree `n`
f(x) = Σ{i=0..n} aᵢxⁱ
// polynomial of degree 2: quadratic
f(x) = Σ{i=0..2} aᵢxⁱ = a₀ + a₁x + a₂x²
// polynomial of degree 3: cubic
f(x) = Σ{i=0..3} aᵢxⁱ = a₀ + a₁x + a₂x² + a₃x³
// polynomial of degree 4: quartic
f(x) = Σ{i=0..4} aᵢxⁱ = a₀ + a₁x + a₂x² + a₃x³ + a₄x⁴

// infinite polynomial
f(x) = Σ{i=0..∞} aᵢxⁱ
f(x) = a₀ + a₁x + a₂x² + a₃x³ + a₄x⁴ + a₅x⁵ + a₆x⁶ + a₇x⁷ + …
// 1st derivative of infinite polynomial
f′(x) = Σ{i=0..∞} i aᵢ xⁱ⁻¹
f′(x) = 0a₀x⁻¹ + 1a₁x⁰ + 2a₂x¹ + 3a₃x² + 4a₄x³ + 5a₅x⁴ + 6a₆x⁵ + 7a₇x⁶ + …
// 2nd derivative of infinite polynomial
```




```js

    a₇ × x⁷
7 × a₇ × x⁶
6 × 7 × a₇ × x⁵
5 × 6 × 7 × a₇ × x⁴
4 × 5 × 6 × 7 × a₇ × x³
3 × 4 × 5 × 6 × 7 × a₇ × x²
2 × 3 × 4 × 5 × 6 × 7 × a₇ × x¹
1 × 2 × 3 × 4 × 5 × 6 × 7 × a₇ × x⁰
0 × 1 × 2 × 3 × 4 × 5 × 6 × 7 × a₇ × x⁻¹ = 0



    aᵢ × xⁱ          // 0th deriv of i-th term
i × aᵢ × xⁱ⁻¹        // 1st deriv of i-th term


i × aᵢ × xⁱ⁻¹        // 2nd deriv of i-th term
```
