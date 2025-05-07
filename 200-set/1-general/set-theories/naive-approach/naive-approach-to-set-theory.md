# Set Theory :: Articles :: Naive Approach to Set Theory

## Naïve set theory

The phrase *naïve set theory* is often used as an umbrella term for naive approaches to set theory. It names the setting that tries to describe the concepts around and regarding sets by appealing to the intuition, without the use of axioms and proofs. In fact, the term describes exactly the approach that was undertaken initially when the sets were just introduced to mathematics.

However, it should be noted that the phrase "Naïve set theory" is also the title of a book by Paul Halmos, in which he gives a fully axiomatized description of a set theory, where the title was intended to suggest an informal language used in the book. We should be aware of these two, completely opposite, uses of the term, although nowadays, the term is mostly used to suggest a naive approach.

The main culprit that labels the approach as naive was identified long ago and named the *Axiom of Unrestricted Comprehension*. This axiom is not normally employed, only serving to point out a setting with a naive approach to set construction. Namely, *set-builder notation*, also called set comprehension, is the main notation used to specify sets. Its general form is:

`S = { x | P(x) }`

It defines a set `S` as consisting of all elements `x` that satisfy the predicate `P`. The main problem with this construction is that the predicate `P` can be instantiated to mean e.g. "the set of all sets that do not contain themselves", thereby defining the set `R` as `R = { x | P(x) }`. First, the variable `x` ranges over all elements (which are sets), and then the predicate `P` selects just those elements (i.e. sets) that do not contain themselves. And with that we get the *Russell's paradox*: the set `R` should be in `R` as it does not contain itself. But if `R` is in `R`, then it does contain itself, so it should not be in `R`. But if `R` is not in `R`, then it doesn't contain itself, so it should be in `R`. And so on, in a vicious circle. We derive a contradition that cannot be easily resolved. At least not without introducing a proper (so not naive) theory supported by a bunch of axioms.

This is called unrestricted set construction because, first, `x` is unrestricted and ranges over all elements in the domain of discourse - and the domain of discourse contains only sets. Second, since the predicate can be anything, we can construct any set we like, getting ourselves into trouble with the paradoxes.

There are only sets because the usual goal is to define everything else in terms of sets; to base the entirety of mathematics on set theory. That is exactly what the set theory, in particular ZF set theory, did achieve - it is the theory considered by the majority of mathematicins the most suitable as the foundations of all mathematics. Even without such a grandiose goal, when initiating an exploration in set theory, we assume we are starting with a blank environment and then try to define basic things (like ordered pairs, lists, natural numbers) in terms of sets.

## Axiomatization

A way out of the paradoxical mess is to place bounds on the set comprehension. This can be done by restricting all elements (which are sets) to a *pre-approved collection*. Then, we wouldn't need to worry about predicates since all they can do is pick elements from a blessed class. The general form of such set comprehension then looks like `{ x | P(x) ⋀ Q(x) }`, where one predicate fixes the class from which the other predicate picks elements. That class to which everything (all elements) belong to, is called an *universe*, `𝒰`, and the notation is then `{ x | x ∈ 𝒰 ⋀ P(x) }`.

Another solution to avoid the Russell's paradox is the *correct by construction* appraoch, in which we axiomatically detail the operations that are allowed on sets. ZF set theory uses this appraoch. It first postulates the existence of sets, that is, of the empty set. Then it posits several axioms used for transforming sets but in ways that preserve the invariants (the correctness property).
