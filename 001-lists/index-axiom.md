# Index of Axioms


* Associativity
* Commutativity (both-sided, left, right)
* Distributivity (De Morgan's)
* Identity (both-sided, left, right; additive, multiplicative; composition)
* Invertability
* Totality
* Idempotency
* Fix-point
* Cyclicality
* Monotonicity
* Trichotomy
* Reflexivity
* Symmetry
* Transitivity
* Annihilation
* Absorption
* Monotonicity

* Involution

<!-- TOC -->

- [Absorption](#absorption)
- [Annihilation](#annihilation)
- [Monotonicity](#monotonicity)
- [Associativity](#associativity)
- [Commutativity](#commutativity)
- [Distributivity](#distributivity)
- [De Morgan's laws](#de-morgans-laws)
- [Trichotomy](#trichotomy)
- [Totality](#totality)
- [Invertability](#invertability)
- [Addition law for inequalities](#addition-law-for-inequalities)
- [The well ordering axiom](#the-well-ordering-axiom)
- [The least upper bound axiom](#the-least-upper-bound-axiom)
- [Interchange law](#interchange-law)
- [Substitution](#substitution)
- [Identity](#identity)
- [Idempotence](#idempotence)
- [Cyclicality](#cyclicality)
- [Fix-point](#fix-point)
- [Relations](#relations)
- [Sets](#sets)
- [Boolean logic](#boolean-logic)
- [ML](#ml)
- [Axioms of Algebra](#axioms-of-algebra)
- [Branches](#branches)
- [CS](#cs)

<!-- /TOC -->



## Absorption

- Absorption in Boolean Algebra
  - Absorption 1: $$x \lor x \land y = x$$
  - Absorption 2: $$x \land (x \lor y) = x $$


## Annihilation

- Annihilation in Boolean Algebra
  - Annihilator for $$\lor: \ x\lor 1=1$$
  - Annihilator for $$\land: \ x\land 1=1$$


## Monotonicity
In Boolean Algebra, conjunction and disjunction are monotone operations because they both have the property that changing either argument, either leaves the output unchanged or the output changes in the same way as the input. In other words, changing any variable from 0 to 1 never results in the output changing from 1 to 0. Operations with this property are said to be monotone.

Nonmonotonicity enters Boolean Algebra via NOT operator, ¬.



## Associativity

- Associativity of a binary operation in a group
  - $$\ x \star (y \star z) = (x \star y) \star z$$
  - add, mul, function composition
    - $$h \circ (g \circ f) = (h \circ g) \circ f$$


## Commutativity
- Both-sided commutativity
- Left commutativity
- Right commutativity
- (binary operations have commutativity, binary relations have symmetry)

## Distributivity
a(b + c) = ab + ac


## De Morgan's laws
In math logic: ¬(p ∧ q) = ¬p ∨ ¬q 


## Trichotomy
If a and b are real numbers, then one and only one of the following
three statements is true: a < b, a = b, or a > b.

## Totality
Closure of R+:
If a and b are positive real numbers, then so are a + b and ab.

## Invertability
 - $$x \star x^{-1} = Id$$
- Additive Inverse: negated number, 3 and -3
- Multiplicative Inverse: reciprocal, 8 and 1/8


## Addition law for inequalities
If a, b, and c are real numbers and a < b, then a + c < b + c.

## The well ordering axiom
Every nonempty set of positive integers contains a smallest integer.

## The least upper bound axiom
Every nonempty set of real numbers that has an upper bound has a least upper bound.

## Interchange law
`(x∗y)⋅(z∗w) = (x⋅z)∗(y⋅w)`

in the presence of a two-sided common unit element, implies commutativity and associativity of ∗ and ⋅ (in fact, they have to be the same operation)

## Substitution
If a = b, then b may be substituted for a in any mathematical statement without affecting its truth value.

## Identity
Identity (neutral) element
- $$Id = x \star x^{-1}$$
- Left identity:  $$Id \star x = x$$
- Right identity: $$x \star Id = x$$
- Two-sided identity: $$Id \star x = x = x \star Id$$
  - Additive identity: 0
  - Multiplicative identity: 1


## Idempotence

Idempotence is the property of certain operations whereby they can be applied multiple times without changing the result beyond the initial application.

The concept of idempotence arises in a number of places in abstract algebra (in particular, in the theory of projectors and closure operators) and functional programming (in which it is connected to the property of referential transparency).

The term was introduced by Benjamin Peirce in the context of elements of algebras that remain invariant when raised to a positive integer power, and literally means "(the quality of having) the same power", from idem + potence (same + power).

In math, an idempotent operation is one where `f(f(x)) = f(x)`

`f...(f(f(x))...) = f(x)`


f is idempotent: 

f: x ↦ y

f(x) = x'
f(f(x)) = f(x)
f(x') = x'


f(x) = y ∧ f(y) = y -> x = y  ✘

f(x) = y ∧ f(f(x)) = y -> 


[y/f(x)]
f(x) = f(y)

f(f(x)) = f(x) = f(y) = y

f(f(x)) = f(y)



For example, the `abs()` function is idempotent: `∀x . abs(abs(x)) = abs(x)`



## Cyclicality

Cyclicality is a property of a function that cycles between two return values.

f(x) = 1/x :: f(5) = 0.2, f(0.2) = 5, f(5) = 0.2, ...

f(x) = y ∧ f(y) = x

f(x) = f(f(x))


## Fix-point

A function's fix-point is the input x for which the output gives the same value, f(x) = x.

A trivial example is x = ±1 in f(x) = x^2, meaning 1 is the fix-point of the squaring function.

Some functions have infinite number of fix-points (identity function), while others have none, e.g. f(x) = x+1

An interesting example of a function that, given given any input, works toward a fix-point is cosine function.

fix cos x = cos . cos x

Start with x=1 and after n-folds on itself, the function will fix on a constant value, i.e. a fixed-point value of `0.7390851332151607`, such that     
`cos(0.7390851332151607) = 0.7390851332151607`



## Relations
* Reflexivity
  - reflexive
  - irreflexive
  - anti-reflexive
* Symmetry
  - symmetric
  - asymmetric
  - anti-symmetric
* Transitivity
  - transitive
  - anti-transitive
* Trichotomy


## Sets
- axiom of comprehension
- axiom of extensionality
- axiom of well-definedness

## Boolean logic
- Identity
- Absorption
- Idempotency
- Negation
- Absorption


## ML
* Transformation rules
  * Rules of inference (Propositional calculus)
    - Junctions
      - Conjunction
        - introduction/elimination
      - Disjunction
        - introduction/elimination
    - Implication
      - introduction/elimination, modus ponens
    - Biconditional
      - introduction/elimination
    - syllogism
      - Disjunctive syllogism
      - hypothetical syllogism
    - dilemma
      - Constructive dilemma
      - destructive dilemma
    - Absorption
      - modus tollens, modus ponendo tollens
  * Rules of replacement
    - Associativity: (p ⩙ q) ⩙ r = p ⩙ (q ⩙ r), where ⩙ is a junction op
    - Commutativity
    - Distributivity
    - Double negation
    - De Morgan's laws
    - Transposition
    - Material implication
    - Exportation
    - Tautology
    - Negation
      - Negation introduction/elimination
      - Double negation introduction/elimination
  * Predicate logic
    - Universal generalization/instantiation
    - Existential generalization/instantiation
  * misc
    - Well-formedness
    - the law of bivalence (either true or false, not both nor neither)
    - the law of excluded middle
    - Identity, `ID`
    - soundness, us-
    - completeness, in-
    - compactness
    - Validity
    - Cogency
    - consistency
    - Independence




## Axioms of Algebra

An Axiom is a mathematical statement that is assumed to be true. There are four rearrangement axioms and two rearrangement properties of algebra. Addition has the commutative axiom, associative axiom, and rearrangement property. Multiplication has the commutative axiom, associative axiom, and rearrangement property.

* *Commutative* Axiom for Addition
  - The order of addends in an addition expression does not matter.
  - For example: x + y = y + x
* *Commutative* Axiom for Multiplication
  - The order of factors in a multiplication expression does not matter.
  -For example: xy = yx
* *Associative* Axiom for Addition
  - In an addition expression it does not matter how the addends are grouped.
  - For example: (x + y) + z = x + (y + z)
* *Associative* Axiom for Multiplication
  - In a multiplication expression it does not matter how the factors are grouped. For example: (xy)z = x(yz)
* *Rearrangement* Property of Addition
  - The addends in an addition expression may be arranged and grouped in any order.
  - This is a combination of the associative and commutative axioms.
  - e.g. x + y + z = x + (y + z) = (x + y) + z = z + (y + x) = y + (z + x)
* *Rearrangement* Property of Multiplication
  - The factors in a multiplication expression may be arranged and grouped in any order.
  - This is a combination of the associative and commutative axioms.
  - e.g. xyz = x(yz) = z(yx) = y(zx)


* Zero Product


## Branches
- Logic: propositions
- Number theory
- Algebra
- Sets
- Relations

## CS
- recursive, recursion
- decidability
- computability

In computability theory, a set of natural numbers is called recursive, computable or decidable if there is an algorithm which takes a number as input, terminates after a finite amount of time (possibly depending on the given number) and correctly decides whether the number belongs to the set or not.
