# Set theory :: Set theories :: Naive set theory

https://en.wikipedia.org/wiki/Naive_set_theory

**Naïve set theory** is a generic name for approaches to set theory that are not formalized, lack axioms, or allow unrestricted comprehension.

"Naïve set theory" is also a book by Paul Halmos that describes an axiomatized, formalized set theory, and the title is used to suggest informal language. Thus one should be wary about these two, completely opposite uses of the term.

The term naïve set theory is often used when describing set-theoretic concepts, but without the underlying axioms and proofs - it is a naive approach to set theory. It is exactly the approach that was taken initially, after the introduction of sets that turn out ridden with paradoxes.

The main culprit that opened the door for paradoxes was identified and is now called the *Axiom of (Unrestricted) Comprehension*. This axiom is usually not employed, but it is used to name the setting that permits unconstrained set construction. Allowing the use of any predicate to describe a set invites the Russell's paradox.

The set-builder form, also called the set comprehension, is the notation used when specifying sets, especially when using a predicate. Its general form is `{x | P(x)}` and it defines a set of all elements `x` that satisfy the predicate `P`. This is called unrestricted set construction because, first, `x` is unrestricted and allowed to range over all sets - `x` may then be constrained by the predicate `P` but one predicate alone it not enough to prevent us to instantiate it as e.g. "the set of all sets that do not contain themselves".

So, `R = {x|Px}`, where `P` is the set of all sets that do not contain themselves, defines a paradoxical set `R`. The variable `x` ranges over all sets, and the predicate `P` then selects just those sets that do not contain themselves. But then the set `R` should be in `R` as it doesn't contain itself, which means if it is in `R` it shouldn't be in `R` for the same reason. Thus, we derive a contradition that cannot be resolved. At least not without introducing a bunch of axioms.

In fact, it was exactly this paradox, the Russell's paradox, that prompted a research for its resolution that resulted in the creation of numerous set theories. In general, instead of admitting the Axiom of Unrestricted Comprehension, i.e. allowing any predicate to define a set, we can restrict the available elements so they are picked from a previously blessed collection (like from a verified class). In this case, the set comprehension notation, in general, looks like: `{ x | P(x) ⋀ Q(x) }`. The first predicate fixes the class from which the elements are selected by the second predicate. Usually, there is a notion of a universe to which all elements (which are sets) belong to, and that may look like: `{ x | x ∈ 𝒰 ⋀ P(x) }`.
