# Constructions of natural numbers in ZF

There are two major constructions of the set of natural numbers in ZF set theory, namely the *Zermelo construction* and the *Von Neumann construction*.
- Zermelo construction: S(n) = {n}
- Von Neumann construction: S(n) = n ⋃ {n}

When using the Von Neumann construction to construct ℕ, we can easily equip ℕ with an ordering relation defined by: `n ≤ m ⇔ n ⊆ m`, where n,m ∈ ℕ.

The algebraic structure of natural numbers with addition added forms a *commutative monoid*.
```
m + 0 = m
m + S(n) = S(n + m)
```

The algebraic structure of natural numbers with multiplication added forms a *commutative semiring*.
```
m * 0 = 0
m * S(n) = m + (m * n)
```

**The Axiom of Induction** is a logical axiom that lifts *proof by induction* to a valid mathematical argument (it makes the proof by induction a valid mathematical argument) and it does not follow from the other axioms of predicate logic. A proof by induction is all about predicates over the natural numbers.

Suppose we have some general predicate `P(x)` for `x ∈ ℕ`. And suppose we know that the predicate is true when `x = 0`.
```
P(0)    ∀x ∈ ℕ. P(x) ⇒ P(S(x))
-------------------------------
        ∀x ∈ ℕ. P(x)
```

## Peano arithmetic

The Peano arithmetic is another name for the arithmetic of the natural numbers. Here we prove some theorems about the natural numbers using induction.
- The proof of associativity of addition
- The proof of commutativity of addition
- The proof of multiplication of addition
- The proof of multiplication of addition
- The proof of distributivity of multiplication over addition






## Refs

https://www.youtube.com/watch?v=qoNNf7ywwIQ&list=TLPQMTcxMDIwMjNHAzyN4bdX8A&index=6
