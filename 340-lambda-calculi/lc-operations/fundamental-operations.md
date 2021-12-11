# Fundamental operations

λ-calculus has 3 fundamental operations:
* α-conversion
* β-reduction
* η-conversion

Additional operation:
* δ-conversion


## Axioms of the lambda calculus

- α-equivalence:        `(M ==ɑ N) <=> (M = N)`
- β-equivalence:   `(λx.M)N ==ᵦ M[N/x]`
- η-equivalence:     `λx.Mx ==η M`

- ξ-equivalence:   `(M = N) <=> (λx.M = λx.N)`

- refl:                     `M <=> M`
- symm:               `(M = N) <=> (N = M)`
- trans:      `(M = N ⋀ N = P) --> (M = P)`
- congruence: `M = M′ ⋀ N = N′ --> (MN = M′N′)`
