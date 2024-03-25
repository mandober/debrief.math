# Existential quantification

https://en.wikipedia.org/wiki/Existential_quantification

In predicate logic, the **existential quantification** is a type of quantifier, a *logical constant*, which is *interpreted* as "there exists" or "there is at least one" or "for some".

It is usually denoted by the *logical operator symbol* `∃`, which, when used together with a *predicate variable* is called an *existential quantifier*, and denoted by `∃x`.

Existential quantification is distinct from universal quantification, which asserts that a predicate holds for all members of the domain.

Some sources use the term "existentialization" to refer to existential quantification.

## Contents

- Basics
- Properties
  - Negation
  - Rules of inference
  - The empty set
- As adjoint
- Encoding
- Origin


## Extras

Existential quantification asserts that a predicate `ϕ` holds for some members of a domain, `∃αϕ`.

It is rare to make an unconditional claim, more common are *restricted existential claims*, such as "Some doctors are smart", i.e. `∃x(D(x) ⋀ S(x))`.

Existential quantification is a *generalization of logical disjunction* applied to all domain elements.

In mathematics, the proof of an existential statement may be achieved either by a *constructive proof, which produces a witness*, i.e. an object satisfying the "some" statement, or by a *non-constructive proof*, which shows that there must be such an object without producing a witness.

## Basics

Consider a formula that states that some natural number multiplied by itself is 25.

    0·0 = 25, or 1·1 = 25, or 2·2 = 25, or 3·3 = 25, ...

This would seem to be a *logical disjunction* because of the repeated use of "or". However, the ellipses make this impossible to integrate and to interpret it as a disjunction in formal logic. Instead, the statement could be rephrased more formally as

    For some natural number n, n·n = 25.

This is a single statement using existential quantification.

This statement is more precise than the original one, since the phrase "and so on" does not necessarily include all natural numbers and exclude everything else. And since the domain was not stated explicitly, the phrase could not be interpreted formally. In the quantified statement, however, the natural numbers are mentioned explicitly.

This particular example is true, because 5 is a natural number, and when we substitute 5 for n, we produce "5·5 = 25", which is true. It does not matter that "n·n = 25" is only true for a single natural number, 5; even the existence of a single solution is enough to prove this existential quantification as being true. In contrast, "For some even number n, n·n = 25" is false, because there are no even solutions.

The *domain of discourse*, which specifies the values the variable `n` is allowed to take, is therefore critical to a statement's trueness or falseness.

*Logical conjunction* is used to *restrict the domain of discourse* to fulfill a given predicate. For example:

    For some positive odd number n, n·n = 25

is logically equivalent to

    For some natural number n, n is odd and n·n = 25.

Here, "and" is the logical conjunction.


In symbolic logic, "∃" indicates existential quantification. 

Thus, if `P(a, b, c)` is the predicate "a·b = c", and ℕ is the set of natural numbers, then `∃n ∈ ℕ.P(n,n,25)` is the (true) statement

    For some natural number n, n·n = 25.

Similarly, if `Q(n)` is the predicate "n is even", then

    ∃n ∈ N.(Q(n) ∧ P(n,n,25))

is the (false) statement

    For some natural number n, n is even and n·n = 25.


In mathematics, the *proof* of a "some" statement may be achieved either by
- constructive proof, exhibiting a witness
- nonconstructive proof, without exhibiting a witness

A *constructive proof* exhibits an object satisfying the "some" statement.

A *nonconstructive proof* shows that there must be such an object but it doesn't exhibit one.



## Properties

### Negation

A quantified propositional function is a statement; 
thus, like statements, quantified functions can be negated.

Negating `∃x.P(x)` yields `¬∃x.P(x)`, which is equivalent to `∀x.¬P(x)`.

Where the negation sign is placed matters as these statements are not equivalent: `¬∃x.P(x)` ≠ `∃x.¬P(x)` ≠ `¬∃x.¬P(x)`.


`¬∃x. P(x)` = `∀x. ¬P(x)`
`¬∀x. P(x)` = `∃x. ¬P(x)`


 ∀x. P(x)     ∃x. P(x)
 ∀x.¬P(x)     ∃x.¬P(x)
¬∀x.¬P(x)    ¬∃x.¬P(x)


 ∀x. P(x) = ¬∃x.¬P(x)   flip and negate the quantifier, negate the predicate
 ∃x. P(x) = ¬∀x.¬P(x)   flip and negate the quantifier, negate the predicate
 ∀x.¬P(x) = ¬∃x. P(x)   ← and flip the quantifier
 ∃x.¬P(x) = ¬∀x. P(x)   ← and flip the quantifier
¬∀x. P(x) =  ∃x.¬P(x)   → and flip the quantifier
¬∃x. P(x) =  ∀x.¬P(x)   → and flip the quantifier

### Rules of inference

A *rule of inference* is a rule justifying a logical step from hypothesis to conclusion. There are several rules of inference wrt the existential quantifier.

**Existential introduction**, `∃I`, concludes that, if the propositional function is known to be true for a particular element of the domain of discourse, then it must be true that there exists an element for which the proposition function is true. Symbolically,

`P(a) → ∃x ∈ X.P(x)`

**Existential instantiation**, when conducted in a Fitch style deduction, proceeds by entering a new sub-derivation while substituting an existentially quantified variable for a subject-which does not appear within any active sub-derivation. If a conclusion can be reached within this sub-derivation in which the substituted subject does not appear, then one can exit that sub-derivation with that conclusion. The reasoning behind existential elimination, `∃E`, is as follows: If it is given that there exists an element for which the proposition function is true, and if a conclusion can be reached by giving that element an arbitrary name, that conclusion is necessarily true, as long as it does not contain the name. Symbolically, for an arbitrary c and for a proposition Q in which c does not appear:

`∃x ∈ X.P(x) → ((P(c) → Q) → Q)`

`P(c) → Q` must be true for all values of `c` over the same domain X; else, the logic does not follow: If `c` is not arbitrary, and is instead a specific element of the domain of discourse, then stating `P(c)` might unjustifiably give more information about that object.

### The empty set

The formula `∃x ∈ ∅. P(x)` is always false, regardless of P(x). This is because ∅ denotes the empty set, and no x of any description - let alone an x fulfilling a given predicate P(x) - exist in the empty set.

See also Vacuous truth for more information.

## As adjoint

Main article: Universal quantification § As adjoint

In category theory and the theory of elementary topoi, the existential quantifier can be understood as the left adjoint of a functor between power sets, the inverse image functor of a function between sets; likewise, the universal quantifier is the right adjoint.[6]

## Encoding

In Unicode and HTML, symbols are encoded U+2203 ∃ THERE EXISTS (&exist;, &Exists; · as a mathematical symbol) and U+2204 ∄ THERE DOES NOT EXIST (&nexist;, &nexists;, &NotExists;).

In TeX, the symbol is produced with "\exists".

## Origin

The symbol's first usage is thought to be by Giuseppe Peano in his book of mathematical logic and notation "Formulario Mathematico" of 1896. 

Through his research in set theory, Peano also introduced the symbols `∩` and `∪` to each denote the intersection and union of sets.

Afterwards, Bertrand Russell popularised its use as the existential quantifier.


## Refs

- [✔] 2001 `Logic Primer`. Colin Allen, Michael Hand. MIT Press
- [✔] 2014 `The Logic Book`. Merrie Bergmann. McGraw Hill

- Online course: `Foundations for Logic, Sets and Relations`
  (Computer and Software Engineering; Specification, Design and Analysis Using Formal Methods), 
  https://www.csm.ornl.gov/~sheldon/ds/
  - Lecture "Predicates and Quantifiers" (retrieved 2020-09-04)
    https://www.csm.ornl.gov/~sheldon/ds/sec1.6.html

- Online course: `Introduction to Higher Mathematics` 
  by Patrick Keef and David Guichard
  https://www.whitman.edu/mathematics/higher_math_online/
  - Lecture "Quantifiers" (retrieved 2020-09-04)
    https://www.whitman.edu/mathematics/higher_math_online/section01.02.html

- Official website of the European Set Theory Society
  https://ests.wordpress.com/2016/07/30/andras-hajnal-may-13-1931-july-30-2016/

- Set Theory and Foundations of Mathematics
  https://settheory.net/
