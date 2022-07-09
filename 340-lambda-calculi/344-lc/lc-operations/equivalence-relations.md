# Equivalence relations

λ-calculus equality and equivalence relations:
* α-equivalence
* β-equivalence
* η-equivalence
* Equivalence relation
  - reflection, `M = M`
  - asymmetry,   `M N = N M -> N = M`
  - transitivity
* ζ-equality


* Axioms of the lambda calculus
- (α)             M =α= N <=> M = N
- (β)             (λx.M)N ==ᵦ M[N/x]
- (η)               λx.Mx <=> M
- (ξ)               M = N <=> λx.M = λx.N
- (refl)                M <=> M
- (symm)          (M = N) <=> (N = M)
- (trans) (M = N ⋀ N = P) ==> (M = P)
- (cong)  M = M′ ⋀ N = N′ ==> (MN = M′N′)
