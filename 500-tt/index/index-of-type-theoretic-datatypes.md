# Type theory :: Index :: Data types


`{ 𝟘; 𝟙; 𝟚; _⨯_; _⊎_; _≡_; 𝓤; Σ; Π }`

```hs
🗇 The empty type, 0, ⊥

------------- ty-ctor
Γ |- ∅ : Type

⏺ Weak universal property

Γ |- p : ∅     Γ |- C : Type
----------------------------
    Γ |- abort(p) : C


For any type C, there is a function (φ : ∅ → C) so for
any element p of ∅, abort(p) is a well-defined element of C.


🗇 The unit type, 1, ⊤


----------- ty-ctor    --------- data-ctor
unit : Type            tt : unit

⏺ Weak universal property

Γ |- C : Type    Γ |- c : C     Γ |- tt : unit
----------------------------------------------
             Γ |- triv(tt, c) : C

For any type C, there is a function (φ : unit → C) so for the
only element tt of unit, triv(tt, c) is a well-defined element of C.

⏺ Computation rule

Γ |- C : Type    Γ |- c : C
---------------------------
Γ |- triv(tt, c) ≡ c : C


🗇 Products

Γ |- A : Type    Γ |- B : Type
------------------------------- ty-ctor
      Γ |- A ⨉ B : Type


Γ |- a : A    Γ |- b : B
------------------------- data-ctor
Γ |- (a, b) : A ⨉ B


Γ |- C : Type    Γ |- p : A ⨉ B    Γ,x:A, y:B |- c:C
------------------------------------------------------ elimination
              Γ |- unpack(p, c) : C


Γ |- C : Type    Γ |- a:A    Γ |- b:B     Γ, x:A, y:B |- c:C
------------------------------------------------------------- computation
          Γ |- unpack((a, b), c) ≡ c[a/x, b/y] : C
```
