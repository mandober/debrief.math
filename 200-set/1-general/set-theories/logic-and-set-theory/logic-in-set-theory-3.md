# Classification of sets

A *space* is a set equipped with some structure.

A *map* `ϕ` is a binary relation between two set A and B, `ϕ : A → B`, such that for every `a ∈ A`, there is exactly one `ϕ(a) ∈ B` such that `ϕ(a,b)`, also writen as `ϕ(a) = b` or `a ⟼ ϕ(a)`. Set `A` is a domain or source, `B` is a codomain or target of `ϕ`.

`ϕ(A)` under `ϕ`, or `Im(ϕ)(A)`, is the *image* of set A under the map `ϕ`:

`Im(ϕ(A)) = { ϕ(a) | a ∈ A }`

A map `ϕ : A → B` is *surjective* if its image coincides with B, `Im(A) = B`; that is the entire codomain participates in the relation `ϕ`.

A map `ϕ : A → B` is *injective* if `ϕ(x₁) = ϕ(x₂) --> x₁ = x₂`. That is, the entire domain A participates in the relation `ϕ` and every element of A is associated to exactly one element of B (however, some elements of codomain may not participate in the relation ϕ at all).

A map `ϕ : A → B` is *bijective* if it is surjective and injective.

Two sets A and B are (set-theoretically) *isomorphic* if there is a bijection between them, `A ≅ B`. If there is a bijection (any bijection at all), then, generically, there are many bijections (it's not unique). Isomorphism is important when comparing the cardinalities of infinite sets.

A set A is *infinite* if these exists a proper subset of it B such that `B ≅ A` (B is isomorphic to A); otherwise it is a *finite*. A finite set A has bijection with a subset of ℕ, `{0,1,2,…,N}` where `N ∈ ℕ`, such that `|A| = N`.

A set A is *countably infinite* is there is an isomorphism between it and the set ℕ, `A ≅ ℕ`, otherwise is it is *uncountably infinite*.

Given two maps `ϕ : A → B` and `ψ : B → C`, we can compose them `ψ ∘ ϕ`.

Given a bijective map `ϕ : A → B`, then there is a *inverse* map `ϕ⁻¹ : B → A`, defined uniquelly by `ϕ⁻¹ ∘ ϕ = Idᴀ` and `ϕ ∘ ϕ⁻¹ = Idʙ`.

If `ϕ : A → B` is any map, then the *preimage* set, `Pre(V)`, where `V ⊆ B`:

`Pre(V) = { a ∈ A | ϕ(a) ∈ V }`

If ϕ is a bijection then the preimage is a singleton set; oterwise the preimage may have sevaral elements. In other words, a preimage contains those elements of the domain `a` that all map to the same codomain element `b`, from the aspect of one or more element `b`; if there are more `b`, they form a subset of the codomain `V ⊆ B` and the preimage is then a subset of domain.

## Equivalence relation

An *equivalence relation* is a relation that is refl, sym and trans.

If `~` is an equivalence relation on a set `M`, then for any `m ∈ M` define the set `[m] := { n ∈ M | n ~ m } ⊆ M`, called an *equivalence class* of `m`.

If `a ∈ [m]` then [a] = [m], i.e. any member if the same equivalence class defines the same equivalence class. That is, any element of an equivalence class can act as its *representative*.

Either [n] = [m] or [n] ⋂ [m] = ∅, for any two elements m and n. That is, an equivalence relation partitions a set into pairwise disjoint subsets.

A set `M` partitioned into equivalence classes by an equivalence relation `~` is denoted `M/~`, and it contains as much elements (each equivalence class constitutes an element) as much as there are equivalence classes.

The set `M/~` itself is called the *quotient set*, and its elements are the equivalence classes [m], for any equivalence class [m] obtained from the equivalence relation `~` on `M`.

`M/~ := { [m] | m ∈ M }`

Each equivalence class [m] is a subset of `M`, and thus an element in `𝒫(M)`.

Due to the AC, there exists a complete system of representatives for `~`, that is a set `R`, such that there is a bijection between the elements of `R` and the quotient set, `R ≅ M/~` (by picking one element from each equivalence class and then collecting them in R).

For example, quotient set obtained from set ℤ under the equivalence relation that `~ := m - n ∈ 2ℤ` splits ℤ into two equivalence classes represented by [0] and [1], `ℤ/~ = {[0], [1]}`.

Inheriting addition from ℤ to the quotient set ℤ/~, `⊕ := ℤ/~ ⨯ ℤ/~ -> ℤ/~`, defined by `[m] ⊕ [m] = [m + n]` must be done with care because it could lead to ill-defined operation depending on the choice of representatives.

In this case, it seems to check out, that the choice of a representative does not matter since adding an even number to an odd number always results in an odd number.

```hs
[m] ⊕ [m] = [m + n]
[0] ⊕ [1] = [0 + 1] = [1]
[2] ⊕ [1] = [2 + 1] = [3]
[0] ⊕ [3] = [0 + 3] = [3]
[2] ⊕ [3] = [2 + 3] = [5]
```

For any two representatives of even numbers, [a] and [a′] ∈ 2ℤ, and any two representatives of odd numbers [b] and [b′] ∈ 2ℤ, such that `a - a′ ∈ 2ℤ` and `b - b′ ∈ 2ℤ`, then there is `m ∈ 2ℤ` such that `a - a′ = 2m`, and there is `n ∈ 2ℤ` such that `b - b′ = 2n`, 

```hs
-- a - a′ = 2m --> a′ = a - 2m
-- b - b′ = 2n --> b′ = b - 2n

[a′] ⊕ [b′] = [a′ + b′]
            = [(a - 2m) + (b - 2n)]
            = [a + b - 2(m + n)]
            = [a + b]
            = [a] ⊕ [b]
```
