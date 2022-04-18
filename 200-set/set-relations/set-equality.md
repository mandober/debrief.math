# Set equality

Two sets are *equal* if they contain the same elements.

```js
∀x(x ∈ A -> x ∈ B) -> A ⊆ B
∀x(x ∈ A <- x ∈ B) -> B ⊆ A
----------------------------
∀x(x ∈ A ⟺ x ∈ B) ⟺ A = B
----------------------------
(A ⊆ B ⋀ B ⊆ A) ⟺ A = B
```

Two sets are *equivalent* if and only if a bijection (one to one correspondence) exists between them.
