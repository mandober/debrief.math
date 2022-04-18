## Quasireflexive relation

https://en.wikipedia.org/wiki/Quasireflexive_relation

> A relation `~` on a set `X` is called **quasi-reflexive** if every element that is related to some element is also related to itself.

`∀xy ∈ X. x ~ y -> (x ~ x ∧ y ~ y)`

- An example is the relation "has the same limit as" on the set of sequences of real numbers: not every sequence has a limit, and thus the relation is not reflexive, but if a sequence has the same limit as some sequence, then it has the same limit as itself.
- It does make sense to distinguish left and right quasi-reflexivity, defined by ∀ x,y ∈ X. x ~ y -> x ~ x and ∀ x,y ∈ X. x ~ y -> y ~ y, respectively.
- For example, a left Euclidean relation is always left, but not necessarily right, quasi-reflexive. A relation R is quasi-reflexive if, and only if, its symmetric closure R∪RT is left (or right) quasi-reflexive.
