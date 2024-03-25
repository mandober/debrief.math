# Set Theory :: Glossary

https://en.wikipedia.org/wiki/Glossary_of_set_theory

<!-- TOC -->

- [Actual infinity](#actual-infinity)
- [Class](#class)
- [Russell's paradox](#russells-paradox)
- [Classical mathematics](#classical-mathematics)
- [Coincident](#coincident)
- [Dedekind cut](#dedekind-cut)
- ["I see it, but I don't believe it"](#i-see-it-but-i-dont-believe-it)
- [Modern mathematics](#modern-mathematics)
- [Positive set theory](#positive-set-theory)
- [Positive formulas](#positive-formulas)
- [Potential infinity](#potential-infinity)
- [Predicate](#predicate)
- [Recursion Theory](#recursion-theory)

<!-- /TOC -->

## Actual infinity
Mathematicians had been happy to regard the natural numbers as being *potentially infinite*, meaning that however (finitely) many numbers one might list, there would always be an extra one that could be added to the list. But they were wary of treating this object (this list) as a standalone object in its own right, as though it could be completed to give a single infinite object - an *actually infinite object*.

## Class
A class is a set-like collection that cannot be contained in a set. A class can contain sets and other classes, but a class cannot be a member of a set - there is no set of classes. A *proper class* can only contain sets. Like sets, classes may also be defined by specifying a predicate (property). The concept of class was introduced to avoid the Russell's paradox which arises if set comprehensions are unrestricted. So, a set of all sets cannot exist - but a class of all sets can.

## Russell's paradox
The Russell's paradox arises if set comprehension is unrestricted, that is, if any predicate can form a set. The set-builder notation, aka set comprehension, is commonly used to express this, `R = {x | Px}`; it means that we are building a new set `R` that should contain only those elements `x` that satisfy the condition (predicate) `P`.

An unrestricted comprehension like this one means that the variable `x` ranges over the entire domain of discourse (DOD). The DOD is comprised of sets since the only objects we have in set theory are sets. In fact, DOD contains all imaginable sets, including past, present and future sets. The set comprehension procedure picks each element (i.e. set) from the DOD and tests it whether it satisfies the predicate `P`. Those elements (sets) that do, become the members of the resulting set `R`.

For example, the predicate `P(x)` can be instantiated to the formula `x ≠ x`, in which case the set comprehension is `R = {x | x ≠ x}`. The resulting set `R` would be empty since every object is equal to itself. Thus, this may be taken as the definition for the empty set, `∅`.

Consider now the predicate `P(x) := x ∉ x`. It defines `R` as the set of all sets that *do not contain themselves*, `R = {x | x ∉ x}`. Most sets we can think of do not contain themselves, so they belong to `R`. Those sets that do contain themselves - which is mathematically possible even though it is hard to imagine - will not belong to `R`. No problem so far. 

The problem arises when we test the set R: does R belong to R? That is, is R a set that does not contain itself?

Assuming that R does not contain itself, `R ∉ R`, means that R satisfies the predicate - and since it satisfies the predicate, R should be a member of R, `R ∈ R`. But if R is a memeber of R, then it violates the predicate - so it shoudn't be in R. Thus, `R ∈ R ⇔ R ∉ R`.

This contradiction cannot be ignored, and every system of set theory that allows unrestricted comprehension is inconsistent, which means it is possible to prove anything whatsoever is such a system.

Usually, when we run into a contradiction, we reexamine our assumptions. Here the assumption was that a set of all sets exists - the domain of discourse. So, the DOD (universe) cannot be a set. Some set theories resolve this problem by introducing classes (so there is a class of all sets).

## Classical mathematics
Classical mathematics can be viewed as the mathematical study of concrete structures, as opposed to modern mathematics that studies abstract structures. The adjective "classical" is sometimes also used to emphasize the fact that the theory used for formalization of mathematics in ZFC, aka Zermelo-Fraenkel set theory together with the Axiom of Choice. Classical mathematics is non-constructive, accepting non-constructive proofs. In fact, the Axiom of Choice just mentioned is a prime example of non-constructivism - it just asserts that a selection function exists without bothering to specify anything else about it. We can use such an imaginary function in a proof in the end not being able to produce a single corroborating example. Nonconstructivism abounds.

## Coincident
Two non-empty sets are coincident if `∀x(x ∈ A ⟺ x ∈ B)`

## Dedekind cut
In 1872, Dedekind has published one of his best known works: "Stetigkeit und Irrationalzahlen" ("Continuity and Irrational Numbers"), presenting a method of the construction of the real numbers from the rational numbers. Dedekind have developed the idea in 1858, but published it only 14 years later. The same idea was also considered by Joseph Bertrand in 1849.

A Dedekind cut is a partition of the rational numbers into two sets `A` and `B`, such that all elements of `A` are less than all elements of `B`, and `A` contains no greatest element. The set `B` may or may not have a smallest element among the rationals. If `B` has a smallest element among the rationals, the cut corresponds to that rational. Otherwise, that cut defines a unique irrational number which, loosely speaking, fills the "gap" between `A` and `B`. In other words, `A` contains every rational number less than the cut, and `B` contains every rational number greater than or equal to the cut. An *irrational cut* is equated to an irrational number which is in neither set. Every real number, rational or not, is equated to one and only one cut of rationals.

## "I see it, but I don't believe it"
This, now famous, Cantor's remark, can be found in his 1870s snail mail correspondence with Richard Dedekind, whom Cantor engaged in discussion about the nature of various infinite sets. After finding a bijection between the interval `I = [0,1]` and the n-fold product `Iⁿ = I × I ⋯ × I`, thereby proving that these two infinite sets have the same cardinality, `𝔠`, Cantor has remarked: *"Je le vois, mais je ne le crois pas"*. This was Cantor's attempt at modesty as he tried to curb the explosion of hubris after proving not only that there are different sizes of infinities, countable and uncountable, but also formulating the arguments and insights into how they can be compared size-wise.

## Modern mathematics
Modern mathematics can be viewed as the mathematical study of abstract structures, as opposed to classical mathematics that studies concrete structures.

## Positive set theory
Positive set theory is the name for a class of alternative set theories in which the Axiom Of Comprehension holds for at least the positive formulas `ϕ`.

## Positive formulas
The set of positive formulas `ϕ` is the smallest class of formulas containing atomic membership and equality formulas and closed under conjunction, disjunction, existential and universal quantification. A positive formula uses only the logical constants `{⊤,⊥, ∧,∨, ∀,∃, =,∈}` but not `{→,¬}`. Positive formulas are used in Positive Set Theory.

## Potential infinity
Mathematicians had been happy to regard the natural numbers as being potentially infinite, meaning that however (finitely) many numbers one might list, there would always be an extra one that could be added to the list. But they were wary of treating this list as though it could be completed to give a single infinite object, what would be described as an actually infinite object. This view was very deeply rooted, going back to Aristotle in the 4th century BCE.

## Predicate
A predicate is an expression that ascribes a property to the objects identified by the variables of the sentence (formula). For example, the sentence `x+2=7` is a predicate. It describes a characteristic of `x`. When expressions are substituted for `x`, the resulting sentence will be either a proposition that affirms that the value added to 2 equals 5 or another predicate. If x=5 is substituted, the result is the true proposition 5+2=7. That is, x+2=7 is satisfied by 5. If x=10 and the substitution is made, the resulting proposition 10+2=7 is false. In mathematics, it is also common to substitute with *undetermined values*. For example, if the substitution is x=y, the result is the predicate y+2=7, and if the substitution is x=sinθ, the result is the predicate sinθ+2=7. Substituting x=y+2z² yields y+2z²+2=7, a predicate with multiple variables. If we substitute x=y²⨯7y, the result is y²⨯7y+2=7, which is a predicate with multiple occurrences of the same variable.

## Recursion Theory
Recursion Theory is an old name for what is now called Computability theory.
