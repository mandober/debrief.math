# System Fω

## 6. Adding type operators: System Fω

`System Fω` extends `System F` with type operators, i.e. functions at the type level, also called *type constructors*.

An example of type operator is `List` which when applied to a manifest type `τ` returns the type of lists of type `τ`.

Its associated value constructors are:
- `Nil  :: ∀ a:*. List a`
- `Cons :: ∀ a:*. a -> List a -> List a`

which are names for primitive constants without δ-rules, e.g. a term like `Cons t Nil` is in normal form, whatever the `t`. Manifest types such as `Nat` or `Bool` are "values" at the type level.

A fully applied (i.e. closed) type operator also constitutes a manifest type, e.g. `List Nat`. Occasionally, we blur the distinction between manifest types and type operators by considering the former as *nullary type operators* and the latter as *proper type operators*.

To model type-level functions, the PSTLC is lifted to the type level as shown in the first box of Figure 5, so that terms such as `α`, `λα.κ:τ`, and `τ σ`, that is, *type variables*, *type-level abstractions*, and *type-level applications*, are defined as legal type-terms.
- type variables, `α`
- type-level abstractions, `λα.κ:τ`
- type-level applications, `τ σ`

The kind of a type-term is somewhat inaccurately described as the 'type' of a type-term. But kinds only describe the arity and order of type operators. The kind of a nullary type operator (a manifest type) is `*`. The kind of a proper type operator is denoted as `κ -> ν`, where `κ` is the kind of its argument and `ν` the kind of its result.

The order of a type operator is determined from its kind signature as follows:
- `order(*)       ≝  0`
- `order(κ -> ν)  ≝  max (1 + order κ) (order ν)`

Kinds do not have a status as the 'types' of types when there are orthogonal features in the type language, like type classes [Blo91, WB89, Jon92], which render them inaccurate as such. For instance, the following two Haskell definitions of the type operator List have the same kind, but the second is constrained on the range of type arguments:
- `data List a = Nil | Cons a (List a)`
- `data Ord a => List a = Nil | Cons a (List a)`

Type checkers kind-check applications of type operators to arguments to make sure the latter have the right expected kind. Kind-checking rules are shown in the second box of Figure 5. The first three lines establish the kinds of manifest types and also depict the kind-checking rules for primitive type operators such as `+` and `×`, etc. The last line contains the type rules of the PSTLC but lifted as kind rules (compare with Figure 1).

The third box in Figure 5 shows a type-level reduction relation `|>` between type-terms that is reflexive, transitive, and compatible with all ways of constructing type-terms. The symbol `P` stands for a primitive type, i.e. `Bool`, `Nat`, or `1`.

The reduction relation is static: type-level applications are reduced by the type-checker at compile time. This relation is a simple example of type-level computation.

The last box in Figure 5 defines a relation of structural type equivalence which specifies that two type-terms are equal when their structure is equal. The relation is reflexive, symmetric, transitive, and compatible with all ways of constructing types.

Normal forms of type-terms are
- type variables
- primitive types
- type-level abstractions
- type-terms of the form `τ₁ × τ₂`, `∀α.κ:τ₁`, `τ₁ +τ₂`, and `τ₁ -> τ₂`, when `τ₁` and `τ₂` are themselves in normal form.

There are 3 sorts of substitutions, all using the same notation: There are two at the term level (term variables replaced for terms in term abstractions and type variables for type-terms in universal abstractions), plus one at the type level (type variables for type-terms in type-level abstractions).


```hs
-- SYNTAX

Kind := *
      | Kind -> Kind

Type := Type Type                         -- type application
      | λ TypeVar : Kind . Type           -- type abstraction


-- TYPING RULES

-------------
Γ |- Nat : *

-------------
Γ |- Bool : *


Γ |- τ₁:*     Γ |- τ₂:*
--------------------------
Γ |- (τ₁ -> τ₂) : *

Γ |- τ₁:*     Γ |- τ₂:*
--------------------------
Γ |- (τ₁ × τ₂) : *

Γ |- τ₁:*     Γ |- τ₂:*
--------------------------
Γ |- (τ₁ + τ₂) : *


Γ, α:κ |- τ:*
--------------------------
Γ |- ∀α:κ. τ : *


Γ(α) = κ
-----------
Γ |- α : κ


Γ |- τ₁ : κ -> ν    Γ |- τ₂ : κ
--------------------------------
Γ |- (τ₁ τ₂) : ν


Γ, α : κ |- τ : ν
--------------------------
Γ |- (λα:κ. τ) : κ -> ν



-- OPERATIONAL SEMANTICS

---------------------------
(λα:κ . τ) τ′ |> τ[α:=τ′]


   τ₁ |> τ₁′
----------------
τ₁ τ₂ |> τ₁′ τ₂


  τ₂ |> τ₂′
--------------
P τ₂ |> P τ₂′


τ₁ |> τ₁′     τ₂ |> τ₂′
---------------------------
τ₁ + τ₂ |> τ₁′ + τ₂′


τ₁ |> τ₁′     τ₂ |> τ₂′
---------------------------
τ₁ × τ₂ |> τ₁′ × τ₂′


τ₁ |> τ₁′     τ₂ |> τ₂′
---------------------------
τ₁ -> τ₂ |> τ₁′ -> τ₂′


       τ |> τ′
-----------------------
∀α:κ . τ |> ∀α:κ . τ′


------- REFL
τ |> τ

τ₁ |> τ₂    τ₂ |> τ₃
---------------------- TRANS
      τ₁ |> τ₃


-- EQUIVALENCE RELATION (≡) ON TYPE-TERMS

------
τ ≡ τ


τ₁ ≡ τ₂
--------
τ₂ ≡ τ₁

τ₁ ≡ τ₂    τ₂ ≡ τ₃
-------------------
     τ₁ ≡ τ₃

τ₁ ≡ σ₁    τ₂ ≡ σ₂
-------------------
τ₁ ! τ₂ ≡ σ₁ ! σ₂

       τ ≡ σ
-------------------
∀x:κ . τ ≡ ∀x:κ . σ

       τ ≡ σ
-------------------
λα:κ . τ ≡ λα:κ . σ

τ₁ ≡ σ₁    τ₂ ≡ σ₂
-------------------
τ₁ τ₂ ≡ σ₁ σ₂

--------------------------
(λα:κ : τ) τ′ ≡ τ[α:=τ′]
```
