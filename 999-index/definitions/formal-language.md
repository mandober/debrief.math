# Formal language

https://www.youtube.com/watch?v=HzYby2xo9NI&list=PL5A7YJbdLraFIVpCD3Kv3YUuSQ6OoJag2&index=15

**Alphabet**, `Σ`, is a finite set of symbols.

e.g.
- Σ = {0, 1}
- Σ = {a, b, c}

*Kleene star operator*, `Σ⋆`, is used to define a set of an infinite number of finite sequences (strings, words) over the alphabet.

For example, even if Σ = {a}, `Σ⋆` is infinite, Σ⋆ = {a, aa, aaa, …}

Σ⋆ = {ε, a, b, aa, ab, bb, …}

`ε` (epsilon) is the empty string.

`L ⊆ Σ⋆` is called a **formal language**.

We explore systematic ways of describing languages and testing whether a word belong to a language (which is a computationally difficult task).

## Regular languages

A language recognized by a DFA is called a **regular language**.

Regular languages are recognized by FSM. This is a part of the theory of deterministic finite automata (DFA).

A **monoid** is a set equipped with identity and an associative binop closed over the set. If `∀xy. x∙y = y∙x` we get a **commutative monoid**.

`Σ⋆` with concatenation (`∙`) as binop and `ε` as identity is a monoid.

*Cancellativity* is a special property: `∀xyz. xy = xz ⇒ y = z`. This property makes a monoid a **cancellative monoid**.

`Σ⋆` with concatenation (`∙`) as binop and `ε` as identity is a cancellative monoid.

*Homomorphisms*: if `M₁` and `M₂` are monoids, and `h : M₁ → M₂` satisfies 
`h (x ∙ y) = h x ∙ h y` and `h ε₁ = ε₂`, then `h` is a **homomorphism**. Homomorphisms preserve identity (they map identity to identity) and they preserve multiplication (concat).

**Universal property of `Σ⋆`**: suppose `f : Σ → M` is any function, then there exists a *unique homomorphism* `f⋆ : Σ⋆ → M` such that this diagram commutes:

```
Σ ───η───→ Σ⋆
  ⟍        │
    ⟍      │f⋆
    f ⟍    │
        ↘  ↓
           M
```

`f = f⋆ ∘ η` where `η(a) = a`, for all `a ∈ Σ`.

`Σ⋆` is called the **free monoid** generated by `Σ`.