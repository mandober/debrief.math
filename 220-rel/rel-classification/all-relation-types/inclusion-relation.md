# Inclusion relation

- subset relation
- subclass relation


Inclusion relation, `⊆`


Relations between the Inclusion and Membership relation:

`S ⊆ A` ⇔ `S ∉ A`       (1)

`S ⊆ A` ⇔ `S ∈ 𝒫(A)`    (2)





`S ⊆ A` ⇔ `S ∉ A`       (1)
`S ⊆ A` => `S ∉ A`       (1L)
`S ∈ A` => `S ⊈ A`       (1L) converse

`S ⊆ A`    ⇔ `S ∈ 𝒫(A)`    (2)
`S ⊈ A`    => `S ∉ 𝒫(A)`    (2L)
`S ∈ 𝒫(A)` => `S ⊆ A`       (2L) converse





(`S ⊆ A` => `S ∈ 𝒫(A)`) ⋀ (`S ∈ 𝒫(A)` => `S ⊆ A`)

`S ∉ 𝒫(A)  ⇔  S ⊈ A`
`S ⊈ A  ⇔  S ∉ 𝒫(A)`



thus
- `∅ ⊆ A  ⇔  ∅ ∈ 𝒫(A)` ⋀ `∅ ∉ A`
- `A ⊆ A  ⇔  A ∈ 𝒫(A)`


* If `S` is a subset of `A`, then `S` is an element of the powerset of `A`.

`S ⊆ A => S ∈ 𝒫(A)`

* Actually, it is a stronger relation: `S` is a subset of a set `A` iff `S` is an element of the powerset of `A`.

`S ⊆ A ⇔ S ∈ 𝒫(A)`

* Thus,
- `∅ ⊆ A  ⇔  ∅ ∈ 𝒫(A)`
- `A ⊆ A  ⇔  A ∈ 𝒫(A)`


Relation (2) between the Inclusion and Membership relation:

`S ⊆ A  ⇔  S ∉ A`

because `S`, being a subset of `A`, is a set (and not an element of `A`).






```
  A  = { α, β }
𝒫(A) = { ∅, {α}, {β}, {α,β} }
---
α = {a}
β = {b,c}
---
  A  = {     α ,  β }
𝒫(A) = { ∅, {α}, {β}, A }
---
  A  = {      {a}  ,  {b,c}                }
𝒫(A) = { ∅ , {{a}} , {{b,c}} , {{a},{b,c}} }
---
{a} ∈ A         => {a} ⊈ A
{{a}} ⊆ A       => {{a}} ∉ A
{{a}} ⊆ A       => {{a}} ∈ 𝒫(A)
```
