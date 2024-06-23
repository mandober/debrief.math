# Algorithm M

## Type constraints

Algorithm M carries a type constraint from the context of an expression and stops when the expression cannot satisfy the current type constraint.

Consider the following expression:

```
                             e₂                       e₄
                ┌────────────┴────────────────────┐ ┌─┴─┐
(fn x => x+1) ( (fn y => if y then true else false) false )
└───┬───────┘ └─────────────────┬─────────────────────────┘
    e₁                          e₂
```

The expression `e₁` must be a function expression; thus M infers its type with the constraint `α → β`. The inference will succeed with substitution `{α ⟼ int,β ⟼ int}`.

This imposes the constraint that the argument expression `e₂` must be type `int`. Thus M infers the type of `e₂` with the constraint `int`. This, in turn, makes M infer the type of `e₃` with the constraint `γ → int`. But the then-branch expression in the function's body is `bool`; thus M stops at the `true` expression with a type error.

>One characteristic of M is that a type constraint that is derived from the current context dominates in subsequent steps.

For example, given an expression `f(false,1,2)` where the type of `f` is `α × α × α → α`, M reports that 1 must have the bool type, because the constraint from the `false` expression forces the subsequent sibling expressions to have the same type.

In comparison, Johnson and Walz's unification algorithm [Johnson and Walz 1986] reports that the 'false' expression must have the type int, because it selects "the most popular" types if multiple, conflicting types are bound to a type variable.

## Notation

- type scheme
- equality of type schemes
- bound type vars
- free type vars
- all type vars
- type environment
- substitution
- substitution support set
- applying a substitution
  - to a type τ
  - to a type scheme σ
  - to a type environment Γ
- composition of substitutions
- equality of substitutions
- closure: of a type τ under a type env Γ, Closᴦ(τ)


A type scheme, `∀ α̅ . τ`, expanded into `∀ α₁ … αₙ . τ`, is a polytype, e.g.
- ∀ α β. α → β → α
- ∀ α β. (α → β → β) → β → [α] → β
Most of the time, all type vars occurrring in `τ` are bounded by `∀` in `α̅`.




-  `α̅`    is short for  `α₁ … αₙ`
- `∀ α̅ . τ` is short for `∀ α₁ … αₙ . τ`

- `ftv(τ)` set of free type variables in a type `τ`
- `itv(τ)` set of all type variables in a type `τ`

- equality of type schemes is up to renaming of bound type vars

- for a type scheme σ = ∀α̅.τ, the set `ftv(σ)` is `ftv(τ) ∖ α̅`

- for a type env Γ, `ftv(Γ) = ⋃ {x ∈ dom Γ} ftv(Γ x)`

- if `Γ` = { α₁ : τ₁, …, αₙ : τₙ } then `dom(Γ)` = { α₁, …, αₙ }

- a substitution `{ αᵢ ⟼ τᵢ | 1≤i≤n}` replaces each type var `αᵢ` by type `τᵢ`

- we write `{α̅ ⟼ τ̅}` as a shorthand for a substitution `{αᵢ ⟼ τᵢ | 1≤i≤n}`,
  where `α̅` and `τ̅` have the same length `n`.

- `Rα̅` is a shorthand for `{ Rα₁, … Rαₙ }`

- for a substitution `S`, the support `supp(S)` is `{ α | Sα ≠ α}` 

- `itv` is the set of involved type variables in terms of a subst S, 
  itv(S) = { α | β ∈ supp(S), α ∈ {β} ∪ ftv(Sβ) }

- for a subst `S` and a type `τ`, `Sτ` is the type resulting from applying
  every substitution component `αᵢ ⟼ τᵢ` in `S` to `τ`. Hence, `{}τ = τ`.

- for a substitution `S` and a type scheme `σ`, 
  `Sσ = ∀β̅ . S{α̅ ⟼ β̅}τ` where `β̅ ∩ (itv(S) ∪ ftv(σ)) = ∅`

- for a substitution `S` and a type environment `Γ`, 
  `SΓ = { x ⟶ Sσ | x ⟶ σ ∈ Γ }`

- composition of substitutions S followed by R is written as `RS`, which is 
  { α ⟼ R(Sα) | α ∈ supp(S) } ∪ { α ⟼ Rα | α ∈ supp(R) ∖ supp(S) }

- two substitutions S and R are equal iff 
  Sα = Rα for every α ∈ supp(S) ∪ supp(R)

- for a substitution P and a set of type variables V, 
  we write `P↓V` for { α ⟼ τ ∈ P | α ∉ V }

- notation `∀α̅.τ′ ≻ τ` means that there exists a substitution S 
  such that `Sτ′ = τ` and `supp(S) ⊆ α̅`

- `Γ + x : σ` means `{ y ⟶ σ′ | x ≠ y, y ⟶ σ′ ∈ Γ} ∪ { x ⟶ σ }`.

- `Closᴦ(τ)` is same as `Gen(Γ,τ)` in HM, ie `∀α̅.τ` where α̅ = ftv(τ) ∖ ftv(Γ)

## Algorithm M definition

Algorithm M returns a substitution from 3 components:
- an expression
- a type environment
- a type constraint

The inferred type of the expression is achieved by applying the result substitution to the type constraint of the expression.

The type constraints are just types. Note that the algorithm does not unify types at application expressions. Instead, it unifies at constant, variable, and lambda expressions.

The language, its type inference rule, and Algorithm W. Every new type variable is distinct from each other, and the set `New` of new type variables introduced at each recursive call to `W(Γ, e)` satisfies `New ∖ ftv(Γ) = ∅`.

```hs
Abstract Syntax

Expressions,
  e := ()                   constant
     | x                    variable
     | λx:e                 abs
     | e e                  app
     | let x = e in e       l e t-binding
     | fix f λx:e           fixpoint

Types
  τ := ι                    base type
     | α                    type var
     | τ → τ                function type

TypeScheme
  σ := τ                    base types
     | ∀ α̅ . τ              forall type

TypeEnv,
  Γ := ε                    empty context
     | Γ, x : τ             extended context


TypingRules

---------- CON
Γ ⊢ () : ι

Γ(x) ≻ τ                x : τ ∈ Γ
---------- VAR   (or)   ---------- VAR
Γ ⊢ x : τ               Γ ⊢ x : τ

Γ, x : τ₁ ⊢ e : τ₂
------------------- ABS
Γ ⊢ λx.e : τ₁ → τ₂

Γ ⊢ e₁ : τ₁ → τ₂     Γ ⊢ e₂ : τ₁
---------------------------------- APP
Γ ⊢ e₁ e₂ : τ₂

Γ ⊢ e₁ : τ₁     Γ, x : Closᴦ(τ₁) ⊢ e₂ : τ₂
--------------------------------------------------- LET
Γ ⊢ let x = e₁ in e₂ : τ₂

Γ, f : τ ⊢ λx.e : τ
----------------------- FIX
Γ ⊢ (fix f λx.e) : τ
```

Context (type env) Γ is a finite mapping of type vars to type schemes:
`Γ ∈ Var ⟼ TypeScheme`.

`∀α̅.τ′ ≻ τ` means that there exists a substitution S such that `Sτ′ = τ` and `supp(S) ⊆ α̅`.

For a substitution `S`, the support `supp(S)` is `{ α | Sα ≠ α}`, and the set `itv(S)` of involved type variables is `{ α | β ∈ supp(S), α ∈ {β} ∪ ftv(Sβ) }`.



```hs
-- BASE type
W(Γ, B) = (id, ι)

-- VAR
W(Γ, x) = (id, {α̅ := β̅}τ) where Γ(x) = ∀α̅.τ, new β̅

-- ABS
W(Γ, λx.e) =
  let (S1, τ1) = W(Γ + x : β, e), new β
  in (S1, S1β → τ1)

-- APP
W(Γ, e1 e2) =
  let (S1, τ1) = W(Γ, e1)
      (S2, τ2) = W(S1Γ, e2)
      S3 = 𝒰(S2τ1, τ2 → β), new β
  in  (S3 ∘ S2 ∘ S1, S3β)

-- LET
W(Γ, let x = e1 in e2) =
  let (S1, τ1) = W(Γ, e1)
      (S2, τ2) = W(S1Γ + x : Clos_{S1Γ}(τ1), e2)
  in  (S2 ∘ S1, τ2)

-- FIX
W(Γ, fix f λx.e) =
  let (S1, τ1) = W(Γ + f: β, λx:e), new β
      S2 = 𝒰(S1β, τ1)
  in (S2 ∘ S1, S2τ1)
```


## Algorithm M

```hs
M : TypEnv × Expr × Type → Subst

-- BASE type
M(Γ, (), ρ) = 𝒰(ρ, ι)                               -- (M1)

-- VAR
M(Γ, x, ρ) = 𝒰(ρ, [α̅:=β̅]τ) 
  where
  Γ(x) = ∀α.τ, new β̅                                -- (M2)

-- ABS
M(Γ, λx.e, ρ) =
  let S1 = 𝒰(ρ, β1 → β2), new β1, β2                -- (M3)
      S2 = M(S1Γ + x: S1β1, e, S1β2)                -- (M4)
  in  S2 ∘ S1

-- APP
M(Γ, e1 e2, ρ) = let S1 = M(Γ, e1, β → ρ), new β    -- (M5)
  S2 = M(S1Γ, e2, S1β)                              -- (M6)
  in S2 ∘ S1

-- LET
M(Γ, let x = e1 in e2, ρ) =
  let S1 = M(Γ, e1, β), new β                       -- (M7)
      S2 = M(S1Γ + x : ClosS1Γ(S1β), e2, S1ρ)       -- (M8)
  in  S2 ∘ S1

-- FIX
M(Γ, fix f λx:e, ρ) = M(Γ + f : ρ, λx.e, ρ)         -- (M9)
```
