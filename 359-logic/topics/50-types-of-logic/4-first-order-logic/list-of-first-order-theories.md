---
downloaded:       2022-02-27
page-url:         https://en.wikipedia.org/wiki/List_of_first-order_theories#Arithmetic
page-title:       List of first-order theories - Wikipedia
article-title:    List of first-order theories
---
# List of first-order theories - Wikipedia

In first-order logic, a first-order theory is given by a set of axioms in some
language. This entry lists some of the more common examples used in model theory and some of their properties.
In [first-order logic][1], a first-order theory is given by a [set][2] of axioms in some language. This entry lists some of the more common examples used in [model theory][3] and some of their properties.

## Preliminaries\[[edit][4]\]

For every natural mathematical structure there is a [signature][5] σ listing the constants, functions, and relations of the theory together with their [arities][6], so that the object is naturally a [σ-structure][7]. Given a signature σ there is a unique first-order language *L*σ that can be used to capture the first-order expressible facts about the σ-structure.

There are two common ways to specify theories:

1.  List or describe a set of [sentences][8] in the language *L*σ, called the **axioms** of the theory.
2.  Give a set of σ-structures, and define a theory to be the set of sentences in *L*σ holding in all these models. For example, the "theory of finite fields" consists of all sentences in the language of fields that are true in all finite fields.

An Lσ theory may:

-   be consistent: no proof of contradiction exists;
-   be satisfiable: there exists a σ-structure for which the sentences of the theory are all true (by the [completeness theorem][9], satisfiability is equivalent to consistency);
-   be complete: for any statement, either it or its negation is provable;
-   have [quantifier elimination][10];
-   [eliminate imaginaries][11];
-   be [finitely axiomatizable][12];
-   be [decidable][13]: There is an algorithm to decide which statements are provable;
-   be recursively axiomatizable;
-   be [model complete][14] or sub-model complete;
-   be [κ-categorical][15]: All models of [cardinality][16] κ are isomorphic;
-   be [stable][17] or unstable;
-   be [ω-stable][18] (same as [totally transcendental][19] for [countable][20] theories);
-   be [superstable][21]
-   have an [atomic model][22];
-   have a [prime model][23];
-   have a [saturated model][24].

## Pure identity theories\[[edit][25]\]

The signature of the pure identity theory is empty, with no functions, constants, or relations.

**Pure identity theory** has no (non-logical) axioms. It is decidable.

One of the few interesting properties that can be stated in the language of pure identity theory is that of being infinite. This is given by an infinite set of axioms stating there are at least 2 elements, there are at least 3 elements, and so on:

-   ∃*x*1 ∃*x*2 ¬*x*1 = *x*2,    ∃*x*1 ∃*x*2 ∃*x*3 ¬*x*1 = *x*2 ∧ ¬*x*1 = *x*3 ∧ ¬*x*2 = *x*3,...

These axioms define the **theory of an infinite set**.

The opposite property of being finite cannot be stated in [first-order logic][26] for any theory that has arbitrarily large finite models: in fact any such theory has infinite models by the [compactness theorem][27]. In general if a property can be stated by a finite number of sentences of first-order logic then the opposite property can also be stated in first-order logic, but if a property needs an infinite number of sentences then its opposite property cannot be stated in first-order logic.

Any statement of pure identity theory is equivalent to either σ(*N*) or to ¬σ(*N*) for some finite [subset][28] *N* of the [non-negative integers][29], where σ(*N*) is the statement that the number of elements is in *N*. It is even possible to describe all possible theories in this language as follows. Any theory is either the theory of all sets of cardinality in *N* for some *finite* subset *N* of the non-negative integers, or the theory of all sets whose cardinality is not in *N*, for some *finite or infinite* subset *N* of the non-negative integers. (There are no theories whose models are exactly sets of cardinality *N* if *N* is an infinite subset of the integers.) The complete theories are the theories of sets of cardinality *n* for some finite *n*, and the theory of infinite sets.

One special case of this is the **inconsistent theory** defined by the axiom ∃*x* ¬*x* = *x*. It is a perfectly good theory with many good properties: it is complete, decidable, finitely axiomatizable, and so on. The only problem is that it has no models at all. By Gödel's completeness theorem, it is the only theory (for any given language) with no models.[\[1\]][30] It is not the same as the theory of the [empty set][31] (in versions of first-order logic that allow a model to be empty): the theory of the empty set has exactly one model, which has no elements.

## Unary relations\[[edit][32]\]

A set of unary relations *P**i* for *i* in some set *I* is called **independent** if for every two disjoint finite subsets *A* and *B* of *I* there is some element *x* such that *P**i*(*x*) is true for *i* in *A* and false for *i* in *B*. Independence can be expressed by a set of first-order statements.

The **theory of a countable number of independent unary relations** is complete, but has no [atomic models][33]. It is also an example of a theory that is [superstable][34] but not [totally transcendental][35].

## Equivalence relations\[[edit][36]\]

The signature of [equivalence relations][37] has one binary infix relation symbol ~, no constants, and no functions. Equivalence relations satisfy the axioms:

-   **[Reflexive][38]** ∀*x* *x*~*x*;
-   **[Symmetric][39]** ∀*x* ∀*y* *x*~*y* → *y*~*x*;
-   **[Transitive][40]**: ∀*x* ∀*y* ∀*z* (*x*~*y* ∧ *y*~*z*) → *x*~*z*.

Some first order properties of equivalence relations are:

-   ~ has an infinite number of [equivalence classes][41];
-   ~ has exactly *n* equivalence classes (for any fixed positive integer *n*);
-   All equivalence classes are infinite;
-   All equivalence classes have size exactly *n* (for any fixed positive integer *n*).

The theory of an equivalence relation with exactly 2 infinite [equivalence classes][42] is an easy example of a theory which is ω-categorical but not categorical for any larger [cardinal][43].

The equivalence relation ~ should not be confused with the [identity][44] symbol '=': if *x*\=*y* then *x*~*y*, but the converse is not necessarily true. Theories of equivalence relations are not all that difficult or interesting, but often give easy examples or counterexamples for various statements.

The following constructions are sometimes used to produce examples of theories with certain [spectra][45]; in fact by applying them to a small number of explicit theories *T* one gets examples of complete countable theories with all possible uncountable spectra. If *T* is a theory in some language, we define a new theory 2*T* by adding a new binary relation to the language, and adding axioms stating that it is an equivalence relation, such that there are an infinite number of equivalence classes all of which are [models][46] of *T*. It is possible to iterate this construction [transfinitely][47]: given an [ordinal][48] α, define a new theory by adding an equivalence relation *Eβ* for each β<α, together with axioms stating that whenever β<γ then each *Eγ* equivalence class is the union of infinitely many *Eβ* equivalence classes, and each *E0* equivalence class is a model of *T*. Informally, one can visualize models of this theory as infinitely branching trees of height α with models of *T* attached to all leaves.

## Orders\[[edit][49]\]

The signature of [orders][50] has no constants or functions, and one binary relation symbols ≤. (It is of course possible to use ≥, < or > instead as the basic relation, with the obvious minor changes to the axioms.) We define *x* ≥ *y*, *x* < *y*, *x* > *y* as abbreviations for *y* ≤ *x*, *x* ≤ *y* ∧¬*y* ≤ *x*, *y* < *x*,

Some first-order properties of orders:

-   **Transitive**: ∀*x* ∀*y* ∀*z* *x* ≤ *y*∧*y* ≤ *z* → *x* ≤ *z*
-   **Reflexive**: ∀*x* *x ≤* x
-   **[Antisymmetric][51]**: ∀*x* ∀*y* *x* ≤ *y* ∧ *y* ≤ *x* → *x* = *y*
-   **[Partial][52]**: Transitive ∧ Reflexive ∧ Antisymmetric;
-   **[Linear][53]** (or **total**): Partial ∧ ∀*x* ∀*y* *x* ≤ *y* ∨ *y* ≤ *x*
-   **[Dense][54]**: ∀*x* ∀*z* *x* < *z* → ∃*y* *x* < *y* ∧ *y* < *z* ("Between any 2 distinct elements there is another element")
-   There is a smallest element: ∃*x* ∀*y* *x* ≤ *y*
-   There is a largest element: ∃*x* ∀*y* *y* ≤ *x*
-   Every element has an immediate successor: ∀*x* ∃*y* ∀*z* *x* < *z* ↔ *y* ≤ *z*

The theory DLO of *dense linear orders without endpoints* (i.e. no smallest or largest element) is complete, ω-categorical, but not categorical for any uncountable cardinal. There are three other very similar theories: the theory of dense linear orders with a:

-   Smallest but no largest element;
-   Largest but no smallest element;
-   Largest and smallest element.

Being **[well ordered][55]** ("any non-empty subset has a minimal element") is not a first-order property; the usual definition involves quantifying over all *subsets*.

## Lattices\[[edit][56]\]

[Lattices][57] can be considered either as special sorts of partially ordered sets, with a signature consisting of one binary relation symbol ≤, or as [algebraic structures][58] with a signature consisting of two binary operations ∧ and ∨. The two approaches can be related by defining *a* ≤ *b* to mean *a*∧*b* = *a*.

For two binary operations the axioms for a lattice are:

<table><tbody><tr><td><b><a href="https://en.wikipedia.org/wiki/Commutative_operation" title="Commutative operation">Commutative</a> laws:</b></td><td></td><td><span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/f0e5beaed924e6ce0878a74bb847f9af5f3b3171" aria-hidden="true" alt="\forall a\forall b\;a\vee b=b\vee a"></span></td><td></td><td><span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/3c7e11ef186f5c15c5a53a058dc0d32067632fed" aria-hidden="true" alt="\forall a\forall b\;a\wedge b=b\wedge a"></span></td></tr><tr><td><b><a href="https://en.wikipedia.org/wiki/Associativity" title="Associativity">Associative</a> laws:</b></td><td></td><td><span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/7483cb524ff1a62d012ddc432d6f5668f8669a19" aria-hidden="true" alt="\forall a\forall b\forall c\;a\vee (b\vee c)=(a\vee b)\vee c"></span></td><td></td><td><span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/ab3bd273dff1bbc2c857770a5869d92aa30c0e4f" aria-hidden="true" alt="\forall a\forall b\forall c\;a\wedge (b\wedge c)=(a\wedge b)\wedge c"></span></td></tr><tr><td><b><a href="https://en.wikipedia.org/wiki/Absorption_law" title="Absorption law">Absorption laws</a>:</b></td><td></td><td><span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/00c99c23f6d61aa1b669e3495c6f7717ae99d9dd" aria-hidden="true" alt="\forall a\forall b\;a\vee (a\wedge b)=a"></span></td><td></td><td><span><img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/a746fbae943331563a8424896fc1e5359857aec3" aria-hidden="true" alt="\forall a\forall b\;a\wedge (a\vee b)=a"></span></td></tr></tbody></table>

For one relation ≤ the axioms are:

First order properties include:

[Heyting algebras][62] can be defined as lattices with certain extra first-order properties.

[Completeness][63] is not a first order property of lattices.

## Graphs\[[edit][64]\]

The signature of [graphs][65] has no constants or functions, and one binary relation symbol *R*, where *R*(*x*,*y*) is read as "there is an edge from *x* to *y*".

The axioms for the **theory of graphs** are

-   **Symmetric**: ∀*x* ∀*y* *R*(*x*,*y*)→ *R*(*y*,*x*)
-   **[Anti-reflexive][66]**: ∀*x* ¬*R*(*x*,*x*) ("no [loops][67]")

The *theory of random graphs* has the following extra axioms for each positive integer *n*:

-   For any two disjoint finite sets of size *n*, there is a point joined to all points of the first set and to no points of the second set. (For each fixed *n*, it is easy to write this statement in the language of graphs.)

The theory of random graphs is ω categorical, complete, and decidable, and its countable model is called the [Rado graph][68]. A statement in the language of graphs is true in this theory if and only if the probability that an *n*\-vertex [random graph][69] models the statement tends to 1 in the limit as *n* goes to infinity.

## Boolean algebras\[[edit][70]\]

There are several different signatures and conventions used for **[Boolean algebras][71]**:

1.  The signature has two constants, 0 and 1, and two binary functions ∧ and ∨ ("and" and "or"), and one unary function ¬ ("not"). This can be confusing as the functions use the same symbols as the [propositional functions][72] of first-order logic.
2.  In [set theory][73], a common convention is that the language has two constants, 0 and 1, and two binary functions · and +, and one unary function −. The three functions have the same interpretation as the functions in the first convention. Unfortunately, this convention clashes badly with the next convention:
3.  In [algebra][74], the usual convention is that the language has two constants, 0 and 1, and two binary functions · and +. The function · has the same meaning as ∧, but *a*+*b* means *a*∨*b*∧¬(*a*∧*b*). The reason for this is that the axioms for a Boolean algebra are then just the axioms for a ring with 1 plus ∀*x* *x*2 = *x*. Unfortunately this clashes with the standard convention in set theory given above.

The axioms are:

-   The axioms for a distributive lattice (see above)
-   ∀a *a*∧¬*a* = 0, ∀a *a*∨¬*a* = 1 (properties of negation)
-   Some authors add the extra axiom ¬0 = 1, to exclude the trivial algebra with one element.

Tarski proved that the theory of Boolean algebras is decidable.

We write *x* ≤ *y* as an abbreviation for *x*∧*y* = *x*, and atom(*x*) as an abbreviation for ¬*x* = 0 ∧ ∀*y* *y* ≤ *x* → *y* = 0 ∨ *y* = *x*, read as "*x* is an atom", in other words a non-zero element with nothing between it and 0. Here are some first-order properties of Boolean algebras:

-   **Atomic**: ∀*x* *x* = 0 ∨ ∃*y* *y* ≤ *x* ∧ atom(*y*)
-   **Atomless**: ∀*x* ¬atom(*x*)

The theory of **atomless Boolean algebras** is ω-categorical and complete.

For any Boolean algebra *B*, there are several invariants defined as follows.

-   the ideal *I*(*B*) consists of elements that are the sum of an atomic and an atomless element (an element with no atoms below it).
-   The quotient algebras *B**i* of *B* are defined inductively by *B*0\=*B*, *B**k*+1 = *B**k*/*I*(*B**k*).
-   The invariant *m*(*B*) is the smallest integer such that *B**m*+1 is trivial, or ∞ if no such integer exists.
-   If *m*(*B*) is finite, the invariant *n*(*B*) is the number of atoms of *B**m*(*B*) if this number is finite, or ∞ if this number is infinite.
-   The invariant *l*(*B*) is 0 if *B**m*(*B*) is atomic or if *m*(*B*) is ∞, and 1 otherwise.

Then two Boolean algebras are [elementarily equivalent][75] if and only if their invariants *l*, *m*, and *n* are the same. In other words, the values of these invariants classify the possible completions of the theory of Boolean algebras. So the possible complete theories are:

-   The trivial algebra (if this is allowed; sometimes 0≠1 is included as an axiom.)
-   The theory with *m* = ∞
-   The theories with *m* a natural number, *n* a natural number or ∞, and *l* = 0 or 1 (with *l* = 0 if *n* = 0).

## Groups\[[edit][76]\]

The signature of [group theory][77] has one constant 1 (the identity), one function of arity 1 (the inverse) whose value on *t* is denoted by *t*−1, and one function of arity 2, which is usually omitted from terms. For any integer *n*, *t**n* is an abbreviation for the obvious term for the *n*th power of *t*.

**[Groups][78]** are defined by the axioms

-   *Identity*: ∀*x* 1*x* = *x* ∧ *x*1 = *x*
-   *Inverse*: ∀*x* *x*−1*x* = *1* ∧ *xx*−1 = *1*
-   *Associativity*: ∀*x*∀*y*∀*z* (*xy*)*z* = *x*(*yz*)

Some properties of groups that can be defined in the first-order language of groups are:

-   **[Abelian][79]**: ∀*x* ∀*y* *xy* = *yx*.
-   **[Torsion free][80]**: ∀*x* *x*2 = 1→*x* = 1, ∀*x* *x*3 = 1 → *x* = 1, ∀*x* *x*4 = 1 → *x* = 1, ...
-   **[Divisible][81]**: ∀*x* ∃*y* *y*2 = *x*, ∀*x* ∃*y* *y*3 = *x*, ∀*x* ∃*y* *y*4 = *x*, ...
-   **Infinite** (as in identity theory)
-   **[Exponent][82]** *n* (for any fixed positive integer *n*): ∀*x* *x**n* = 1
-   [Nilpotent][83] of class *n* (for any fixed positive integer *n*)
-   [Solvable][84] of class *n* (for any fixed positive integer *n*)

The theory of **abelian groups** is decidable.[\[2\]][85] The theory of **infinite divisible torsion-free abelian groups** is complete, as is the theory of **infinite abelian groups of exponent p** (for *p* [prime][86]).

The theory of **finite groups** is the set of first-order statements in the language of groups that are true in all finite groups (there are plenty of infinite models of this theory). It is not completely trivial to find any such statement that is not true for all groups: one example is "given two elements of order 2, either they are conjugate or there is a non-trivial element commuting with both of them".

The properties of being finite, or [free][87], or [simple][88], or torsion are not first-order. More precisely, the first-order theory of all groups with one of these properties has models that do not have this property.

## Rings and fields\[[edit][89]\]

The signature of (unital) [rings][90] has two constants 0 and 1, two binary functions + and ×, and, optionally, one unary negation function −.

**Rings**

Axioms: Addition makes the ring into an abelian group, multiplication is associative and has an identity 1, and multiplication is left and right distributive.

**[Commutative rings][91]**

The axioms for rings plus ∀*x* ∀*y* *xy* = *yx*.

**[Fields][92]**

The axioms for commutative rings plus ∀*x* (¬ *x* = 0 → ∃*y* *xy* = 1) and ¬ 1 = 0. Many of the examples given here have only universal, or *algebraic* axioms. The [class][93] of structures satisfying such a theory has the property of being closed under substructure. For example, a subset of a group closed under the group actions of multiplication and inverse is again a group. Since the signature of fields does not usually include multiplicative and additive inverse, the axioms for inverses are not universal, and therefore a substructure of a field closed under addition and multiplication is not always a field. This can be remedied by adding unary inverse functions to the language.

For any positive integer *n* the property that all equations of degree *n* have a root can be expressed by a single first-order sentence:

-   ∀ *a*1 ∀ *a*2... ∀ *a**n* ∃*x* (...((*x*+*a*1)*x* +*a*2)*x*+...)*x*+*a**n* = 0

**[Perfect fields][94]**

The axioms for fields, plus axioms for each prime number *p* stating that if *p* 1 = 0 (i.e. the field has [characteristic][95] *p*), then every field element has a *p*th root.

**Algebraically closed fields of characteristic *p***

The axioms for fields, plus for every positive *n* the axiom that all polynomials of degree *n* have a root, plus axioms fixing the characteristic. The classical examples of complete theories. [Categorical][96] in all uncountable cardinals. The theory *ACF*p has a *universal domain property*, in the sense that every structure *N* satisfying the universal axioms of *ACF*p is a substructure of a sufficiently large algebraically closed field , and additionally any two such embeddings *N* → *M* induce an [automorphism][97] of *M*.

**[Finite fields][98]**

The theory of finite fields is the set of all first-order statements that are true in all finite fields. Significant examples of such statements can, for example, be given by applying the [Chevalley–Warning theorem][99], over the [prime fields][100]. The name is a little misleading as the theory has plenty of infinite models. Ax proved that the theory is decidable.

**[Formally real fields][101]**

The axioms for fields plus, for every positive integer *n*, the axiom:

-   ∀ *a*1 ∀ *a*2... ∀ *a**n* *a*1*a*1+*a*2*a*2\+ ...+*a**n**a**n*\=0 → *a**1*\=0∧*a**2*\=0∧ ... ∧*a**n*\=0.

That is, 0 is not a non-trivial sum of squares.

**[Real closed fields][102]**

The axioms for formally real fields plus the axioms:

-   ∀*x* ∃*y* (*x*\=*yy* ∨ *x*+*yy*\= 0);
-   for every odd positive integer *n*, the axiom stating that every polynomial of degree *n* has a root.

The theory of real closed fields is effective and complete and therefore decidable (the [Tarski–Seidenberg theorem][103]). The addition of further function symbols (e.g., the exponential function, the sine function) [may change decidability][104].

***p*\-adic fields**

[Ax & Kochen (1965)][105] showed that the theory of *p*\-adic fields is decidable and gave a set of axioms for it.[\[3\]][106]

## Geometry\[[edit][107]\]

Axioms for various systems of geometry usually use a typed language, with the different types corresponding to different geometric objects such as points, lines, circles, planes, and so on. The signature will often consist of binary incidence relations between objects of different types; for example, the relation that a point lies on a line. The signature may have more complicated relations; for example ordered geometry might have a ternary "betweenness" relation for 3 points, which says whether one lies between two others, or a "congruence" relation between 2 pairs of points.

Some examples of axiomatized systems of geometry include [ordered geometry][108], [absolute geometry][109], [affine geometry][110], [Euclidean geometry][111], [projective geometry][112], and [hyperbolic geometry][113]. For each of these geometries there are many different and inequivalent systems of axioms for various dimensions. Some of these axiom systems include "completeness" axioms that are not first order.

As a typical example, the axioms for projective geometry use 2 types, points and lines, and a binary incidence relation between points and lines. If point and line variables are indicated by small and capital letter, and *a* incident to *A* is written as *aA*, then one set of axioms is

Euclid did not state all the axioms for Euclidean geometry explicitly, and the first complete list was given by Hilbert in [Hilbert's axioms][114]. This is not a first order axiomatization as one of Hilbert's axioms is a second order completeness axiom. [Tarski's axioms][115] are a first order axiomatization of Euclidean geometry. Tarski showed this axiom system is complete and decidable by relating it to the complete and decidable theory of real closed fields.

## Differential algebra\[[edit][116]\]

-   The theory DF of [differential fields][117].

The signature is that of fields (0, 1, +, −, ×) together with a unary function ∂, the derivation. The axioms are those for fields together with

For this theory one can add the condition that the characteristic is *p*, a prime or zero, to get the theory DF*p* of **differential fields of characteristic *p*** (and similarly with the other theories below).

If *K* is a differential field then the **field of constants**  The theory of **differentially perfect fields** is the theory of differential fields together with the condition that the field of constants is perfect; in other words, for each prime *p* it has the axiom:

(There is little point in demanding that the whole field should be a [perfect field][118], because in non-zero characteristic this implies the differential is 0.) For technical reasons to do with [quantifier elimination][119], it is sometimes more convenient to force the constant field to be perfect by adding a new symbol *r* to the signature with the axioms

-   The theory of **[differentially closed fields][120]** (DCF) is the theory of differentially perfect fields with axioms saying that if *f* and *g* are [differential polynomials][121] and the [separant][122] of *f* is nonzero and *g*≠0 and *f* has order greater than that of *g*, then there is some *x* in the field with *f*(*x*)=0 and *g*(*x*)≠0.

## Addition\[[edit][123]\]

The **theory of the natural numbers with a successor function** has signature consisting of a constant 0 and a unary function *S* ("successor": *S*(*x*) is interpreted as *x*+1), and has axioms:

1.  ∀x ¬ Sx = 0
2.  ∀x∀y Sx = Sy → x = y
3.  Let *P*(*x*) be a [first-order formula][124] with a single [free variable][125] *x*. Then the following formula is an axiom:

(*P*(0) ∧ ∀*x*(*P*(*x*)→*P*(*Sx*))) → ∀*y* *P*(*y*).

The last axiom (induction) can be replaced by the axioms

-   For each integer *n*\>0, the axiom ∀x SSS...Sx ≠ x (with *n* copies of *S*)
-   ∀x ¬ x = 0 → ∃y Sy = x

The theory of the natural numbers with a successor function is complete and decidable, and is κ-categorical for uncountable κ but not for countable κ.

**[Presburger arithmetic][126]** is the theory of the natural numbers under addition, with signature consisting of a constant 0, a unary function *S*, and a binary function +. It is complete and decidable. The axioms are

1.  ∀x ¬ Sx = 0
2.  ∀x∀y Sx = Sy → x = y
3.  ∀x x + 0 = x
4.  ∀x∀y x + Sy = S(x + y)
5.  Let *P*(*x*) be a first-order formula with a single free variable *x*. Then the following formula is an axiom:

(*P*(0) ∧ ∀*x*(*P*(*x*)→*P*(*Sx*))) → ∀*y* *P*(*y*).

## Arithmetic\[[edit][127]\]

Many of the first order theories described above can be extended to complete recursively enumerable consistent theories. This is no longer true for most of the following theories; they can usually encode both multiplication and addition of natural numbers, and this gives them enough power to encode themselves, which implies that [Gödel's incompleteness theorem][128] applies and the theories can no longer be both complete and recursively enumerable (unless they are inconsistent).

The signature of a theory of arithmetic has:

-   The constant 0;
-   The [unary function][129], the [successor function][130], here denoted by prefix *S*, or by prefix σ or postfix ′ elsewhere;
-   Two [binary functions][131], denoted by infix + and ×, called "addition" and "multiplication."

Some authors take the signature to contain a constant 1 instead of the function *S*, then define *S* in the obvious way as *St* = 1 + *t*.

**[Robinson arithmetic][132]** (also called **Q**). Axioms (1) and (2) govern the distinguished element 0. (3) assures that *S* is an [injection][133]. Axioms (4) and (5) are the standard recursive definition of addition; (6) and (7) do the same for multiplication. Robinson arithmetic can be thought of as Peano arithmetic without induction. **Q** is a weak theory for which [Gödel's incompleteness theorem][134] holds. Axioms:

1.  ∀*x* ¬ S*x* = 0
2.  ∀*x* ¬ *x* = 0 → ∃*y* S*y* = *x*
3.  ∀*x*∀*y* S*x* = S*y* → *x* = *y*
4.  ∀*x* *x* + 0 = *x*
5.  ∀*x*∀*y* *x* + S*y* = S(*x* + *y*)
6.  ∀*x* *x* × 0 = 0
7.  ∀*x*∀*y* *x* × S*y* = (*x* × *y*) + *x*.

**IΣn** is first order Peano arithmetic with induction restricted to [Σn formulas][135] (for *n* = 0, 1, 2, ...). The theory IΣ0 is often denoted by IΔ0. This is a series of more and more powerful fragments of Peano arithmetic. The case *n* = 1 has about the same strength as **[primitive recursive arithmetic][136]** (PRA). **[Exponential function arithmetic][137]** (EFA) is IΣ0 with an axiom stating that *x**y* exists for all *x* and *y* (with the usual properties).

**First order [Peano arithmetic][138]**, **PA**. The "standard" theory of arithmetic. The axioms are the axioms of [Robinson arithmetic][139] above, together with the axiom scheme of induction:

-    for any formula φ in the language of **PA**. φ may contain free variables other than *x*.

[Kurt Gödel][140]'s 1931 paper proved that **PA** is incomplete, and has no consistent recursively enumerable completions.

**Complete arithmetic** (also known as **true arithmetic**) is the theory of the standard model of arithmetic, the natural numbers **N**. It is complete but does not have a recursively enumerable set of axioms.

For the **real numbers**, the situation is slightly different: The case that includes just addition and multiplication cannot encode the integers, and hence [Gödel's incompleteness theorem][141] [does not apply][142]. [Complications][143] arise when adding further function symbols (e.g., exponentiation).

## Second order arithmetic\[[edit][144]\]

**[Second-order arithmetic][145]** can refer to a first order theory (in spite of the name) with two types of variables, thought of as varying over integers and subsets of the integers. (There is also a theory of arithmetic in second order logic that is called second order arithmetic. It has only one model, unlike the corresponding theory in first order logic, which is incomplete.) The signature will typically be the signature 0, *S*, +, × of arithmetic, together with a membership relation ∈ between integers and subsets (though there are numerous minor variations). The axioms are those of [Robinson arithmetic][146], together with axiom schemes of [induction][147] and [comprehension][148].

There are many different subtheories of second order arithmetic that differ in which formulas are allowed in the induction and comprehension schemes. In order of increasing strength, five of the most common systems are

These are defined in detail in the articles on [second order arithmetic][149] and [reverse mathematics][150].

## Set theories\[[edit][151]\]

The usual signature of set theory has one binary relation ∈, no constants, and no functions. Some of the theories below are "class theories" which have two sorts of object, sets and classes. There are three common ways of handling this in first-order logic:

1.  Use first-order logic with two types.
2.  Use ordinary first-order logic, but add a new unary predicate "Set", where "Set(*t*)" means informally "*t* is a set".
3.  Use ordinary first-order logic, and instead of adding a new predicate to the language, treat "Set(*t*)" as an abbreviation for "∃*y* *t*∈*y*"

Some first order set theories include:

-   Weak theories lacking [powersets][152]:
    -   [S'][153] (Tarski, Mostowski, and Robinson, 1953); (finitely axiomatizable)
    -   [Kripke–Platek set theory][154]; KP;
    -   [Pocket set theory][155]
    -   [General set theory][156], GST
    -   [Constructive set theory][157], CZF
-   [Mac Lane set theory][158] and [Elementary topos theory][159]
-   [Zermelo set theory][160]; Z
-   [Zermelo–Fraenkel set theory][161]; ZF, ZFC;
-   [Von Neumann–Bernays–Gödel set theory][162]; NBG; (finitely axiomatizable)
-   [Ackermann set theory][163];
-   [Scott–Potter set theory][164]
-   [New Foundations][165]; NF (finitely axiomatizable)
-   [Positive set theory][166]
-   [Morse–Kelley set theory][167]; MK;
-   [Tarski–Grothendieck set theory][168]; TG;

Some extra first order axioms that can be added to one of these (usually ZF) include:

-   [axiom of choice][169], [axiom of dependent choice][170]
-   [Generalized continuum hypothesis][171]
-   [Martin's axiom][172] (usually together with the negation of the continuum hypothesis), [Martin's maximum][173]
-   [◊][174] and [♣][175]
-   [Axiom of constructibility][176] (V=L)
-   [proper forcing axiom][177]
-   [analytic determinacy][178], [projective determinacy][179], [Axiom of determinacy][180]
-   Many [large cardinal axioms][181]

## See also\[[edit][182]\]

-   [Glossary of areas of mathematics][183]
-   [List of mathematical theories][184]

## References\[[edit][185]\]

1.  **[^][186]** Goldrei, Derek (2005), [*Propositional and Predicate Calculus: A Model of Argument: A Model of Argument*][187], Springer, p. 265, [ISBN][188] [9781846282294][189].
2.  **[^][190]** [Szmielew, W.][191] (1955), "Elementary properties of Abelian groups", *Fundamenta Mathematicae*, **41** (2): 203–271, [doi][192]:[10.4064/fm-41-2-203-271][193], [MR][194] [0072131][195].
3.  **[^][196]** [Ax, James][197]; [Kochen, Simon][198] (1965), "Diophantine problems over local fields. II. A complete set of axioms for p-adic number theory.", *Amer. J. Math.*, The Johns Hopkins University Press, **87** (3): 631–648, [doi][199]:[10.2307/2373066][200], [JSTOR][201] [2373066][202], [MR][203] [0184931][204]

## Further reading\[[edit][205]\]

-   Chang, C.C.; [Keisler, H. Jerome][206] (1989), *Model Theory* (3 ed.), [Elsevier][207], [ISBN][208] [0-7204-0692-7][209]
-   [Hodges, Wilfrid][210] (1997), *A shorter model theory*, [Cambridge University Press][211], [ISBN][212] [0-521-58713-1][213]
-   Marker, David (2002), *Model Theory: An Introduction*, [Graduate Texts in Mathematics][214], vol. 217, Springer, [ISBN][215] [0-387-98760-6][216]

[1]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[2]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[3]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[4]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=1 "Edit section: Preliminaries"
[5]: https://en.wikipedia.org/wiki/Signature_(logic) "Signature (logic)"
[6]: https://en.wikipedia.org/wiki/Arity "Arity"
[7]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[8]: https://en.wikipedia.org/wiki/Sentence_(mathematical_logic) "Sentence (mathematical logic)"
[9]: https://en.wikipedia.org/wiki/Completeness_theorem "Completeness theorem"
[10]: https://en.wikipedia.org/wiki/Quantifier_elimination "Quantifier elimination"
[11]: https://en.wikipedia.org/wiki/Elimination_of_imaginaries "Elimination of imaginaries"
[12]: https://en.wikipedia.org/wiki/Axiom_schema#Finite_axiomatization "Axiom schema"
[13]: https://en.wikipedia.org/wiki/Decidability_(logic) "Decidability (logic)"
[14]: https://en.wikipedia.org/wiki/Model_complete "Model complete"
[15]: https://en.wikipedia.org/wiki/Morley%27s_categoricity_theorem "Morley's categoricity theorem"
[16]: https://en.wikipedia.org/wiki/Cardinality "Cardinality"
[17]: https://en.wikipedia.org/wiki/Stable_theory "Stable theory"
[18]: https://en.wikipedia.org/wiki/%CE%A9-stable "Ω-stable"
[19]: https://en.wikipedia.org/wiki/Totally_transcendental "Totally transcendental"
[20]: https://en.wikipedia.org/wiki/Countable_set "Countable set"
[21]: https://en.wikipedia.org/wiki/Superstable "Superstable"
[22]: https://en.wikipedia.org/wiki/Atomic_model_(mathematical_logic) "Atomic model (mathematical logic)"
[23]: https://en.wikipedia.org/wiki/Prime_model "Prime model"
[24]: https://en.wikipedia.org/wiki/Saturated_model "Saturated model"
[25]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=2 "Edit section: Pure identity theories"
[26]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[27]: https://en.wikipedia.org/wiki/Compactness_theorem "Compactness theorem"
[28]: https://en.wikipedia.org/wiki/Subset "Subset"
[29]: https://en.wikipedia.org/wiki/Non-negative_integer "Non-negative integer"
[30]: https://en.wikipedia.org/wiki/List_of_first-order_theories#cite_note-1
[31]: https://en.wikipedia.org/wiki/Empty_set "Empty set"
[32]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=3 "Edit section: Unary relations"
[33]: https://en.wikipedia.org/wiki/Atomic_model_(mathematical_logic) "Atomic model (mathematical logic)"
[34]: https://en.wikipedia.org/wiki/Superstable "Superstable"
[35]: https://en.wikipedia.org/wiki/Totally_transcendental "Totally transcendental"
[36]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=4 "Edit section: Equivalence relations"
[37]: https://en.wikipedia.org/wiki/Equivalence_relation "Equivalence relation"
[38]: https://en.wikipedia.org/wiki/Reflexive_relation "Reflexive relation"
[39]: https://en.wikipedia.org/wiki/Symmetric_relation "Symmetric relation"
[40]: https://en.wikipedia.org/wiki/Transitive_relation "Transitive relation"
[41]: https://en.wikipedia.org/wiki/Equivalence_classes "Equivalence classes"
[42]: https://en.wikipedia.org/wiki/Equivalence_class "Equivalence class"
[43]: https://en.wikipedia.org/wiki/Cardinal_number "Cardinal number"
[44]: https://en.wikipedia.org/wiki/Identity_(philosophy) "Identity (philosophy)"
[45]: https://en.wikipedia.org/wiki/Spectrum_of_a_theory "Spectrum of a theory"
[46]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[47]: https://en.wikipedia.org/wiki/Transfinite_induction "Transfinite induction"
[48]: https://en.wikipedia.org/wiki/Ordinal_number "Ordinal number"
[49]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=5 "Edit section: Orders"
[50]: https://en.wikipedia.org/wiki/List_of_order_structures_in_mathematics "List of order structures in mathematics"
[51]: https://en.wikipedia.org/wiki/Antisymmetric_relation "Antisymmetric relation"
[52]: https://en.wikipedia.org/wiki/Partial_order "Partial order"
[53]: https://en.wikipedia.org/wiki/Linear_order "Linear order"
[54]: https://en.wikipedia.org/wiki/Dense_order "Dense order"
[55]: https://en.wikipedia.org/wiki/Well-ordered_set "Well-ordered set"
[56]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=6 "Edit section: Lattices"
[57]: https://en.wikipedia.org/wiki/Lattice_(order) "Lattice (order)"
[58]: https://en.wikipedia.org/wiki/Algebraic_structure "Algebraic structure"
[59]: https://en.wikipedia.org/wiki/Commutative_operation "Commutative operation"
[60]: https://en.wikipedia.org/wiki/Associativity "Associativity"
[61]: https://en.wikipedia.org/wiki/Absorption_law "Absorption law"
[62]: https://en.wikipedia.org/wiki/Heyting_algebra "Heyting algebra"
[63]: https://en.wikipedia.org/wiki/Complete_lattice "Complete lattice"
[64]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=7 "Edit section: Graphs"
[65]: https://en.wikipedia.org/wiki/Graph_(discrete_mathematics) "Graph (discrete mathematics)"
[66]: https://en.wikipedia.org/wiki/Reflexive_relation#Related_terms "Reflexive relation"
[67]: https://en.wikipedia.org/wiki/Loop_(graph_theory) "Loop (graph theory)"
[68]: https://en.wikipedia.org/wiki/Rado_graph "Rado graph"
[69]: https://en.wikipedia.org/wiki/Random_graph "Random graph"
[70]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=8 "Edit section: Boolean algebras"
[71]: https://en.wikipedia.org/wiki/Boolean_algebras "Boolean algebras"
[72]: https://en.wikipedia.org/wiki/Propositional_function "Propositional function"
[73]: https://en.wikipedia.org/wiki/Set_theory "Set theory"
[74]: https://en.wikipedia.org/wiki/Algebra "Algebra"
[75]: https://en.wikipedia.org/wiki/Elementary_equivalence "Elementary equivalence"
[76]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=9 "Edit section: Groups"
[77]: https://en.wikipedia.org/wiki/Group_theory "Group theory"
[78]: https://en.wikipedia.org/wiki/Group_(mathematics) "Group (mathematics)"
[79]: https://en.wikipedia.org/wiki/Abelian_group "Abelian group"
[80]: https://en.wikipedia.org/wiki/Torsion-free_group "Torsion-free group"
[81]: https://en.wikipedia.org/wiki/Divisible_group "Divisible group"
[82]: https://en.wikipedia.org/wiki/Torsion_group "Torsion group"
[83]: https://en.wikipedia.org/wiki/Nilpotent_group "Nilpotent group"
[84]: https://en.wikipedia.org/wiki/Solvable_group "Solvable group"
[85]: https://en.wikipedia.org/wiki/List_of_first-order_theories#cite_note-2
[86]: https://en.wikipedia.org/wiki/Prime_number "Prime number"
[87]: https://en.wikipedia.org/wiki/Free_group "Free group"
[88]: https://en.wikipedia.org/wiki/Simple_group "Simple group"
[89]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=10 "Edit section: Rings and fields"
[90]: https://en.wikipedia.org/wiki/Ring_(mathematics) "Ring (mathematics)"
[91]: https://en.wikipedia.org/wiki/Commutative_ring "Commutative ring"
[92]: https://en.wikipedia.org/wiki/Field_(mathematics) "Field (mathematics)"
[93]: https://en.wikipedia.org/wiki/Class_(set_theory) "Class (set theory)"
[94]: https://en.wikipedia.org/wiki/Perfect_field "Perfect field"
[95]: https://en.wikipedia.org/wiki/Field_characteristic "Field characteristic"
[96]: https://en.wikipedia.org/wiki/Category_theory "Category theory"
[97]: https://en.wikipedia.org/wiki/Automorphism "Automorphism"
[98]: https://en.wikipedia.org/wiki/Finite_field "Finite field"
[99]: https://en.wikipedia.org/wiki/Chevalley%E2%80%93Warning_theorem "Chevalley–Warning theorem"
[100]: https://en.wikipedia.org/wiki/Prime_field "Prime field"
[101]: https://en.wikipedia.org/wiki/Formally_real_field "Formally real field"
[102]: https://en.wikipedia.org/wiki/Real_closed_field "Real closed field"
[103]: https://en.wikipedia.org/wiki/Tarski%E2%80%93Seidenberg_theorem "Tarski–Seidenberg theorem"
[104]: https://en.wikipedia.org/wiki/Decidability_of_first-order_theories_of_the_real_numbers "Decidability of first-order theories of the real numbers"
[105]: https://en.wikipedia.org/wiki/List_of_first-order_theories#CITEREFAxKochen1965
[106]: https://en.wikipedia.org/wiki/List_of_first-order_theories#cite_note-3
[107]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=11 "Edit section: Geometry"
[108]: https://en.wikipedia.org/wiki/Ordered_geometry "Ordered geometry"
[109]: https://en.wikipedia.org/wiki/Absolute_geometry "Absolute geometry"
[110]: https://en.wikipedia.org/wiki/Affine_geometry "Affine geometry"
[111]: https://en.wikipedia.org/wiki/Euclidean_geometry "Euclidean geometry"
[112]: https://en.wikipedia.org/wiki/Projective_geometry "Projective geometry"
[113]: https://en.wikipedia.org/wiki/Hyperbolic_geometry "Hyperbolic geometry"
[114]: https://en.wikipedia.org/wiki/Hilbert%27s_axioms "Hilbert's axioms"
[115]: https://en.wikipedia.org/wiki/Tarski%27s_axioms "Tarski's axioms"
[116]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=12 "Edit section: Differential algebra"
[117]: https://en.wikipedia.org/wiki/Differential_field "Differential field"
[118]: https://en.wikipedia.org/wiki/Perfect_field "Perfect field"
[119]: https://en.wikipedia.org/wiki/Quantifier_elimination "Quantifier elimination"
[120]: https://en.wikipedia.org/wiki/Differentially_closed_field "Differentially closed field"
[121]: https://en.wikipedia.org/wiki/Differential_polynomial "Differential polynomial"
[122]: https://en.wikipedia.org/wiki/Separant "Separant"
[123]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=13 "Edit section: Addition"
[124]: https://en.wikipedia.org/wiki/Well-formed_formula "Well-formed formula"
[125]: https://en.wikipedia.org/wiki/Free_variable "Free variable"
[126]: https://en.wikipedia.org/wiki/Presburger_arithmetic "Presburger arithmetic"
[127]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=14 "Edit section: Arithmetic"
[128]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorem "Gödel's incompleteness theorem"
[129]: https://en.wikipedia.org/wiki/Unary_function "Unary function"
[130]: https://en.wikipedia.org/wiki/Successor_function "Successor function"
[131]: https://en.wikipedia.org/wiki/Binary_function "Binary function"
[132]: https://en.wikipedia.org/wiki/Robinson_arithmetic "Robinson arithmetic"
[133]: https://en.wikipedia.org/wiki/Injective_function "Injective function"
[134]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorems "Gödel's incompleteness theorems"
[135]: https://en.wikipedia.org/wiki/Arithmetical_hierarchy "Arithmetical hierarchy"
[136]: https://en.wikipedia.org/wiki/Primitive_recursive_arithmetic "Primitive recursive arithmetic"
[137]: https://en.wikipedia.org/wiki/Exponential_function_arithmetic "Exponential function arithmetic"
[138]: https://en.wikipedia.org/wiki/Peano_arithmetic "Peano arithmetic"
[139]: https://en.wikipedia.org/wiki/Robinson_arithmetic "Robinson arithmetic"
[140]: https://en.wikipedia.org/wiki/Kurt_G%C3%B6del "Kurt Gödel"
[141]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorem "Gödel's incompleteness theorem"
[142]: https://en.wikipedia.org/wiki/Tarski%E2%80%93Seidenberg_theorem "Tarski–Seidenberg theorem"
[143]: https://en.wikipedia.org/wiki/Decidability_of_first-order_theories_of_the_real_numbers "Decidability of first-order theories of the real numbers"
[144]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=15 "Edit section: Second order arithmetic"
[145]: https://en.wikipedia.org/wiki/Second-order_arithmetic "Second-order arithmetic"
[146]: https://en.wikipedia.org/wiki/Robinson_arithmetic "Robinson arithmetic"
[147]: https://en.wikipedia.org/wiki/Mathematical_induction "Mathematical induction"
[148]: https://en.wikipedia.org/wiki/Axiom_schema_of_specification "Axiom schema of specification"
[149]: https://en.wikipedia.org/wiki/Second_order_arithmetic "Second order arithmetic"
[150]: https://en.wikipedia.org/wiki/Reverse_mathematics "Reverse mathematics"
[151]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=16 "Edit section: Set theories"
[152]: https://en.wikipedia.org/wiki/Powerset "Powerset"
[153]: https://en.wikipedia.org/wiki/General_set_theory "General set theory"
[154]: https://en.wikipedia.org/wiki/Kripke%E2%80%93Platek_set_theory "Kripke–Platek set theory"
[155]: https://en.wikipedia.org/wiki/Pocket_set_theory "Pocket set theory"
[156]: https://en.wikipedia.org/wiki/General_set_theory "General set theory"
[157]: https://en.wikipedia.org/wiki/Constructive_set_theory "Constructive set theory"
[158]: https://en.wikipedia.org/wiki/Mac_Lane_set_theory "Mac Lane set theory"
[159]: https://en.wikipedia.org/wiki/Elementary_topos_theory "Elementary topos theory"
[160]: https://en.wikipedia.org/wiki/Zermelo_set_theory "Zermelo set theory"
[161]: https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory "Zermelo–Fraenkel set theory"
[162]: https://en.wikipedia.org/wiki/Von_Neumann%E2%80%93Bernays%E2%80%93G%C3%B6del_set_theory "Von Neumann–Bernays–Gödel set theory"
[163]: https://en.wikipedia.org/wiki/Ackermann_set_theory "Ackermann set theory"
[164]: https://en.wikipedia.org/wiki/Scott%E2%80%93Potter_set_theory "Scott–Potter set theory"
[165]: https://en.wikipedia.org/wiki/New_Foundations "New Foundations"
[166]: https://en.wikipedia.org/wiki/Positive_set_theory "Positive set theory"
[167]: https://en.wikipedia.org/wiki/Morse%E2%80%93Kelley_set_theory "Morse–Kelley set theory"
[168]: https://en.wikipedia.org/wiki/Tarski%E2%80%93Grothendieck_set_theory "Tarski–Grothendieck set theory"
[169]: https://en.wikipedia.org/wiki/Axiom_of_choice "Axiom of choice"
[170]: https://en.wikipedia.org/wiki/Axiom_of_dependent_choice "Axiom of dependent choice"
[171]: https://en.wikipedia.org/wiki/Generalized_continuum_hypothesis "Generalized continuum hypothesis"
[172]: https://en.wikipedia.org/wiki/Martin%27s_axiom "Martin's axiom"
[173]: https://en.wikipedia.org/wiki/Martin%27s_maximum "Martin's maximum"
[174]: https://en.wikipedia.org/wiki/Diamondsuit "Diamondsuit"
[175]: https://en.wikipedia.org/wiki/Clubsuit "Clubsuit"
[176]: https://en.wikipedia.org/wiki/Axiom_of_constructibility "Axiom of constructibility"
[177]: https://en.wikipedia.org/wiki/Proper_forcing_axiom "Proper forcing axiom"
[178]: https://en.wikipedia.org/w/index.php?title=Analytic_determinacy&action=edit&redlink=1 "Analytic determinacy (page does not exist)"
[179]: https://en.wikipedia.org/wiki/Projective_determinacy "Projective determinacy"
[180]: https://en.wikipedia.org/wiki/Axiom_of_determinacy "Axiom of determinacy"
[181]: https://en.wikipedia.org/wiki/List_of_large_cardinal_properties "List of large cardinal properties"
[182]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=17 "Edit section: See also"
[183]: https://en.wikipedia.org/wiki/Glossary_of_areas_of_mathematics "Glossary of areas of mathematics"
[184]: https://en.wikipedia.org/wiki/List_of_mathematical_theories "List of mathematical theories"
[185]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=18 "Edit section: References"
[186]: https://en.wikipedia.org/wiki/List_of_first-order_theories#cite_ref-1 "Jump up"
[187]: https://books.google.com/books?id=edqwSVJ9GGQC&pg=PA265
[188]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[189]: https://en.wikipedia.org/wiki/Special:BookSources/9781846282294 "Special:BookSources/9781846282294"
[190]: https://en.wikipedia.org/wiki/List_of_first-order_theories#cite_ref-2 "Jump up"
[191]: https://en.wikipedia.org/wiki/Wanda_Szmielew "Wanda Szmielew"
[192]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[193]: https://doi.org/10.4064%2Ffm-41-2-203-271
[194]: https://en.wikipedia.org/wiki/MR_(identifier) "MR (identifier)"
[195]: https://www.ams.org/mathscinet-getitem?mr=0072131
[196]: https://en.wikipedia.org/wiki/List_of_first-order_theories#cite_ref-3 "Jump up"
[197]: https://en.wikipedia.org/wiki/James_Ax "James Ax"
[198]: https://en.wikipedia.org/wiki/Simon_B._Kochen "Simon B. Kochen"
[199]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[200]: https://doi.org/10.2307%2F2373066
[201]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[202]: https://www.jstor.org/stable/2373066
[203]: https://en.wikipedia.org/wiki/MR_(identifier) "MR (identifier)"
[204]: https://www.ams.org/mathscinet-getitem?mr=0184931
[205]: https://en.wikipedia.org/w/index.php?title=List_of_first-order_theories&action=edit&section=19 "Edit section: Further reading"
[206]: https://en.wikipedia.org/wiki/Howard_Jerome_Keisler "Howard Jerome Keisler"
[207]: https://en.wikipedia.org/wiki/Elsevier "Elsevier"
[208]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[209]: https://en.wikipedia.org/wiki/Special:BookSources/0-7204-0692-7 "Special:BookSources/0-7204-0692-7"
[210]: https://en.wikipedia.org/wiki/Wilfrid_Hodges "Wilfrid Hodges"
[211]: https://en.wikipedia.org/wiki/Cambridge_University_Press "Cambridge University Press"
[212]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[213]: https://en.wikipedia.org/wiki/Special:BookSources/0-521-58713-1 "Special:BookSources/0-521-58713-1"
[214]: https://en.wikipedia.org/wiki/Graduate_Texts_in_Mathematics "Graduate Texts in Mathematics"
[215]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[216]: https://en.wikipedia.org/wiki/Special:BookSources/0-387-98760-6 "Special:BookSources/0-387-98760-6"
