# Set Theory :: ZFC Axioms :: Axiom Schema of Replacement

https://en.wikipedia.org/wiki/Axiom_schema_of_replacement


The **Axiom Schema of Replacement** asserts that the image of a set under any definable function will also fall inside a set (will also be a set).

Formally, let `φ` be any formula in the language of ZFC whose free variables are among `x`, `y`, `A`, `w₁…wₙ`, so that in particular `B` is not free in `φ`. Then, the axiom can be expressed by:

`∀A ∀w₁ … ∀wₙ (∀x(x ∈ A ⇒ ∃!y φ) ⇒ ∃B ∀x(x ∈ A ⇒ ∃y(y ∈ B ⋀ φ)))`

For clarity, in the case of no variables `wᵢ`, this simplifies to:

```ts
∀A((∀x ∈ A. ∃!y. ϕ(x,y,A)) ⟹ ∃B(∀y(y ∈ B ⇔ ∃x ∈ A. ϕ(x,y,A))))
// i.e.
∀A(∀x(x ∈ A ⇒ ∃!y s.t. ϕ(x,y,A)) ⟹ ∃B ∀y(y ∈ B ⇔ ∃x(x ∈ A ⋀ ϕ(x,y,A))))
```



## Analysys

```js
// ∀A( ∀a[a ∈ A ⇒ ∃!b ϕ] ⇒ ∃B[∀a(a ∈ A ⇒ ∃b[b ∈ B ⋀ ϕ])] )
// ∀A ( ∀a [a ∈ A ⇒ ∃!b ϕ] ⇒ ∃B [∀a (a ∈ A ⇒ ∃b [b ∈ B ⋀ ϕ] ) ] )
// ∀A ( ∀a { [ a ∈ A ⇒ ∃!b ϕ] ⇒ ∃B [∀a (a ∈ A ⇒ ∃b [b ∈ B ⋀ ϕ] ) ] } )

∀A ∀a ∃B ∃b ( (a ∈ A ⇒ b ϕ) => (b ∈ B ⋀ ϕ) )




∀A(
  ∀a(
    a ∈ A
    ⇒
    ∃!b ϕ
  )
  =>
  ∃B(
    ∀a(
      a ∈ A
      ⇒
      ∃b(
        b ∈ B ⋀ ϕ
      )
    )
  )
)
```



- `A` is the original, or domain, set (for all A)
- `B` is the new, or codomain, set (B exists); B is not free in φ, B ∉ FV(φ)
- `w₁ … wₙ` are free vars if needed; not used
- A, w₁ … wₙ, x, y ∈ FV(φ), B ∉ FV(φ)
- `φ` is a formula, or a function
- `∀x(x ∈ A ⇒ ∃!y φ)`, for all elems `x` in A, there is…
- `∃!y φ` …there is a unique `y` (later, y ∈ B) such that φ holds

For all A (domain set),
(
  for all x,
  x being in A
  implies 
  there is a unique y such that φ holds,
)
all of which implies that
(
  there is B (codomain set)
  such that
    for all x,
    x being in A
    implies 
    there is y in B
    such that φ holds
)

We can interpret `A` as a domain set, `B` as a codomain set (whose existence the axiom is asserting), and `φ` as a function, `φ : A → B`. The axiom has to establish that `φ` is a function by asserting that it associates every element `x` in `A` to a unique element `y` in `B`, such that `(x,y) ∈ φ` or `φ(x) = y`.


- ϕ : A → B
- ∀A ∃B dom and cod sets
- ∀a(a ∈ A ⇒ ∃!y(y ∈ B)) each elem in dom is assoc with a unique elem in cod
- such that ϕ(x) = y, i.e. (x,y) ∈ ϕ
