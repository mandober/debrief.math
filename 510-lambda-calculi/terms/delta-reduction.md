# Delta reduction

In the lambda calculus augmented with primitive functions and constants, the δ-reduction rule is a relation between λ-terms 

((...(M N₁)...) Nₙ) ->ᵟ R

where:
- `M` is a primitive n-ary function and ∀i. 1<=i<=n, Nᵢ is normalised
- `R` is the result of applying the primitive function to the arg.

In the case where we have a δ-reduction of `M ->ᵟ N`, M is called the δ-redex.

Examples

If we augment the λ-calculus with the natural numbers and the primitive addition operator (+), then:
* `((+ 1) 2) ->ᵟ 3` is a δ-reduction
* `((+ 1) ((+ 1) 1))` is a not a δ-redex


## References

* W. Kluge. Abstract Computing Machines. A Lambda Calculus Perspective. Springer, 2005.
