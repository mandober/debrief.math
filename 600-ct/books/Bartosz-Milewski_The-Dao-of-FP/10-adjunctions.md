# 10. Adjunctions

## TOC

- 10. Adjunctions
  - 10.1 The Currying Adjunction
  - 10.2 The Sum and the Product Adjunctions
    - The diagonal functor
    - The sum adjunction
    - The product adjunction
  - 10.3 Adjunction between functors
  - 10.4 Limits and Colimits
  - 10.5 Unit and Counit of Adjunction
    - Triangle identities
    - The unit and counit of the currying adjunction
  - 10.6 Distributivity
  - 10.7 Free/Forgetful Adjunctions
    - The category of monoids
    - Free monoid
    - Free monoid in programming
  - 10.8 The Category of Adjunctions
  - 10.9 Levels of Abstraction


## 10. Adjunctions

A sculptor subtracts irrelevant stone until a sculpture emerges. A mathematician abstracts irrelevant details until a pattern emerges. We were able to define a lot of constructions using their mapping-in and mapping-out properties. Those, in turn, could be compactly written as isomorphisms between homsets. This pattern of natural isomorphisms between hom-sets is called an adjunction and, once recognized, pops up virtually everywhere.

## 10.1 The Currying Adjunction

The definition of the exponential object is the classic example of an adjunction that relates mappings-out and mappings-in.

>Every mapping out of a product corresponds to a unique mapping into the *exponential object*:

    C(a × b, c) ≅ C(a, cᵇ)

The object `c` takes the role of the focus on the left hand side; the object `a` becomes the observer on the right hand side. On the left, `a` is mapped to a product `a × b`, and on the right, `c` is exponentiated.

We can spot two functors at play. They are both parameterized by `b`:
- on the left we have the functor `(− × b)` applied to `a`
- on the right we have the functor `(−)ᵇ` applied to `c`

If we write these functors as:

    Lᵇ a = a × b
    Rᵇ c = cᵇ

then the natural isomorphism

    C(Lᵇ a, c) ≅ C(a, Rᵇ c)

is called the *adjunction* between them.

In components, this isomorphism tells us that, given a mapping `φ ∈ C(Lᵇ a, c)`, there is a unique mapping `φᵀ ∈ C(a, Rᵇ c)` and vice versa. These mappings are sometimes called the *transpose* of each other (the nomenclature taken from matrix algebra).

The shorthand notation for the adjunction is `L ⊣ R`.

Substituting the product functor for L and the exponential functor for R, we can write the currying adjunction concisely as:

    (− × b) ⊣ (−)ᵇ

The exponential object `bᵃ` is sometimes called the *internal hom* and is written as [a,b]. This is in contrast to the *external hom*, which is the set written as `C(a,b)`.

The external hom is not an object in C (except when C itself is Set). With this notation, the currying adjunction can be written as:

    C(a × b, c) ≅ C(a, [b, c])

A category in which this adjunction holds is called **cartesian closed**.

Incidentally, the category of (small) categories `𝒞𝒶𝓉` is cartesian closed, as reflected in this adjunction between product categories and functor categories that uses the same internal-hom notation:

    𝒞𝒶𝓉(𝐀 × 𝐁, 𝐂) ≅ 𝒞𝒶𝓉(𝐀, [𝐁, 𝐂])

Here, both sides are sets of natural transformations.

## 10.2 The Sum and the Product Adjunctions

The currying adjunction relates two endofunctors, but an adjunction can be easily generalized to functors that go between categories. Let's see some examples first.

## The diagonal functor


## The sum adjunction
## The product adjunction
## 10.3 Adjunction between functors
## 10.4 Limits and Colimits
## 10.5 Unit and Counit of Adjunction
## Triangle identities
## The unit and counit of the currying adjunction
## 10.6 Distributivity
## 10.7 Free/Forgetful Adjunctions
## The category of monoids
## Free monoid
## Free monoid in programming
## 10.8 The Category of Adjunctions
## 10.9 Levels of Abstraction
