# Euclidean

Euclidean relations are a class of binary relations that formalize `Axiom 1` of Euclid's `Elements`: Magnitudes which are equal to the same are equal to each other.

That is, if two elements are related to a third element, then they are related to each other.


A binary relation `R` on a set `A` is **right-Euclidean** (or Euclidean):    
`∀xyz ∈ A. (xRy ∧ xRz ⇒ yRz)`

Dually, a relation `R` on `A` is **left-Euclidean**:    
`∀xyz ∈ A. (yRx ∧ zRx ⇒ yRz)`


```
∀xyz ∈ A. xRy ∧ xRz ⇒ yRz   right Euclidean
∀xyz ∈ A. yRx ∧ zRx ⇒ yRz   left Euclidean

       x
       •
      / \
     /   \
    /     \
   ↙       ↘
y • ------> • z
   \       /
    \     /
     \   /
      ↘ ↙
       •
       xʹ
```



## Properties

In a right-Euclidean relation, due to the commutativity of `⋀` we have both:
- `∀abc ∈ X. (aRb ⋀ aRc -> bRc)` right-Euclidean
- `∀abc ∈ X. (aRc ⋀ aRb -> cRb)` with conjuncts swapped

In a left-Euclidean relation, due to the commutativity of `⋀` we have both:
- `∀abc ∈ X. (bRa ⋀ cRa -> bRc)` left-Euclidean
- `∀abc ∈ X. (cRa ⋀ bRa -> cRb)` with conjuncts swapped


The Euclidean property is distinct from transitivity. For example, `⩽` is transitive but not right-Euclidean, while `xRy` defined by `0 ⩽ x ⩽ y+1 ⩽ 2` is not transitive, but it is right-Euclidean on ℕ.

```
  x R y
-----------
  0 ⩽ x
  0 ⩽ y+1
  0 ⩽ 2
  x ⩽ y+1
  x ⩽ 2
y+1 ⩽ 2
-----------
(0 ⩽ x ⋀ 0 ⩽ 2) -> x ⩽ 2
(0 ⩽ 2 ⋀ 0 ⩽ x) -> 2 ⩽ x
holds only if x=2
-----------
(x ⩽ y+1 ⋀ x ⩽ 2) -> y+1 ⩽ 2
(x ⩽ 2 ⋀ x ⩽ y+1) -> 2 ⩽ y+1
hold only if y=1
-----------
0 ⩽ x ⩽ y+1 ⩽ 2
x=2, y=1
0 ⩽ 2 ⩽ 2 ⩽ 2
```

Right-Euclidean:

```js
 (aRb ⋀  aRc) → bRc ≡
¬(aRb ⋀  aRc) ⋁ bRc ≡
 ¬aRb ⋁ ¬aRc  ⋁ bRc ≡
≡ (a,b) ∉ R ⋁ (a,c) ∉ R ⋁ (b,c) ∈ R

≡ (a,b) ∉ R
⋁ (a,c) ∉ R
⋁ (b,c) ∈ R
```

* For symmetric relations: transitivity, right-Euclideanness and left- Euclideanness coincide. However, also a non-symmetric relation can be both transitive and right Euclidean (for example, `xRy` defined by `y=0`).

* A relation that is both right Euclidean and reflexive is also symmetric and therefore an equivalence relation. Similarly, each left Euclidean and reflexive relation is an equivalence.

* The range of a right Euclidean relation is always a subset of its domain. The restriction of a right Euclidean relation to its range is always reflexive, and therefore an equivalence. Similarly, the domain of a left Euclidean relation is a subset of its range, and the restriction of a left Euclidean relation to its domain is an equivalence.

* A relation `R` is both left and right Euclidean iff the domain and the range of `R` agree, and `R` is an equivalence relation on that set.

* A right Euclidean relation is always quasitransitive, and so is a left Euclidean relation.

* A connected right Euclidean relation is always transitive; and so is a connected left Euclidean relation.

* If `X` has at least 3 elements, a connected right Euclidean relation `R` on `X` cannot be antisymmetric, and neither can a connected left Euclidean relation. On the 2-element set `X = {0,1}`, the relation `xRy` defined by `y=1` is connected, right Euclidean, and antisymmetric, and `xRy` defined by `x=1` is connected, left Euclidean, and antisymmetric.

* A relation `R` on a set `X` is right Euclidean iff the restriction `R' := R|ran(R)` is an equivalence and for each `x ∈ X\ran(R)`, all elements to which `x` is related under `R` are equivalent under `R'`. Similarly, `R` on `X` is left Euclidean iff `R' := R|dom(R)` is an equivalence and for each `x ∈ X\dom(R)`, all elements that are related to `x` under `R` are equivalent under `R'`.

* A left Euclidean relation is left-unique iff it is antisymmetric. Similarly, a right Euclidean relation is right unique iff it is anti-symmetric.

* A left Euclidean and left unique relation is vacuously transitive, and so is a right Euclidean and right unique relation.

* A left Euclidean relation is left quasi-reflexive. For left-unique relations, the converse also holds. Dually, each right Euclidean relation is right quasi-reflexive, and each right unique and right quasi-reflexive relation is right Euclidean.


## Refs

https://en.wikipedia.org/wiki/Euclidean_relation
https://proofwiki.org/wiki/Definition:Euclidean_Relation/Right-Euclidean
https://ncatlab.org/nlab/show/euclidean+relation

https://math.stackexchange.com/questions/2417546/non-transitive-euclidean-relation
https://math.stackexchange.com/questions/3876392/if-a-relation-is-euclidean-is-it-necessarily-asymmetric
https://math.stackexchange.com/questions/1954820/is-a-transitive-and-euclidean-relation-necessarily-symmetric
https://math.stackexchange.com/questions/3380276/relationship-between-definition-of-the-euclidean-metric-and-the-proofs-of-the-py
