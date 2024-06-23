# Empty type

The empty type is the canonical uninhabited type.

The empty type is denoted by: `⊥`, `𝟘`, `void`, `empty`.

The empty type can actually be considered as an empty sum.



Rules
- no intro rules
- one elim rule

The empty type has an elimination rule because we still can have functions out of the empty type. 


Types       | Logic             | Sets               | Homotopy
------------|-------------------|--------------------|-----------------
A           | proposition       | set                | space
a : A       | proof             | element            | point
B(x)        | predicate         | family of sets     | fibration
b(x) : B(x) | conditional proof | family of elements | section
0, 1        | ⊥, ⊤              | ∅, {∅}             | ∅, ∗
A + B       | A ∨ B             | disjoint union     | coproduct
A × B       | A ∧ B             | set of pairs       | product space
A → B       | A => B            | set of functions   | function space
∑(x:A) B(x) | ∃(x.A) B x        | disjoint           | sum total space
∏(x:A) B(x) | ∀(x.A) B x        | product            | space of sections
Idᴀ         | equality (=)      | { (x,x) | x ∈ A }  | path space Aᶦ
