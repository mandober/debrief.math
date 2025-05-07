# cosh

- dom: ℝ
- ran: 
- x-intercept: ∅
- y-intercept: 1
- inflection points: 
- asymptotes: none (although it seems as if there are)
- parity: 
- monotonicity: 
- minima: (0, 1)
- maxima: 


- hyperbolic cosine:  `cosh(x) = (eˣ + e⁻ˣ)/2`
- hyperbolic sine:    `sinh(x) = (eˣ - e⁻ˣ)/2`
- hyperbolic tangens: `tanh(x) = sinh(x)/cosh(x)`
- `cosh²(x) - sinh²(x) = 1` (unlike trig identity `cos²(x) + sin²(x) = 1`)

At first glance it is a little strange to call these trigonometric, that label comes from an understanding of cosine and sine in terms of imaginary exponentials `eⁱˣ` where `i = √−1`.

We also note that cosh(0) = 1 and sinh(0) = 0, these identities make hyperbolic cosine and sine a better choice of notation than `eˣ` and `e⁻ˣ` for certain questions.

The inverse hyperbolic functions
- cosh⁻¹(x)
- sinh⁻¹(x)
- tanh⁻¹(x)

These satisfy the formulas
- cosh(cosh⁻¹(x)) = x   for `x ∈ [1, ∞)`
- sinh(sinh⁻¹(y)) = y   for `y ∈ ℝ`
- tanh(tanh⁻¹(z)) = z   for `z ∈ (-1, 1)`

and the formulas
- cosh⁻¹(cosh(x)) = x   for `x ∈ [0, ∞)`
- sinh⁻¹(sinh(y)) = y   for `y ∈ ℝ`
- tanh⁻¹(tanh(z)) = z   for `z ∈ ℝ`

The `sinh` and `tanh` are injective, so they have a global inverse. By contrast, the `cosh` is not injective and it is customary to let `cosh⁻¹(x)` denote the local inverse for `cosh` restricted to `[0, ∞)`.
