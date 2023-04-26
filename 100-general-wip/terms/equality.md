# Equality

* https://en.wikipedia.org/wiki/Equality_(mathematics)
* https://ncatlab.org/nlab/show/equality
* https://www.math.fsu.edu/~ealdrov/teaching/2020-21/fall/MAS5932/agda/simplethms-1.html

Terminology
- equality
- equivalence relation
- propositional equality
- definitional equality
- isomorphism
- iff
- extensionality
- extensional equality
- intensional equality
- supervenience
- substitutivity
- substitution property of equality
- Leibnitz law of equality
- identity of indiscernibles
- indiscernibility of identicals


**Equality** is a relation between two mathematical objects (variables, expressions) that asserts that they represent the same object (have the same value).

Equality almost always appears in mathematical expressions that use variables, such as `a` and `b` to represent mathematical objects. The two variables may refer to two distinct objects, but they may also refer to the same object (aliases). If we determine the latter is the case, we may denote that fact by writing `a = b`.

The equality in an equation with literal values such as `4 = 4` appears trivially true. However, solving an equation that involves free variables, such as `a = b`, may not be so easily discovered due to the dependencies these variables may have on other expressions.

It usually takes some work in the form of various transformations applied to the expressions on both sides of the equals sign to resolve it. For example, the identity equation, `(x + 1)² = x² + 2x + 1`, means that the two expressions have the same value for any number `x` (or that they represent the same function), which may be determined by applying appropriate transformations.

The assertion `{x|Px} = {x|Qx}` ⟺ `Px ⟺ Qx` means that if the elements satisfying the property `P(x)` are the same as those satisfying `Q(x)`, then the two uses of the set-builder notations define the same set. This property, that two sets that have the same elements are equal, is called the *axiom of extensionality*, `∀a ∀b (∀x (x ∈ a ⟺ x ∈ b) ⟺ (a = b)`.


## Contents

- Basic properties
- Equality as predicate
- Identities
- Equations
- Congruences
- Approximate equality
- Relation with equivalence and isomorphism
- Logical definitions
- Equality in set theory
  - Set equality based on first-order logic with equality
  - Set equality based on first-order logic without equality


## Basic Properties

**Substitution property of equality** or **the Leibnitz law of equality**:

for all objects `a` and `b` and any function `F(x)`,    

`∀a∀b((a = b) -> F(a) = F(b))`

`∀F(Fx ⇔ Fy) -> x = y`

The Leibnitz law formalizes the substitution property of equality: A[T/x] is the result of substituting the term `T` for the free var `x` in the term `A`:
- substitution: if A = B is a theorem, then C[A/x] = C[B/x] is a theorem
- generality:   if A = B is a theorem, then A[C/x] = B[C/x] is a theorem




Some specific examples follow.

For any `a,b,c ∈ ℝ`
* `a = b -> a + c = b + c`              (here, F(x) = x + c)
* `a = b -> a − c = b − c`              (here, F(x) = x − c)
* `a = b -> a * c = b * c`              (here, F(x) = x * c)
* `a = b ⋀ c ≠ 0 -> (a / c = b / c)`    (here, F(x) = x / c)

Equivalence relation properties
- Reflexive property:  `∀a (a = a)`
- Symmetric property:  `∀a ∀b (a = b -> b = a)`
- Transitive property: `∀a ∀b ∀c (a = b ⋀ b = c -> a = c)`

These last three properties make equality an *equivalence relation*. They were originally included among the Peano axioms for natural numbers; although the symmetric and transitive properties are often seen as fundamental, they can be deduced from substitution and reflexive properties.

## Equality as predicate

When A and B are not fully specified or depend on some variables, equality is a proposition, which may be true for some values and false for others.

Equality is a binary relation which may result in a truth value.

## Congruences

In some cases, one may consider as equal two mathematical objects that are only equivalent for the properties being considered.

For instance, in geometry, two geometric shapes are said to be equal when one may be moved to coincide with the other. The word *congruence*, along with the associated symbol `≅`, is also used for this kind of equality.

## Approximate equality

There are some logic systems that don't have any notion of equality. This reflects the undecidability of the equality of two real numbers, defined by formulas involving the integers, the basic arithmetic operations, the logarithm and the exponential function. In other words, there cannot exist any algorithm for deciding such an equality.

The binary relation of *approximate equality* is denoted by the symbol `≈`, placed in between real numbers or other things, even if more precisely defined, is not transitive (since many small differences can add up to something big). However, equality almost everywhere is transitive.

A *questionable equality* under test may be denoted using the `≟` symbol.

## Relation with equivalence and isomorphism

Viewed as a relation, equality is the archetype of the more general concept of an *equivalence relation on a set*: those binary relations that are reflexive, symmetric and transitive. The *identity relation* is an *equivalence relation*.

Conversely, let `R` be an equivalence relation, and let's denote by `xR` the equivalence class of `x`, consisting of all elements `z` such that `xRz`. Then the relation `xRy` is equivalent with the equality `xR = yR`. It follows that equality is the finest equivalence relation on any set `S` in the sense that it is the relation that has the smallest equivalence classes (every class is reduced to a single element).

In some contexts, equality is sharply distinguished from equivalence or isomorphism. For example, one may distinguish fractions from rational numbers, the latter being equivalence classes of fractions: the fractions 1/2 and 2/4 are distinct as fractions (as different strings of symbols) but they "represent" the same rational number (the same point on a number line). This distinction gives rise to the notion of a *quotient set*.

Similarly, the sets `{a,b,c}` and `{1,2,3}` are not equal sets, but they are both sets of three elements and thus *isomorphic*, meaning that there is a bijection between them, one of which is `{ a ⟼ 1, b ⟼ 2, c ⟼ 3 }`.

Since there are other choices of isomorphism, these sets cannot be identified without making such a choice - any statement that identifies them "depends on choice of identification".

This *distinction between equality and isomorphism is of fundamental importance in category theory* and is one motivation for the development of category theory.


## Logical definitions

- First-order logic § Equality and its axioms
https://en.wikipedia.org/wiki/First-order_logic#Equality_and_its_axioms

- Identity of indiscernibles
https://en.wikipedia.org/wiki/Identity_of_indiscernibles

Leibniz characterized the notion of equality as follows:

given any x and y, x = y if and only if, given any predicate P, P(x) if and only if P(y).

*Leibniz's law of equality*: `∀x∀y(x = y ⟺ φ(x) = φ(y))`
