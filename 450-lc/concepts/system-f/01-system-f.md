# System F

System F (λ2) is an extension of the simply-typed lambda calculus (λ→) that adds the operation of abstraction over types. It introduces a mechanism of universal quantification over types.

System F is also called the Girard-Reynolds *polymorphic λ-calculus* or *the second-order lambda calculus* and it is usually symbolized by `λ2` (the "2" is for second-order abstraction - not only abstraction over values but also over types).

System F was originally introduced in the context of proof theory [^Gir71] by Jean-Yves Girard in 1971, under the name System F. It was independently rediscovered in the context of computer science by John Reynolds in 1974 [^Rey74] under the name polymorphic typed λ-calculus.

System F *formalizes parametric polymorphism* in programming languages, thus forming a theoretical basis for languages such as Haskell and ML.

Whereas STLC has *vars ranging over terms* and binders for them, System F additionally has *vars ranging over types* and binders for them.

System F has explicit type application, so in a function call, the user must explicitly supply the type argument(s), normally before they supply the value argument(s).

Abstraction on the value level uses the standard `λ` symbol for the value binder, while the type-level abstraction uses the capital lambda letter, `Λ`, as the new symbol for the type binder. By convention, type variables use the lowercase Greek letters for their names. The STLC uses inline type annotation, so System F just extends this inline syntax by adding the type binders. For example, the identity function is expressed in System F as the judgment

```hs
⊢ Λϕ. λaᶲ. a : ∀ϕ. ϕ → ϕ
```

The expression `aᶲ` means that (this binding occurrence of the) var `a` must have the type `ϕ`, also expressed as `a : ϕ`. The expression after the colon denotes the type of the lambda term preceding it.

As a term rewriting system, **System F is strongly normalizing**. However, type inference in System F (without explicit type annotations) is *undecidable*.

Under the Curry-Howard isomorphism, System F *corresponds to the fragment of second-order intuitionistic logic that uses only universal quantification*.

System F is a part of the lambda cube, where it is one of the three elementary axis of extension - it adds polymorphism to the typed calculi - the second axes adds type ctors, and the third axis adds dependent types. Mixing the polymorhism with type ctors results in the `λ2ω` calculus, and the mix of polymorhism with dependent types in the `λ2Π` calculus. Finally, the mix of polymorhism, type ctors and dependent types results in the `λ2Πω` calculus, aka the calculus of constructions, `λC`.


## Notation

- `λ` vs `Λ` vs `∀`
- `λ` lambda abstraction
- `Λ` type (big lambda) abstraction
- `∀` universal quantifier, forall
- expressable existential quantification may be expressed using ∀
- type abstractions syntax
- type application syntax


The *type lambda abstraction*, `Λ`, is a **value-level construct**; it does not appear in type signatures (`∀` does), only in lambda expressions. That is, `Λ` is a binder for type variables, at the value level.

The *lambda abstraction*, `λ`, is a **value-level construct**; that is, `λ` is a binder for variables, at the value level.

The *universal quantifier* `∀` classifies polymorphic functions (like a kind). It only appears in type signatures, at the type level. It acts as a binder for type variables at the type level.

*Type abstractions* is explicitly written as `Λτ.e`.   
*Type application* is explicitly written as `e[T]`.



The `I` combinator, `λa. a`, gains the type `∀τ. τ -> τ`, which may be all expressed as `Λτ. λa:τ. a : ∀τ. τ -> τ`.

```hs
-- identity function, untyped
λa. a
-- only annotating the formal param `a` with a type `τ`
λa : τ. a
-- annotating everything (overkill)
λa : τ. a : τ → τ
-- which means
(λ(a:τ). a) : τ → τ
-- or even
(λ(a:τ). a:τ) : τ → τ

-- In fact, only annotating the function is sufficient
λa. a : τ → τ

-- However, the type var `τ` is free in the exp above.
-- We must BIND it explicitly:
Λτ. λa. a : τ → τ
-- We must QUANTIFY it explicitly:
λa. a : ∀τ. τ → τ

-- In fact, we must BIND AND QUANTIFY IT EXPLICITLY:
Λτ. λa. a : ∀τ. τ → τ
```




## Typing rules

The first 4 typing rules of System F are the same as the rules 1-4 of STLC. The additional rule 5 is about type application, and the rule 6 is about type abstraction.

```hs
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



    Γ |- M : ∀α. σ
(5) --------------------
    Γ |- M τ : σ[τ/α]


    Γ, α 𝚝𝚢𝚙𝚎 |- M : σ
(6) --------------------
    Γ |- Λα. M : ∀α. σ
```

where `α 𝚝𝚢𝚙𝚎` in the context indicates that `α` is bound (e.g. in the rule 6); actually, it means that `α` is a type variable of the saturated, (base) type `𝚝𝚢𝚙𝚎`.

## Logic and predicates

The `Boolean` type is defined as `∀α. α -> α -> α` where `α` is a type param.

This means that `Boolean` is the type of all functions which take as input a type `α`, and two expressions of type `α`, and produce as output an expression, also of type `α`.

These definitions for the Boolean values `T` and `F` only add types to the Church Booleans:
- `T := Λα. λx:α λy:α. x`
- `F := Λα. λx:α λy:α. y`

These two functions require 3 (and not 2) arguments: the first arg is a type (bound to the type var `α`), while the second (bound to the var `x`) and third (bound to the var `y`) args should be lambda expressions, which is reflected in the type `∀α. α → α → α` being the same for the 2nd and 3rd arg.

>The universal quantifier `∀` that binds the type param `α` corresponds to the type-level lambda binder, `Λ`, that binds the `α` type param in the lambda expression itself.

Also, `Boolean` should be treated just as a convenient shorthand for the type `∀α. α → α → α`, for it is not a symbol of System F, but rather a meta-symbol.

- `Boolean := ∀α. α → α → α`

Likewise, `T` and `F` are "meta-symbols" (if such functions could be named within System F, then there would be no need for the lambda-expressive apparatus capable of defining functions anonymously or for the fixed-point combinator that works around that restriction).

With the lambda terms `T` and `F`, we can define some logical operators of the type `Boolean → Boolean → Boolean`:

- `NOT := λx:Boolean.             x Boolean F T`
- `AND := λx:Boolean. λy:Boolean. x Boolean y F`
- `OR  := λx:Boolean. λy:Boolean. x Boolean T y`

In these definitions, `Boolean` is the type argument to `x` (e.g. in the exp inside NOT's body, `x Boolean F T`), specifying that the other two parameters (`F` and `T`) that are given to `x`, have the type `Boolean`.

As in Church encodings, there is no need for a dedicated conditional function, since we can just use the raw Boolean-typed terms as decision functions. However, if one is requested

- `IF_THEN_ELSE := Λα. λx:Boolean. λy:α. λz:α. x α y z`

A predicate returns a Boolean-typed value. The most fundamental predicate, `IS_ZERO`, returns `T` iff its arg is the Church Numeral for zero:

- `IS_ZERO := λ(n : ∀α. (α → α) → α → α). n Boolean (λx:Boolean. F) T`


## System F structures

System F allows recursive constructions to be embedded in a natural manner, related to that in Martin-Löf's type theory. Abstract structures, `S`, are created using constructors. These are functions typed as:

`K₁ → K₂ → ⋯ → S`

Recursivity is manifested when `S` itself appears within one of the types `Kᵢ`. If you have `m` of these constructors, you can define the type of `S` as:

`∀α. (K¹₁[α⟼S] → ⋯ → α) ⋯ → (Kᵐ₁[α⟼S] → ⋯ → α) → α`

For instance, the natural numbers can be defined as an inductive datatype `N` with constructors
- `zero: N`
- `succ: N → N`

The System F type corresponding to this structure is `∀α. α → (α → α) → α`.

The terms of this type comprise a typed version of the Church numerals, the first few of which are:
- `0 := Λα. λx:α. λ(f : α → α). x`
- `1 := Λα. λx:α. λ(f : α → α). f x`
- `2 := Λα. λx:α. λ(f : α → α). f (f x)`
- `3 := Λα. λx:α. λ(f : α → α). f (f (f x))`

If we flip the arguments to get `∀α. (α → α) → α → α`, then the Church numeral for `n` is a hof that takes a farg `f` and returns the `n`th power of `f`.

## Use in programming languages

The version of System F used in this article is as an explicitly typed, or *Church-style*, calculus. The typing information contained in λ-terms makes type-checking straightforward. Joe Wells has settled in 1994 an "embarrassing open problem" by proving that type checking is undecidable for a *Curry-style* variant of System F, in which type annotations may be elided. Wells's result implies that type inference for System F is undecidable.

A restriction of System F, known as the Hindley-Milner type system, has an efficient type-inference algorithm, and is used for many statically typed FPLs.

Over time, as the restrictions of HM-style type systems have become apparent, languages have steadily moved to the more expressive logics for their type systems. As of 2008, GHC goes beyond HM and uses *System F extended with non-syntactic type equality and GADTs*.

## The Girard-Reynolds Isomorphism

In second-order intuitionistic logic, the second-order polymorphic lambda calculus (F2) was discovered by Girard (1972) and independently by Reynolds (1974).

Girard proved *the Representation Theorem*: that in second-order intuitionistic predicate logic (P2), functions from the natural numbers to the natural numbers that can be proved total, form a projection from P2 into F2.

Reynolds proved *the Abstraction Theorem*: that every term in F2 satisfies a logical relation, which can be embedded into the logical relations P2.

Reynolds has also proved that a *Girard projection* followed by a *Reynolds embedding* produces the identity, i.e. the **Girard-Reynolds Isomorphism**.

## System Fω

While System F corresponds to the first axis of Barendregt's lambda cube, System Fω or the higher-order polymorphic lambda calculus combines the first axis (polymorphism) with the second axis (type operators); it is a different, more complex system.

System Fω can be defined inductively on a family of systems, where induction is based on the kinds permitted in each system:

`Fₙ` permits kinds:
- `*` (the kind of types) and
- `J ⇒ K` where `J ∈ Fₙ˗₁` and `K ∈ Fₙ` (the kind of functions from types to types, where the argument type is of a lower order)

In the limit, we can define system Fω to be `Fω = ⋃ {1 ≤ i} Fᵢ`, i.e.

$${\displaystyle F_{\omega }={\underset {1\leq i}{\bigcup }}F_{i}}$$

That is, Fω is the system which allows functions from types to types where the argument (and result) may be of any order.

Note that although Fω places no restrictions on the order of the arguments in these mappings, it does restrict the universe of the arguments for these mappings: they must be types rather than values.

System Fω does not permit mappings from values to types (dependent types), but it allows
- mappings from values to values (λ abstraction)
- mappings from types to values (Λ abstraction)
- mappings from types to types (lambda abstractions at the type level)











[^Gir71]: *Une Extension de l'Interpretation de Gödel à l'Analyse, et son Application à l'Élimination des Coupures dans l'Analyse et la Théorie des Types*, Jean-Yves Girard, 1971. Proceedings of the Second Scandinavian Logic Symposium, Amsterdam, https://doi.org/10.1016%2FS0049-237X%2808%2970843-7

[^Rey74]: *Towards theory of type structure*, John Reynolds, 1974. Paris colloquium on programming, Springer-Verlag LNCS 19.
http://repository.cmu.edu/cgi/viewcontent.cgi?article=2289&context=compsci

[^gir]: *The Girard-Reynolds Isomorphism*, second edition, Philip Wadler, 2005
http://homepages.inf.ed.ac.uk/wadler/papers/gr2/gr2.pdf
