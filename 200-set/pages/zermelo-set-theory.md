# Set theory :: Set theories :: Zermelo set theory

https://en.wikipedia.org/wiki/Zermelo_set_theory

Zermelo set theory (sometimes abbreviated as `Z-`), as put forward by Ernst Zermelo in his seminal 1908 paper, is the ancestor of the modern ZF set theory and its extensions, such as von Neumann-Bernays-Gödel set theory.

It bears certain differences from its descendants, which are not always understood, and are frequently misquoted.

## Axioms of Zermelo set theory

The axioms of Zermelo set theory refer to objects, some of which are *sets* and some *urelements*.

Zermelo used a formal language in which
- membership relation
- equality relation
- a unary predicate that idetifies an object as a set

are all implicit (later set theories assume all is set, so they have no need for such unary predicates and urelements).


### 1. Axiom of Extensionality

if every element of a set `M` is also an element of `N`, and vice versa, then `M = N`. Every set is determined by its elements.

`∀a ∀b (∀x (x ∈ a ⟺ x ∈ b) ⟺ (a = b))`

### 2. Axiom of elementary sets

There exists the emppty set `∅` that contains no element at all. If `a` is any object of the domain, there exists a set `{a}` containing only `a` as an element. If `a` and `b` are any two objects of the domain, there always exists a set `{a,b}` containing as elements `a` and `b`, but no object `x` distinct from them both.

`∀x ∀y ∃p ((x ∈ p ⋀ x ⊆ p) ⋁ (y ∈ p ⋀ y ⊆ p))`

### 3. Axiom of separation

Whenever the propositional function `¬x` is defined for all elements of a set `M`, `M` possesses a subset `M'` containing as elements precisely those elements `x` of `M` for which `¬x` is true.

`∀(w₁ … wₙ) ∀a (∃b (∀x (x ∈ b -> (x ∈ a ⋀ φ(x, w₁, …, wₙ, a)))))`

### 4. Axiom of the power set

To every set T there corresponds a set T' , the power set of T, that contains as elements precisely all subsets of T.

`∀z ∀x (z ⊆ x -> ∀q (q ∈ z -> q ∈ x))`


### 5. Axiom of the union

To every set T there corresponds a set ∪T, the union of T, that contains as elements precisely all elements of the elements of T.

`∀𝓕 ∃a ∀y ∀x (x ∈ y ⋀ y ∈ 𝓕 -> x ∈ a)`

### 6. Axiom of Choice
 
If `T` is a set whose elements are nonempty sets and are mutually disjoint, then its union `⋃ T` contains at least one subset `S` that has one, and only one, element in common with each element of `T`.

∀X(∅ ∉ X -> {∃f[f : X → ⋃ X ∧ ∀A(A ∈ X -> f(A) ∈ A]})


### 7. Axiom of infinity

Domain has at least one set `z` that contains `∅`; and, if `x` is in `z`, then `{x}` is also in `z`.

`∃x ∃e (∀z (z ∉ e) ⋀ (e ∈ x) ⋀ ∀y (y ∈ x -> S(y) ∈ x))`

```hs
∃x                         -- there is a set x
  ( ∃e(e ∈ x ∧ ∀z(z ∉ e))  -- e = ∅, ∅ is a member of x
  ⋀ ∀y(y ∈ x → S(y) ∈ x)   -- if y is in x then S(y) is also in x
  )
```

- `∃e∀z(z ∉ e)` means that `e` has no members, i.e. `e` is the empty set, `∅`
- `∃x∀y(y ∈ x …)` references the elements, `y`, of some set `x`;    
   that is, there exists a set `x` such that (for) all its elements `y` …

All in all, there is, at least one, set `x` that contains the empty set, `∅`, and the successor of each of its element. The last part implies infinity: `x` contains `∅` (which represents 0 in the set-theoretic construction of ℕ), and it contains the successor of 0, `{∅}` (which repr 1), and then the successor of 1, `{∅, {∅}}` (repr 2), and the successor of 2, `{∅, {∅}, {∅,{∅}}}` (repr 3), and so on. Thus, `x` contains all the natural numbers, i.e. `x` is the set `ℕ`.
