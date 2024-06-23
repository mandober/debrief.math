# Math and type theory

## Cubical type theory

[WITS'22] Make Three To Throw Away: Frontiers in Homotopical Proof Assistants
ACM SIGPLAN 2022
https://www.youtube.com/watch?v=lqBFq7aRReY&list=PLyrlk8Xaylp7R6HqlECu2RGbZUZQofo8e&index=2

Several important things that any type theory aiming to actually do math needs to have. These basically pertain to things like functions and propositions being well-behaved.
- function extensionality
- function comprehension
- propositional extensionality
- effectivity of equivalence relations

**Function extensionality**: there is *at most one* function encoding each functional relation.

**Function comprehension**: there is *at least one* function encoding each functional relation.

**Propositional extensionality**: there is *at most one* proposition encoding each subsinglton type.

**Effectivity of equivalence relations**: original equivalence relation can be extracted from the quotient map.

Without any of the abive, it is impossible to develop math in a proof assistant.

Function extensionality and function comprehension basically mean that functions are exactly the same thing as the graphs or functional relations.

Function extensionality is one direction of that equivalence, and function comprehension - which is sometimes called the *axiom of unique choice* - is the other direction of that equivalence.

Now people like to say that graph equals function - that is a principle of classical math, not constructive math, but this is actually a constructive requirement. However, there are some kinds of constructive math where this does not turn out to be true, but in a constructive math that you can use to actually do stuff - it is true.

Propositional extensionality is a similar relationship which says types that have at most one element - if you have any isomorphism class of those types - there is exactly one proper proposition that encodes that type.

This has profound consequences including quotients that work properly; if you have a quotion type you can take that type in an equivalence relation and quotient it by that equivalence relation, which is something that happens all the time. But what happens if you take two arbitrary elements of the original type and you put them in the quotient, and then they become equal? Does that mean that they were in the equivalence relation that you started with? In fact, it does if the equivalence relations are what is called *effective*. This is a property that is needed to get any math off the ground.

None of this stuff works in type theory directly, but you can solve it in a variety of ways. *Setoids* are one way to solve a problem in higher dimensional types. The crux of the higher-dimensional approach to type theory is the *univalence principle* introduced by Vladimir Voevodski, which is an introduction rule for isomorphisms (cf. Paulin-Mohring *J rule*). Univalence solves all old problem and also exposes new concepts to the light of type theory.

The elimination rule for the identity type says to prove something about all identifications between elements of a type, it suffices to prove it only for *reflexive identifications* (i.e. the trivial `refl` term/data ctor in Agda).

Similarly to this, the univalence says that if you are trying to prove something about all isomorphisms between types, it suffices to consider just the ones that are tracked by the identity map.

Although this principle sounds simple, when you add it to a type theory a bunch of important semantic things suddenly become true. And some good properties of type theory are no longer true, like the fact that you can run terms and type theory as if they were programs.

*Cubicle type theory* is a long-term project to address this problem. The idea is to rebuild type theory in a cubicle manner because the computational content of univalence principle is dubious. Iy gives a version of univalence that you can actually run like a program.

*Cubical semantics* was proposed by T. Coquand wt al. in 2013 as a solution to these problems, leading to explosion of cubical research.

Cubicle type theory extends judgmental structure of MLTT. The basic idea is to add a new sort called the *interval*, `0, 1 : 𝕀`, whose elements are called *dimensions*, and we also add two constants, 0 and 1, but there's not going to be any case analysis or recursion principles - it is like an abstract type in a programming language. We then get a universe - a special *universe of proof of relevant proposition* `𝔽` (similar to a fragment of `SProp` in Coq).

`𝔽` has some closure conditions: it is going to be closed under equality propositions just for the interval and these equality propositions need to have *equality reflection*. Also, it's going to be closed under finite conjunction and disjunction of these propositions and the disjunction needs to have a case principle that you can eliminate into any kind of thing in the type theory. And it'll have some quantifier.

- an abstract interval `0, 1 : 𝕀` (but no case analysis)
- elements of which, `r : 𝕀` are called dimensions
- a univalence `𝔽` of proof of relevant proposition closed under
  - dimensional equality `r = s` with equality reflection
  - finite ∧ and ∨, elimination into types
  - universal quantification `∀(i : 𝕀). P i`, for `P : 𝕀 → 𝔽`

The point of all this machinery is that we can get a new way to define equality or identification as a kind of *function space*.

If you want to talk about a proof that two elements of type A are equal, you can make a function from the interval into A, that when you apply to the constant 0 it returns the one thing, and when you apply it to the constant 1 it returns the other thing. Because there's no case analysis principle you don't always have such a function.

The beauty of this notion of identification in type theory is that as a function space, it commutes with all the other function spaces, and that means that there is a definitional isomorphism between the collection of proofs that two functions are pointwise equal, and the collection of proofs that those functions are equal.

https://www.youtube.com/watch?v=lqBFq7aRReY&list=PLyrlk8Xaylp7R6HqlECu2RGbZUZQofo8e&index=2
