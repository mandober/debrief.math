## Inductive and coinductive types with iteration and recursion

`Inductive and coinductive types with iteration and recursion`
by Herman Geuvers, 1992

## Abstract

We study extensions of simply-typed lambda calculus, `λ→`, and polymorphically typed lambda calculus, `System F`, focusing on the representation of iterative and recursive functions on inductive types.

Inductive types are usually understood as initial algebras in a certain category, and then recursion is defined in terms of iteration. However, in the syntax, we often have only *weak initiality*, which makes the definition of recursion in terms of iteration inefficient or impossible.

We propose a categorical notion of *primitive recursion* which can easily be added as computation rule to a typed lambda calculus, and which gives us a clear view on *corecursion on coinductive types*.

We look at how these syntactic notions work out in λ→ and System F. It turns out that in the syntax, recursion can be defined in terms of corecursion, and vice versa, using polymorphism. A polymorphic lambda calculus with a scheme for one (recursion or corecursion) is enough to define the other (co/recursion). We compare our syntax for recursion and corecursion with Mendler's, and use it to obtain meta properties of confluence and normalization.
