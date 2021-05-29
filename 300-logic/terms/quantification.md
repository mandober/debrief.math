# Quantification

https://en.wikipedia.org/wiki/Quantifier_(logic)
https://en.wikipedia.org/wiki/Quantifier_(linguistics)
https://en.wikipedia.org/wiki/Existential_quantification
https://en.wikipedia.org/wiki/Universal_quantification


Aristotle's syllogistic logic and propositional logic cannot quantify predicates; they cannot express the quantity of the domain of discourse that a predicate ranges over.

In natural languages, a sentence about a certain thing with a particular property, may be made into a sentence about a number of things with a particular property, using a quantifier. A quantifier is a determiner, such as *all, each, every, many, some, few, a lot, no, none* (never a specific number) that indicates quantity. Examples of quantified sentences are "all people are mortal", "some people are immoral", "no person is innocent".

In mathematical logic, in particular in first-order logic, a quantifier achieves a similar task, operating on a mathematical formula instead. More precisely, a quantifier specifies the *quantity of specimens* in the *domain of discourse* that satisfy an *open formula*.

The two most common formal quantifiers are the universal quantifier (for all), `∀`, and the existential quantifier (there exists), `∃`.

For example, in arithmetic, quantifiers allow one to say that the set of natural numbers is infinite, by writing `∀n ∈ ℕ. ∃m ∈ ℕ. m > n`.

The example sentences from above could be formalized as `∀p ∈ P. M(p)`, `∃p ∈ P. M(p)` and `¬∃p ∈ P. M(p)`, respectively, where `p` (a single person) is a variable ranging over the set of all people `P`, and `M(p)` stands for "being mortal".

A formula beginning with a quantifier is called a *quantified formula*. A formal quantifier requires a variable, which is said to be bound by it, and a subformula specifying a property of that variable.

---

## Logical Handling of the Quantifiers

1. A logical formula is called logically **valid** if it turns out true in every structure.

2. Formulas are logically **equivalent** if they obtain the same truth value in every structure (i.e. if there is no structure in which one of them is true and the other one is false). `Φ ≡ Ψ` expresses that the quantified formulas Φ and Ψ are equivalent.

The reference to "every structure" (of which there are infinitely many) makes these definitions very complicated. No one is expected to check validity or equivalence in every possible encountered case. In fact, it was rigorously proven in 1936 by Alonzo Church (1903-1995) and Alan Turing (1912-1954) that this is impossible. This demonstrates that the complexity of quantifiers exceeds that of the logic of connectives, whose truth value can be determined mechanically using truth tables.

However, for logical formulas that are sufficiently simple, it is possible to determine whether they are valid or equivalent.

Same-kind quantifiers may be given in any order:
* ∀x∀y. Φ(x,y) ≡ ∀y∀x. Φ(x,y)
* ∃x∃y. Φ(x,y) ≡ ∃y∃x. Φ(x,y)

Quantifiers and negation:
* ¬∀x. Φ(x) ≡ ∃x.¬Φ(x)
* ¬∃x. Φ(x) ≡ ∀x.¬Φ(x)
* ¬∀x.¬Φ(x) ≡ ∃x. Φ(x)
* ¬∃x.¬Φ(x) ≡ ∀x. Φ(x)

Quantifier distributivity:
* ∀x.[Φ(x) ∧ Ψ(x)] ≡ ∀x.Φ(x) ∧ ∀x.Ψ(x)
* ∃x.[Φ(x) ∨ Ψ(x)] ≡ ∃x.Φ(x) ∨ ∃x.Ψ(x)


### Order of Quantifiers

The order of same-kind of quantifiers is irrelevant. However, this is not the case for quantifiers of different kind.

On the one hand, if you know that `∃y∀x.Φ(x,y)` (which states that there is one `y` such that for all `x`, `Φ(x,y)` holds) is true in a certain structure, then *a fortiori* `∀x∃y.Φ(x,y)` will be true as well (for each `x`, take this same `y`). However, if `∀x∃y.Φ(x,y)` holds, it is far from sure that `∃y∀x.Φ(x,y)` holds as well.

[∃y∀x.Φ(x,y)] ----> [∀x∃y.Φ(x,y)] (generalization holds)

[∀x∃y.Φ(x,y)] --?-> [∃y∀x.Φ(x,y)] (may or may not hold)

For example, the statement that `∃x∀y. x < y` is true in ℕ. It states that there exists a number x, such that taking each of the remaining numbers, in a one-by-one manner, and comparing it with the x (which is fixed), we'll always get that the relation (x < y) holds, i.e. that x is the smallest number. There does exist the smallest natural number, namely 0. On the other hand, the statement `∀y∃x. x < y` is false in ℕ as it wrongly asserts that there exists the greatest natural number.


### Restricted Quantification

The quantification is usually restricted on the quantified variable in membership to some domain (∀x ∈ A); other types of restriction are also possible (∀x > 0), although rarely encountered. They may provide for a more compact formulation, but usually not a very readable one.

* `∀x ∈ A. Φ(x)` ≡ `∀x. x ∈ A -> Φ(x)`

* `∃x ∈ A. Φ(x)` ≡ `∃x. x ∈ A ∧ Φ(x)`

> The restricted *universal* quantifier is expanded using *implication*, whereas the *existential* quantifier is expanded using *conjunction*.

Expanding the universal quantification using a conjunction would be wrong (it makes the assertion too strong) because conjunction brings together two independent predicates (clauses). For example, `∀x. x ∈ A ∧ Φ(x)` means that, for all x, x is in A *and* that, for all x, Φ(x) holds. The two predicates, membership in A and Φ, hold independently of each other. `∀x. x ∈ A ∧ Φ(x)` ≡ `∀x.x ∈ A ∧ ∀x.Φ(x)`.

On the other hand, expanding existential quantification using implication (instead of conjunction) makes the assertion too weak. As a concrete example, "some Mersenne numbers are prime" is translated as `∃x. Mx ∧ Px`, and not as `∃x. Mx -> Px` because it is too weak; it expresses (in the domain ℕ) that there is a natural number x which is either not a Mersenne number or it is a prime. Any prime will do as an example of this, and so will any number which is not a Mersenne number.

Identities with negated quantification:
1. ¬∀x. Φ(x) <=> ∃x.¬Φ(x)
2. ¬∃x. Φ(x) <=> ∀x.¬Φ(x)
3. ¬∀x.¬Φ(x) <=> ∃x. Φ(x)
4. ¬∃x.¬Φ(x) <=> ∀x. Φ(x)

Expanding identities with negated quantification:
1. ¬∀x. Φ(x) <-> ¬∀x. x ∈ A ->  Φ(x)
2. ¬∃x. Φ(x) <-> ¬∃x. x ∈ A  ∧  Φ(x)
3. ¬∀x.¬Φ(x) <-> ¬∀x. x ∈ A -> ¬Φ(x)
4. ¬∃x.¬Φ(x) <-> ¬∃x. x ∈ A  ∧ ¬Φ(x)

Expanding restricted quantification:
1. ¬∀x ∈ A. Φ(x) <-> ¬∀x. x ∈ A ->  Φ(x)
2. ¬∃x ∈ A. Φ(x) <-> ¬∃x. x ∈ A  ∧  Φ(x)
3. ¬∀x ∈ A.¬Φ(x) <-> ¬∀x. x ∈ A -> ¬Φ(x)
4. ¬∃x ∈ A.¬Φ(x) <-> ¬∃x. x ∈ A  ∧ ¬Φ(x)

Identities with negated quantification:
1. ¬∀x ∈ A. Φ(x) <=> ∃x ∈ A.¬Φ(x)
2. ¬∃x ∈ A. Φ(x) <=> ∀x ∈ A.¬Φ(x)
3. ¬∀x ∈ A.¬Φ(x) <=> ∃x ∈ A. Φ(x)
4. ¬∃x ∈ A.¬Φ(x) <=> ∀x ∈ A. Φ(x)

Identities with negated and restricted quantification:
1. ¬∀x ∈ A. Φ(x) <=> ¬∀x. x ∈ A ->  Φ(x) <=> ∃x ∈ A.¬Φ(x)
2. ¬∃x ∈ A. Φ(x) <=> ¬∃x. x ∈ A  ∧  Φ(x) <=> ∀x ∈ A.¬Φ(x)
3. ¬∀x ∈ A.¬Φ(x) <=> ¬∀x. x ∈ A -> ¬Φ(x) <=> ∃x ∈ A. Φ(x)
4. ¬∃x ∈ A.¬Φ(x) <=> ¬∃x. x ∈ A  ∧ ¬Φ(x) <=> ∀x ∈ A. Φ(x)


Now, we have, e.g. that:

```
¬∀x.   x ∈ A -> Φ(x)   <--> ¬∀x ∈ A. Φ(x)
 ∃x. ¬[x ∈ A -> Φ(x)]
 <=>
 ∃x.  [x ∈ A ∧ ¬Φ(x)]  <-->  ∃x ∈ A. Φ(x)
```
