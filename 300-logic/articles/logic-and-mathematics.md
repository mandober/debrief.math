---
downloaded:       2022-02-26
page-url:         http://www.personal.psu.edu/t20/papers/philmath/
page-title:       Logic and Mathematics
---
# Logic and Mathematics

Stephen G. Simpson, April 30, 1999, Pennsylvania State University

This article is an overview of logic and the philosophy of mathematics. It is intended for the general reader. It has appeared in the volume "The Examined Life: Readings from Western Philosophy from Plato to Kant", edited by Stanley Rosen, published in 2000 by Random House.

Contents
<!-- TOC -->

- [1. Logic](#1-logic)
  - [1.1 Aristotelean logic](#11-aristotelean-logic)
    - [Subjects and predicates](#subjects-and-predicates)
    - [Syllogisms](#syllogisms)
  - [1.2 The predicate calculus](#12-the-predicate-calculus)
    - [Predicates and individuals](#predicates-and-individuals)
    - [Formulas and logical operators](#formulas-and-logical-operators)
    - [Logical validity and logical consequence](#logical-validity-and-logical-consequence)
    - [The completeness theorem](#the-completeness-theorem)
    - [Formal theories](#formal-theories)
- [2. Foundations of mathematics](#2-foundations-of-mathematics)
  - [2.1 The geometry of Euclid](#21-the-geometry-of-euclid)
  - [2.2 Formal theories in mathematics](#22-formal-theories-in-mathematics)
    - [Formal theory of geometry](#formal-theory-of-geometry)
    - [Formal theory of arithmetic](#formal-theory-of-arithmetic)
      - [Some laws of arithmetic](#some-laws-of-arithmetic)
      - [Formalization of laws of arithmetic](#formalization-of-laws-of-arithmetic)
    - [Formal theory of sets](#formal-theory-of-sets)
- [3. Philosophy of mathematics](#3-philosophy-of-mathematics)
  - [3.1 Plato and Aristotle](#31-plato-and-aristotle)
  - [3.2 The 20th century](#32-the-20th-century)
  - [3.3 The future](#33-the-future)
- [Bibliography](#bibliography)
- [Footnotes](#footnotes)

<!-- /TOC -->


## 1. Logic

Logic is the science of formal principles of reasoning or correct inference.

Historically, logic originated with the ancient Greek philosopher Aristotle.

Logic was further developed and systematized by the Stoics and by the medieval scholastic philosophers.

In the late 19th and 20th centuries, logic saw explosive growth, which has continued up to the present.

One may ask whether logic is part of philosophy or independent of it.

According to Bochenski, this issue is nowhere explicitly raised in the writings of Aristotle. However, Aristotle did go to great pains to formulate the basic concepts of logic (terms, premises, syllogisms, etc.) in a neutral way, independent of any particular philosophical orientation. Thus Aristotle seems to have viewed logic not as part of philosophy, but rather as a tool or instrument to be used by philosophers and scientists alike.

This attitude about logic is in agreement with the modern view, according to which the *predicate calculus* is a general method or framework not only for philosophical reasoning but also for reasoning about any subject matter whatsoever.

Logic is the science of correct reasoning. What then is reasoning?

According to Aristotle, reasoning is any argument in which certain assumptions or premises are laid down and then something other than these necessarily follows.

Thus logic is the science of necessary inference.

However, when logic is applied to specific subject matter, it is important to note that not all logical inference constitutes a scientifically valid demonstration. This is because a piece of formally correct reasoning is not scientifically valid unless it is based on a true and primary starting point. Furthermore, any decisions about what is true and primary do not pertain to logic but rather to the specific subject matter under consideration.

In this way we limit the scope of logic, maintaining a sharp distinction between logic and the other sciences.

All reasoning, both scientific and non-scientific, must take place within the logical framework, but it is only a framework, nothing more. This is what is meant by saying that logic is a *formal science*.

For example, consider the following inference:
1. Some real estate will increase in value.
2. Anything that will increase in value is a good investment.
3. Therefore, some real estate is a good investment.

This inference is logically correct, because the conclusion necessarily follows once we accept the premises. Yet this same inference may not be a demonstration of its conclusion, because one or both of the premises may be faulty.

Thus logic can help us to clarify our reasoning, but it can only go so far. The real issue in this particular inference is ultimately one of finance and economics, not logic.

### 1.1 Aristotelean logic

Aristotle's collection of logical treatises is known as "the Organon". Of these treatises, "the Prior Analytics" contains the most systematic discussion of formal logic. In addition to the Organon, the Metaphysics also contains relevant material.

#### Subjects and predicates

Aristotelean logic begins with the familiar grammatical distinction between subject and predicate.

A *subject* is typically an individual entity (a man, house, city) or a class of entities (all men). A *predicate* is a property (attribute or mode) of existence which a given subject may or may not possess.

Aristotle's 3 fundamental principles of predication had a powerful influence on subsequent thinkers:

1. **Identity**   
"Everything is what it is and acts accordingly". Symbolically: `A` is `A`. 
For example, an acorn will grow into an oak tree and nothing else.

2. **Non-contradiction**   
"It is impossible for a thing both to be and not to be". A given predicate cannot both belong and not belong to a given subject in a given respect at a given time. Contradictions do not exist. Symbolically: `¬(A ⋀ ¬A)`, A and non-A cannot both be the case. For example, an mortal man cannot also be immortal.

3. **Either-or** (LEM)    
"Everything must either be or not be". A given predicate either belongs or does not belong to a given subject in a given respect at a given time. Symbolically: `A ⋁ ¬A`, either A or non-A. For example, a society must be either free or not free.


#### Syllogisms

According to Aristotelean logic, the basic unit of reasoning is the syllogism.

Every syllogism consists of two premises and a conclusion:
- Some A is B.
- All  B is C.
- Thus, some A is C.

4 types of syllogisms:
1. Universal affirmative:    All A is B.
2. Universal negative:        No A is B.
3. Particular affirmative:  Some A is B.
4. Particular negative:     Some A is not B.

The letters (A,B,C) are called *terms*. Every syllogism contains 3 terms. The two premises always share a common term which the conclusion lacks. This is known as the *middle term*.

In order to classify the various types of syllogisms, one must take account of certain symmetries (equivalences):
- no A is B ≡ no B is A
- some A is B ≡ some B is A

The order of the two premises in a syllogism is not important. We can than enumerate a total of 126 possible syllogistic forms, with only *11 correct inferences*. For example, the form "all A is B, all B is C, therefore all A is C" is a correct inference, while this form is not: "all A is B, all B is C, therefore some A is C" (why not?).

The classification of syllogisms leads to a rather complex theory. Medieval thinkers perfected it and developed ingenious mnemonics to aid in distinguishing the correct forms from the incorrect ones. This culminated in the famous "pons asinorum" (bridge of asses), an intricate diagram which illustrates all of the syllogistic forms by means of a contrast between the good and the pleasurable.


### 1.2 The predicate calculus

In 1879 the German philosopher Gottlob Frege published a remarkable treatise, "the Begriffsschrift", a brilliant monograph considered as the origin of modern logical theory. However, Frege's account was defective in several respects, and notationally awkward to boot.

Instead of Frege's system, we shall present a streamlined system known as first-order logic or the predicate calculus.

The predicate calculus dates from the 1910's and 1920's. It is fundamental for all subsequent logical research. It is a very general system of logic which accurately expresses a huge variety of assertions and modes of reasoning, much more flexible than syllogisms.

#### Predicates and individuals

In the predicate calculus, the subject/predicate distinction is drawn somewhat differently from the way it is drawn in Aristotelean logic. In predicate calculus, a subject is always an individual entity, never a class of entities. Since the subject is always an individual entity, it is common to speak of individuals rather than subjects.

The predicate calculus makes heavy use of symbolic notation.
- lowercase letters denote *individuals*
- uppercase letters denote *predicates*

Simple assertions may be formed by juxtaposing a predicate with an individual.In general, if `x` is an individual, then `Mx` is the assertion that `x` is a man. This assertion may or may not be true, depending on what `x` is. The symbol `x` is called an *argument* of `M`. The expression `Mx` is called an *atomic formula*.

Some predicates require more than one argument. The atomic formula `Bxy`, where the predicate `B` ("taller than") requires two arguments, `x` and `y`. Using `B` with only one argument, as `Bx`, produces a meaningless combination of symbols.

The role of individuals in the predicate calculus is divided into two groups:
- constants
- variables

Letters of the first group are *individual constants* (or simply constants) and they denote specific individuals (Socrates, New York).

Letters of the second group are *individual variables* (or simply variables) and they denote any arbitrary individual. Variables range over the individuals in the domain of discourse.

#### Formulas and logical operators

Logical operators are constant symbols also used in the predicate calculus:
- logical connectives (¬, ⋀, ⋁, ⟶)
- quantifiers (∀, ∃)

A *formula* is a syntactically valid expression built by joining atomic formulas with logical operators. `Ma` is an atomic formula, but `Mx` is an incomplete fragment that requires quantification; `∀xMx` is a formula.

- "Every man drives at least one truck":       `∀x(Mx -> ∃y(Ty ⋀ Dxy))`
- "Every truck is driven by at least one man": `∀y(Ty -> ∃x(Mx ⋀ Dxy))`

The 4 Aristotelean premise types can be expressed in predicate calculus:
1. Universal affirmative:    All A is B.     `∀x(Ax →  Bx)`
2. Universal negative:        No A is B.     `∀x(Ax → ¬Bx)` ≡ `¬∃x(Ax ⋀ Bx)`
3. Particular affirmative:  Some A is B.     `∃x(Ax ⋀  Bx)`
4. Particular negative:     Some A is not B. `∃x(Ax ⋀ ¬Bx)` ≡ `¬∀x(Ax → Bx)`


The above table may tend to gloss over a subtle but philosophically significant difference between Aristotelean logic and the predicate calculus.

Namely, where Aristotelean logic views `A` as the subject and `B` as the predicate, the predicate calculus views both as predicates. This is typical of the different perspectives involved.

Aristotelean logic emphasizes the universal essences of subjects or entities, while the predicate calculus elevates predicates to a position of supreme importance.


#### Logical validity and logical consequence

A formula of the predicate calculus is said to be *logically valid* if it is necessarily always true, regardless of the specific predicates and individuals involved.

The 3 fundamental principles of Aristotelean logic correspond to these formulas:
1. Identity,           `∀x(Ax ≡  Ax)`
2. Non-contradiction, `¬∃x(Ax ⋀ ¬Ax)`
3. Either-or,          `∀x(Ax ⋁ ¬Ax)`

These formulas are logically valid because they are necessarily (formally) true, no matter what the predicate symbols mean. Such formulas are called *tautologies*.

The concept of logical validity in predicate calculus subsumes syllogisms. Each syllogism corresponds to a logically valid implication `(p ⋀ q) -> r`, where `p` and `q` represent the two premises and `r` the conclusion.

For example, the syllogism "some A is B, all B is C, therefore some A is C" can be expressed by a logically valid formula:   
`(∃x(Ax ⋀ Bx) ⋀ ∀x(Bx ⟶ Cx)) ⟶ ∃x(Ax ⋀ Cx)`

More generally, a formula `q` is said to be a **logical consequence** of a set of formulas, `p₀, …, pₙ`, only in case `(p₀ ⋀ … ⋀ pₙ) -> q` is logically valid.

Here `pᵢ` are the premises and `q` is the conclusion. This is similar to the Aristotelean syllogism, but has a wider applicability because the premises and the conclusion can be more complex expressions.

The XIX century logician Augustus DeMorgan noted that the following inference cannot be expressed in Aristotelean logic: "All horses are animals. Therefore, the head of a horse is the head of an animal". This may be paraphrased as "if all horses are animals, then for all `x`, if `x` is the head of some horse then `x` is the head of some animal" and expressed by:   
`[∀y(Hy -> Ay)] -> [∀x (∃y(Rxy ⋀ Hy)) -> (∃y(Rxy ⋀ Ay))]`

Thus DeMorgan's conclusion is indeed a logical consequence of his premise.


#### The completeness theorem

Formulas of the predicate calculus can be exceedingly complicated, so how can we distinguish logically valid formulas? It turns out that there is an algorithm to do just that.

In order to recognize that a formula `φ` is logically valid, it suffices to construct a *proof tree* for `φ`, or equivalently, a *refutation tree* for `¬φ`.

* The tree has `¬φ` as the root node.
* Each node of the treeh olds a formula.
* The growth of the tree is guided by the meaning of the operators in `φ`.
* New nodes are added to the tree depending on what nodes have already appeared.

For example, if we encounter a node `¬(P ⋀ Q)`, we create two new nodes with `¬P` and `¬Q`, since `¬(P ⋀ Q) ≡ ¬P ⋁ ¬Q`. The idea is that the only way for a disjunction to be the true is if at least one of the disjuncts is true.

```js
¬(P ⋀ Q) ≡ ¬P ⋁ ¬Q

¬(P ⋀ Q)
   / \
  /   \
¬P    ¬Q
```

Similarly, if a node `¬∀xP` has already appeared, we create a new node `¬P'`, where `P'` is the result of substituting a new constant `a` for the variable `x` in `¬∀xP`. The idea is that the only way for the universal statement to be false is if it is false for some specific individual.

```js
¬∀xP ~~> ¬P'   where P' = [x ⟼ a]¬∀xP
// e.g.
¬∀x(Px -> Qx) = Pa -> Qa

¬∀x(Px -> Qx) =
= ∃x(¬Px -> Qx) 

Pa -> Qa

¬∀xP
  |
  |
  |
¬Pa
```

Since `a` is a new constant, `¬P'` is a formula which may be considered as the most general false instance of `P`.

Each logical operator has a prescribed procedures for adding new nodes to the tree. These procedures are repeatedly applied until they can be applied no more. If explicit contradictions are discovered along each and every branch of the tree, then we have a refutation tree for `¬P`. Thus, `¬P` is seen to be logically impossible - in other words, `P` is logically valid.

The adequacy of proof trees for recognizing logically valid formulas is a major insight of the XX century logic. It is a variant of the famous *completeness theorem*, first proved in 1930 by the great logician Kurt Gödel.

On the other hand, the class of logically valid formulas is *undecidable*: there is no algorithm which accepts an arbitrary formula and tells if it is logically valid or not. Logical validity is too general and intractable to be analyzed thoroughly.

#### Formal theories

Predicate calculus provides a flexible framework for reasoning. By choosing the appropriate predicates, one can reason about any subject at all. These considerations led to the notion of *formal theory*.

In order to specify a formal theory, one first chooses a small collection of predicates which are regarded as the most central to the theory. These predicates are the *primitives* of the theory, and they delimit the scope of the theory. Other predicates must be defined in terms of the primitives. The author then defines the *axioms* of the theory in terms of the primitives, incorporating into the axioms any underlying assumption.

A *theorem* is then any formula that is the logical consequence of the axioms. And a *formal theory* is then the structure composed of the primitives, axioms and theorems. *Formalization* is the process of codifying a scientific discipline in the first-order logic.

The essential aspect of formalization is the choice of the appropriate set of primitives, but particularly axioms. A good theory goes beyond correctness; to become widely accepted, a theory must score great across a number of different categories, from the choice of the central primitive, the number and use of the axioms, to the comparative edge obtained by the judicial use of mathematical elegance and overall aesthetics.

To date, this kind of formal theory-building has been convincingly carried out in a few cases, all in mathematics. One of the examplary theories, considered by majority of mathematicans as the foundations of mathematics is the Zermelo-Fraenkel set theory.


## 2. Foundations of mathematics

Traditionally, mathematics had two branches, arithmetic that dealt with numbers, and geometry that dealt with shapes. Modern mathematics has extended its interest beyond numbers and shapes and it now includes a slew of different concepts such as sets, functions, algorithms, axioms, definitions, proofs.

*The foundations of mathematics* is a branch of mathematics that studies the most basic structures pertaining to mathematics, attempting to come up with a unifying theory for the entirety of mathematical knowledge.

Although math could be considered a narrow subject next to philosophy, there are three reasons for discussing philosophy of mathematics:
1. Mathematics has always played a special role in scientific thought. The abstract nature of mathematical objects presents philosophical challenges that are unusual and unique.
2. The Foundations of Mathematics is a subject that has always exhibited an unusually high level of technical sophistication. For this reason, many thinkers have conjectured that foundations of mathematics can serve as a model or pattern for foundations of other sciences.
3. The Philosophy of Mathematics has served as a highly articulated testbed where mathematicians and philosophers alike can explore how various general philosophical doctrines play out in a specific scientific context.

The purpose of this section is to indicate the role of logic in the foundations of mathematics. We begin with a few remarks on the geometry of Euclid. We then describe some modern formal theories for mathematics.

### 2.1 The geometry of Euclid

Above the gateway to Plato's academy appeared a famous inscription, "Let no one who is ignorant of geometry enter here". Because of its abstract character, Plato regarded geometry as the first essential in the training of philosophers.

Aristotle had laid down the basics of the scientific method in the "Posterior Analytics", emphasizing logical organization of a field of knowledge, by means of primitives, axioms, postulates, definitions and derived theorems. Majority of Aristotle's examples draw upon arithmetic and geometry.

The methodological ideas of Aristotle decisively influenced the structure and organization of Euclid's monumental treatise on geometry, "Elements". Euclid begins with 21 definitions, 5 postulates and 5 common notions. The rest of the Elements are an elaborate deductive structure consisting of hundreds of propositions. Each proposition is justified with a demonstration in the form of a chain of syllogisms. In each syllogism, the premises are identified as coming from definitions, postulates, common notions or from previously established propositions. Hand at heart, Euclid's syllogisms don't always conform strictly to the Aristotelean templates and the rigor for which this work is known, but, nevertheless, it has still paved the way toward a high-standard formalization of knowledge.

The logic of Aristotle and the geometry of Euclid are universally recognized as towering scientific achievements of ancient Greece.

### 2.2 Formal theories in mathematics

#### Formal theory of geometry

With the advent of calculus in the 17th and 18th centuries, mathematics developed rapidly with little attention to its foundations. Euclid's geometry was still regarded as a model of logical rigor, a shining example of what a well-organized scientific discipline ideally ought to look like. The most prolific mathematician of all times, Leonhard Euler, showed almost no interest in trying to place calculus on a similarly firm foundation.

Only in the second half of the XIX century did scientists begin to question the the problem of the foundation. The resulting crisis had far-reaching consequence. Even Euclid's geometry itself came under critical scrutiny. Geometers such as Moritz Pasch discovered what they regarded as gaps or inaccuracies in "Elements". Great mathematicians such as David Hilbert entered the fray.

This resulted with a thorough reworking of geometry, this time as a collection of formal theories within the predicate calculus. Decisive insights were obtained by Alfred Tarski.

We shall sketch Tarski's formal theory for Euclidean plane geometry.

As his primitive predicates, Tarski selected:
- `P¹` point,     `x` is a point, `Px`
- `I²` identity,  `x` is identical to `y`, `Ixy`
- `B³` between,   `y` is between `x` and `z`, `Bxyz`
- `D⁴` distance,  The distance x to y is equal to the distance u to v, `Dxyuv`

Geometrical objects other than points, such as line segments, angles, triangles, circles, etc., are defined in terms of the primitive, point. For example, the circle with center `x` and radius `uv` consists of all points `y` such that `Dxyuv` holds.

In geometry, two points `x` and `y` are considered identical if the distance between them is zero. Tarski captures this with the axiom `∀xyz(Dxyuv → Ixy)`.

The axiom `∀wxyz((Bwxy ⋀ Bwyz) -> Bxyz)` expresses the fact that, given any 4 points, if the second is between the first and third, and if the third is between the first and fourth, then the third is between the second and fourth.

The axiom `∀xyzuv((Dxuxv ⋀ Dyuyv ⋀ Dzuzv ⋀ ¬Iuv) -> (Bxyz ⋁ Bxzy ⋁ Byxz))` says that, given any 3 points (x, y, z), equidistant from two distinct points (u,v) must be *collinear*. This axiom is typical of two-dimensional (i.e. plane) geometry and does not apply to geometries of dimension greater than two.

Altogether, Tarski presents 12 axioms, plus an additional collection of axioms expressing the idea that a line is continuous.

Let `T` be the formal theory based on Tarski's axioms. Remarkably, Tarski demonstrated that `T` is **complete**, meaning that, for any purely geometrical statement `φ`, either `φ` or `¬φ` is a theorem of `T`.

The axioms of `T` suffice to answer all yes/no questions about Euclidean plane geometry. Combining this with the Gödel's completeness theorem, we find that `T` is *decidable* - there is an algorithm which accepts an arbitrary statement about the plane Euclidean geometry and determines its truth value. This is a triumph of modern foundational research.

#### Formal theory of arithmetic

Formal theory of arithmetic, considered as a study of the natural numbers and operations over them, particularly addition and multiplication. This part of mathematics is fundamental, yet it turns out to be surprisingly complicated to nail down.

The primitive predicates of arithmetic:
- `N¹` number,         `Nx`
- `A²` addition,       `Axy`
- `M²` multiplication, `Mxy`
- `I²` Identity,       `Ixy`

The axioms use the primitive predicates to assert that, for any given numbers `x` and `y`, the numbers `x + y` and `x × y` always exist and are unique.

##### Some laws of arithmetic

* substitution law
  - `(x = y ⋀ Nx) -> Ny`
* commutative laws
  - `x + y = y + x`
  - `x × y = y × x`
* associative laws
  - `(x + y) + z = x + (y + z)`
  - `(x × y) × z = x × (y × z)`
* distributive laws
  - `x × (y + z) = (x × y) + (x × z)`
  - `(y + z) × x = (y × x) + (z × x)`
* comparison law
  - `x ≠ y ⟺ ∃z(x+z=y ⋁ y+z=x)`
* unit laws
  - `x × 1 = x = 1 × x`


##### Formalization of laws of arithmetic

The formal axioms for arithmetic:

* substitution laws:
  - substitution law, x = y ⋀ Nx -> Ny
  - reflexivity,  `∀xIxx`                       === x = x
  - symmetry,     `∀x∀y(Ixy ≡ Iyx)`             === x = y ⟺ x = y
  - transitivity, `∀x∀y∀z((Ixy ⋀ Iyz) -> Ixz)`  === x = y ⋀ y = z -> x = z
  - numberosity,  `∀x∀y(Ixy -> (Nx ≡ Ny))`      === x = y -> Nx ⟺ Ny

* existence and uniqueness of (x + y)
  - `∀xyz∀uvw((Ixu ⋀ Iyv ⋀ Izw) -> (Axyz ≡ Auvw))`
  - `∀x∀y∀z(Axyz -> (Nx ⋀ Ny ⋀ Nz))`
  - `∀x∀y((Nx ⋀ Ny) -> ∃w ∀z (Iwz ≡ Axyz))`

* existence and uniqueness of (x ⨯ y)
  - `∀xyz∀uvw((Ixu ⋀ Iyv ⋀ Izw) -> (Mxyz ≡ Muvw))`
  - `∀x∀y∀z(Mxyz -> (Nx ⋀ Ny ⋀ Nz))`
  - `∀x∀y((Nx ⋀ Ny) -> ∃w ∀z (Iwz ≡ Mxyz))`

* commutative laws
  - `∀x∀y∀z(Axyz ≡ Ayxz)`
  - `∀x∀y∀z(Mxyz ≡ Myxz)`

* associative laws:
  - `∀xyz∀uvw((Axyu ⋀ Ayzv) -> (Auzw ≡ Axvw))`
  - `∀xyz∀uvw((Mxyu ⋀ Myzv) -> (Muzw ≡ Mxvw))`

* distributive law:
  - `∀xyz∀uvw∀t((Mxyu ⋀ Mxzv ⋀ Myzw) -> (Mxwt ≡ Auvt))`

* comparison law:
  - `∀x∀y((Nx ⋀ Ny) -> (Ixy ≡ ¬∃(Axzy ⋁ Ayzx)))`

* unit law:
  - `∃z(Nz ⋀ ¬∃x∃yAxyz) ⋀ ∀w(Nw -> Mwzw)`














Let  be the formal theory specified by the above primitives and axioms.

It is known that  suffices to derive many familiar arithmetical facts. For example,  may be expressed, awkwardly to be sure, as  or

and this formula is indeed a theorem of , i.e., a logical consequence of the axioms of . Another theorem of  is

expressing a familiar cancellation law: if either  or  , then .

On the other hand, the axioms of  are by no means exhaustive. They can be supplemented with other axioms expressing the so-called *mathematical induction* or *least number* principle: if there exists a number having some well-defined property, then among all numbers having the property there is a smallest one. The resulting formal theory is remarkably powerful, in the sense that its theorems include virtually all known arithmetical facts. But it is not so powerful as one might wish. Indeed, any formal theory which includes  is necessarily either inconsistent or incomplete. Thus there is no hope of writing down enough axioms or developing an algorithm to decide all arithmetical facts. This is a variant of the famous 1931 *incompleteness theorem* of Gödel . There are several methods of coping with the incompleteness phenomenon, and this constitutes a currently active area of research in foundations of mathematics.

The contrast between the completeness of formal geometry and the incompleteness of formal arithmetic is striking. Both sides of this dichotomy are of evident philosophical interest.

#### Formal theory of sets

One of the aims of modern logical research is to devise a single formal theory which will unify all of mathematics. Such a theory will necessarily be subject to the Gödel incompleteness phenomenon, because it will incorporate not only  but also .

One approach to a unified mathematics is to straightforwardly embed arithmetic into geometry, by identifying whole numbers with evenly spaced points on a line. This idea was familiar to the ancient Greeks. Another approach is to explain geometry in terms of arithmetic and algebra, by means of coordinate systems, like latitude and longitude on a map. This idea goes back to the 17th century mathematician and philosopher René Descartes and the 19th century mathematician Karl Weierstrass. Both approaches give rise to essentially the same formal theory, known as *second-order arithmetic*.

This theory includes both  and  and is adequate for the bulk of modern mathematics. Thus the decision about whether to make geometry more fundamental than arithmetic or vice versa seems to be mostly a matter of taste.

A very different approach to a unified mathematics is via *set theory*. This is a peculiarly 20th century approach. It is based on one very simple-looking concept: sets. Remarkably, this one concept leads directly to a vast structure which encompasses all of modern mathematics.

A *set* is a collection of objects called the *elements* of the set. We sometimes use informal notations such as  to indicate that  is a set consisting of elements , , .... The number of elements in a set can be arbitrarily large or even infinite. A basic principle of set theory is that a set is determined by its elements. Thus two sets are identical if and only if they have the same elements. This principle is known as *extensionality*. For example, the set  is considered to be the same set as  because the elements are the same, even though written in a different order.

Much of the complexity of set theory arises from the fact that sets may be elements of other sets. For instance, the set  is an element of the set  and this is distinct from the set .

For a formal theory of sets, we use three primitives:  ("set"),  ("identity"),  ("element"). The atomic formulas , ,  mean " is a set", " is identical to ", " is an element of ", respectively. One of the ground rules of set theory is that only sets may have elements. This is expressed as an axiom  . In addition there is an axiom of extensionality

and an axiom  expressing the existence of the *empty set*, i.e. a set  having no elements. A list of all the axioms of set theory may be found in textbooks. Let  be the formal theory of sets based on these axioms.

The set theory approach to arithmetic is in terms of the non-negative whole numbers ...

These numbers are identified with specific sets. Namely, we identify  with the empty set ,  with ,  with  ,  with  , etc. In general, we identify the number  with the set of smaller numbers  . Among the axioms of  is an *axiom of infinity* asserting the existence of the infinite set . One can use the set  to show that  includes a theory equivalent to . After that, one can follow the ideas of Descartes and Weierstrass to see that  also includes a theory equivalent to . It turns out that the rest of modern mathematics can also be emulated within . This includes an elaborate theory of infinite sets which are much larger than .

The set-theoretical approach to arithmetic and geometry is admittedly somewhat artificial. However, the idea of basing all of mathematics on one simple concept, sets, has exerted a powerful attraction.

The implications of this idea are not yet fully understood and are a topic of current research.



## 3. Philosophy of mathematics

In this section we indicate some issues and trends in the philosophy of mathematics.

### 3.1 Plato and Aristotle

The objects that are studied in mathematics tend to be somewhat abstract and remote from everyday perceptual experience. Therefore, the existence and nature of mathematical objects present special philosophical challenges. For example, is a geometrical square different from a square floor tile? If so, then where is the geometrical square? Is it on the floor, in our minds, or somewhere else? And what about sets? Is a set of  cards something other than the cards themselves?

The ancient Greek philosophers took such questions very seriously. Indeed, many of their general philosophical discussions were carried on with extensive reference to geometry and arithmetic. Plato seemed to insist that mathematical objects, like the Platonic forms or essences, must be perfectly abstract and have a separate, non-material kind of existence.

Aristotle dissected and refuted this view in books  and  of the Metaphysics. According to Aristotle, the geometrical square is a significant aspect of the square floor tile, but it can only be understood by discarding other irrelevant aspects such as the exact measurements, the tiling material, etc. Clearly these questions provide much food for philosophical analysis and debate.

### 3.2 The 20th century

In the 20th century, the advent of the predicate calculus and the digital computer profoundly affected our view of mathematics. The discovery that all of mathematics can be codified in formal theories created a huge stir. One expression of this excitement was the rise of an extreme philosophical doctrine known as *formalism*.

According to formalism, mathematics is only a formal game, concerned solely with algorithmic manipulation of symbols. Under this view, the symbols of the predicate calculus do not denote predicates or anything else. They are merely marks on paper, or bits and bytes in the memory of a computer. Therefore, mathematics cannot claim to be any sort of knowledge of mathematical objects. Indeed, mathematical objects do not exist at all, and the profound questions debated by Plato and Aristotle become moot. Mathematics is nothing but a kind of blind calculation.

The formalist doctrine fits well with certain modern trends in computer science, e.g., artificial intelligence. However, formalism has proved inadequate as an integrated philosophy of mathematics, because it fails to account for human mathematical understanding, not to mention the spectacular applications of mathematics in fields such as physics and engineering.

By way of reaction against formalism, several alternative doctrines have been advocated. One of these is *constructivism*, the idea that mathematical knowledge can be obtained by means of a series of purely mental constructions. Under this view, mathematical objects exist solely in the mind of the mathematician, so mathematical knowledge is absolutely certain. However, the status of mathematics vis a vis the external world becomes doubtful. An extreme version of constructivism is so solipsistic that it does not even allow for the possibility of mathematical communication from one mind to another.

An additional disturbing feature of constructivism is that it entails rejection of the basic laws of logic. To see how this comes about, consider some specific mathematical problem or question of a yes/no nature, for which the answer is currently unknown. (Mathematics abounds with such questions, and the Gödel incompleteness phenomenon suggests that such questions will always exist.) Express the "yes" answer as a formula  and the "no" answer as the negated formula . Since the answer is unknown, neither  nor  is in the mind of the mathematician. Therefore, according to the constructivists, the disjunction   is not a legitimate mathematical assumption. Thus Aristotle's either-or principle must be abandoned.

Constructivism has the merit of allowing human beings to possess mathematical knowledge. However, the constructivist rejection of the external world and of Aristotelean logic are highly unpalatable to most mathematicians and mathematically oriented scientists. For this reason, constructivism remains a fringe movement on the 20th century mathematical landscape.

Another 20th century philosophical doctrine has arisen from set-theoretical foundations. The reliance on infinite sets suggests many perplexing questions. What do such sets correspond to in reality? Where are they, and how can the human mind grasp them? In order to boldly answer these questions, and as a reaction against formalism, many researchers in axiomatic set theory have subscribed to what is known as *set-theoretical Platonism*. According to this variant of the Platonic doctrine, infinite sets exist in a non-material, purely mathematical realm. By extending our intuitive understanding of this realm, we will be able to cope with chaos issuing from the Gödel incompleteness phenomenon. The most prominent and frequently cited authority for this kind of Platonism is Gödel himself.

There is a good fit between set-theoretical Platonism and certain aspects of 20th century mathematical practice. However, as a philosophical doctrine, set-theoretical Platonism leaves much to be desired. Many of Aristotle's objections to the Platonic forms are still cogent. There are serious questions about how a theory of infinite sets can be applicable to a finite world.

We have mentioned three competing 20th century doctrines: formalism, constructivism, set-theoretical Platonism. None of these doctrines are philosophically satisfactory, and they do not provide much guidance for mathematically oriented scientists and other users of mathematics. As a result, late 20th century mathematicians have developed a split view, a kind of Kantian schizophrenia, which is usually described as "Platonism on weekdays, formalism on weekends". In other words, they accept the existence of infinite sets as a working hypothesis in their mathematical research, but when it comes to philosophical speculation, they retreat to a formalist stance. Thus they have given up hope of an integrated view which accounts for both mathematical knowledge and the applicability of mathematics to physical reality. In this respect, the philosophy of mathematics is in a sorry state.

### 3.3 The future

From the Renaissance through the 20th century, Aristotle's ideas about the nature of mathematical objects have been neglected and ignored. Now the time seems ripe for a renovation of the philosophy of mathematics, based on Aristotelean and neo-Aristotelean ideas and bolstered by the techniques of modern logic, including the predicate calculus.

The great mathematician David Hilbert anticipated such a renovation in his 1925 essay, On the Infinite. Hilbert was aware that, according to modern physics, the physical universe is finite. Yet infinite sets were playing an increasingly large role in the mathematics of the day. Hilbert therefore recognized that the most vulnerable chink in the armor of mathematics was the infinite. In order to defend what he called "the honor of human understanding", Hilbert proposed to develop a new foundation of mathematics, in which formal theories of infinite sets, such as , would be rigorously justified by reference to the finite. This is Hilbert's program of *finitistic reductionism*.

Although Hilbert did not cite Aristotle, we can imagine that Hilbert would have profited from an examination of Aristotle's distinction between actual and potential infinity. An *actual infinity* is something like an infinite set regarded as a completed totality. A *potential infinity* is more like a finite but indefinitely long, unending series of events. According to Aristotle, actual infinities cannot exist, but potential infinities exist in nature and are manifested to us in various ways, for instance the indefinite cycle of the seasons, or the indefinite divisibility of a piece of gold.

In any case, it turned out that Hilbert had stated his program in too sweeping a fashion. The wholesale finitistic reduction which Hilbert desired cannot be carried out. This follows from Gödel's incompleteness theorem. The remarkable results obtained by Gödel in 1931 caused the philosophical ideas of Hilbert's 1925 essay to fall into disrepute. Hilbert's grand foundational program appeared to be dead, broken beyond hope of repair.

The last 20 years have seen a revival of Hilbert's program. Recent foundational research has revealed that, although  is not finitistically reducible, there are other formal theories which are finitistically reducible, in the precise sense envisioned by Hilbert. Moreover, these other formal theories turn out to be adequate for a very large portion of mathematics. They do not encompass actual infinities such as , but they do include the main results of arithmetic and geometry and allied disciplines.

This new research has not yet had an impact on the philosophy of mathematics or on mathematical practice. Philosophers and mathematicians are free to choose which directions to pursue and which techniques to emphasize. Only time will reveal the future evolution of the philosophy of mathematics.


## Bibliography

1 Hippocrates G. Apostle. *Aristotle's Philosophy of Mathematics*. University of Chicago Press, 1952.

2 I. M. Bochenski. *A History of Formal Logic*. Chelsea Publishing Company, New York, 2nd edition, 1970. Translated and edited by Ivo Thomas

3 Haskell B. Curry. *Outlines of a Formalist Philosophy of Mathematics*. Studies in Logic and the Foundations of Mathematics. North-Holland, 1951.

4 Melvin Fitting. *First-Order Logic and Automated Theorem Proving*. Graduate Texts in Computer Science. Springer-Verlag New York Inc., 2nd edition, 1996.

5 Kurt Gödel. *Collected Works*. Oxford University Press, 1986-1995.  
Volume I, XVIII + 474 pages, 1986, Volume II, XVI + 407 pages, 1990, Volume III, XX + 532 pages, 1995.

6 Petr Hájek and Pavel Pudlák. *Metamathematics of First-Order Arithmetic*.
Perspectives in Mathematical Logic. Springer-Verlag, 1993.

7 Thomas Heath. *Mathematics in Aristotle*. Clarendon Press, Oxford, 1949.

8 Thomas Heath. *The Thirteen Books of Euclid's Elements*. Dover Publications, New York, 2nd revised edition, 1956. Three volumes.

9 Thomas Heath. *A History of Greek Mathematics*. Dover Publications, New York, 1981. Volume I, XV + 446 pages, Volume II, XI + 586 pages.

10 Leon Henkin, Patrick Suppes, and Alfred Tarski, editors. *The Axiomatic Method, With Special Reference to Geometry and Physics*. Studies in Logic and the Foundations of Mathematics. North-Holland, 1959. XI + 488 pages.

11 Thomas Jech. *Set Theory*. Academic Press, 1978.

12 Morris Kline. *Why Johnny Can't Add*. St. Martin's Press, 1973.

13 Richard McKeon, editor. *The Basic Works of Aristotle*. Random House, 1941.

14 Elliott Mendelson. *Boolean Algebra and Switching Circuits*. Schaum's Outline Series. 1970.

15 Elliott Mendelson. *Introduction to Mathematical Logic*. Wadsworth, 3rd edition, 1987.

16 Leonard Peikoff. *Objectivism: The Philosophy of Ayn Rand*. Dutton, New York, 1991.

17 Plato. *Dialogues*. Oxford, Clarendon Press, 4th edition, 1964. Translated by Benjamin Jowett.

18 Ayn Rand. *Atlas Shrugged*. Random House, New York, 1957.

19 David Ross. *Aristotle*. Barnes and Noble, 5th revised edition, 1964.

20 Stephen G. Simpson. *Subsystems of Second Order Arithmetic*. Perspectives in Mathematical Logic. Springer-Verlag, 1999.

21 Alfred Tarski. *Introduction to Logic and to the Methodology of Deductive Sciences*. Oxford University Press, 4th edition, 1994.

22 J. van Heijenoort, editor. *From Frege to Gödel: A Source Book in Mathematical Logic, 1879-1931*. Harvard University Press, 1971.


## Footnotes

... instrument[1][77]

The Greek word for instrument is *organon*. The collection of Aristotle's logical writings is known as the Organon.

... Metaphysics[2][78]

The Metaphysics is Aristotle's treatise on the science of existence, i.e., being as such. It includes a detailed analysis of the various ways in which a thing can be said to be.

... man[3][79]

We use *man* in the traditional sense, equivalent to "human being". There is no intention to exclude persons of the female gender.

... Shrugged[4][80]

A survey conducted for the Book-of-the-Month Club and the Library of Congress in 1991 found that *Atlas Shrugged* is the most influential book in the United States of America, second only to the Bible. See http://www.lcweb.loc.gov/loc/cfbook/bklists.html.

... individual.[5][81]

The idea of using letters such as  and  as variables is of great value. Historically, the creators of the predicate calculus borrowed this idea from the mathematical discipline known as *algebra*. Recall that algebra is a kind of generalized arithmetic. In algebra there are constants, i.e., specific quantities such as , the square root of , etc., but there are also variables such as , , etc. The key idea of algebra is that a variable  represents an unspecified or unknown quantity. It always stands for *some* quantity, but it *may* stand for *any* quantity. The use of variables makes algebra much more powerful than arithmetic. Variables help us to express and solve equations such as  involving one or more unknown quantities. Variables can also be used to express arithmetical laws such as .

... operators[6][82]

The first five logical operators (, , , , ) are equivalent to so-called "Boolean logic gates" of electrical engineering. Formulas built from them may be viewed as representations of the binary switching circuits that control the operation of modern digital computers. See Mendelson \[[14][83],[15][84]\].

... implication[7][85]

This is the so-called "material implication":  is equivalent to  .

... bi-implication[8][86]

This is called bi-implication because  is equivalent to  .

... noted[9][87]

See however Bochenski \[[2][88], §16E\].

... algorithm[10][89]

The details of this algorithm are explained in modern logic textbooks. Variants of it have been programmed to run on digital computers. They form the basis of a system of computer logic. See Fitting \[[4][90]\].

... contradictions[11][91]

An *explicit contradiction* is a pair of formulas of the form , .

... algorithm[12][92]

The algorithms in question may be implemented as Turing machine programs. This undecidability result is known as *Church's theorem*. See Mendelson \[[15][93]\].

... out[13][94]

For example, philosophical intrinsicism may play out as mathematical Platonism. Philosophical subjectivism may play out as mathematical constructivism. Nominalism may play out as formalism.

... method.[14][95]

Our modern notion of a formal theory (see [1.2.5][96] above) is a variant of Aristotle's concept of scientific method.

... Euclidean[15][97]

Here "Euclidean geometry" refers to the familiar geometry in which the angles of a triangle sum to  degrees, as distinct from the "non-Euclidean" (i.e., hyperbolic) geometry developed by Bolyai and Lobachevsky in the 19th century.

... geometry.[16][98]

Tarski also showed how to handle non-Euclidean plane geometry, as well as Euclidean and non-Euclidean geometries of higher dimension, in a similar fashion.

... geometrical[17][99]

This means that all occurrences of variables  within the formula  are within subformulas of the form   or  . Thus we are restricting attention to the realm of geometry and excluding everything else.

... algorithm[18][100]

Such algorithms have been implemented as computer programs. They are useful in robotics and other artificial intelligence applications.

... arithmetic.[19][101]

Two recent studies of formal arithmetic are Hájek/Pudlák \[[6][102]\] and Simpson \[[20][103]\].

... awkwardly[20][104]

This kind of awkwardness can be alleviated by means of various devices. In particular, standard mathematical notation such as  can be incorporated into the predicate calculus.

... [21][105]

In this formula, the variables , , ,  play the role of , , ,  respectively.

... inconsistent[22][106]

A formal theory is said to be *inconsistent* if its axioms logically imply an explicit contradiction. Such theories are of no scientific value.

... arithmetic.[23][107]

A recent study of second-order arithmetic is Simpson \[[20][108]\].

... attraction.[24][109]

The idea of set-theoretical foundations gave rise to the "new math" pedagogy of the 1960's. For a lively discussion, see Kline \[[12][110]\].

...formalism.[25][111]

See for example Curry \[[3][112]\].

... question[26][113]

For example, we could consider the following difficult question of Goldbach. Can every even number greater than  be expressed as the sum of two prime numbers?

... abandoned.[27][114]

See the essays of Brouwer and Kolmogorov in \[[22][115]\].

... reductionism.[28][116]

Hilbert is often inaccurately described as a formalist. The details of Hilbert's program will not be presented here, but see \[[20][117],[22][118]\]. Roughly speaking, a formal theory is said to be *finitistically reducible* if it can be embedded into some very restricted formal theory such as , which is physically meaningful and makes absolutely no reference to actual infinity.

---
Stephen G Simpson 2009-01-16

---


[1]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#SECTION00020000000000000000
[2]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#SECTION00021000000000000000
[3]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#SECTION00022000000000000000
[4]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#SECTION00030000000000000000
[5]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#SECTION00031000000000000000
[6]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#SECTION00032000000000000000
[7]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#SECTION00040000000000000000
[8]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#SECTION00041000000000000000
[9]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#SECTION00042000000000000000
[10]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#SECTION00043000000000000000
[11]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#SECTION00050000000000000000
[12]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#bochenski
[13]: http://www.personal.psu.edu/t20/papers/philmath/#foot301
[14]: http://www.personal.psu.edu/t20/papers/philmath/#sec:pred
[15]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#aristotle
[16]: http://www.personal.psu.edu/t20/papers/philmath/#foot32
[17]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#aristotle
[18]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#ross-aristotle
[19]: http://www.personal.psu.edu/t20/papers/philmath/#foot302
[20]: http://www.personal.psu.edu/t20/papers/philmath/#foot303
[21]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#atlas-shrugged
[22]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#bochenski
[23]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#vanh
[24]: http://www.personal.psu.edu/t20/papers/philmath/#foot304
[25]: http://www.personal.psu.edu/t20/papers/philmath/#foot305
[26]: http://www.personal.psu.edu/t20/papers/philmath/#sec:syll
[27]: http://www.personal.psu.edu/t20/papers/philmath/#sec:subj
[28]: http://www.personal.psu.edu/t20/papers/philmath/#foot306
[29]: http://www.personal.psu.edu/t20/papers/philmath/#foot307
[30]: http://www.personal.psu.edu/t20/papers/philmath/#foot308
[31]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#godel-works
[32]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#vanh
[33]: http://www.personal.psu.edu/t20/papers/philmath/#foot309
[34]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tarski
[35]: http://www.personal.psu.edu/t20/papers/philmath/#foot189
[36]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#heath-greek
[37]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#plato
[38]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#aristotle
[39]: http://www.personal.psu.edu/t20/papers/philmath/#foot310
[40]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#apostle-math
[41]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#heath-aristotle
[42]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#heath-greek
[43]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#heath-euclid
[44]: http://www.personal.psu.edu/t20/papers/philmath/#foot205
[45]: http://www.personal.psu.edu/t20/papers/philmath/#foot206
[46]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#hst
[47]: http://www.personal.psu.edu/t20/papers/philmath/#foot215
[48]: http://www.personal.psu.edu/t20/papers/philmath/#foot218
[49]: http://www.personal.psu.edu/t20/papers/philmath/#foot311
[50]: http://www.personal.psu.edu/t20/papers/philmath/#foot232
[51]: http://www.personal.psu.edu/t20/papers/philmath/#foot312
[52]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#godel-works
[53]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#vanh
[54]: http://www.personal.psu.edu/t20/papers/philmath/#foot313
[55]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#jech
[56]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#mendelson
[57]: http://www.personal.psu.edu/t20/papers/philmath/#foot314
[58]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#apostle-math
[59]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#heath-aristotle
[60]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#aristotle
[61]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#ross-aristotle
[62]: http://www.personal.psu.edu/t20/papers/philmath/#foot315
[63]: http://www.personal.psu.edu/t20/papers/philmath/#foot270
[64]: http://www.personal.psu.edu/t20/papers/philmath/#sec:subj
[65]: http://www.personal.psu.edu/t20/papers/philmath/#sec:conseq
[66]: http://www.personal.psu.edu/t20/papers/philmath/#foot316
[67]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#godel-works
[68]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#opar
[69]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#vanh
[70]: http://www.personal.psu.edu/t20/papers/philmath/#foot317
[71]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#godel-works
[72]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#vanh
[73]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#sosoa
[74]: http://www.latex2html.org/
[75]: http://cbl.leeds.ac.uk/nikos/personal.html
[76]: http://www.maths.mq.edu.au/~ross/
[77]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html1
[78]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html2
[79]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html3
[80]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html4
[81]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html5
[82]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html6
[83]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#mendelson-circuits
[84]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#mendelson
[85]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#footfnm7
[86]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#footfnm8
[87]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html7
[88]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#bochenski
[89]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html8
[90]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#fitting
[91]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html9
[92]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html10
[93]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#mendelson
[94]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html11
[95]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html12
[96]: http://www.personal.psu.edu/t20/papers/philmath/#sec:theories
[97]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html13
[98]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html14
[99]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html15
[100]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html16
[101]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html17
[102]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#hajek-pudlak
[103]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#sosoa
[104]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html18
[105]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html19
[106]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html20
[107]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html21
[108]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#sosoa
[109]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html22
[110]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#kline-johnny
[111]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html23
[112]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#curry-formalist
[113]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html24
[114]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html25
[115]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#vanh
[116]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#tex2html26
[117]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#sosoa
[118]: http://www.personal.psu.edu/t20/papers/philmath/philmath.html#vanh
