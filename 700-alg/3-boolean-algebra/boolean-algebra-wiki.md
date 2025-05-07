# Boolean algebra

https://en.wikipedia.org/wiki/Boolean_algebra

Boolean algebra is a branch of algebra, but it differs from elementary algebra in two ways:
* values of vars are the truth values true and false (denoted 1 and 0), whereas in elementary algebra the values of vars are numbers.
* Boolean algebra uses logical operators (connectives), like ∧, ∨, and ¬, while elementary algebra uses arithmetic operators (+, -, ×). Boolean algebra is a formal way of describing logical operations, in the same way that elementary algebra describes numerical operations.

Boolean algebra was introduced by George Boole in his first book "The Mathematical Analysis of Logic" (1847), and set forth more fully in his "An Investigation of the Laws of Thought" (1854).

According to Huntington, the term "Boolean algebra" was first suggested by Henry M. Sheffer in 1913, although Charles Sanders Peirce gave the title "A Boolian [sic] Algebra with One Constant" to the first chapter of his "The Simplest Mathematics" in 1880.

## Contents

- 1. History
- 2. Values
- 3. Operations
  - 3.1 Basic operations
  - 3.2 Secondary operations
- 4. Laws
  - 4.1 Monotone laws
  - 4.2 Nonmonotone laws
  - 4.3 Completeness
  - 4.4 Duality principle
- 5. Diagrammatic representations
  - 5.1 Venn diagrams
  - 5.2 Digital logic gates
- 6. Boolean algebras
  - 6.1 Concrete Boolean algebras
  - 6.2 Subsets as bit vectors
  - 6.3 Prototypical Boolean algebra
  - 6.4 Boolean algebras: the definition
  - 6.5 Representable Boolean algebras
- 7. Axiomatizing Boolean algebra
- 8. Propositional logic
  - 8.1 Applications
  - 8.2 Deductive systems for propositional logic
    - 8.2.1 Sequent calculus
- 9. Applications
  - 9.1 Computers
  - 9.2 Two-valued logic
  - 9.3 Boolean operations
    - 9.3.1 Natural language
    - 9.3.2 Digital logic
    - 9.3.3 Naive set theory
    - 9.3.4 Video cards
    - 9.3.5 Modeling and CAD
    - 9.3.6 Boolean searches
- 10. See also
- 11. Notes
- 12. References
- 13. Further reading
  - 13.1 Historical perspective
- 14. External links


## 1. History

A precursor of Boolean algebra was Leibniz's *algebra of concepts*. The use of binary in relation to the "I Ching" was central to Leibniz's *characteristica universalis*. It eventually created the foundations of algebra of concepts. Leibniz's algebra of concepts is deductively equivalent to the Boolean algebra of sets.

*Boole's algebra* predated the modern developments in abstract algebra and mathematical logic; it is however seen as connected to the origins of both fields.

In an abstract setting, *Boolean algebra* was perfected in the late 19th century by Jevons, Schröder, Huntington and others, until it reached the modern conception of an (abstract) mathematical structure.

For example, the empirical observation that one can manipulate expressions in the *algebra of sets*, by translating them into expressions in Boole's algebra, is explained in modern terms by saying that *the algebra of sets is `a` Boolean algebra* (note the indefinite article). 
In fact, M. H. Stone proved in 1936 that
>every Boolean algebra is isomorphic to a field of sets.

In the 1930s, while studying switching circuits, Claude Shannon observed that one could also apply the rules of Boole's algebra in this setting, and he introduced *switching algebra* as a way to analyze and design circuits by algebraic means in terms of logic gates. Shannon already had at his disposal the abstract mathematical apparatus, thus he cast his switching algebra as the *two-element Boolean algebra*. In modern circuit engineering settings, there is little need to consider other Boolean algebras, thus "switching algebra" and "Boolean algebra" are often used interchangeably.

Efficient implementation of Boolean functions is a fundamental problem in the design of combinational logic circuits. Modern electronic design automation tools for very-large-scale integration (VLSI) circuits often rely on an efficient representation of Boolean functions known as (reduced ordered) binary decision diagrams (BDD) for logic synthesis and formal verification.

Logic sentences that can be expressed in classical propositional calculus have an equivalent expression in Boolean algebra. Thus, *Boolean logic* is sometimes used to denote *propositional calculus* performed in this way. However, Boolean algebra is not sufficient to capture logic formulas using quantifiers, like those from first order logic.

Although the development of mathematical logic did not follow Boole's program, the connection between his algebra and logic was later put on firm ground in the setting of *algebraic logic*, which also studies the algebraic systems of many other logics.

The problem of determining whether the variables of a given Boolean (propositional) formula can be assigned in such a way as to make the formula evaluate to true is called the *Boolean satisfiability problem (SAT)*, and is of importance to theoretical computer science, being the first problem shown to be NP-complete.

The closely related model of computation known as a *Boolean circuit* relates time complexity (of an algorithm) to circuit complexity.

## 2. Values

Whereas expressions denote mainly numbers in elementary algebra, in Boolean algebra, they denote the truth values (false and true).

Truth values are represented with the bits 0 and 1, but they don't behave like the integers 0 and 1 (in which 1 + 1 = 2). Instead, they may be identified with the elements of the two-element field `GF(2)`, i.e. integer arithmetic modulo 2, `ℤ/2ℤ` (in which 1 + 1 = 0).

Addition and multiplication then play the Boolean roles of XOR and AND, with disjunction defined as `x ∨ y := x + y − xy`, and negation as `¬x := 1 − x`.

- x ∧ y = xy
- x ⊕ y = x + y (mod 2)
- x ∨ y := x + y - xy
- ¬x    := 1 - x

GF(2) = ℤ/2ℤ = mod 2
- …, -4, -2, 0, 2, 4, 6, …  ≡ 0 (mod 2),  Even n ≡ 0 (mod 2)
- …, -3, -1, 1, 3, 5, 7, …  ≡ 1 (mod 2),   Odd n ≡ 0 (mod 2)

In GF(2), `−` may be replaced by `+`, since they denote the same operation; however, this way of writing Boolean operations allows applying the usual arithmetic operations of integers (this may be useful when using a programming language in which GF(2) is not implemented).

Boolean algebra also deals with functions which have their values in the Boolean domain, 𝔹 = {0, 1}. A sequence of bits is a commonly used example of such a function.

Another common example is the totality of subsets of a set `E`: to a subset `F⊆E`, one can define the *indicator function* that takes the value 1 on F, and 0 outside F. The most general example is the set elements of a Boolean algebra, with all of the foregoing being instances thereof.

As with elementary algebra, the *purely equational part of the theory* may be developed, without considering explicit values for the variables.

## 3. Operations

### 3.1 Basic operations

While Elementary algebra has 4 operations {+, -, ×, ÷}, the Boolean algebra has only 3 basic operations `{∧, ∨, ¬}`, collectively referred to as *Boolean operators* or Boolean connectives.

Variables in Boolean algebra that store the logical value of 0 and 1 are called the *boolean variables*. They are used to store either true or false values.

The basic operations on boolean variables `x` and `y` are defined as follows:

x ∧ y | Kxy | x ∧ y = (x = y = 1) ? 1 : 0
x ∨ y | Axy | x ∨ y = (x = y = 0) ? 0 : 1
¬x    | Nx  | ¬x = (x = 1) ? 0 : 1

Alternatively, the values of `x ∧ y`, `x ∨ y`, and `¬x` can be expressed by tabulating their values with truth tables.

When used in expressions, the operators are applied according to the precedence rules. As with elementary algebra, expressions in parentheses are evaluated first, following the precedence rules.

If the truth values 0 and 1 are interpreted as integers, these operations may be expressed with the ordinary operations of arithmetic (where `x + y` uses addition and `xy` uses multiplication), or by the minimum/maximum functions:

    x ∧ y =         xy                = min(x,y)
    x ∨ y = x + y − xy = x + y(1 − x) = max(x,y)
    ¬x    =                    1 − x

    x ∨ y  =  x+y − x∙y = x+y (mod 2) = x+y(1−x) = max(x,y)
    ------------------------------------------------------------
    1 ∨ 1  =  1+1 − 1∙1 = 2-1  =  1   | 1 + 1(1-1) = 1 + 1(0) = 1
    1 ∨ 0  =  1+0 − 1∙0 = 1-0  =  1   | 1 + 0(1-1) = 1 + 0(0) = 1
    0 ∨ 1  =  0+1 − 0∙1 = 1-0  =  1   | 0 + 1(1-0) = 0 + 1(1) = 1
    0 ∨ 0  =  0+0 − 0∙0 = 0-0  =  0   | 0 + 0(1-0) = 0 + 0(1) = 0

    x + y - xy = x + y(1 - x)   = x + y(¬x)
    y + x - xy = y + x(1 - y)   = y + x(¬y)

    x + y(1 - x)
    x + 0(1 - x) = 1 + 0(1 - 1) = 1 + 0(0) = 1
    x + 1(1 - x) = 0 + 1(1 - 0) = 0 + 1(1) = 1

    x + y(z)
    0 + 0(0) = 0 + 0 = 0
    0 + 0(1) = 0 + 0 = 0
    0 + 1(0) = 0 + 0 = 0
    0 + 1(1) = 0 + 1 = 1
    1 + 0(0) = 1 + 0 = 1
    1 + 0(1) = 1 + 0 = 1
    1 + 1(0) = 1 + 0 = 1
    1 + 1(1) = 1 + 1 = 2

    x ∨ x = x + x - x(x)
    0 ∨ 0 = 0 + 0 - 0(0) = 0 - 0 = 0
    1 ∨ 1 = 1 + 1 - 1(1) = 2 - 1 = 1


One might consider that only negation, and one of the two other operations are basic because of the following identities that allow one to define conjunction in terms of negation and the disjunction, and vice versa, i.e. De Morgan's laws

    x ∧ y = ¬(¬x ∨ ¬y)
    x ∨ y = ¬(¬x ∧ ¬y)


### 3.2 Secondary operations

Operations composed from the basic operations including:
- Material conditional:   x → y = ¬x ∨ y
- Material biconditional: x ↔ y = (x ∧ y) ∨ (¬x ∧ ¬y)
- Exclusive OR (XOR):     x ⊕ y = ¬(x ↔ y) = (x ∨ y) ∧ ¬(x ∧ y)

#### 3.2.1 Material conditional

    x → y = ¬x ∨ y

    x → y : Bool → Bool → Bool
    1 → y = y
    0 → _ = 1

The first operation, `x → y`, or `Cxy`, is called material implication.

If `x` is 1, then the result of expression `x → y` is taken to be that of `y` (if y is 0, then 0; if y is 1, then 1).

But if `x` is 0, then the value of `y` can be ignored; however, the operation must return some Boolean value and there are only two choices. 

So by definition, `x → y` is true when `x` is false (relevance logic suggests this definition, by viewing an implication with a false premise as something other than either true or false).

#### 3.2.2 Logical equivalence

    x ⇔ y = (x → y) ∧ (y → x)
           = (x ∧ y) ∨ (¬x ∧ ¬y)
           = (x ∨ ¬y) ∧ (¬x ∨ y)

    x ⇔ y = (x → y) ∧ (y → x)
           = (¬x ∨ y) ∧ (¬y ∨ x)
           = ¬(¬¬x ∧ ¬y) ∧ ¬(¬¬y ∧ ¬x)
           = ¬(x ∧ ¬y) ∧ ¬(y ∧ ¬x)
           = (x ∧ y) ∨ (¬x ∧ ¬y)
           = (x ∨ ¬y) ∧ (¬x ∨ y)

    x ⇔ y : Bool → Bool → Bool
    x ⇔ y | x = y = 1
    x ⇔ y | x ≠ y = 0


The operation that complements exclusive or is equivalence or Boolean equality: `x ↔ y`, `x ⇔ y`, or `Exy`, is true just when `x` and `y` have the same value.

Hence `x ⊕ y` as its complement can be understood as `x ≠ y`, being true just when x and y are different.

The counterpart of `⊕` in arithmetic is `x + y (mod 2)`. 
The counterpart of `⇔` in arithmetic is `x + y + 1 (mod 2)`. 


#### 3.2.3 Exclusive OR (XOR)

    x ⊕ y = ¬(x ↔ y)
           = (x ∨  y) ∧ ¬(x ∧  y)
           = (x ∨  y) ∧ (¬x ∨ ¬y)
           = (x ∧ ¬y) ∨ (¬x ∧  y)

    x ⊕ y : Bool → Bool → Bool
    x ⊕ y | x = y = 0
    x ⊕ y | x ≠ y = 1


The second operation, `x ⊕ y`, or `Jxy`, is called exclusive or (often abbreviated as XOR) to distinguish it from disjunction as the inclusive kind.

It excludes the possibility of both x and y being true: 
if both are 1 then result is 0.

Defined in terms of arithmetic it is addition mod 2: `1 + 1 = 0 (mod 2)`.

## 4. Laws

A law of Boolean algebra is an identity such as `x ∨ (y ∨ z) = (x ∨ y) ∨ z` between two Boolean terms.

A *Boolean term* is defined as an expression built up from variables and the constants 0 and 1 using the operations ∧, ∨, ¬. 

The concept can be extended to terms involving other Boolean operations such as ⊕, →, ≡, but such extensions are unnecessary for the purposes to which the laws are put.

Such purposes include the definition of a Boolean algebra as any model of the Boolean laws, and as a means for deriving new laws from old, as in the derivation of `x ∨ (y ∧ z) = x ∨ (z ∧ y)` from `y ∧ z = z ∧ y` (as treated in § Axiomatizing Boolean algebra).

### 4.1 Monotone laws

Boolean algebra satisfies many of the same laws as ordinary algebra when one matches up `∨` with addition and `∧` with multiplication.

In particular the following laws are common to both kinds of algebra:
- Associativity of ∨: x∨(y∨z) =(x∨y)∨z
- Associativity of ∧: x∧(y∧z) = (x∧y)∧z
- Commutativity of ∨: x∨y = y∨x
- Commutativity of ∧: x∧y = y∧x
- Distributivity of ∧ over ∨: x∧(y∨z) = (x∧y)∨(x∧z)
- Identity for ∨: x∨0 = x
- Identity for ∧: x∧1 = x
- Annihilator for ∧: x∧0 = 0

The following laws hold in Boolean algebra, but not in ordinary algebra:
- Annihilator for ∨: x∨1 = 1
- Idempotence of ∨:  x∨x = x
- Idempotence of ∧: x∧x = x
- Absorption 1: x∧(x∨y) = x
- Absorption 2: x∨(x∧y) = x
- Distributivity of ∨ over ∧: x∨(y∧z) = (x∨y)∧(x∨z)

Taking x = 2 in the 3rd law above shows that it is not an ordinary algebra law, since 2 × 2 = 4. The remaining 5 laws can be falsified in ordinary algebra by taking all variables to be 1. For example, in absorption law 1, the left hand side would be 1(1 + 1) = 2, while the right hand side would be 1 (and so on).

All of the laws treated thus far have been for conjunction and disjunction.

>Conjunction and disjunction operations have the property that changing either argument either leaves the output unchanged, or the output changes in the same way as the input.

Equivalently, changing any variable from 0 to 1 
never results in the output changing from 1 to 0.

Operations with this property are said to be **monotone**. Thus, 
the axioms thus far have all been for *monotonic Boolean logic*.

*Nonmonotonicity* enters via complement `¬` as follows.

### 4.2 Nonmonotone laws

The complement operation is defined by the following two laws.

    Complementation 1: x ∧ ¬x = 0

    Complementation 2: x ∨ ¬x = 1

All properties of negation including the laws below follow from the above two laws alone.

In both ordinary and Boolean algebra, negation works by exchanging pairs of elements, hence in both algebras it satisfies the double negation law (also called involution law)

    Double negation: ¬(¬x) = x


But whereas ordinary algebra satisfies the two laws

       (−x)(−y) = xy
    (−x) + (−y) = −(x + y)

Boolean algebra satisfies De Morgan's laws:

    De Morgan 1: ¬x ∧ ¬y = ¬(x ∨ y)

    De Morgan 2: ¬x ∨ ¬y = ¬(x ∧ y)


### 4.3 Completeness

The laws listed above define Boolean algebra, in the sense that they entail the rest of the subject. 

The laws Complementation 1 and 2, together with the Monotone laws, suffice for this purpose and can therefore be taken as one possible complete set of laws or axiomatization of Boolean algebra. 

Every law of Boolean algebra follows logically from these axioms. Furthermore, Boolean algebras can then be defined as the models of these axioms as treated in § Boolean algebras.

Writing down further laws of Boolean algebra cannot give rise to any new consequences of these axioms, nor can it rule out any model of them. In contrast, in a list of some but not all of the same laws, there could have been Boolean laws that did not follow from those on the list, and moreover there would have been models of the listed laws that were not Boolean algebras.

This axiomatization is by no means the only one, or even necessarily the most natural given that attention was not paid as to whether some of the axioms followed from others, but there was simply a choice to stop when enough laws had been noticed, treated further in § Axiomatizing Boolean algebra. Or the intermediate notion of axiom can be sidestepped altogether by defining a Boolean law directly as any tautology, understood as an equation that holds for all values of its variables over 0 and 1.

All these definitions of Boolean algebra can be shown to be equivalent.

### 4.4 Duality principle

Principle: If {X, R} is a partially ordered set, then {X, R(inverse)} is also a partially ordered set.

There is nothing special about the choice of symbols for the values of Boolean algebra. 0 and 1 could be renamed to α and β, and as long as it was done consistently throughout, it would still be Boolean algebra, albeit with some obvious cosmetic differences.

But suppose 0 and 1 were renamed 1 and 0 respectively. Then it would still be Boolean algebra, and moreover operating on the same values. However, it would not be identical to our original Boolean algebra because now ∨ behaves the way ∧ used to do and vice versa. So there are still some cosmetic differences to show that the notation has been changed, despite the fact that 0s and 1s are still being used.

But if in addition to interchanging the names of the values, the names of the two binary operations are also interchanged, now there is no trace of what was done. The end product is completely indistinguishable from what was started with. The columns for x ∧ y and x ∨ y in the truth tables have changed places, but that switch is immaterial.

When values and operations can be paired up in a way that leaves everything important unchanged when all pairs are switched simultaneously, the members of each pair are called dual to each other. Thus 0 and 1 are dual, and ∧ and ∨ are dual. The duality principle, also called De Morgan duality, asserts that Boolean algebra is unchanged when all dual pairs are interchanged.

One change not needed to make as part of this interchange was to complement. Complement is a self-dual operation. The identity or do-nothing operation x (copy the input to the output) is also self-dual. A more complicated example of a self-dual operation is (x ∧ y) ∨ (y ∧ z) ∨ (z ∧ x). There is no self-dual binary operation that depends on both its arguments. A composition of self-dual operations is a self-dual operation. For example, if f(x, y, z) = (x ∧ y) ∨ (y ∧ z) ∨ (z ∧ x), then f(f(x, y, z), x, t) is a self-dual operation of four arguments x, y, z, t.

The principle of duality can be explained from a group theory perspective by the fact that there are exactly four functions that are one-to-one mappings (automorphisms) of the set of Boolean polynomials back to itself: the identity function, the complement function, the dual function and the contradual function (complemented dual). These four functions form a group under function composition, isomorphic to the Klein four-group, acting on the set of Boolean polynomials. Walter Gottschalk remarked that consequently a more appropriate name for the phenomenon would be the principle (or square) of quaternality.


## 5. Diagrammatic representations
- 5.1 Venn diagrams
- 5.2 Digital logic gates


## 6. Boolean algebras

Main article: Boolean algebra (structure)
https://en.wikipedia.org/wiki/Boolean_algebra_(structure)

The term "algebra" denotes both a subject, namely the subject of algebra, and an object, namely an algebraic structure. Whereas the foregoing has addressed the subject of Boolean algebra, this section deals with mathematical objects called Boolean algebras, defined in full generality as any model of the Boolean laws. We begin with a special case of the notion definable without reference to the laws, namely concrete Boolean algebras, and then give the formal definition of the general notion.

### 6.1 Concrete Boolean algebras

### 6.2 Subsets as bit vectors


### 6.3 Prototypical Boolean algebra

Main article: two-element Boolean algebra
https://en.wikipedia.org/wiki/Two-element_Boolean_algebra

The set {0,1} and its Boolean operations as treated above can be understood as the special case of bit vectors of length one, which by the identification of bit vectors with subsets can also be understood as the two subsets of a one-element set. This is called the prototypical Boolean algebra, justified by the following observation.

The laws satisfied by all nondegenerate concrete Boolean algebras coincide with those satisfied by the prototypical Boolean algebra.

This observation is proved as follows. Certainly any law satisfied by all concrete Boolean algebras is satisfied by the prototypical one since it is concrete. Conversely any law that fails for some concrete Boolean algebra must have failed at a particular bit position, in which case that position by itself furnishes a one-bit counterexample to that law. Nondegeneracy ensures the existence of at least one bit position because there is only one empty bit vector.

The final goal of the next section can be understood as eliminating "concrete" from the above observation. That goal is reached via the stronger observation that, up to isomorphism, all Boolean algebras are concrete.

### 6.4 Boolean algebras: the definition

The Boolean algebras so far have all been concrete, consisting of bit vectors or equivalently of subsets of some set. Such a Boolean algebra consists of a set and operations on that set which can be shown to satisfy the laws of Boolean algebra.

Instead of showing that the Boolean laws are satisfied, we can instead postulate a set X, two binary operations on X, and one unary operation, and require that those operations satisfy the laws of Boolean algebra. The elements of X need not be bit vectors or subsets but can be anything at all. This leads to the more general abstract definition.

>A Boolean algebra is any set with binary operations `∧` and `∨` and a unary operation `¬` and satisfying the Boolean laws.

For the purposes of this definition it is irrelevant how the operations came to satisfy the laws, whether by fiat or proof. All concrete Boolean algebras satisfy the laws (by proof rather than fiat), whence every concrete Boolean algebra is a Boolean algebra according to our definitions. This axiomatic definition of a Boolean algebra as a set and certain operations satisfying certain laws or axioms by fiat is entirely analogous to the abstract definitions of group, ring, field etc. characteristic of modern or abstract algebra.

Given any complete axiomatization of Boolean algebra, such as the axioms for a complemented distributive lattice, a sufficient condition for an algebraic structure of this kind to satisfy all the Boolean laws is that it satisfy just those axioms. The following is therefore an equivalent definition.

A Boolean algebra is a complemented distributive lattice.
The section on axiomatization lists other axiomatizations, any of which can be made the basis of an equivalent definition.

### 6.5 Representable Boolean algebras

Although every concrete Boolean algebra is a Boolean algebra, not every Boolean algebra need be concrete. Let n be a square-free positive integer, one not divisible by the square of an integer, for example 30 but not 12. The operations of greatest common divisor, least common multiple, and division into n (that is, ¬x = n/x), can be shown to satisfy all the Boolean laws when their arguments range over the positive divisors of n. Hence those divisors form a Boolean algebra. These divisors are not subsets of a set, making the divisors of n a Boolean algebra that is not concrete according to our definitions.

However, if each divisor of n is represented by the set of its prime factors, this nonconcrete Boolean algebra is isomorphic to the concrete Boolean algebra consisting of all sets of prime factors of n, with union corresponding to least common multiple, intersection to greatest common divisor, and complement to division into n. So this example, while not technically concrete, is at least "morally" concrete via this representation, called an isomorphism. This example is an instance of the following notion.

>A Boolean algebra is called representable when it is isomorphic to a concrete Boolean algebra.

The next question is answered positively as follows.

>Every Boolean algebra is representable.

That is, up to isomorphism, abstract and concrete Boolean algebras are the same thing. This result depends on the Boolean prime ideal theorem, a choice principle slightly weaker than the axiom of choice. This strong relationship implies a weaker result strengthening the observation in the previous subsection to the following easy consequence of representability.

>The laws satisfied by all Boolean algebras coincide with those satisfied by the prototypical Boolean algebra.

It is weaker in the sense that it does not of itself imply representability. Boolean algebras are special here, for example a relation algebra is a Boolean algebra with additional structure but it is not the case that every relation algebra is representable in the sense appropriate to relation algebras.



## 7. Axiomatizing Boolean algebra

Main articles:

Axiomatization of Boolean algebras
https://en.wikipedia.org/wiki/Axiomatization_of_Boolean_algebras

Boolean algebras canonically defined
https://en.wikipedia.org/wiki/Boolean_algebras_canonically_defined

The above definition of an abstract Boolean algebra as a set together with operations satisfying "the" Boolean laws raises the question of what those laws are. 

A simplistic answer is "all Boolean laws", which can be defined as all equations that hold for the Boolean algebra of 0 and 1. 

However, since there are infinitely many such laws, this is not a satisfactory answer in practice, leading to the question of it suffices to require only finitely many laws to hold.

In the case of Boolean algebras, the answer is "yes": the finitely many equations listed above are sufficient. 

>Thus, Boolean algebra is said to be finitely axiomatizable or finitely based.

Moreover, the number of equations needed can be further reduced.

To begin with, some of the above laws are implied by some of the others. A sufficient subset of the above laws consists of the pairs of associativity, commutativity, and absorption laws, distributivity of ∧ over ∨ (or the other distributivity law-one suffices), and the two complement laws. In fact, this is the traditional axiomatization of Boolean algebra as a complemented distributive lattice.

By introducing additional laws not listed above, it becomes possible to shorten the list of needed equations yet further; for instance, with the vertical bar representing the *Sheffer stroke* operation, the single axiom 

    ((a ∣ b) ∣ c) ∣ (a ∣ ((a ∣ c) ∣ a)) = c

is sufficient to completely axiomatize Boolean algebra. It is also possible to find longer single axioms using more conventional operations (see Minimal axioms for Boolean algebra).

Minimal axioms for Boolean algebra
https://en.wikipedia.org/wiki/Minimal_axioms_for_Boolean_algebra


## 8. Propositional logic

Main article: Propositional calculus
https://en.wikipedia.org/wiki/Propositional_calculus

Propositional logic is a logical system that is intimately connected to Boolean algebra.[5] Many syntactic concepts of Boolean algebra carry over to propositional logic with only minor changes in notation and terminology, while the semantics of propositional logic are defined via Boolean algebras in a way that the tautologies (theorems) of propositional logic correspond to equational theorems of Boolean algebra.

Syntactically, every Boolean term corresponds to a propositional formula of propositional logic. In this translation between Boolean algebra and propositional logic, Boolean variables x, y, ... become propositional variables (or atoms) P, Q, ... Boolean terms such as x ∨ y become propositional formulas P ∨ Q; 0 becomes false or ⊥, and 1 becomes true or T. It is convenient when referring to generic propositions to use Greek letters Φ, Ψ, ... as metavariables (variables outside the language of propositional calculus, used when talking about propositional calculus) to denote propositions.

The semantics of propositional logic rely on truth assignments. The essential idea of a truth assignment is that the propositional variables are mapped to elements of a fixed Boolean algebra, and then the truth value of a propositional formula using these letters is the element of the Boolean algebra that is obtained by computing the value of the Boolean term corresponding to the formula. In classical semantics, only the two-element Boolean algebra is used, while in Boolean-valued semantics arbitrary Boolean algebras are considered. A tautology is a propositional formula that is assigned truth value 1 by every truth assignment of its propositional variables to an arbitrary Boolean algebra (or, equivalently, every truth assignment to the two element Boolean algebra).

These semantics permit a translation between tautologies of propositional logic and equational theorems of Boolean algebra. Every tautology Φ of propositional logic can be expressed as the Boolean equation Φ = 1, which will be a theorem of Boolean algebra. Conversely, every theorem Φ = Ψ of Boolean algebra corresponds to the tautologies (Φ ∨ ¬Ψ) ∧ (¬Φ ∨ Ψ) and (Φ ∧ Ψ) ∨ (¬Φ ∧ ¬Ψ). If → is in the language, these last tautologies can also be written as (Φ → Ψ) ∧ (Ψ → Φ), or as two separate theorems Φ → Ψ and Ψ → Φ; if ≡ is available, then the single tautology Φ ≡ Ψ can be used.



### 8.1 Applications

One motivating application of propositional calculus is the analysis of propositions and deductive arguments in natural language.[31] Whereas the proposition "if x = 3, then x + 1 = 4" depends on the meanings of such symbols as + and 1, the proposition "if x = 3, then x = 3" does not; it is true merely by virtue of its structure, and remains true whether "x = 3" is replaced by "x = 4" or "the moon is made of green cheese." The generic or abstract form of this tautology is "if P, then P," or in the language of Boolean algebra, P → P.[citation needed]

Replacing P by x = 3 or any other proposition is called instantiation of P by that proposition. The result of instantiating P in an abstract proposition is called an instance of the proposition. Thus, x = 3 → x = 3 is a tautology by virtue of being an instance of the abstract tautology P → P. All occurrences of the instantiated variable must be instantiated with the same proposition, to avoid such nonsense as P → x = 3 or x = 3 → x = 4.

Propositional calculus restricts attention to abstract propositions, those built up from propositional variables using Boolean operations. Instantiation is still possible within propositional calculus, but only by instantiating propositional variables by abstract propositions, such as instantiating Q by Q → P in P → (Q → P) to yield the instance P → ((Q → P) → P).

(The availability of instantiation as part of the machinery of propositional calculus avoids the need for metavariables within the language of propositional calculus, since ordinary propositional variables can be considered within the language to denote arbitrary propositions. The metavariables themselves are outside the reach of instantiation, not being part of the language of propositional calculus but rather part of the same language for talking about it that this sentence is written in, where there is a need to be able to distinguish propositional variables and their instantiations as being distinct syntactic entities.)


### 8.2 Deductive systems for propositional logic

An axiomatization of propositional calculus is a set of tautologies called axioms and one or more inference rules for producing new tautologies from old. A proof in an axiom system A is a finite nonempty sequence of propositions each of which is either an instance of an axiom of A or follows by some rule of A from propositions appearing earlier in the proof (thereby disallowing circular reasoning). The last proposition is the theorem proved by the proof. Every nonempty initial segment of a proof is itself a proof, whence every proposition in a proof is itself a theorem. An axiomatization is sound when every theorem is a tautology, and complete when every tautology is a theorem.


#### 8.2.1 Sequent calculus

Main article: Sequent calculus
https://en.wikipedia.org/wiki/Sequent_calculus

Propositional calculus is commonly organized as a Hilbert system, whose operations are just those of Boolean algebra and whose theorems are Boolean tautologies, those Boolean terms equal to the Boolean constant 1. Another form is sequent calculus, which has two sorts, propositions as in ordinary propositional calculus, and pairs of lists of propositions called sequents, such as A ∨ B, A ∧ C, ... ⊢ A, B → C, .... The two halves of a sequent are called the antecedent and the succedent respectively. The customary metavariable denoting an antecedent or part thereof is Γ, and for a succedent Δ; thus Γ, A ⊢ Δ would denote a sequent whose succedent is a list Δ and whose antecedent is a list Γ with an additional proposition A appended after it. The antecedent is interpreted as the conjunction of its propositions, the succedent as the disjunction of its propositions, and the sequent itself as the entailment of the succedent by the antecedent.

Entailment differs from implication in that whereas the latter is a binary operation that returns a value in a Boolean algebra, the former is a binary relation which either holds or does not hold. In this sense, entailment is an external form of implication, meaning external to the Boolean algebra, thinking of the reader of the sequent as also being external and interpreting and comparing antecedents and succedents in some Boolean algebra. The natural interpretation of ⊢ is as ≤ in the partial order of the Boolean algebra defined by x ≤ y just when x ∨ y = y. This ability to mix external implication ⊢ and internal implication → in the one logic is among the essential differences between sequent calculus and propositional calculus.



## 9. Applications

Boolean algebra as the calculus of two values is fundamental to computer circuits, computer programming, and mathematical logic, and is also used in other areas of mathematics such as set theory and statistics.


### 9.1 Computers


### 9.2 Two-valued logic

Other areas where two values is a good choice are the law and mathematics. In everyday relaxed conversation, nuanced or complex answers such as "maybe" or "only on the weekend" are acceptable. In more focused situations such as a court of law or theorem-based mathematics, however, it is deemed advantageous to frame questions so as to admit a simple yes-or-no answer-is the defendant guilty or not guilty, is the proposition true or false-and to disallow any other answer. However, limiting this might prove in practice for the respondent, the principle of the simple yes-no question has become a central feature of both judicial and mathematical logic, making two-valued logic deserving of organization and study in its own right.

A central concept of set theory is membership. An organization may permit multiple degrees of membership, such as novice, associate, and full. With sets, however, an element is either in or out. The candidates for membership in a set work just like the wires in a digital computer: each candidate is either a member or a nonmember, just as each wire is either high or low.

Algebra being a fundamental tool in any area amenable to mathematical treatment, these considerations combine to make the algebra of two values of fundamental importance to computer hardware, mathematical logic, and set theory.

Two-valued logic can be extended to multi-valued logic, notably by replacing the Boolean domain {0, 1} with the unit interval [0,1], in which case rather than only taking values 0 or 1, any value between and including 0 and 1 can be assumed. Algebraically, negation (NOT) is replaced with 1 − x, conjunction (AND) is replaced with multiplication (xy), and disjunction (OR) is defined via De Morgan's law. Interpreting these values as logical truth values yields a multi-valued logic, which forms the basis for fuzzy logic and probabilistic logic. In these interpretations, a value is interpreted as the "degree" of truth - to what extent a proposition is true, or the probability that the proposition is true.

### 9.3 Boolean operations

The original application for Boolean operations was mathematical logic, where it combines the truth values, true or false, of individual formulas.

#### 9.3.1 Natural language

Natural languages such as English have words for several Boolean operations, in particular conjunction (and), disjunction (or), negation (not), and implication (implies). But not is synonymous with and not. When used to combine situational assertions such as "the block is on the table" and "cats drink milk", which naïvely are either true or false, the meanings of these logical connectives often have the meaning of their logical counterparts. However, with descriptions of behavior such as "Jim walked through the door", one starts to notice differences such as failure of commutativity, for example, the conjunction of "Jim opened the door" with "Jim walked through the door" in that order is not equivalent to their conjunction in the other order, since and usually means and then in such cases. Questions can be similar: the order "Is the sky blue, and why is the sky blue?" makes more sense than the reverse order. Conjunctive commands about behavior are like behavioral assertions, as in get dressed and go to school. Disjunctive commands such love me or leave me or fish or cut bait tend to be asymmetric via the implication that one alternative is less preferable. Conjoined nouns such as tea and milk generally describe aggregation as with set union while tea or milk is a choice. However, context can reverse these senses, as in your choices are coffee and tea which usually means the same as your choices are coffee or tea (alternatives). Double negation, as in "I don't not like milk", rarely means literally "I do like milk" but rather conveys some sort of hedging, as though to imply that there is a third possibility. "Not not P" can be loosely interpreted as "surely P", and although P necessarily implies "not not P," the converse is suspect in English, much as with intuitionistic logic. In view of the highly idiosyncratic usage of conjunctions in natural languages, Boolean algebra cannot be considered a reliable framework for interpreting them.


#### 9.3.2 Digital logic

Boolean operations are used in digital logic to combine the bits carried on individual wires, thereby interpreting them over {0,1}. When a vector of n identical binary gates are used to combine two bit vectors each of n bits, the individual bit operations can be understood collectively as a single operation on values from a Boolean algebra with 2n elements.

#### 9.3.3 Naive set theory

Naive set theory interprets Boolean operations as acting on subsets of a given set X. As we saw earlier this behavior exactly parallels the coordinate-wise combinations of bit vectors, with the union of two sets corresponding to the disjunction of two bit vectors and so on.

#### 9.3.4 Video cards

The 256-element free Boolean algebra on three generators is deployed in computer displays based on raster graphics, which use bit blit to manipulate whole regions consisting of pixels, relying on Boolean operations to specify how the source region should be combined with the destination, typically with the help of a third region called the mask. Modern video cards offer all 223 = 256 ternary operations for this purpose, with the choice of operation being a one-byte (8-bit) parameter. The constants SRC = 0xaa or 0b10101010, DST = 0xcc or 0b11001100, and MSK = 0xf0 or 0b11110000 allow Boolean operations such as (SRC^DST)&MSK (meaning XOR the source and destination and then AND the result with the mask) to be written directly as a constant denoting a byte calculated at compile time, 0x80 in the (SRC^DST)&MSK example, 0x88 if just SRC^DST, etc. At run time the video card interprets the byte as the raster operation indicated by the original expression in a uniform way that requires remarkably little hardware and which takes time completely independent of the complexity of the expression.

#### 9.3.5 Modeling and CAD

Solid modeling systems for computer aided design offer a variety of methods for building objects from other objects, combination by Boolean operations being one of them. In this method the space in which objects exist is understood as a set S of voxels (the three-dimensional analogue of pixels in two-dimensional graphics) and shapes are defined as subsets of S, allowing objects to be combined as sets via union, intersection, etc. One obvious use is in building a complex shape from simple shapes simply as the union of the latter. Another use is in sculpting understood as removal of material: any grinding, milling, routing, or drilling operation that can be performed with physical machinery on physical materials can be simulated on the computer with the Boolean operation x ∧ ¬y or x − y, which in set theory is set difference, remove the elements of y from those of x. Thus given two shapes one to be machined and the other the material to be removed, the result of machining the former to remove the latter is described simply as their set difference.

#### 9.3.6 Boolean searches

Search engine queries also employ Boolean logic. For this application, each web page on the Internet may be considered to be an "element" of a "set." The following examples use a syntax supported by Google.[NB 1]

    Doublequotes are used to combine whitespace-separated words into a single search term.[NB 2]
    Whitespace is used to specify logical AND, as it is the default operator for joining search terms:
    "Search term 1" "Search term 2"
    The OR keyword is used for logical OR:
    "Search term 1" OR "Search term 2"
    A prefixed minus sign is used for logical NOT:
    "Search term 1" −"Search term 2"


## 10. See also

- Boolean algebras canonically defined
- Boolean differential calculus
- Booleo
- Cantor algebra
- Heyting algebra
- List of Boolean algebra topics
- Logic design
- Principia Mathematica
- Three-valued logic
- Vector logic

https://en.wikipedia.org/wiki/Boolean_algebras_canonically_defined
https://en.wikipedia.org/wiki/Boolean_differential_calculus
https://en.wikipedia.org/wiki/Booleo
https://en.wikipedia.org/wiki/Cantor_algebra
https://en.wikipedia.org/wiki/Heyting_algebra
https://en.wikipedia.org/wiki/List_of_Boolean_algebra_topics
https://en.wikipedia.org/wiki/Logic_design
https://en.wikipedia.org/wiki/Principia_Mathematica
https://en.wikipedia.org/wiki/Three-valued_logic
https://en.wikipedia.org/wiki/Vector_logic


## 12. References

## 13. Further reading

### 13.1 Historical perspective

## 14. External links
