# Set theory: Formulae

* Principle of Extensionality: `∀x(x ∈ A ⟺ x ∈ B) -> A = B`

* Subset A ⊆ B:
  - ∀x(x ∈ A -> x ∈ B)
  - ∀x(x ∈ ∅ -> x ∈ A) thus ∅ ⊆ A

* Proper subset A ⊂ B: A ⊆ B ⋀ A ≠ B
  - `∀x(x ∈ A -> x ∈ B) ⋀ ∃y(y ∈ B ⋀ y ∉ A)`
  - Refl:     ∀A(A ⊆ A)
  - Antisymm: ∀AB(A ⊆ B ⋀ B ⊆ A -> A = B)
  - Trans:    ∀ABC(A ⊆ B ⋀ B ⊆ C -> A ⊆ C)

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
