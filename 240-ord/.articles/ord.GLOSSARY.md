# Glossary of order theory

https://en.wikipedia.org/wiki/Glossary_of_order_theory

This is a glossary of some terms used in various branches of mathematics that are related to the fields of order theory, lattice theory, and domain theory.

There is a structured list of order topics available as well:
https://en.wikipedia.org/wiki/List_of_order_theory_topics

Other helpful resources might be the following overview articles:
- completeness properties of partial orders
- distributivity laws of order theory
- preservation properties of functions between posets


In the following, partial orders are denoted by their carrier sets. By default, `≤` will denote the corresponding relational symbol; `<` denotes the strict order induced by `≤`.


## A

## Acyclic relation
A binary relation is acyclic if it contains no "cycles"; or, equivalently, its transitive closure is antisymmetric.


-   __Adjoint__. See *Galois connection*.
-   __[Alexandrov topology][15]__. For a preordered set *P*, any upper set *O* is __Alexandrov-open__. Inversely, a topology is Alexandrov if any intersection of open sets is open.
-   __[Algebraic poset][16]__. A poset is algebraic if it has a base of compact elements.
-   __[Antichain][17]__. An antichain is a poset in which no two elements are comparable, i.e., there are no two distinct elements *x* and *y* such that *x* ≤ *y*. In other words, the order relation of an antichain is just the identity relation.
-   __Approximates relation__. See *way-below relation*.
-   __Antisymmetric relation__. A [homogeneous relation][18] *R* on a set *X* is __[antisymmetric][19]__, if *x R y* and *y R x* implies *x = y*, for all elements *x*, *y* in *X*.
-   __Antitone__. An [antitone][20] function *f* between posets *P* and *Q* is a function for which, for all elements *x*, *y* of *P*, *x* ≤ *y* (in *P*) implies *f*(*y*) ≤ *f*(*x*) (in *Q*). Another name for this property is *order-reversing*. In [analysis][21], in the presence of [total orders][22], such functions are often called __monotonically decreasing__, but this is not a very convenient description when dealing with non-total orders. The dual notion is called *monotone* or *order-preserving*.
-   __[Asymmetric relation][23]__. A [homogeneous relation][24] *R* on a set *X* is asymmetric, if *x R y* implies *not y R x*, for all elements *x*, *y* in *X*.
-   __Atom__. An atom in a poset *P* with least element 0, is an element that is minimal among all elements that are unequal to 0.
-   __Atomic__. An atomic poset *P* with least element 0 is one in which, for every non-zero element *x* of *P*, there is an atom *a* of *P* with *a* ≤ *x*.

## B

## C

-   __[Chain][27]__. A chain is a totally ordered set or a totally ordered subset of a poset. See also *total order*.
-   __[Chain complete][28]__. A [partially ordered set][29] in which every [chain][30] has a [least upper bound][31].
-   __[Closure operator][32]__. A closure operator on the poset *P* is a function *C* : *P* → *P* that is monotone, [idempotent][33], and satisfies *C*(*x*) ≥ *x* for all *x* in *P*.
-   __[Compact][34]__. An element *x* of a poset is compact if it is *[way below][35]* itself, i.e. *x*<<*x*. One also says that such an *x* is *finite*.
-   __[Comparable][36]__. Two elements *x* and *y* of a poset *P* are comparable if either *x* ≤ *y* or *y* ≤ *x*.
-   __[Comparability graph][37]__. The comparability graph of a poset (*P*, ≤) is the [graph][38] with vertex set *P* in which the edges are those pairs of distinct elements of *P* that are comparable under ≤ (and, in particular, under its reflexive reduction <).
-   __[Complete Boolean algebra][39]__. A [Boolean algebra][40] that is a complete lattice.
-   __[Complete Heyting algebra][41]__. A [Heyting algebra][42] that is a complete lattice is called a complete Heyting algebra. This notion coincides with the concepts *frame* and *locale*.
-   __[Complete lattice][43]__. A complete [lattice][44] is a poset in which arbitrary (possibly infinite) joins (suprema) and meets (infima) exist.
-   __[Complete partial order][45]__. A complete partial order, or __cpo__, is a [directed complete partial order][46] (q.v.) with least element.
-   __Complete relation__. Synonym for *[Connected relation][47]*.
-   __Complete semilattice__. The notion of a *complete semilattice* is defined in different ways. As explained in the article on [completeness (order theory)][48], any poset for which either all suprema or all infima exist is already a complete lattice. Hence the notion of a complete semilattice is sometimes used to coincide with the one of a complete lattice. In other cases, complete (meet-) semilattices are defined to be [bounded complete][49] [cpos][50], which is arguably the most complete class of posets that are not already complete lattices.
-   __[Completely distributive lattice][51]__. A complete lattice is completely distributive if arbitrary joins distribute over arbitrary meets.
-   __Completion__. A completion of a poset is an [order-embedding][52] of the poset in a complete lattice.
-   __[Completion by cuts][53]__. Synonym of [Dedekind-MacNeille completion][54].
-   __[Connected relation][55]__. A total or complete relation *R* on a set *X* has the property that for all elements *x*, *y* of *X*, at least one of *x R y* or *y R x* holds.
-   __[Continuous poset][56]__. A poset is continuous if it has a __base__, i.e. a subset *B* of *P* such that every element *x* of *P* is the supremum of a directed set contained in {*y* in *B* | *y*<<*x*}.
-   __Continuous function__. See *Scott-continuous*.
-   __Converse__. The converse <° of an order < is that in which x <° y whenever y < x.
-   __Cover__. An element *y* of a poset *P* is said to cover an element *x* of *P* (and is called a cover of *x*) if *x* < *y* and there is no element *z* of *P* such that *x* < *z* < *y*.
-   __[cpo][57]__. See *complete partial order*.

## D

-   __dcpo__. See *[directed complete partial order][59]*.
-   __[Dedekind-MacNeille completion][60]__. The Dedekind-MacNeille completion of a [partially ordered set][61] is the smallest [complete lattice][62] that contains it.
-   __[Dense order][63]__. A __[dense][64]__ poset *P* is one in which, for all elements *x* and *y* in *P* with *x* < *y*, there is an element *z* in *P*, such that *x* < *z* < *y*. A subset *Q* of *P* is __dense in__ *P* if for any elements *x* < *y* in *P*, there is an element *z* in *Q* such that *x* < *z* < *y*.
-   __[Directed set][65]__. A [non-empty][66] subset *X* of a poset *P* is called directed, if, for all elements *x* and *y* of *X*, there is an element *z* of *X* such that *x* ≤ *z* and *y* ≤ *z*. The dual notion is called *filtered*.
-   __[Directed complete partial order][67]__. A poset *D* is said to be a directed complete poset, or __dcpo__, if every directed subset of *D* has a supremum.
-   __[Distributive][68]__. A lattice *L* is called distributive if, for all *x*, *y*, and *z* in *L*, we find that *x* ∧ (*y* ∨ *z*) = (*x* ∧ *y*) ∨ (*x* ∧ *z*). This condition is known to be equivalent to its order dual. A meet-[semilattice][69] is distributive if for all elements *a*, *b* and *x*, *a* ∧ *b* ≤ *x* implies the existence of elements *a'* ≥ *a* and *b'* ≥ *b* such that *a'* ∧ *b'* \= *x*. See also *completely distributive*.
-   __[Domain][70]__. Domain is a general term for objects like those that are studied in [domain theory][71]. If used, it requires further definition.
-   __Down-set__. See *lower set*.
-   __[Dual][72]__. For a poset (*P*, ≤), the dual order *P**d* = (*P*, ≥) is defined by setting *x ≥ y* [if and only if][73] *y ≤ x*. The dual order of *P* is sometimes denoted by *P*op, and is also called *opposite* or *converse* order. Any order theoretic notion induces a dual notion, defined by applying the original statement to the order dual of a given set. This exchanges ≤ and ≥, meets and joins, zero and unit.

## E

__Extension__. For partial orders ≤ and ≤′ on a set *X*, ≤′ is an extension of ≤ provided that for all elements *x* and *y* of *X*, *x* ≤ *y* implies that *x* ≤′ *y*.

## G

-   __[Galois connection][77]__. Given two posets *P* and *Q*, a pair of monotone functions *F*:*P* → *Q* and *G*:*Q* → *P* is called a Galois connection, if *F*(*x*) ≤ *y* is equivalent to *x* ≤ *G*(*y*), for all *x* in *P* and *y* in *Q*. *F* is called the __lower adjoint__ of *G* and *G* is called the __upper adjoint__ of *F*.
-   __[Greatest element][78]__. For a subset *X* of a poset *P*, an element *a* of *X* is called the greatest element of *X*, if *x* ≤ *a* for every element *x* in *X*. The dual notion is called *least element*.
-   __Ground set__. The ground set of a poset (*X*, ≤) is the set *X* on which the partial order ≤ is defined.


## I

-   __[Ideal][81]__. An __[ideal][82]__ is a subset *X* of a poset *P* that is a directed lower set. The dual notion is called *filter*.
-   __[Incidence algebra][83]__. The __[incidence algebra][84]__ of a poset is the [associative algebra][85] of all scalar-valued functions on intervals, with addition and scalar multiplication defined pointwise, and multiplication defined as a certain convolution; see [incidence algebra][86] for the details.
-   __[Infimum][87]__. For a poset *P* and a subset *X* of *P*, the greatest element in the set of lower bounds of *X* (if it exists, which it may not) is called the __infimum__, __meet__, or __greatest lower bound__ of *X*. It is denoted by inf *X* or ![\bigwedge ](https://wikimedia.org/api/rest_v1/media/math/render/svg/b20eaee46377072a177e3577ea439d142574f6aa)*X*. The infimum of two elements may be written as inf{*x*,*y*} or *x* ∧ *y*. If the set *X* is finite, one speaks of a __finite infimum__. The dual notion is called *supremum*.
-   __[Interval][88]__. For two elements *a*, *b* of a partially ordered set *P*, the *interval* \[*a*,*b*\] is the subset {*x* in *P* | *a* ≤ *x* ≤ *b*} of *P*. If *a* ≤ *b* does not hold the interval will be empty.
-   __Interval finite poset__. A partially ordered set *P* is __interval finite__ if every interval of the form {x in P | x ≤ a} is a finite set.[\[2\]][89]
-   __Inverse__. See *converse*.
-   __[Irreflexive][90]__. A [relation][91] *R* on a set *X* is irreflexive, if there is no element *x* in *X* such that *x R x*.
-   __Isotone__. See *monotone*.

## J

-   __Join__. See *supremum*.

## L

-   __[Lattice][94]__. A lattice is a poset in which all non-empty finite joins (suprema) and meets (infima) exist.
-   __[Least element][95]__. For a subset *X* of a poset *P*, an element *a* of *X* is called the least element of *X*, if *a* ≤ *x* for every element *x* in *X*. The dual notion is called *greatest element*.
-   The __length__ of a chain is the number of elements less one. A chain with 1 element has length 0, one with 2 elements has length 1, etc.
-   __Linear__. See *total order*.
-   __[Linear extension][96]__. A linear extension of a partial order is an extension that is a linear order, or total order.
-   __[Locale][97]__. A locale is a *complete Heyting algebra*. Locales are also called *frames* and appear in [Stone duality][98] and [pointless topology][99].
-   __[Locally finite poset][100]__. A partially ordered set *P* is *locally finite* if every interval \[*a*, *b*\] = {*x* in *P* | *a* ≤ *x* ≤ *b*} is a finite set.
-   __[Lower bound][101]__. A lower bound of a subset *X* of a poset *P* is an element *b* of *P*, such that *b* ≤ *x*, for all *x* in *X*. The dual notion is called *upper bound*.
-   __[Lower set][102]__. A subset *X* of a poset *P* is called a lower set if, for all elements *x* in *X* and *p* in *P*, *p* ≤ *x* implies that *p* is contained in *X*. The dual notion is called *upper set*.

## M

-   __Maximal chain__. A [chain][104] in a poset to which no element can be added without losing the property of being totally ordered. This is stronger than being a saturated chain, as it also excludes the existence of elements either less than all elements of the chain or greater than all its elements. A finite saturated chain is maximal if and only if it contains both a minimal and a maximal element of the poset.
-   __[Maximal element][105]__. A maximal element of a subset *X* of a poset *P* is an element *m* of *X*, such that *m* ≤ *x* implies *m* = *x*, for all *x* in *X*. The dual notion is called *minimal element*.
-   __[Maximum element][106]__. Synonym of greatest element. For a subset *X* of a poset *P*, an element *a* of *X* is called the maximum element of *X* if *x* ≤ *a* for every element *x* in *X*. A maxim*um* element is necessarily maxim*al*, but the converse need not hold.
-   __Meet__. See *infimum*.
-   __[Minimal element][107]__. A minimal element of a subset *X* of a poset *P* is an element *m* of *X*, such that *x* ≤ *m* implies *m* = *x*, for all *x* in *X*. The dual notion is called *maximal element*.
-   __[Minimum element][108]__. Synonym of least element. For a subset *X* of a poset *P*, an element *a* of *X* is called the minimum element of *X* if *x* ≥ *a* for every element *x* in *X*. A minim*um* element is necessarily minim*al*, but the converse need not hold.
-   __[Monotone][109]__. A function *f* between posets *P* and *Q* is monotone if, for all elements *x*, *y* of *P*, *x* ≤ *y* (in *P*) implies *f*(*x*) ≤ *f*(*y*) (in *Q*). Other names for this property are *isotone* and *order-preserving*. In [analysis][110], in the presence of [total orders][111], such functions are often called __monotonically increasing__, but this is not a very convenient description when dealing with non-total orders. The dual notion is called *antitone* or *order reversing*.

## O

-   __Order-dual__. The order dual of a partially ordered set is the same set with the partial order relation replaced by its converse.
-   __[Order-embedding][113]__. A function *f* between posets *P* and *Q* is an order-embedding if, for all elements *x*, *y* of *P*, *x* ≤ *y* (in *P*) is equivalent to *f*(*x*) ≤ *f*(*y*) (in *Q*).
-   __[Order isomorphism][114]__. A mapping *f*: *P* → *Q* between two posets *P* and *Q* is called an order isomorphism, if it is [bijective][115] and both *f* and *f*−1 are [monotone functions][116]. Equivalently, an order isomorphism is a surjective *order embedding*.
-   __[Order-preserving][117]__. See *monotone*.
-   __[Order-reversing][118]__. See *antitone*.

## P

-   __[Partial order][120]__. A partial order is a [binary relation][121] that is [reflexive][122], [antisymmetric][123], and [transitive][124]. In a slight abuse of terminology, the term is sometimes also used to refer not to such a relation, but to its corresponding partially ordered set.
-   __[Partially ordered set][125]__. A partially ordered set ![{\displaystyle (P,\leq ),}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0d4d603142d81c64ed0ad415c0fffed92039413e) or *poset* for short, is a set ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) together with a partial order ![{\displaystyle \,\leq \,}](https://wikimedia.org/api/rest_v1/media/math/render/svg/24112548985eab096493f73f838580442780b57f) on ![P.](https://wikimedia.org/api/rest_v1/media/math/render/svg/49f4f085fcd14302f4f7a9bbdf77e816cccb3bc9)
-   __Poset__. A partially ordered set.
-   __[Preorder][126]__. A preorder is a [binary relation][127] that is [reflexive][128] and [transitive][129]. Such orders may also be called *quasiorders* or *non-strict preorder*. The term *preorder* is also used to denote an [acyclic][130] [binary relation][131] (also called an *acyclic digraph*).
-   __[Preordered set][132]__. A preordered set ![{\displaystyle (P,\leq )}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ca8fe8855b84572c55012b0544255beb8d64b16a) is a set ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) together with a preorder ![{\displaystyle \,\leq \,}](https://wikimedia.org/api/rest_v1/media/math/render/svg/24112548985eab096493f73f838580442780b57f) on ![P.](https://wikimedia.org/api/rest_v1/media/math/render/svg/49f4f085fcd14302f4f7a9bbdf77e816cccb3bc9)
-   __[Preserving][133]__. A function *f* between posets *P* and *Q* is said to preserve suprema (joins), if, for all subsets *X* of *P* that have a supremum sup *X* in *P*, we find that sup{*f*(*x*): *x* in *X*} exists and is equal to *f*(sup *X*). Such a function is also called __join-preserving__. Analogously, one says that *f* preserves finite, non-empty, directed, or arbitrary joins (or meets). The converse property is called *join-reflecting*.
-   __[Prime][134]__. An *ideal* *I* in a lattice *L* is said to be prime, if, for all elements *x* and *y* in *L*, *x* ∧ *y* in *I* implies *x* in *I* or *y* in *I*. The dual notion is called a *prime filter*. Equivalently, a set is a prime filter [if and only if][135] its complement is a prime ideal.
-   __[Principal][136]__. A filter is called *principal filter* if it has a least element. Dually, a *principal ideal* is an ideal with a greatest element. The least or greatest elements may also be called *principal elements* in these situations.
-   __Projection (operator)__. A self-map on a [partially ordered set][137] that is [monotone][138] and [idempotent][139] under [function composition][140]. Projections play an important role in [domain theory][141].
-   __Pseudo-complement__. In a [Heyting algebra][142], the element *x* ⇒; *0* is called the pseudo-complement of *x*. It is also given by sup{*y* : *y* ∧ *x* = 0}, i.e. as the least upper bound of all elements *y* with *y* ∧ *x* = 0.

## Q

-   __Quasiorder__. See *preorder*.
-   __[Quasitransitive][144]__. A relation is quasitransitive if the relation on distinct elements is transitive. Transitive implies quasitransitive and quasitransitive implies acyclic.[\[1\]][145]

## R

-   __[Reflecting][147]__. A function *f* between posets *P* and *Q* is said to reflect suprema (joins), if, for all subsets *X* of *P* for which the supremum sup{*f*(*x*): *x* in *X*} exists and is of the form *f*(*s*) for some *s* in *P*, then we find that sup *X* exists and that sup *X* = *s* . Analogously, one says that *f* reflects finite, non-empty, directed, or arbitrary joins (or meets). The converse property is called *join-preserving*.
-   __[Reflexive][148]__. A [binary relation][149] *R* on a set *X* is reflexive, if *x R x* holds for every element *x* in *X*.
-   __Residual__. A dual map attached to a [residuated mapping][150].
-   __[Residuated mapping][151]__. A monotone map for which the preimage of a principal down-set is again principal. Equivalently, one component of a Galois connection.

## S

-   __Saturated chain__. A [chain][153] such that no element can be added *between two of its elements* without losing the property of being totally ordered. If the chain is finite, this means that in every pair of successive elements the larger one covers the smaller one. See also maximal chain.
-   __[Scattered][154]__. A total order is scattered if it has no densely ordered subset.
-   __[Scott-continuous][155]__. A monotone function *f* : *P* → *Q* between posets *P* and *Q* is Scott-continuous if, for every directed set *D* that has a supremum sup *D* in *P*, the set {*fx* | *x* in *D*} has the supremum *f*(sup *D*) in *Q*. Stated differently, a Scott-continuous function is one that [preserves][156] all directed suprema. This is in fact equivalent to being [continuous][157] with respect to the [Scott topology][158] on the respective posets.
-   __[Scott domain][159]__. A Scott domain is a partially ordered set which is a [bounded complete][160] [algebraic][161] [cpo][162].
-   __Scott open__. See *Scott topology*.
-   __Scott topology__. For a poset *P*, a subset *O* is __Scott-open__ if it is an [upper set][163] and all directed sets *D* that have a supremum in *O* have non-empty intersection with *O*. The set of all Scott-open sets forms a [topology][164], the __Scott topology__.
-   __[Semilattice][165]__. A semilattice is a poset in which either all finite non-empty joins (suprema) or all finite non-empty meets (infima) exist. Accordingly, one speaks of a __join-semilattice__ or __meet-semilattice__.
-   __Smallest element__. See *least element*.
-   [Sperner property of a partially ordered set][166]
-   [Sperner poset][167]
-   [Strictly Sperner poset][168]
-   [Strongly Sperner poset][169]
-   __[Strict order][170]__. See *strict partial order*.
-   __[Strict partial order][171]__. A strict partial order is a [homogeneous binary relation][172] that is [transitive][173], [irreflexive][174], and [antisymmetric][175].
-   __[Strict preorder][176]__. See *strict partial order*.
-   __[Supremum][177]__. For a poset *P* and a subset *X* of *P*, the [least element][178] in the set of [upper bounds][179] of *X* (if it exists, which it may not) is called the __supremum__, __join__, or __least upper bound__ of *X*. It is denoted by sup *X* or ![\bigvee ](https://wikimedia.org/api/rest_v1/media/math/render/svg/424eb787b9be7b652deb858148ac5412c317aebf)*X*. The supremum of two elements may be written as sup{*x*,*y*} or *x* ∨ *y*. If the set *X* is finite, one speaks of a __finite supremum__. The dual notion is called *infimum*.
-   __Suzumura consistency__. A binary relation R is Suzumura consistent if *x* R∗ *y* implies that *x* R *y* or not *y* R *x*.[\[1\]][180]
-   __[Symmetric relation][181]__. A [homogeneous relation][182] *R* on a set *X* is symmetric, if *x R y* implies *y R x*, for all elements *x*, *y* in *X*.

## T

-   __Top__. See *unit*.
-   __[Total order][184]__. A total order *T* is a partial order in which, for each *x* and *y* in *T*, we have *x* ≤ *y* or *y* ≤ *x*. Total orders are also called *linear orders* or *chains*.
-   __[Total relation][185]__. Synonym for *[Connected relation][186]*.
-   __[Transitive relation][187]__. A [relation][188] *R* on a set *X* is transitive, if *x R y* and *y R z* imply *x R z*, for all elements *x*, *y*, *z* in *X*.
-   __[Transitive closure][189]__. The transitive closure R∗ of a relation R consists of all pairs *x*,*y* for which there cists a finite chain *x* R *a*, *a* R *b*, ..., *z* R *y*.[\[1\]][190]

## U

-   __Unit__. The [greatest element][192] of a poset *P* can be called *unit* or just *1* (if it exists). Another common term for this element is __top__. It is the infimum of the empty set and the supremum of *P*. The dual notion is called *zero*.
-   __Up-set__. See *upper set*.
-   __[Upper bound][193]__. An upper bound of a subset *X* of a poset *P* is an element *b* of *P*, such that *x* ≤ *b*, for all *x* in *X*. The dual notion is called *lower bound*.
-   __[Upper set][194]__. A subset *X* of a poset *P* is called an upper set if, for all elements *x* in *X* and *p* in *P*, *x* ≤ *p* implies that *p* is contained in *X*. The dual notion is called *lower set*.

## W

-   __[Way-below relation][197]__. In a poset *P*, some element *x* is *way below* *y*, written *x*<<*y*, if for all directed subsets *D* of *P* which have a supremum, *y* ≤ *sup D* implies *x* ≤ *d* for some *d* in *D*. One also says that *x* __approximates__ *y*. See also [domain theory][198].
-   __[Weak order][199]__. A partial order ≤ on a set *X* is a weak order provided that the poset (X, ≤) is [isomorphic][200] to a countable collection of sets ordered by comparison of [cardinality][201].

## Z

-   __Zero__. The [least element][203] of a poset *P* can be called *zero* or just *0* (if it exists). Another common term for this element is __bottom__. Zero is the supremum of the empty set and the infimum of *P*. The dual notion is called *unit*.




## References

The definitions given here are consistent with those that can be found in the following standard reference books:

- B. A. Davey and H. A. Priestley, `Introduction to Lattices and Order`, 2nd Edition, 2002, Cambridge University Press
- G. Gierz, K. H. Hofmann, K. Keimel, J. D. Lawson, M. Mislove and D. S. Scott, `Continuous Lattices and Domains`, 2003, In Encyclopedia of Mathematics and its Applications, Vol. 93, Cambridge University Press
- Bangming Deng, 2008, `Finite dimensional algebras and quantum groups`, Mathematical surveys and monographs, 150, American Mathematical Society
