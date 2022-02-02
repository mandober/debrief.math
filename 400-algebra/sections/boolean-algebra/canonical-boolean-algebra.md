# Canonical definition of Boolean algebra

https://en.wikipedia.org/wiki/Boolean_algebras_canonically_defined

## Boolean algebras canonically defined

Boolean algebras are models of the equational theory of two values; 
this definition is equivalent to the lattice and ring definitions.

Boolean algebra is a mathematically rich branch of abstract algebra. Just as group theory deals with groups, and linear algebra with vector spaces, Boolean algebras are models of the equational theory of the two values 0 and 1 (whose interpretation need not be numerical).

Common to Boolean algebras, groups, and vector spaces is the notion of an *algebraic structure*, a set closed under some operations and satisfying certain equations.

Just as there are basic examples of groups, such as the group ℤ of integers and the symmetric group `Sₙ` of permutations of `n` objects, there are also basic examples of Boolean algebras such as the following.

* *The algebra of binary digits* 
(or bits 0 and 1) 
under the logical operations including 
disjunction, conjunction, and negation. 
Applications include the propositional calculus 
and the theory of digital circuits.

* *The algebra of sets* 
under the set operations including 
union, intersection, and complement. 
Applications are far-reaching because 
set theory is the standard foundations of mathematics.

Boolean algebra thus permits applying the methods of 
abstract algebra to mathematical logic and digital logic.

Unlike groups of finite order, which exhibit complexity and diversity and whose first-order theory is decidable only in special cases, **all finite Boolean algebras share the same theorems and have a decidable first-order theory**.

The intricacies of Boolean algebra instead lay divided between the structure 
of infinite algebras and the algorithmic complexity of their syntactic structure.

## Definition

Boolean algebra treats the *equational theory* of the maximal two-element finitary algebra, called the *Boolean prototype*, and the models of that theory, called **Boolean algebras**.

An *algebra* is a family of operations on a set, which is referred to as the carrier or underlying set of the algebra, and a set of axioms to uphold. We take the underlying set of the Boolean prototype to be `{0,1}`.

An algebra is *finitary* when each of its operations takes only finitely many arguments. For the prototype, each argument of an operation is either 0 or 1, as is the result of the operation, `{0,1} -> {0,1}`. The maximal such algebra consists of all finitary operations on {0,1}. There are 2² = 4 distinct unary functions over this domain-codomain pair. Generaly, for unary functions between two sets, `f : A¹ -> B¹`, with `|A| = n` and `m = |B|`, there are `mⁿ` distinct functions (any n-ary function can be converted into a unary function due to currying).

The number of args an operation takes is its arity. An operation on `{0,1}` of arity `n` (an n-ary operation) can be applied to any of `2ⁿ` possible values for its `n` arguments. For each choice of arguments, the operation may return 0 or 1, totaling in `2^2^n` n-ary operations.
