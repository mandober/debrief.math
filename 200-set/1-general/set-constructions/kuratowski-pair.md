# Kuratowski pair

In 1921, C. Kuratowski came up with what is now the accepted definition of an ordered pair:

`(a,b) := {{a}, {a,b}}`

Kuratowski's definition holds up in the case `a = b`:

`(a,a) := {{a}}`

```js
(a,a) = {{a}, {a,a}}
      = {{a}, {a}}
      = {{a}}
```

That is, both components have the same exact value, `a = b = {a}`. This is not the case with some other definitions of an order pair.


This definition is valid even when the two components are the same:

```js
(a,a) =
= { {a}, {a,a} }
= { {a}, {a} }
= { {a} }
```

* Given an ordered pair `p`, the property "`a` is the first component of `p`" may be formulated as

`∃p ∃a (∀z (z ∈ p -> a ∈ z))`

```js
// fst
∃p ∃a (∀z (z ∈ p -> a ∈ z))
```

(meaning, if an object `x` is in all (both) member-sets of `p`, then `x` is the first component of `p`).

* Given an ordered pair `p`, the property "`b` is the second component of `p`" can be formulated as:

`∃p ∃b ∃z ((z ∈ p ⋀ b ∈ z) ⋀ (∀mn ( (m ∈ p ⋀ n ∈ p ⋀ m ≠ n) → b ∉ m ⋁ b ∉ n)))`


```js
// Sd
∃p ∃b (
  (∃z (z ∈ p ⋀ b ∈ z)) ⋀ 
  ∀m (m ∈ p ->
    ∀n (n ∈ p ->
      (m ≠ n -> (b ∉ m ⋁ b ∉ n))
    )
  )
)
```

(meaning, given a pair `p` such that, for all member-sets `m` and `n` in `p`, if `m ≠ n` then there's an object `b` such that `b` is either in `m` or in `n`)

In the case that the left and right coordinates are identical, the right conjunct is trivially true, since `m ≠ n` is never the case.


```js
// fails in case (a,a)
∃p (
  ∀m ∀n (
    ((m ∈ p ⋀ n ∈ p) -> m ≠ n) -> ∃b (b ∈ m ⊕ b ∈ n)
  )
)

// 1) valid in both cases: (a,b) or (a,a)
∃p ∃b (
  ∀m ∀n (
    (m ∈ p ⋀ n ∈ p) -> (
      (m ≠ n -> b ∈ m ⊕ b ∈ n) ⋁ (m = n -> b ∈ m)
    )
  )
)

// 2) valid in both cases: (a,b) or (a,a)
∃p ∃b (∃z (z ∈ p ⋀ b ∈ z)) ⋀ 
  ∀m ∀n (
    (m ∈ p ⋀ n ∈ p) -> (m ≠ n -> (b ∉ m ⋁ b ∉ n))
  )

// 3) valid in both cases: (a,b) or (a,a)
∃p ∃b (
  (∃z (z ∈ p ⋀ b ∈ z))
  ⋀ 
  ∀m (m ∈ p ->
    ∀n (n ∈ p ->
      (m ≠ n -> 
        (b ∉ m ⋁ b ∉ n)
      )
    )
  )
)
```
