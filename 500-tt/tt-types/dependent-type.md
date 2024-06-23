# Dependent type

A **parameterized type** is a family of types *indexed by another type*. 
A parameterized type is a type that depends on another type.

A **dependent type** is a family of types *indexed by terms of another type*. 
A dependent type is a type that depends on elements of another type.

A dependent type: `x : A ⊢ B(x)`.

A *dependent pair* may have the type of the second component depend on the value of the first component.

A *dependent function* may have the type of the output depend on the value (not just the type) of its argument.

A **predicate** is a family of types; it is a dependent type, `x : A ⊢ B(x)`.

`Σ(x:A).B` is the disjoint sum of the `A`-indexed families of types `B`. Canonical elements are pairs `(a, b)` such that `a : A` and `b : B[x:=a]`.

`Π(x:A).B` is the Carteisan product of the `A`-indexed families of types `B`. Canonical elements are (computable) functions `λx.b` such that the concrete element `a : A` is bound to `x` and substituted in both the term and the type: `b[x:=a] : B[x:=a]`, whenever `a : A`.
