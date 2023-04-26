# Serial relation

https://en.wikipedia.org/wiki/Serial_relation

A **serial relation**, or more specifically, a **left-total relation**, is a binary relation `R` where every element of the domain has a corresponding element in the range `∀x ∈ A. ∃y ∈ B. (x,y) ∈ R`.

```
R ⊆ A ⨯ B
∀a ∈ A. ∃b ∈ B. (a,b) ∈ R

R ⊆ A ⨯ B
R = { (a,b) | ∀a ∈ A. ∃b ∈ B }

R ⊆ A ⨯ A
∀a ∈ A. ∃b ∈ A. (a,b) ∈ R
```

In a left-total relation R between sets A and B, R ⊆ A ⨯ B,    
all elements of the domain A   
have an assocoated element in the codomain B.

* In ℕ, the LT relation (<) is serial.
* On its domain, every function is also a serial relation.

A reflexive relation is a serial relation but the converse is not true. However, a serial relation that is symmetric and transitive can be shown to be reflexive. In this case the relation is an equivalence relation.

If a strict order is serial, then it has no maximal element.

For a relation R let {y: xRy } denote the "successor neighborhood" of x. A serial relation can be equivalently characterized as every element having a non-empty successor neighborhood. Similarly an inverse serial relation is a relation in which every element has non-empty "predecessor neighborhood".

More commonly, an inverse serial relation is called a surjective relation, and is specified by a serial converse relation.

In normal modal logic, the extension of fundamental axiom set K by the serial property results in axiom set D.
