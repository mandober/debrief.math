# Type systems :: SUMMARY

- `e : τ` means that a term `e` has type `τ`
- typing à la Church (explicit typing): annotated vars in lambda binders
- typing à la Curry (implicit typing)
- type checking: does `Γ ⊢ e : τ` hold?
- type inference: infer the type `τ` such that `Γ ⊢ e : τ` holds

Type systems are usually analyzed in the context of typed lambda calculi that are perhaps expanded with additional features such as:
- primitive types (bool, int)
- polymorphism
- type ctors (type fucntions)
- dependent types
- let-exp
- top-level declarations (via e.g. let-exp)
- fixed point operator (μ)
- pattern matching
- case-exp
- where-exp
- if-exp

FPLs are particulary amenable to this because they are based on lambda calculus (possibly extended with additional features); and, after all, many PLs have variables, functions and application.

The classical type system for FPLs like ML and Haskell is **Hindley-Milner type system** which is capable of inferring the most general (principle) types of expressions without requiring users to type-annotate them.


*Type inference* works by collecting typing constraints for particular language constructs. Out of the 3 base lambda terms, only application has typing constraints in that 

IF-exp, `if guard then e1 else e2` constraints the types such that the `guard` exp must be (or evaluate to) a Boolean, while the types of branches `e1` and `e2` must be equal and the same type as the overall exp, `if (guard : bool) then (e1 : α) else (e2 : α) : α`.


**Abstraction** does not introduce any typing constraints per se. An abs `λx.B` may be split into two parts: the head part (`λx`) with the binder `λ` and the binding variable `x`, and the body exp `B` which may contain any number of the bound var `x`. 

Actually, the two part can be though of as two free-floating expressions, one being a variable `x : α` and the other an arbitrary exp `B : β`. They are then assembled into an abs by placing the var `x` next the binder (λ) to signify that `x` has become the binding occurrence, capturing all the free occurrences of `x` inside the exp `B` which is placed as the lambda's body, `λx.B`. This is exactly what the Abs typing rule suggests:

```
Γ, x : τ ⊢ e : σ                Γ ⊢ x : τ     Γ ⊢ e : σ
------------------ Abs          -----------------------
Γ ⊢ λx.e : σ → τ                    Γ ⊢ λx.e : σ → τ
```

The rule on the left is usually used since it also conveys the fact that the variable `x` of type `τ` must already be in the context `Γ`. Then, if that same context shows that an exp `e` has type `σ`, we can assemble an abs by joining the var `x` as the binding var (formal param) and the exp `e` as the body, getting the lambda abs `λx.e`. The var `x` then captures all the free var `x` occurring in `e`; exp `e` may contain any number of var `x` which will be replaced by some arg when the lambda is applied to it, or it may contain none (in which case the arg will be discarded).

**Application** `(λx.B)A` introduces the constraints such that the type of arg `A` must be the same as the type of the formal parameter `x`; the overall type is then the type of the lambda's body `B`:
`(λ(x : α). B : γ)(A : β)`
