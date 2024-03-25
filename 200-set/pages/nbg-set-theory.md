# Set theory :: Set theories :: Von Neumann-Bernays-Gödel Set Theory

https://en.wikipedia.org/wiki/Von_Neumann-Bernays-Godel_set_theory

**VonNeumann-Bernays-Gödel set theory** (NBG) is an axiomatic set theory that is a conservative extension of ZFC set theory.

NBG introduces the notion of *class*, which is a collection of sets defined by a formula whose quantifiers range only over sets. NBG can define classes that are larger than sets, such as the class of all sets and the class of all ordinals. *Morse-Kelley set theory (MK)* allows classes to be defined by formulas whose quantifiers range over classes.

>A key theorem of NBG is **the class existence theorem**, which states that for every formula whose quantifiers range only over sets, there is a class consisting of the sets satisfying the formula.

This class is built by mirroring the step-by-step construction of the formula with classes. Since all set-theoretic formulas are constructed from two kinds of atomic formulas (membership and equality) and finitely many logical symbols, only finitely many axioms are needed to build the classes satisfying them. This is why NBG is finitely axiomatizable, while ZFC and MK are not.

Classes are also used for other constructions, for avoiding the set-theoretic paradoxes, and for stating *the axiom of global choice*, which is stronger than ZFC's axiom of choice.

* John von Neumann introduced classes into set theory in 1925. The primitive notions of his theory were function and argument. Using these notions, he defined class and set.
* Paul Bernays reformulated von Neumann's theory by taking class and set as primitive notions.
* Kurt Gödel simplified Bernays' theory for his relative consistency proof of the axiom of choice and the generalized continuum hypothesis.

## Contents

- 1. Classes in set theory
  - 1.1 The uses of classes
  - 1.2 Axiom schema versus class existence theorem
- 2. Axiomatization of NBG
  - 2.1 Classes and sets
  - 2.2 Definitions and axioms of extensionality and pairing
  - 2.3 Class existence axioms and axiom of regularity
  - 2.4 Class existence theorem
  - 2.5 Extending the class existence theorem
  - 2.6 Set axioms
  - 2.7 Axiom of global choice
- 3. History
  - 3.1 Von Neumann's 1925 axiom system
  - 3.2 Von Neumann's 1929 axiom system
  - 3.3 Bernays' axiom system
  - 3.4 Gödel's axiom system (NBG)
- 4. NBG, ZFC, and MK
  - 4.1 Models
- 5. Category theory

## Classes in set theory

### The uses of classes

Classes have several uses in NBG:
- They produce a finite axiomatization of set theory.
- They are used to state a "very strong form of the axiom of choice"-namely, the axiom of global choice: There exists a global choice function `G` defined on the class of all nonempty sets such that `G(x) ∈ x` for every nonempty set `x`. This is stronger than ZFC's axiom of choice: For every set `s` of nonempty sets, there exists a choice function `f` defined on `s` such that `f(x) ∈ x` for all `x ∈ s`.
- The set-theoretic paradoxes are handled by recognizing that some classes cannot be sets. For example, assume that the class `Ord` of all ordinals is a set. Then `Ord` is a transitive set well-ordered by `∈`. So, by definition, `Ord` is an ordinal. Hence, `Ord ∈ Ord`, which contradicts `∈` being a well-ordering of `Ord`. Therefore, `Ord` is not a set. *A class that is not a set is called a proper class*; `Ord` is a proper class.
- Proper classes are useful in constructions. In his proof of the *relative consistency of the axiom of global choice* and the *generalized continuum hypothesis*, Gödel used proper classes to build the constructible universe. He constructed a function on the class of all ordinals that, for each ordinal, builds a constructible set by applying a set-building operation to previously constructed sets. The *constructible universe* is the image of this function.

### Axiom schema versus class existence theorem

Once classes are added to the language of ZFC, it is easy to transform ZFC into a set theory with classes.

First, **the axiom schema of class comprehension** is added, which states that for every formula `ϕ(x₁, …, xₙ)` that quantifies only over sets, there exists a class `A` consisting of the `n`-tuples satisfying the formula, i.e.

`∀x₁ ⋯ ∀xₙ[(x₁, …, xₙ) ∈ A ⟺ ϕ(x₁, …, xₙ)]`

Then the *axiom schema of replacement* is replaced by a single axiom that uses a class.

Finally, ZFC's *axiom of extensionality* is modified to handle classes: if two classes have the same elements, then they are identical.

The other axioms of ZFC are not modified.

This theory is not finitely axiomatized. ZFC's replacement schema has been replaced by a single axiom, but the axiom schema of class comprehension has been introduced. To produce a theory with finitely many axioms, the axiom schema of class comprehension is first replaced with finitely many class existence axioms. Then these axioms are used to prove the class existence theorem, which implies every instance of the axiom schema. The proof of this theorem requires only 7 class existence axioms, which are used to convert the construction of a formula into the construction of a class satisfying the formula.

## Axiomatization of NBG
- 2.1 Classes and sets
- 2.2 Definitions and axioms of extensionality and pairing
- 2.3 Class existence axioms and axiom of regularity
- 2.4 Class existence theorem
- 2.5 Extending the class existence theorem
- 2.6 Set axioms
- 2.7 Axiom of global choice

(...)

## History
- 3.1 Von Neumann's 1925 axiom system
- 3.2 Von Neumann's 1929 axiom system
- 3.3 Bernays' axiom system
- 3.4 Gödel's axiom system (NBG)

(...)

## NBG, ZFC, and MK
- 4.1 Models

(...)

## Category theory

The ontology of NBG provides scaffolding for speaking about "large objects" without risking paradox.

For instance, in some developments of category theory, a *large category* is defined as one whose objects and morphisms make up a proper class.

On the other hand, a *small category* is one whose objects and morphisms are members of a set. 

Thus, we can speak of the "category of all sets" or "category of all small categories" without risking paradox since NBG supports large categories.

However, NBG does not support a *category of all categories* since large categories would be members of it and *NBG does not allow proper classes to be members of anything*.

An ontological extension that enables us to talk formally about such a "category" is the **conglomerate**, which is a collection of classes.

Then the "category of all categories" is defined by its objects: the conglomerate of all categories; and its morphisms: the conglomerate of all morphisms from A to B where A and B are objects.

On whether an ontology including classes as well as sets is adequate for category theory, see Muller 2001.
