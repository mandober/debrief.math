# Reflexivity

https://en.wikipedia.org/wiki/Quasireflexive_relation

Binary relation `⟨x,y⟩ ∈ R`

- Reflexive              : `∀x. x ∈ X -> ⟨x,x⟩ ∈ R`
- Irreflexive            : `∀x. x ∈ X -> ⟨x,x⟩ ∉ R`
- Quasi-reflexive        : `∀x∀y ∈ X. ⟨x,y⟩ ∈ R -> ⦗ ⟨x,x⟩ ∈ R ∧ ⟨y,y⟩ ∈ R ⦘`
- Left quasi-reflexivity : `∀ x,y ∈ X. ⟨x,y⟩ ∈ R -> ⟨x,x⟩ ∈ R`
- Right quasi-reflexivity: `∀ x,y ∈ X. ⟨x,y⟩ ∈ R -> ⟨y,y⟩ ∈ R`
- Coreflexive            : `∀ x,y ∈ X. ⟨x,y⟩ ∈ R -> x  =  y`


Binary relation `~`

* Reflexive              : `∀x. x ∈ X -> x ~ x` 
* Irreflexive            : `∀x. x ∈ X -> x ≁ x`
* Quasi-reflexive        : `∀x∀y ∈ X. (x ~ y -> x ~ x ∧ y ~ y)`
* Left quasi-reflexivity : `∀ x,y ∈ X. x ~ y -> x ~ x`
* Right quasi-reflexivity: `∀ x,y ∈ X. x ~ y -> y ~ y`
* Coreflexive            : `∀ x,y ∈ X. x ~ y -> x  =  y`



## Anti-reflexivity (irreflexivity)

A binary relation is called **irreflexive** or **anti-reflexive** if it doesn't relate any element to itself. For example the GT relation on ℝ.

Not every relation which is not reflexive is irreflexive; it is possible to define relations where some elements are related to themselves, but others are not ("neither all nor none").

For example, a binary relation "the product of x and y is even" on ℕ, is reflexive on the subset of even numbers, irreflexive on the subset of odd numbers, and neither reflexive nor irreflexive on the set on ℕ as a whole.

> A relation is irreflexive iff its complement is reflexive.


## Quasi-reflexivity

> A relation `~` on a set `X` is called **quasi-reflexive** if every element that is related to some element is also related to itself.

`∀xy ∈ X. x ~ y -> (x ~ x ∧ y ~ y)`



- An example is the relation "has the same limit as" on the set of sequences of real numbers: not every sequence has a limit, and thus the relation is not reflexive, but if a sequence has the same limit as some sequence, then it has the same limit as itself.
- It does make sense to distinguish left and right quasi-reflexivity, defined by ∀ x,y ∈ X. x ~ y -> x ~ x and ∀ x,y ∈ X. x ~ y -> y ~ y, respectively.
- For example, a left Euclidean relation is always left, but not necessarily right, quasi-reflexive. A relation R is quasi-reflexive if, and only if, its symmetric closure R∪RT is left (or right) quasi-reflexive.



## Coreflexive

> A relation ~ on a set X is called **coreflexive** if for all x and y in X it holds that if x ~ y then x = y

- An example of a coreflexive relation is the relation on integers in which each odd number is related to itself and there are no other relations.

- The equality relation is the only example of a both reflexive and coreflexive relation, and any coreflexive relation is a subset of the identity relation.

- The union of a coreflexive relation and a transitive relation on the same set is always transitive.

- A relation R is coreflexive if, and only if, its symmetric closure is anti-symmetric.

* A reflexive relation on a nonempty set X can neither be irreflexive, nor asymmetric, nor antitransitive.

* The reflexive closure ≃ of a binary relation ~ on a set X is the smallest reflexive relation on X that is a superset of ~
* Equivalently, it is the union of ~ and the identity relation on X, formally: (≃) = (~) ∪ (=). For example, the reflexive closure of (<) is (≤).

* The reflexive reduction, or irreflexive kernel, of a binary relation ~ on a set X is the smallest relation ≆ such that ≆ shares the same reflexive closure as ~. It can be seen in a way as the opposite of the reflexive closure. It is equivalent to the complement of the identity relation on X with regard to ~, formally: (≆) = (~) \ (=). That is, it is equivalent to ~ except for where x~x is true. For example, the reflexive reduction of (≤) is (<).



## Reflexivity

https://en.wikipedia.org/wiki/Reflexive_relation

In mathematics, a binary relation R over a set X is reflexive if it relates every element of X to itself.

I ⊆ R where I is the identity relation on X.

An example of a reflexive relation is the relation "is equal to" on the set of real numbers, since every real number is equal to itself. A reflexive relation is said to have the reflexive property or is said to possess reflexivity. Along with symmetry and transitivity, reflexivity is one of three properties defining equivalence relations.

Properties
- reflexive
- non-reflexive
- irreflexive (anti-reflexive)
- non-irreflexive
- coreflexive
- non-coreflexive
- quasi-refexive


Examples

1. Relation "is equal to", i.e. `=`, on the set of real numbers is reflexive since every real number is equal to itself. Replacing $$R$$ with `=` we see that $$xRx$$ becomes $$x=x$$, which holds for any $$x$$.

2. Let $$X=\{1,2,3,4\}$$. For relation $$R$$ to be reflefive, it must contain all the identity pairs, $$R=\{(1,1), (2,2), (3,3), (4,4)\}$$ of the set $$X^2$$. It can additionally contain any extra pairs, but missing a single id pair will make this relation __non-reflexive__. If the relation contains **only** id pairs then this is **identity** relation.


## Quasi-reflexivity


## Irreflexivity

> A binary relation is **irreflexive**, or **anti-reflexive**, if no element is related to itself.

Irreflexive relation prohibits membership for identity pairs. In an endorelation, $$X^2$$, on a set $$X=\{1,2,3\}$$, the relation is irreflexive if it doesn't contain any of the identity pairs i.e. $$(1,1)$$, $$(2,2)$$ or $$(3,3)$$. If it contains even a single id pair, it is __non-irreflexive__. If it contains all the id pairs it is reflexive.

An example is the "_greater than_" relation on the set of real numbers, since no real number is greater than itself.

Not every relation which is not reflexive is irreflexive; it is possible to define relations where some elements are related to themselves but others are not.

For example, the binary relation "_the product of x and y is even_" is reflexive on the set of even natural numbers, irreflexive on the set of odd natural numbers, and neither reflexive nor irreflexive on the set of natural numbers.

Examples of irreflexive relations include:
- $$\not =$$, "_is not equal to_"
- $$\lt$$, "_is less than_"
- $$\gt$$, "_is greater than_"
- $$\subset$$, "_is a proper subset of_"
