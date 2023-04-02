# Relation theory ∷ Types of relations

* A - property of being an element in set A
* R - property of being an element in set R
* P - generic property of relations
* 𝑹 - reflexive property
* I - reflexive property


Refl
IRefl
CoRef
QRefl

Px


```js
A² = A ⨯ A = { (a,b) | ∀a ∈ A, ∀b ∈ A }
A² = A ⨯ A = { (a,b) | ∀a∀b((a ∈ A ⋀ b ∈ A) -> (a,b) ∈ A²) }
R = { (a,b) | a,b ∈ A }     A² = A⨯A      R ⊆ A⨯A     R ∈ 𝓟(A⨯A)
E = ∅  ⊆ A⨯A     U = A² ⊆ A⨯A      R ⊆ A⨯A
abc ∈ A   or    ∀a,b,c ∈ A?
```

## Relations

A relation `R` on a set `A`, `R ⊆ A⨯A` or `R ∈ 𝓟(A⨯A)`, is ...

* REFL               reflexive:  ∀a(a ∈ A -> (a,a) ∈ R)            ✔
* IREF             irreflexive:  ∀a(a ∈ A -> (a,a) ∉ R)            ✔

* SYMM               symmetric:  aRb ⟺  bRa
* ASYM              asymmetric:  aRb ⟺ ¬bRa
* NSYM           antisymmetric:  (aRb ⋀ bRa) -> a = b

* TRAN              transitive:  (aRb ⋀ bRc) ->  aRc
* ATRA          antitransitive:  (aRb ⋀ bRc) -> ¬aRc
* NTRA           nontransitive:  (aRb ⋀ bRc) -> (aRc ⋁ ¬aRc)
                                 (aRb ⋀ bRc) -> ((a,c) ∈?∉? R)

* COREF            coreflexive: aRb -> a = b

* QREF         quasi-reflexive: (aRb ⋀ a ≠ b) -> (aRa ⋀ bRb)
* QR∙L    left quasi-reflexive: (aRb ⋀ a ≠ b) -> aRa
* QR∙R   right quasi-reflexive: (aRb ⋀ a ≠ b) -> bRb

* QTRA        quasi-transitive: (aRb ⋀ ¬bRa) ⋀ (bRc ⋀ ¬cRb) -> (aRc ⋀ ¬cRa)

* SCONN     strongly-connected: ∀a,b ∈ A. aRb ⋁ bRa                 ✔
* CONN         connected/total: a ≠ b -> (aRb ⋁ bRa)
  TOTAL                         aRb ⋁ bRa ⋁ a ≠ b

* TOTAL            right-total: ∀a(a ∈ A -> ∃b(b ∈ A ⋀ aRb))
  SERI                  serial:
* TOT∙R
* TOT∙L


* UNQ∙L            left-unique: ∀abx ∈ A. aRx ⋀ bRx ---> a = b
  FUNC              functional: ∀ab  ∈ A. (f a = f b) -> a = b
* UNQ∙R           right-unique:
* UNIQ                  unique:


REFL ⊕ IREF are opposites, a rel is REFL ⊕ IREF
SYMM ⊕ ASYM are opposites
TRAN ⊕ NTRA are opposites


## Left and right pairs

```js
QREF    QTRA      TOTAL
QR∙L    QTR∙L     TOT∙L
QR∙R    QTR∙R     TOT∙R
```

## More types of binary relations

- Euclideanness
- Density
- Connex and semi-connex relations
- Seriality
- Uniqueness
- Semi-order property 1
- Semi-order property 2

## Special types of binary relations

* Uniqueness properties
  - Injective (left-unique)
  - Functional (right-unique, right-definite, univalent):
  - one-to-one
  - one-to-many
  - many-to-one
  - many-to-many

One-to-one: injective and functional
Many-to-one: functional and not injective
Many-to-many: not injective nor functional

* Totality properties (definable if domain and codomain are specified):
  - Serial (left-total)
  - Surjective (right-total or onto)

* Uniqueness and totality properties (definable if dom and cod are specified):
  - A function: a binary relation that is functional and serial.
  - An injection: a function that is injective
  - A surjection: a function that is surjective
  - A bijection: a function that is injective and surjective

* If relations over proper classes are allowed:
  - Set-like (or local)

* Orders
  - partial order: reflexive + antisymmetric + transitive
  - strict partial order: irreflexive + antisymmetric + transitive
  - total order: reflexive + antisymmetric + transitive + connected
  - strict total order: irreflexive + antisymmetric + transitive + connected
  - equivalence relation: reflexive + symmetric + transitive

* Homogeneous relation over a set X may be subjected closure operations:
  - Reflexive closure
    the (unique) reflexive relation over X containing R,
  - Transitive closure
    the smallest transitive relation over X containing R,
  - Equivalence closure
    the smallest equivalence relation over X containing R.


## Other Types of Relations
- One to One Relations
- One to Many Relations
- Many to One Relation
- Many to Many Relation

One to One Relations
A relation is said to be a One to One relation if all the distinct elements of one set are mapped to distinct elements of another set.

One to One Relations:
One to Many Relations
A relation is said to be One to Many relations if the same element of one set is mapped to another set's more than one element.

One to Many Relations:
Many to One Relation
A relation is said to be Many to One relation if all the distinct elements of one set are mapped to the same element of another set.

Many to One Relation:
Many to Many Relation
A relation is said to be Many to Many relations if one or more than one element is mapped with the same element of another set.
