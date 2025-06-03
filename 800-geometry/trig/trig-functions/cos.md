# cos

## ID Card

- name: cosine, cosinus
- short: cos
- definition: cos(x)
- cos(x) = adj/hyp (CAH) = sin(x)/tan(x)
- dom(cos) = ℝ
- ran(cos) = [-1,1] 𝑥=𝜋+𝜋/2, 𝑛 ∈ ℤ
- co-prefix
  - complementary trig fn
  - has a negative 1st derivative
- derivatives:
  - cos′(x) = -sin(x)
  - cos′′(x) = -cos(x)
  - cos′′′(x) = sin(x)
  - cos′′′′(x) = cos(x)
- antiderivative: ∫ cos(x) dx = sin(x)
- parity: even, i.e. cos(-x) = cos(x)
- cosine wave
  - crests:   y =  1 when x = 0,    ±2π,   ±4π,   …
  - zeros:    y =  0 when x = ±π/2, ±3π/2, ±5π/2, …
  - throughs: y = -1 when x = ±π,   ±3π,   ±5π,   …
  - period: 2π
  - at x=0, y=1, so "first" point is at (0,1)
- sin and cos are out of phase of each other by π/2
  - sin θ = cos(θ ± π/2)
  - cos θ = sin(θ ± π/2)
- related functions:
  - inverse: arccos
  - reciprocal: sec
  - hyperbolic: cosh
- intercepts
  - x-intercept: every `n π`
  - y-intercept: one intercept at (0,0)
- extrema
  - minima: (2πn + 3π/2, 1), (2πn+π, −1), n ∈ ℤ
  - maxima: (2πn + π/2, 1)
  - inflection points: every (πn, 0)
- monotonicity
  - monotonically decreasing: (2πn +  π/2, 2πn + 3π/2)
  - monotonically increasing: (2πn + 3π/2, 2πn + 5π/2)
- everywhere above `n ∈ ℤ`


## Identities

```js
// CAH
cos(x) = adj/hyp

// even partity
cos(-x) = cos(x)

// cos
cos(x) = sin(x)/tan(x)    as tan(x) = sin(x)/cos(x)

// cos²
cos²(x) = 1 - sin²(x)     as sin²(x) + cos²(x) = 1
cos(x) = √(1 - sin²(x))

// reciprocal
           1                    1
cos(x) = ------      sec(x) = ------
         sec(x)               cos(x)

// cos inverse
arccos(x) = cos⁻¹(x), if x ∈ [-1, 1]

// periodic identity
cos(x+2π) = cos(x)

// double angle identity
cos(2x) = cos(2x) - sin(2x)
cos(2x) = 2 cos(2x) - 1
cos(2x) = 1 - 2 sin(2x)

// half angle identity
           ± √(1 + cos(x))
cos(x/2) = ----------------
                 2

// triple angle identity
cos(3x) = 4 cos³(x) - 3 cos(x)

// complementary identity
cos(90°-x) = sin(x)
// supplementary identity
cos(180°-x) = -cos(x)

// sum identity
cos(A+B) = cos(A)cos(B) - sin(A)sin(B)
cos(A+B) = cos(A)cos(B) + sin(B)sin(A) // ?
// difference identity
cos(A-B) = cos(A)cos(B) + sin(A)sin(B)


// sum to product identity
sin(A) + sin(B) =  2 [ sin((A+B)/2) cos((A−B)/2) ]
sin(A) − sin(B) =  2 [ cos((A+B)/2) sin((A−B)/2) ]
cos(A) + cos(B) =  2 [ cos((A+B)/2) cos((A−B)/2) ]
cos(A) − cos(B) = −2 [ sin((A+B)/2) sin((A−B)/2) ]

// product to sum identities
sin(A)cos(B) = [ sin(A+B) + sin(A−B) ] / 2
cos(A)cos(B) = [ cos(A+B) + cos(A−B) ] / 2
sin(A)sin(B) = [ cos(A−B) − cos(A+B) ] / 2
```








## Links

https://www.cuemath.com/trigonometry/cosine-function/
https://www.cuemath.com/trigonometry/trigonometric-identities/
https://www.cuemath.com/trigonometry/inverse-trigonometric-functions/
https://www.cuemath.com/trigonometry/tangent-function/
