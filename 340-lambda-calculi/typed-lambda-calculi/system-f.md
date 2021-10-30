# System F

https://en.wikipedia.org/wiki/System_F

First there was the completely unconstrained lambda calculus which proved paradox prone, so, as before, types were thrown in, trading one problem for a myriad more.

`System F`, aka the *Girard-Reynolds polymorphic λ-calculus* or the *second-order λ-calculus*, is a typed λ-calculus that differs from the STLC by the introduction of a mechanism of universal quantification over types. System F thus formalizes the notion of *parametric polymorphism*. System F was discovered independently by logician Jean-Yves Girard (1972) and computer scientist John C. Reynolds (1974).

Whereas STLC has *variables ranging over terms*, and binders for them, System F additionally has *variables ranging over types*, and binders for them.

As an example, the fact that the identity function can have any type of the form `A -> A` would be formalized in System F as the judgment:

```hs
-- judgment
⊢ Λα. λxᵃ. x : ∀α. α → α

-- one line definition
Λα. λxᵃ. x : ∀α. α → α

-- split into type signature and definition
id :: Λa. ∀a. (a -> a)
id :: λxᵃ. x
```

where
- `Λa.` is type-level binder
- `∀a.` is the universal quantifier (binder?)
- `α` is a type variable
- `λx.` is term-level binder
- `x` is a term variable
- `xᵃ` is a term variable x of type α
- `a -> a` is a type-level function
- `λx. x` is a term-level function (lambda abstraction)


The `Λ` is traditionally used to denote type-level functions, as opposed to the `λ` which denotes term-level functions. (the superscripted `xᵃ` means that the bound `x` is of type `α`).


As a *term rewriting system*, System F is strongly normalizing. However, type inference in System F (without explicit type annotations) is undecidable.

Under the Curry-Howard isomorphism, System F corresponds to the fragment of second-order intuitionistic logic that uses only universal quantification.

System F can be seen as part of the lambda cube, together with even more expressive typed lambda calculi, including those with dependent types.


## Typing rules

The typing rules of System F are the rule 1-4 of Simply Typed Lambda Calculus with the addition of rules 5-6

```
    𝔁:σ ∈ Γ
(1) --------
    Γ |- 𝔁:σ

    𝚌𝚘𝚗𝚜𝚝 𝓬:T             (𝓬 is a constant of type T)
(2) ---------
    Γ |- 𝓬:T

    Γ, 𝔁:σ |- 𝓮:τ
(3) --------------------
    Γ |- (λ𝔁:σ.𝓮):σ -> τ

    Γ |- 𝓮₁:σ -> τ   Γ |- 𝓮₂:σ
(4) --------------------------
    Γ |- 𝓮₁𝓮₂:τ



    Γ |- M:∀α.σ
(5) --------------------
    Γ |- Mτ:σ[τ/α]


    Γ,α type |- M:σ
(6) --------------------
    Γ |- Λα.M:∀α.σ
```

where `α type` in the context indicates that α is bound (rule 6) .

The 5th rule is that of application, and the 6th of abstraction.

TYPES Summer School 2005

Proofs of Programs and Formalisation of Mathematics - Lecture Notes Vol I
