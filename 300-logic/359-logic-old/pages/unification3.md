# Unification

https://en.wikipedia.org/wiki/Unification_(computer_science)

Unification is an algorithmic process of solving equations between symbolic expressions.

Depending on which expressions (terms) are allowed to occur in an *equation set* (also called *unification problem*), and which expressions are considered equal, several frameworks of unification are distinguished.

If *higher-order variables*, that is, *variables representing functions*, are allowed in an expression, the process is called **higher-order unification**, otherwise **first-order unification**.

If a solution is required to make both sides of each equation literally equal, the process is called **syntactic or free unification**, otherwise **semantic or equational unification** or *unification modulo theory*.


A solution of a unification problem is denoted as a **substitution**, that is, a mapping assigning a symbolic value to each variable of the problem's expressions.

A unification algorithm should compute for a given problem a complete, and minimal substitution set, that is, a set covering all its solutions, and containing no redundant members.

Depending on the framework, a complete and minimal substitution set may have at most one, at most finitely many, or possibly infinitely many members, or may not exist at all.

In some frameworks it is generally impossible to decide whether any solution exists. 

For first-order syntactical unification, Martelli and Montanari gave an algorithm that reports unsolvability or computes a complete and minimal singleton substitution set containing the so-called most *general unifier*.


For example, using x,y,z variables, set `P` as the problem set and `S` as the solution substitution set:

```
Syntactic first-order unification problem
-----------------------------------------
P = { cons(x, cons(x, nil)) = cons(2, y) }
S = { x ↦ 2, y ↦ cons(2, nil) }

cons(x, cons(x, nil)) =
cons(2, y           )
cons(2, cons(2, nil))
x  = 2, y = cons(2, nil)


Syntactic first-order unification problem
-----------------------------------------
P = { y = cons(2,y) }
P finite set: has no solution over the set of finite terms
P infinite set: { y ↦ cons(2,cons(2,cons(2,...))) }


Semantic first-order unification problem
----------------------------------------
P = { a⋅x = x⋅a }
S = { x ↦ a⋅...⋅a }

as a solution in a semigroup, i.e. if (⋅) is considered associative; the same problem, viewed in an abelian group, where (⋅) is considered also commutative, has any substitution at all as a solution.


Syntactic second-order unification problem
------------------------------------------
P = { a = y(x) }
S1 = { x ↦ a, y ↦ id }
S2 = { y ↦ (const a), x ↦ a }
```


A unification algorithm was first discovered by Jacques Herbrand, while a first formal investigation can be attributed to John Alan Robinson, who used first-order syntactical unification as a basic building block of his resolution procedure for first-order logic, a great step forward in automated reasoning technology, as it eliminated one source of combinatorial explosion: searching for instantiation of terms.

Today, automated reasoning is still the main application area of unification. 

*Syntactical first-order unification* is used in *logic programming* and type systems, especially those based on *Hindley–Milner* type inference algorithm.

*Semantic unification* is used in SMT solvers, term rewriting algorithms and cryptographic protocol analysis.

*Higher-order unification* is used in proof assistants, for example Isabelle and Twelf.

*Restricted higher-order unification* (higher-order pattern unification) is used in PL implementations (lambdaProlog), as higher-order patterns are expressive, yet their associated unification procedure retains theoretical properties closer to first-order unification.
