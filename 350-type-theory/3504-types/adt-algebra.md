# The Algebra of Algebraic Data Types

## TL/DR

alg | ℝ | 0 | 1 | 2 | + | ∙ | - | ÷ |
----|---|---|---|---|---|---|---|---|----
adt | τ | 𝟘 | 𝟙 | 𝔹 | ⊎ | ⨯ |   |   |



𝕃 𝕋 𝕊

alg = ( ℕ, 0, 1, 2, +, ∙ )
adt = { τ, 𝟘, 𝟙, 𝔹, ℕ, 𝕃, 𝕋, 𝕊 }

ADTs and algebra
- annihilator (0) :: empty type, 𝟘
- identity (1) :: unit type, 𝟙
- add (+) :: sum (+, ⊎)
- mul (∙) :: product (⨯)


- unit type,        `𝟙`
- sum type,         `+`, `⊎`
- product type,     `⨯`
- exponential type, `→`
- equality type,    `≡`






## Algebra

Algebraic Data Types (ADTs) reflect the operations similar to those found in algebra. Algebra subsumes arithmetic and its 4 basic operations: addition, multiplication, subtraction and division.


Aside: ADTs are said to reflect algebra (rather then arithmetic) because, similarly to the difference between arithmetic and algebra, the emphasis is on the operations and possible generalizations, rather then concrete values.


The correspondence between addition and multiplication (on the side of algebra) to sum and product types (on the side of type theory) is already astonishing enough to justify the name "algebraic types". Moreover still, since the empty and unit types correspond to the roles 0 and 1 have in algebraic contexts (identity element, annihilator element, and similar).

Note: However, the correspondences between many other algebraic operations (subtraction, division, exponentiation, root, logarithm, etc.) is not so straightforward. This is not to say that one doesn't exists, only that it's not as easily explained [at least not to me]. This is very much still the subject of investigations, with only some hints about what the suitable correspondencies might be. As an uncorroborated (possibly even completely wrong) example, the Huett zippers are said to correspond to derivation (calculus), and types with holes to division. [can't find the papers now to confirm the exact correspondencies, TBC].

A binary operation of addition, or more generally, an n-ary operation of summation, produces a new number by adding up two or more numbers supplied as arguments. The corresponding procedure in type-theoretical setting, should then take two or more types as arguments, and produce a new type from their summation.

ADT = { 𝟘, 𝟙, 𝔹, ℕ, 𝕃, 𝕋, 𝕊 }

```hs
data 𝟘
data Void

data 𝟙 = 𝟙
data Unit = Unit

data 𝔹 = F | T
data ℕ = Z | S    ℕ

data L   a = Nil   | Cons a (L   a)
data Stream a =         Of   a (Stream a)
data Tree   a = Leaf  | Node a (Tree   a) (Tree a)
```

μ ℕ   = 1 +     ℕ
μ L a = 1 + a ⨯ L a
