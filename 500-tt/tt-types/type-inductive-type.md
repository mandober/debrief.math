# Inductive type

https://en.wikipedia.org/wiki/Intuitionistic_type_theory#Inductive_types

**Inductive types** allow the creation of complex, self-referential types.

For example, a linked list of natural numbers is either 
an empty list or a pair of a nat and another linked list.

Inductive types can be used to define unbounded mathematical structures like trees, graphs, etc. 
The type of the natural numbers 
may be defined as an inductive type, 
either being zero, `Z`, or
succ of another natural number, `S n`.

Inductive types define 
new constants (nullary data ctors), 
such as `Z : Nat` and the
suc function `S : Nat → Nat`. 

Since `S` does not have a definition 
and cannot be evaluated using substitution, 
terms like `S 0` and `S S S 0` 
become the *canonical terms* of the natural numbers.

Proofs on inductive types are made possible by induction. 
Each new inductive type comes with its own *inductive rule*. 

To prove a predicate `P` 
for every natural number 
use the following rule:

`Nat-elim : P(0) -> (Π {n : Nat} P(n) -> P(Sn)) -> Π {n : Nat} P(n)`


Inductive types in intuitionistic type theory 
are defined in terms of **W-types**, 
which are the type of well-founded trees.

Later work in type theory has generated 
- coinductive types
- induction-recursion
- induction-induction
for working on types with more obscure kinds of self-referentiality.

Higher inductive types 
(in homotopy type theory) allow 
equality to be defined between terms.
