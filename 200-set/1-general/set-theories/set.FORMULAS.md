# Set theory: Formulae

Set
- collection of elements
- unordered collection of unique elements
  - collection is not ordered (it doesn't have a notion of order)
  - elements are unique (muliple element's instances collapse into one)
- delimited using braces, `{ … }`
- properties of sets:
  - sets are unordered, {1,2,3} = {2,1,3}
  - elements are unique, {1,2,1,2,3} = {1,2,3}
  - finite {1,2,3}
  - terminal element (100), {1,2,3,…,100}
  - infinite {1,2,3,…}
- roster notation
  - intentional representation
  - extensional representation
    - {1,2,3}
    - {1,2,3,…}
  - set comprehension
    - `{ x | Px }`

Universal set
- denoted by `𝓤`
- Universal set is the set of all individuals
- must be carefully defined, so it is not the set of all sets
- the set of all sets, `𝑼 = { x | x ∈ 𝑼 ⟺ x ∉ 𝑼 }`
- the set of all sets, `x = { x | ∀x(x ∈ x ⟺ x ∉ x) }`

Domain of discorse (DoD)
- variables that stand for sets range over the DoD
- if unspecified, Universal set = Domain of discorse

Empty set
- has own symbol `∅`
- there is only one empty set: *the* empty set
- the empty set is a set without elements `{}`
- in ZF, defined by *the axiom of the empty set*, `∃x ∀y ¬(y ∈ x)` 
  i.e. There is a set such that no element is a member of it
- it can be formally defined by any predicate that evals to false
  - `∅ ≝ { x | ∀x(x ∉ ∅) }`
  - `∅ ≝ { x | ∀x(x ∉ x) }`




Set constructions
- for each set X and each property P, we can form the set 
  `{ x ∈ X | P(x) }` of all members of X that have the property P.
- forall sets X, we can form the set `𝓟(X)` of all subsets of X, 
  i.e. the power set of X, `𝓟(X) = { S | ∀S(S ⊆ X) }`
- forall sets X and Y, we can form the following sets:
  - the set `{X, Y}` whose members are exactly X and Y
  - the ordered pair `(X, Y)` with first coordinate X and second coordinate Y
    and likewise for n-tuples of sets, for any natural number n > 2
  - union `X ⋃ Y = { z | z ∈ X ⋁ z ∈ Y }`
  - intersection `X ⋂ Y = { z | z ∈ X ⋀ z ∈ Y }`
  - Cartesian product `X × Y = { (x, y) | ∀x∀y (x ∈ X ⋀ y ∈ Y) }`
  - relative complements
    - `X ∖ Y = { z | z ∈ X ⋀ z ∉ Y }`
    - `Y ∖ X = { z | z ∈ Y ⋀ z ∉ X }`
  - absoulte complement
    - `X' = { z | ∀z(z ∈ 𝓤 -> z ∉ X) }`


* Russell's paradox
  if `𝓤` is the set of all sets, and `A ⊆ 𝓤` is defined by 
  `A = { x | x ∈ 𝓤 ⋀ x ∉ x }` then `A` 
  would have the property that `A ∈ A <=> A ∉ A`

* Principle of Extensionality:
  `∀x(x ∈ A ⟺ x ∈ B) -> A = B`

* Subset `A ⊆ B`
  - `∀x((x ∈ A -> x ∈ B) <=> A ⊆ B)`
  - `∀A(∅ ⊆ A) <=> ∀x(x ∈ ∅ -> x ∈ A)`
  - `∀A∀B((A ⊆ B ⋀ B ⊆ A) -> A = B)`
  - reflexive:       `∀A(A ⊆ A)`
  - antisymmetric:  `∀AB(A ⊆ B ⋀ B ⊆ A -> A = B)`
  - transitive:    `∀ABC(A ⊆ B ⋀ B ⊆ C -> A ⊆ C)`

* Proper subset `A ⊂ B`
  - `∀A∀B((A ⊆ B ⋀ A ≠ B) -> A ⊂ B)`
  - `∀x[((x ∈ A -> x ∈ B) ⋀ ∃y(y ∉ A ⋀ y ∈ B)) -> A ⊂ B]`
  - antireflexive:   `∀A(¬(A ⊂ A))`
  - asymmetric:     `∀AB(A ⊆ B ⋀ A = B -> A ⊂ B)`
  - transitive:    `∀ABC(A ⊂ B ⋀ B ⊂ C -> A ⊂ C)`

* Cartesian product of two sets: `R = A ⨯ B = { (a,b) | ∀a ∈ A ∧ ∀b ∈ B }`
* Cartesian product of a set with itself: `ℕ² = ℕ ⨯ ℕ = { (n,m) | ∀n,m ∈ ℕ }`

* Relation R ⊆ AB: `R = { (a,b) | a ∈ A, b ∈ B }`

* a ∈ { x     | P(x) } ≡ P(a)
* b = { x ∈ ℕ | P(x) }
* c = { f(x)  | P(x) }

* The empty set, ∅ = { x | x ∉ x } …or the Russell's paradox
* singleton of `a`: x ∈ {a} ⟺ x = a

* Abstraction and Restricted Quantification
  - ∀x ∈ A. Φ(x) ⟺ { x ∈ A | Φ(x) } = A
  - ∃x ∈ A. Φ(x) ⟺ { x ∈ A | Φ(x) } = ∅

Types in set theory
- The typing underlying set theory only distinguishes between the types of
- `t`   proposition
- `s`   set
- `{s}` family of sets
- `_`   anything at all
e.g.
* (∈)                 :: _ -> s -> t
* (⊆)                 :: s -> s -> t
* (⋃)                 :: s -> s -> s
* a ∈ { x | P(x) }    :: t
* { x | P(x) }        :: s
* (A ⋂ B) ⊆ C         :: t
* (A ⋂ B) ⋃ C         :: s
* ∀x(x ∈ A -> x ∈ B)  :: s -> s -> t
* A = B               :: t
* x ∈ A ⟺ x ∈ B      :: t

Set operations
* ∀x(x ∈ A ⋁ x ∈ B) ⟺ x ∈ A ⋃ B
* ∀x(x ∈ A ⋀ x ∈ B) ⟺ x ∈ A ⋂ B
* ∀x(x ∈ A ⋀ x ∉ B) ⟺ x ∈ A \ B

Disjointness and overlap
- Sets A and B are disjoint if A ⋂ B = ∅
- ∀x(x ∉ A ⋂ B) -> A and B are disjoint sets
- ∃x(x ∈ A ⋂ B) -> A and B are overalpping sets

* Two non-empty sets are coincident: ∀x(x ∈ A -> x ∈ B) ⋀ ∀x(x ∈ B -> x ∈ A)

Properties of the algebra of sets
- Annihilation:
  - A ⋂ ∅ = ∅
  - A ⋃ ∅ = A
- Idempotence
  - A ⋂ A = A
  - A ⋃ A = A
- Assoc of ⋃ and ⋂
- Commu of ⋃ and ⋂ over ⋂ and ⋃
- Distr of ⋃ and ⋂

Powerset
- The powerset of a set `X` is the set `𝓟(X) = { A | ∀A ⊆ X }`
- n = |X|
- `|𝓟(X)| = 2ⁿ`
* Guaranteed elements of 𝓟(X) (n vs 2ⁿ)
  - 1 ⨯ 0-elem set:  `∀X.∅ ∈ 𝓟(X)`
  - n ⨯ 1-elem sets: `∀x(x ∈ X --> {x} ∈ 𝓟(X))` (1-to-1)
  - 1 ⨯ n-elem set:  `∀X.X ∈ 𝓟(X)`
  - z ⨯ y-elem set: the distribution of the number (`z`) of `y`-elem subsets follows Pascals' triangle: the powerset of the `n`-elem set has 2ⁿ elems, specified in the nth row of the Pascals' triangle; `1 n … n 1`. For example, if |X| = 5, then the distro of the 32 subsets (2⁵) in 𝓟(X) is `1 5 10 10 5 1`
  - 1  ⨯ 0-elem set, `∅`
  - 5  ⨯ 1-elem set, `∀x. {x} ∈ 𝓟(X)`
  - 10 ⨯ 2-elem sets
  - 10 ⨯ 3-elem sets
  - 5  ⨯ 4-elem sets
  - 1  ⨯ 5-elem set, `X`
  * which is expressed as
    - `n-choose-k` for all values of k where 0 <= k <= n, so `k = 0..n`
    - `n` is the total number of elements in the set
    - `k` is the number of selected elements, 0 <= k <= n
    - here, it is `5-choose-k` for `k = 0..5`
  Formula
  * `n-choose-k` = `n! ÷ k!(n - k)!`
  Identities
  * `n-choose-k` ≡ `n-choose-(n - k)`
      - e.g. `5-choose-0` ≡ `5-choose-5`
      - e.g. `5-choose-1` ≡ `5-choose-4`
      - e.g. `5-choose-2` ≡ `5-choose-3`



Cardinality
* |ℕ| <= |ℤ| <= |ℚ|
* |ℕ| = |ℤ| = |ℚ|
* |ℕ| < |ℝ|
* |ℕ| < |𝓟(ℕ)|
* |ℝ| = ℵ₀
* Schröder-Bernstein theorem: `|A| <= |B|` ⋀ `|B| <= |A|` -> `|A| = |B|`
* The axiom of choice is equivalent to the statement that 
`∀AB. |A| <= |B|` ⋁ `|B| <= |A|`
