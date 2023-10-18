# Categorical proposition

https://en.wikipedia.org/wiki/Categorical_proposition

In logic, a **categorical proposition** or **syllogisms** is a proposition that asserts or denies that all or some of the members of one category or class (the subject term) are included in another category or class (the predicate term).

The study of syllogistic arguments is an important branch of deductive reasoning that began with the Ancient Greeks and is variously called *syllogistic logic*, *Aritotle's logic*, which usually means the original logic of Aristotle which is slightly different from *Aristototelian logic*, which includes the Aristotle's original logic and its further development as *medival logic* in the dark ages, *traditional logic*, and *term logic*, which is so named because its atomic terms are subjects and predicates. These names for logic systems are practically synonymous. (note that categorical logic is not synonymous with these, rather it studies logic in terms of category theory).

The Ancient Greeks, particularly Aristotle, identified 4 primary distinct types of syllogisms, which in the medieval times got the names `A`, `E`, `I`, `O`, and are now called *the standard forms*.

If, abstractly, the *subject category* (class or set of terms) is named `S` and the *predicate category* is named `P`, the 4 standard forms are:
- (A) All S are P.
- (E) No S are P.
- (I) Some S are P.
- (O) Some S are not P.

By the way, in predicate logic, these 4 forms are expressed as:
- (A) ∀x[Sx →  Px] ≡ ∀x[¬Sx ∨  Px]
- (E) ∀x[Sx → ¬Px] ≡ ∀x[¬Sx ∨ ¬Px]
- (I) ∃x[Sx ∧  Px]
- (O) ∃x[Sx ∧ ¬Px]

The 4 standard forms of syllogisms:
- `A`: All  S are     P, ∀x(Sx →  Px) ≡ ¬∃x(Sx ∧ ¬Px)
- `E`: No   S are     P, ∀x(Sx → ¬Px) ≡ ¬∃x(Sx ∧  Px)
- `I`: Some S are     P, ∃x(Sx ∧  Px) ≡ ¬∀x(Sx →  Px)
- `O`: Some S are not P, ∃x(Sx ∧ ¬Px) ≡  ∀x(Sx →  Px)



Aristotle had identified 4 primary types of syllogisms and gave them standard forms: `A`, `E`, `I`, `O`.

Syllogistic logic     |  Propositional logic
----------------------|------------------------------------------
A: All  S are     P   |  ∀x. S(x) -> P(x) or ¬∃x. S(x) ∧ ¬P(x)
E: All  S are not P   |  ∀x. S(x) ->¬P(x) or ¬∃x. S(x) ∧  P(x)
I: Some S are     P   |  ∃x. S(x) ∧  P(x)
O: Some S are not P   |  ∃x. S(x) ∧ ¬P(x)

`S` is the subject category, `P` is and the predicate category.

Aristotle's *square of opposition* codifies the logical relations among the different forms (e.g. that an A-statement is contradictory to an O-statement). The relations of the square of opposition may allow *immediate inference*, whereby the truth or falsity of one of the forms may follow directly from the truth or falsity of a statement in another form.

Arguments consisting of 3 categorical propositions, 2 premises and a conclusion, are called *categorical syllogisms*.

Formal arguments using categorical syllogisms have fallen away due to the increased expressive power of modern logic systems.
