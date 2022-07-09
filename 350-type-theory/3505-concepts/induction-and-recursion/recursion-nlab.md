# Recursion at nLab

https://ncatlab.org/nlab/show/recursion

The traditional notion of recursion over the natural numbers, ℕ, is a way of defining a function out of ℕ, by specifying the image of 0 (the initial value), along with a way to obtain each successive value from the previous one.

Computability theory deals with the functions which can be defined using only (primitive) recursion, with deep connections to the logic of Peano arithmetic.

More generally, recursion is a way of defining a function on any mathematical object which is inductively defined (in a way analogous to how the natural numbers are characterized by zero and successor).

In place of the initial value and the (successor) step, a general definition by recursion consists of having a case for each data constructor of the inductively defined object.

In type theory, recursion is formalized by the notion of inductive type (and the corresponding elimination rule).

In category theory, recursion is formalized by the notion of initial algebra of an endofunctor. For an endofunctor `F`, a morphism of the form `F(X) → X` determines a collection of constructors and the recursion principle is the statement that there is a (unique) morphism `f : A → X` from the initial such structure `F(A) → A`. The `f` is the corresponding recursively defined function.

Viewed from just a slightly different angle, this state of affairs is the induction principle.
