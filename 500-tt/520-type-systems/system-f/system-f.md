# System F

## 5. Adding parametric polymorphism: System F

The STLC is not polymorphic. For example, the identity function for booleans and naturals is expressed by two syntactically different lambda abstractions:
- (λx:Nat : x) : Nat → Nat
- (λx:Bool : x) : Bool → Bool

However, they only differ in type annotations.

`System F` [Gir72, Rey74] extends the STLC with *universal parametric polymorphism*.

It adds new forms of abstraction and application where types appear as terms (at the term/value level), not just as type-annotations, but as type args.

The new syntax can be motivated using the above identity functions. A parametrically polymorphic identity is obtained by abstracting over types (universal abstraction), e.g.

`Λ α : * . λ x : α . x`

and the type of this term is

`∀ α : * . α -> α`

i.e. `(Λ α : * . λ x : α . x) : ∀ α : * . α -> α`

The capitalised lambda, `Λ`, is introduced to distinguish *universal abstraction over types* from the abstraction over terms.

Dual to abstraction, there is *universal application*, e.g.

`(Λ α : * . λ x : α . x) Nat -->> (λ x : Nat . x)`

Universal application is evaluated by substituting the *type argument* for the free occurrences of the bound *type variable* in the body of the universal abstraction.

Here is another example - notice that the type variable `β` appears in a type-application:

`(Λ β : * . (Λ α : * . λ x : α . x) β) Nat -->> (Λ α : * . λ x : α . x) Nat`


Figure below shows the additions to the grammar (wrt STLC extended with naturals and Booleans as the base types, along with products, sums, fixpoints) to the typing rules and to the operational semantics.

Because of the introduction of type variables, rules for type-term well-formedness are provided (a few are shown in the first row of the second box).

We reintroduce `*` at a new level and call it a *base or ground kind*. Kinds classify types. For the moment, type variables in universal abstractions always have kind `*`, for they can only be substituted for base types which are all manifest. (We also foreshadow the language of kinds by introducing the kind meta-variable `κ`). Type-assignments (in the context/env `Γ`) now also store the kinds of type variables.

The type rules for universal abstraction and application are shown in the second row of the second box. Notice that a type-level, capture-avoiding substitution operation is assumed which replaces type variables for types in terms.

The last box enlarges the reduction relation to account for universal applications. Universal abstractions are normal forms like regular term abstractions.

```hs
-- SYNTAX

Kind := *

Type := TypeVar
      | ∀ TypeVar : Kind . Type -> Type

Term := Λ TypeVar : Kind . Term             −− universal abstraction
      | Term Type                           −− universal application


-- TYPING RULES

Γ(α) = κ
-----------
Γ |- α : κ


Γ |- σ    Γ |- τ
-----------------
Γ |- σ -> τ


Γ, α : κ |- σ
---------------
Γ |- ∀ α : κ . σ


Γ, α : κ |- t : τ
------------------------------
Γ |- (Λ α : κ . t) : (∀ α : κ . τ)


Γ |- t : (∀ α : κ . τ)    Γ |- σ
------------------------------
Γ |- t σ : τ[α:=σ]


-- OPERATIONAL SEMANTICS

---------------------------
(Λ α : κ . t) σ -->> t[α:=σ]
```
