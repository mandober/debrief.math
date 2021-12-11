# Equivalent definitions of mathematical structures

https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures

In math, *equivalent definitions* are used in two, somewhat different, ways.

1. Within a particular mathematical theory (e.g. Euclidean geometry), a notion (e.g. ellipse) may have more than one definition; these definitions are equivalent in the context of that particular theory and in the context of some mathematical structure (in this case, in the context of Euclidean space).

2. A mathematical structure may have more than one definition (e.g. topological space has at least 7 definitions).

In the case (1), equivalence of two definitions means that a mathematical object (e.g. geometric body) satisfies one definition iff it satisfies the other definition.

In the case (2), the meaning of equivalence (between two definitions of a structure) is more complicated, since a structure is more abstract than an object. Many different objects may implement the same structure.

## Isomorphic implementations

Natural numbers may be implemented in terms of sets in two different but isomorphic ways:

```js
// (1)
0             =  ∅
1 = {0}       = {∅}
2 = {0, 1}    = {∅, {∅}}
3 = {0, 1, 2} = {∅, {∅}, {∅, {∅}}}
…

// (2)
0 =          ∅
1 = {0} =   {∅}
2 = {1} =  {{∅}}
3 = {2} = {{{∅}}}
…
```

These two are isomorphic models of Peano axioms, i.e. of triples `(N,0,S)`, provided they satisfy appropriate conditions. In the first implementation `S(n) = n ⋃ {n}`, in the second `S(n) = {n}`.

As emphasized in *Benacerraf's identification problem*, the two implementations differ in their answer to the question whether `0 ∈ 2`; however, this is not a legitimate question about natural numbers (since the relation `∈` is not stipulated by the relevant signatures). Similarly, different but isomorphic implementations are used for complex numbers.



## Deduced structures and cryptomorphisms\[[edit][19]\]

The successor function S on natural numbers leads to [arithmetic operations][20], addition and multiplication, and the total order, thus endowing *N* with an [ordered semiring][21] structure. This is an example of a deduced structure. The ordered semiring structure (*N*, +, ·, ≤) is deduced from the Peano structure (*N*, 0, *S*) by the following procedure: *n* + 0 = *n*,   *m* + S (*n*) = S (*m* + *n*),   *m* · 0 = 0,   *m* · S (*n*) = *m* + (*m* · *n*), and *m* ≤ *n* if and only if there exists *k* ∈ *N* such that *m* + *k* = *n*. And conversely, the Peano structure is deduced from the ordered semiring structure as follows: *S* (*n*) = *n* + 1, and 0 is defined by 0 + 0 = 0. It means that the two structures on *N* are equivalent by means of the two procedures.

The two isomorphic implementations of natural numbers, mentioned in the previous section, are isomorphic as triples (*N*,0,*S*), that is, structures of the same [signature][22] (0,*S*) consisting of a constant symbol 0 and a unary function *S*. An ordered semiring structure (*N*, +, ·, ≤) has another signature (+, ·, ≤) consisting of two binary functions and one binary relation. The notion of isomorphism does not apply to structures of different signatures. In particular, a Peano structure cannot be isomorphic to an ordered semiring. However, an ordered semiring deduced from a Peano structure may be isomorphic to another ordered semiring. Such relation between structures of different signatures is sometimes called a [cryptomorphism][23].

## Ambient frameworks\[[edit][24]\]

A structure may be implemented within a set theory [ZFC][25], or another set theory such as [NBG][26], [NFU][27], [ETCS][28].[\[1\]][29] Alternatively, a structure may be treated in the framework of [first-order logic][30], [second-order logic][31], [higher-order logic][32], a [type theory][33], [homotopy type theory][34] etc.[\[details 2\]][35]

## Structures according to Bourbaki\[[edit][36]\]

"Mathematics \[...\] cannot be explained completely by a single concept such as the mathematical structure. Nevertheless, Bourbaki's structuralist approach is the best that we have." ([Pudlák 2013][37], page 3)

"Evident as the notion of mathematical structure may seem these days, it was at least not made explicit until the middle of the 20th century. Then it was the influence of the Bourbaki-project and then later the development of category theory which made the notion explicit" ([nLab][38]).

According to [Bourbaki][39], the scale of sets on a given set *X* consists of all sets arising from *X* by taking [Cartesian products][40] and [power sets][41], in any combination, a finite number of times. Examples: *X*; *X* × *X*; *P*(*X*); *P*(*P*(*X* × *X*) × *X* × *P*(*P*(*X*))) × *X*. (Here *A* × *B* is the product of *A* and *B*, and *P*(*A*) is the powerset of *A*.) In particular, a pair (0,*S*) consisting of an element 0 ∈ *N* and a unary function *S* : *N* → *N* belongs to *N* × *P*(*N* × *N*) (since [a function is a subset of the Cartesian product][42]). A triple (+, ·, ≤) consisting of two binary functions *N* × *N* → *N* and one binary relation on *N* belongs to *P*(*N* × *N* × *N*) × *P*(*N* × *N* × *N*) × *P*(*N* × *N*). Similarly, every algebraic structure on a set belongs to the corresponding set in the scale of sets on *X*.

Non-algebraic structures on a set *X* often involve sets of subsets of *X* (that is, subsets of *P*(*X*), in other words, elements of *P*(*P*(*X*))). e.g. the structure of a [topological space][43], called a topology on *X*, treated as [the set of "open" sets][44]; or the structure of a measurable space, treated as the [σ-algebra][45] of "measurable" sets; both are elements of *P*(*P*(*X*)). These are second-order structures.[\[2\]][46]

More complicated non-algebraic structures combine an algebraic component and a non-algebraic component. e.g. the structure of a [topological group][47] consists of a topology and the structure of a group. Thus it belongs to the product of *P*(*P*(*X*)) and another ("algebraic") set in the scale; this product is again a set in the scale.

### Transport of structures; isomorphism\[[edit][48]\]

Given two sets *X*, *Y* and a [bijection][49] *f* : *X* → *Y*, one constructs the corresponding bijections between scale sets. Namely, the bijection *X* × *X* → *Y* × *Y* sends (*x*1,*x*2) to (*f*(*x*1),*f*(*x*2)); the bijection *P*(*X*) → *P*(*Y*) sends a subset *A* of *X* into its [image][50] *f*(*A*) in *Y*; and so on, recursively: a scale set being either product of scale sets or power set of a scale set, one of the two constructions applies.

Let (*X*,*U*) and (*Y*,*V*) be two structures of the same signature. Then *U* belongs to a scale set *S**X*, and *V* belongs to the corresponding scale set *S**Y*. Using the bijection *F* : *S**X* → *S**Y* constructed from a bijection *f* : *X* → *Y*, one defines:

*f* is an *isomorphism* between (*X*,*U*) and (*Y*,*V*) if *F*(*U*) = *V*.

This general notion of isomorphism generalizes many less general notions listed below.

-   For algebraic structures: [isomorphism is a bijective homomorphism][51].
-   In particular, for [vector spaces][52]: [linear bijection][53].
-   For [partially ordered sets][54]: [order isomorphism][55].
-   For [graphs][56]: [graph isomorphism][57].
-   More generally, for sets endowed with a binary relation: [relation-preserving isomorphism][58].
-   For topological spaces: [homeomorphism or topological isomorphism or bi continuous function][59].
-   For [uniform spaces][60]: [uniform isomorphism][61].
-   For [metric spaces][62]: [bijective isometry][63].
-   For topological groups: [group isomorphism which is also a homeomorphism of the underlying topological spaces][64].
-   For [topological vector spaces][65]: isomorphism of vector spaces which is also a homeomorphism of the underlying topological spaces.
-   For [Banach spaces][66]: [bijective linear isometry][67].
-   For [Hilbert spaces][68]: [unitary transformation][69].
-   For [Lie groups][70]: [a bijective smooth group homomorphism whose inverse is also a smooth group homomorphism][71].
-   For [smooth manifolds][72]: [diffeomorphism][73].
-   For [symplectic manifolds][74]: [symplectomorphism][75].
-   For [Riemannian manifolds][76]: [isometric diffeomorphism][77].
-   For [conformal spaces][78]: [conformal diffeomorphism][79].
-   For [probability spaces][80]: [a bijective measurable and measure preserving map whose inverse is also measurable and measure preserving][81].
-   For [affine spaces][82]: bijective [affine transformation][83].
-   For [projective spaces][84]: [homography][85].

In fact, Bourbaki stipulates two additional features. First, several sets *X*1, ..., *X**n* (so-called principal base sets) may be used, rather than a single set *X*. However, this feature is of little use. All the items listed above use a single principal base set. Second, so-called auxiliary base sets *E*1, ..., *E**m* may be used. This feature is widely used. Indeed, the structure of a vector space stipulates not only addition *X* × *X* → *X* but also scalar multiplication __R__ × *X* → *X* (if __R__ is the field of scalars). Thus, __R__ is an auxiliary base set (called also "external"[\[3\]][86]). The scale of sets consists of all sets arising from all base sets (both principal and auxiliary) by taking Cartesian products and power sets. Still, the map *f* (possibly an isomorphism) acts on *X* only; auxiliary sets are endowed by identity maps. (However, the case of *n* principal sets leads to *n* maps.)

### Functoriality\[[edit][87]\]

Several statements formulated by Bourbaki without mentioning categories can be reformulated readily in the language of [category theory][88]. First, some terminology.

-   The scale of sets is indexed by "echelon construction schemes",[\[4\]][89] called also "types".[\[5\]][90][\[6\]][91] One may think of, say, the set *P*(*P*(*X* × *X*) × *X* × *P*(*P*(*X*))) × *X* as a set *X* substituted into the formula "*P*(*P*(*a* × *a*) × *a* × *P*(*P*(*a*))) × *a*" for the variable *a*; this formula is the corresponding echelon construction scheme.[\[details 3\]][92] (This notion, defined for all structures, may be thought of as a generalization of the signature defined only for algebraic structures.)[\[details 4\]][93]
-   Let __Set\*__ denote the [groupoid][94] of sets and bijections. That is, the category whose objects are (all) sets, and morphisms are (all) bijections.

*Proposition.* [\[7\]][95] Each echelon construction scheme leads to a functor from __Set\*__ to itself.

In particular, the [permutation group][96] of a set *X* [acts][97] on every scale set *S**X*.

In order to formulate one more proposition, the notion "species of structures" is needed, since echelon construction scheme gives only preliminary information on a structure. e.g. commutative groups and (arbitrary) groups are two different species of the same echelon construction scheme. Another example: topological spaces and measurable spaces. They differ in the so-called axiom of the species. This axiom is the conjunction of all required properties, such as "multiplication is associative" for groups, or "the union of open sets is an open set" for topological spaces.

-   A species of structures consists of an echelon construction scheme and an axiom of the species.

*Proposition.* [\[8\]][98] Each species of structures leads to a functor from __Set\*__ to itself.

Example. For the species of groups, the functor *F* maps a set *X* to the set *F*(*X*) of all group structures on *X*. For the species of topological spaces, the functor *F* maps a set *X* to the set *F*(*X*) of all topologies on *X*. The morphism *F*(*f*) : *F*(*X*) → *F*(*Y*) corresponding to a bijection *f* : *X* → *Y* is the transport of structures. Topologies on *Y* correspond bijectively to topologies on *X*. The same holds for group structures, etc.

In particular, the set of all structures of a given species on a given set is invariant under the action of the permutation group on the corresponding scale set *S**X*, and is a [fixed point][99] of the action of the group on another scale set *P*(*S**X*). However, not all fixed points of this action correspond to species of structures.[\[details 5\]][100]

Given two species, Bourbaki defines the notion "procedure of deduction" (of a structure of the second species from a structure of the first species).[\[9\]][101] A pair of mutually inverse procedures of deduction leads to the notion "equivalent species".[\[10\]][102]

Example. The structure of a topological space may be defined as an [open set topology][103] or alternatively, a [closed set topology][104]. The two corresponding procedures of deduction coincide; each one replaces all given subsets of *X* with their [complements][105]. In this sense, these are two equivalent species.

In the general definition of Bourbaki, deduction procedure may include a change of the principal base set(s), but this case is not treated here. In the language of category theory one have the following result.

*Proposition.* [\[10\]][106] Equivalence between two species of structures leads to a [natural isomorphism][107] between the corresponding functors.

However, in general, not all natural isomorphisms between these functors correspond to [equivalences][108] between the species.[\[details 6\]][109]

## Mathematical practice\[[edit][110]\]

"We often do not distinguish structures that are isomorphic and often say that '*two structures are the same, up to isomorphism*'."[\[11\]][111]

"When studying structures we are interested only in their form, but when we prove their existence we need to construct them."[\[12\]][112]

'Mathematicians are of course used to identifying isomorphic structures in practice, but they generally do so by "abuse of notation", or some other informal device, knowing that the objects involved are not "really" identical.'[\[13\]][113] (A radically better approach is expected; but for now, Summer 2014, the definitive book quoted above does not elaborate on structures.)

In practice, one makes no distinction between equivalent species of structures.[\[10\]][114]

Usually, a text based on natural numbers (e.g. the article "[prime number][115]") does not specify the used definition of natural numbers. Likewise, a text based on topological spaces (e.g. the article "[homotopy][116]", or "[inductive dimension][117]") does not specify the used definition of a topological space. Thus, it is possible (and rather probable) that the reader and the author interpret the text differently, according to different definitions. Nevertheless, the communication is successful, which means that such different definitions may be thought of as equivalent.

A person acquainted with topological spaces knows basic relations between neighborhoods, convergence, continuity, boundary, closure, interior, open sets, closed sets, and does not need to know that some of these notions are "primary", stipulated in the definition of a topological space, while others are "secondary", characterized in terms of "primary" notions. Moreover, knowing that subsets of a topological space are themselves topological spaces, as well as products of topological spaces, the person is able to construct some new topological spaces irrespective of the definition.

Thus, in practice a topology on a set is treated like an [abstract data type][118] that provides all needed notions (and [constructors][119]) but hides the distinction between "primary" and "secondary" notions. The same applies to other kinds of mathematical structures. "Interestingly, the formalization of structures in set theory is a similar task as the formalization of structures for computers."[\[14\]][120]

## Canonical, not just natural\[[edit][121]\]

As was mentioned, equivalence between two species of structures leads to a natural isomorphism between the corresponding functors. However, "[natural][122]" does not mean "[canonical][123]". A natural transformation is generally non-unique.

Example. Consider again the two equivalent structures for natural numbers. One is the "Peano structure" (0,*S*), the other is the structure (+, ·, ≤) of ordered semiring. If a set *X* is endowed by both structures then, on one hand, *X* = { *a*0, *a*1, *a*2, ... } where *S*(*a**n*) = *a**n*+1 for all *n* and 0 = *a*0; and on the other hand, *X* = { *b*0, *b*1, *b*2, ... } where *b**m*+*n* = *b**m* + *b**n*, *b**m*·*n* = *b**m* · *b**n*, and *b**m* ≤*b**n* if and only if *m* ≤ *n*. Requiring that *a**n* = *b**n* for all *n* one gets the canonical equivalence between the two structures. However, one may also require *a*0 = *b*1, *a*1 = *b*0, and *a**n* = *b**n* for all *n* > 1, thus getting another, non-canonical, natural isomorphism. Moreover, every [permutation][124] of the index set { 0, 1, 2, ... } leads to a natural isomorphism; they are uncountably many!

Another example. A structure of a (simple) graph on a set *V* = { 1, 2, ..., n } of vertices may be described by means of its [adjacency matrix][125], a (0,1)-matrix of size *n*×*n* (with zeros on the diagonal). More generally, for arbitrary *V* an adjacency function on *V* × *V* may be used. The canonical equivalence is given by the rule: "1" means "connected" (with an edge), "0" means "not connected". However, another rule, "0" means "connected", "1" means "not", may be used, and leads to another, natural but not canonical, equivalence. In this example, canonicity is rather a matter of convention. But here is a worse case. Instead of "0" and "1" one may use, say, the two possible orientations of the plane __R__2 ("clockwise" and "counterclockwise"). It is difficult to choose a canonical rule in this case!

"Natural" is a well-defined mathematical notion, but it does not ensure uniqueness. "Canonical" does, but generally is more or less conventional. A consistent choice of canonical equivalences is an inevitable component of equivalent definitions of mathematical structures.

## See also\[[edit][126]\]

## Notes\[[edit][127]\]

1.  __[^][128]__ Technically, "0 ∈ 2" is an example of a non-transportable relation, see [Bourbaki 1968][129], Sect.IV.1.3, [Marshall & Chuaqui 1991][130].
2.  __[^][131]__ A reasonable choice of an ambient framework should not alter basic properties of a structure, but can alter provability of finer properties. e.g. some theorems about the natural numbers are provable in set theory (and some other strong systems) but not provable in first-order logic; see [Paris-Harrington theorem][132] and [Goodstein's theorem][133]. The same applies to definability; see for example [Tarski's undefinability theorem][134].
3.  __[^][135]__ In order to be more formal, Bourbaki encodes such formulas with sequences of ordered pairs of natural numbers.
4.  __[^][136]__ On one hand, it is possible to exclude the Cartesian products, treating a pair (*x*,*y*) as just the set {{*x*},{*x*,*y*}}. On the other hand, it is possible to include the set operation *X*,*Y*\->*Y**X* (all functions from *X* to *Y*). "It is possible to simplify the matter by considering operations and functions as a special kind of relations (e.g. a binary operation is a ternary relation). However, quite often, it is an advantage to have operations as a primitive concept." [Pudlák 2013][137], page 17
5.  __[^][138]__ The set of all possible axioms of species is [countable][139], while the set of all fixed points of the considered action may be uncountable. Tarski's "[logical notions of higher order][140]" are closer to the fixed points than to species of structures, see [Feferman 2010][141] and references therefrom.
6.  __[^][142]__ The set of all possible deduction procedures is countable, while the set of all natural isomorphisms between the considered functors may be uncountable (see an example in Section [#Canonical, not just natural][143]).

## Footnotes\[[edit][144]\]

1.  __[^][145]__ About ETCS see [Type theory#Mathematical foundations][146]
2.  __[^][147]__ [Pudlák 2013][148], pages 10-11
3.  __[^][149]__ [Pudlák 2013][150], page 12
4.  __[^][151]__ [Bourbaki 1968][152], Sect.IV.1.1
5.  __[^][153]__ [Pudlák 2013][154], page 10
6.  __[^][155]__ [Marshall & Chuaqui 1991][156], §2
7.  __[^][157]__ [Bourbaki 1968][158], Sect.IV.1.2
8.  __[^][159]__ [Bourbaki 1968][160], Sect.IV.1.5
9.  __[^][161]__ [Bourbaki 1968][162], Sect.IV.1.6
10.  ^ [Jump up to: *__a__*][163] [*__b__*][164] [*__c__*][165] [Bourbaki 1968][166], Sect.IV.1.7
11.  __[^][167]__ [Pudlák 2013][168], page 13
12.  __[^][169]__ [Pudlák 2013][170], page 22
13.  __[^][171]__ [The Univalent Foundations Program 2013][172], Subsection "Univalent foundations" of Introduction
14.  __[^][173]__ [Pudlák 2013][174], page 34

## References\[[edit][175]\]

-   Pudlák, Pavel (2013), *Logical Foundations of Mathematics and Computational Complexity. A Gentle Introduction*, Springer.
-   [Bourbaki, Nicolas][176] (1968), *Elements of mathematics: Theory of sets*, Hermann (original), Addison-Wesley (translation).

## Further reading\[[edit][177]\]

-   [Feferman, S.][178] (2010), "Set-theoretical invariance criteria for logicality", *Notre Dame Journal of Formal Logic*, __51__: 3-20, [doi][179]:[10.1215/00294527-2010-002][180].
-   Marshall, M.V.; [Chuaqui, R.][181] (1991), "Sentences of type theory: the only sentences preserved under isomorphisms", *The Journal of Symbolic Logic*, __56__ (3): 932-948, [doi][182]:[10.2178/jsl/1183743741][183].
-   The Univalent Foundations Program (2013), [*Homotopy Type Theory: Univalent Foundations of Mathematics*][184], Institute for Advanced Study.

## External links\[[edit][185]\]

-   [nLab:structured set][186] "Almost everything in contemporary mathematics is an example of a structured set." (quoted from Section "Examples")
-   [nLab: structure in model theory][187]
-   [nLab: stuff, structure, property][188]
-   [MathOverflow: What is the definition of "canonical"?][189] "a rule of thumb: there is a canonical isomorphism between X and Y if and only if you would feel comfortable writing X = Y" (Reid Barton)
-   [Abstract Math:Mathematical structures][190] "When you think of a structure it is best to think of it as containing all that information, not just the stuff in the definition" (Charles Wells)
-   [MathStackExchange: A pedantic question about defining new structures in a path-independent way][191] \`We would continue making statements like, "A topological space is determined by its open sets," but would never make a statement like, "A topological space is an ordered pair ![(X,{\mathcal  O})](https://wikimedia.org/api/rest_v1/media/math/render/svg/922442a5575888b509d846450a3fcf1ae09c2f8d) such that..."'
-   [MathStackExchange: Does there exist another way of obtaining a topological space from a metric space equally deserving of the term "canonical"?][192]

[1]: https://en.wikipedia.org/wiki/Euclidean_geometry "Euclidean geometry"
[2]: https://en.wikipedia.org/wiki/Ellipse#Definition "Ellipse"
[3]: https://en.wikipedia.org/wiki/Minimal_surface#Definitions "Minimal surface"
[4]: https://en.wikipedia.org/wiki/Mathematical_structure "Mathematical structure"
[5]: https://en.wikipedia.org/wiki/Euclidean_space "Euclidean space"
[6]: https://en.wikipedia.org/wiki/Topological_space "Topological space"
[7]: https://en.wikipedia.org/wiki/Characterizations_of_the_category_of_topological_spaces "Characterizations of the category of topological spaces"
[8]: https://en.wikipedia.org/wiki/Ordered_field
[9]: https://en.wikipedia.org/wiki/Ordered_field#Definition "Ordered field"
[10]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[11]: https://en.wikipedia.org/w/index.php?title=Equivalent_definitions_of_mathematical_structures&action=edit&section=1 "Edit section: Isomorphic implementations"
[12]: https://en.wikipedia.org/wiki/Natural_number#Formal_definitions "Natural number"
[13]: https://en.wikipedia.org/wiki/Isomorphism "Isomorphism"
[14]: https://en.wikipedia.org/wiki/Peano_axioms#Models "Peano axioms"
[15]: https://en.wikipedia.org/wiki/Successor_function "Successor function"
[16]: https://en.wikipedia.org/wiki/Benacerraf%27s_identification_problem "Benacerraf's identification problem"
[17]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-1
[18]: https://en.wikipedia.org/wiki/Complex_number#Formal_construction "Complex number"
[19]: https://en.wikipedia.org/w/index.php?title=Equivalent_definitions_of_mathematical_structures&action=edit&section=2 "Edit section: Deduced structures and cryptomorphisms"
[20]: https://en.wikipedia.org/wiki/Peano_axioms#Arithmetic "Peano axioms"
[21]: https://en.wikipedia.org/wiki/Peano_axioms#Equivalent_axiomatizations "Peano axioms"
[22]: https://en.wikipedia.org/wiki/Signature_(logic) "Signature (logic)"
[23]: https://en.wikipedia.org/wiki/Cryptomorphism "Cryptomorphism"
[24]: https://en.wikipedia.org/w/index.php?title=Equivalent_definitions_of_mathematical_structures&action=edit&section=3 "Edit section: Ambient frameworks"
[25]: https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory "Zermelo-Fraenkel set theory"
[26]: https://en.wikipedia.org/wiki/Von_Neumann%E2%80%93Bernays%E2%80%93G%C3%B6del_set_theory "Von Neumann-Bernays-Gödel set theory"
[27]: https://en.wikipedia.org/wiki/New_Foundations "New Foundations"
[28]: https://en.wikipedia.org/w/index.php?title=Elementary_theory_of_the_category_of_sets&action=edit&redlink=1 "Elementary theory of the category of sets (page does not exist)"
[29]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-2
[30]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[31]: https://en.wikipedia.org/wiki/Second-order_logic "Second-order logic"
[32]: https://en.wikipedia.org/wiki/Higher-order_logic "Higher-order logic"
[33]: https://en.wikipedia.org/wiki/Type_theory "Type theory"
[34]: https://en.wikipedia.org/wiki/Homotopy_type_theory "Homotopy type theory"
[35]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-3
[36]: https://en.wikipedia.org/w/index.php?title=Equivalent_definitions_of_mathematical_structures&action=edit&section=4 "Edit section: Structures according to Bourbaki"
[37]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFPudl%C3%A1k2013
[38]: http://ncatlab.org/nlab/show/structure#related_entries
[39]: https://en.wikipedia.org/wiki/Nicolas_Bourbaki "Nicolas Bourbaki"
[40]: https://en.wikipedia.org/wiki/Cartesian_product "Cartesian product"
[41]: https://en.wikipedia.org/wiki/Power_set "Power set"
[42]: https://en.wikipedia.org/wiki/Function_(mathematics)#Definition "Function (mathematics)"
[43]: https://en.wikipedia.org/wiki/Topological_space "Topological space"
[44]: https://en.wikipedia.org/wiki/Topological_space#Open_sets_definition "Topological space"
[45]: https://en.wikipedia.org/wiki/Sigma-algebra "Sigma-algebra"
[46]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-4
[47]: https://en.wikipedia.org/wiki/Topological_group "Topological group"
[48]: https://en.wikipedia.org/w/index.php?title=Equivalent_definitions_of_mathematical_structures&action=edit&section=5 "Edit section: Transport of structures; isomorphism"
[49]: https://en.wikipedia.org/wiki/Bijection "Bijection"
[50]: https://en.wikipedia.org/wiki/Image_(mathematics) "Image (mathematics)"
[51]: https://en.wikipedia.org/wiki/Homomorphism#Specific_kinds_of_homomorphisms "Homomorphism"
[52]: https://en.wikipedia.org/wiki/Vector_space "Vector space"
[53]: https://en.wikipedia.org/wiki/Linear_operator#Algebraic_classifications_of_linear_transformations "Linear operator"
[54]: https://en.wikipedia.org/wiki/Partially_ordered_set "Partially ordered set"
[55]: https://en.wikipedia.org/wiki/Order_isomorphism "Order isomorphism"
[56]: https://en.wikipedia.org/wiki/Graph_(discrete_mathematics) "Graph (discrete mathematics)"
[57]: https://en.wikipedia.org/wiki/Graph_isomorphism "Graph isomorphism"
[58]: https://en.wikipedia.org/wiki/Isomorphism#Relation-preserving_isomorphism "Isomorphism"
[59]: https://en.wikipedia.org/wiki/Homeomorphism "Homeomorphism"
[60]: https://en.wikipedia.org/wiki/Uniform_space "Uniform space"
[61]: https://en.wikipedia.org/wiki/Uniform_isomorphism "Uniform isomorphism"
[62]: https://en.wikipedia.org/wiki/Metric_space "Metric space"
[63]: https://en.wikipedia.org/wiki/Metric_space#Notions_of_metric_space_equivalence "Metric space"
[64]: https://en.wikipedia.org/wiki/Topological_group#Homomorphisms "Topological group"
[65]: https://en.wikipedia.org/wiki/Topological_vector_space "Topological vector space"
[66]: https://en.wikipedia.org/wiki/Banach_space "Banach space"
[67]: https://en.wikipedia.org/wiki/Banach_space#Linear_operators,_isomorphisms "Banach space"
[68]: https://en.wikipedia.org/wiki/Hilbert_space "Hilbert space"
[69]: https://en.wikipedia.org/wiki/Unitary_transformation "Unitary transformation"
[70]: https://en.wikipedia.org/wiki/Lie_groups "Lie groups"
[71]: https://en.wikipedia.org/wiki/Lie_group#Homomorphisms_and_isomorphisms "Lie group"
[72]: https://en.wikipedia.org/wiki/Differentiable_manifold "Differentiable manifold"
[73]: https://en.wikipedia.org/wiki/Diffeomorphism "Diffeomorphism"
[74]: https://en.wikipedia.org/wiki/Symplectic_manifold "Symplectic manifold"
[75]: https://en.wikipedia.org/wiki/Symplectomorphism "Symplectomorphism"
[76]: https://en.wikipedia.org/wiki/Riemannian_manifold "Riemannian manifold"
[77]: https://en.wikipedia.org/wiki/Riemannian_manifold#Isometries "Riemannian manifold"
[78]: https://en.wikipedia.org/wiki/Conformal_geometry "Conformal geometry"
[79]: https://en.wikipedia.org/wiki/Conformal_transformation#Riemannian_geometry "Conformal transformation"
[80]: https://en.wikipedia.org/wiki/Probability_space "Probability space"
[81]: https://en.wikipedia.org/wiki/Standard_probability_space#Isomorphism "Standard probability space"
[82]: https://en.wikipedia.org/wiki/Affine_space "Affine space"
[83]: https://en.wikipedia.org/wiki/Affine_transformation "Affine transformation"
[84]: https://en.wikipedia.org/wiki/Projective_space "Projective space"
[85]: https://en.wikipedia.org/wiki/Homography "Homography"
[86]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-5
[87]: https://en.wikipedia.org/w/index.php?title=Equivalent_definitions_of_mathematical_structures&action=edit&section=6 "Edit section: Functoriality"
[88]: https://en.wikipedia.org/wiki/Category_theory "Category theory"
[89]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-B-IV.1.1-6
[90]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-7
[91]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-8
[92]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-9
[93]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-10
[94]: https://en.wikipedia.org/wiki/Groupoid "Groupoid"
[95]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-B-IV.1.2-11
[96]: https://en.wikipedia.org/wiki/Permutation_group "Permutation group"
[97]: https://en.wikipedia.org/wiki/Group_action_(mathematics) "Group action (mathematics)"
[98]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-B-IV.1.5-12
[99]: https://en.wikipedia.org/wiki/Fixed_point_(mathematics) "Fixed point (mathematics)"
[100]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-13
[101]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-B-IV.1.6-14
[102]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-B-IV.1.7-15
[103]: https://en.wikipedia.org/wiki/Topological_space#Open_sets_definition "Topological space"
[104]: https://en.wikipedia.org/wiki/Topological_space#Definition_via_closed_sets "Topological space"
[105]: https://en.wikipedia.org/wiki/Complement_(set_theory) "Complement (set theory)"
[106]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-B-IV.1.7-15
[107]: https://en.wikipedia.org/wiki/Natural_transformation#Definition "Natural transformation"
[108]: https://en.wikipedia.org/wiki/Equivalence_relation "Equivalence relation"
[109]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-16
[110]: https://en.wikipedia.org/w/index.php?title=Equivalent_definitions_of_mathematical_structures&action=edit&section=7 "Edit section: Mathematical practice"
[111]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-17
[112]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-18
[113]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-HoTT-19
[114]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-B-IV.1.7-15
[115]: https://en.wikipedia.org/wiki/Prime_number "Prime number"
[116]: https://en.wikipedia.org/wiki/Homotopy "Homotopy"
[117]: https://en.wikipedia.org/wiki/Inductive_dimension "Inductive dimension"
[118]: https://en.wikipedia.org/wiki/Abstract_data_type "Abstract data type"
[119]: https://en.wikipedia.org/wiki/Constructor_(object-oriented_programming) "Constructor (object-oriented programming)"
[120]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_note-20
[121]: https://en.wikipedia.org/w/index.php?title=Equivalent_definitions_of_mathematical_structures&action=edit&section=8 "Edit section: Canonical, not just natural"
[122]: https://en.wikipedia.org/wiki/Natural_transformation "Natural transformation"
[123]: https://en.wikipedia.org/wiki/Canonical_map "Canonical map"
[124]: https://en.wikipedia.org/wiki/Permutation "Permutation"
[125]: https://en.wikipedia.org/wiki/Adjacency_matrix "Adjacency matrix"
[126]: https://en.wikipedia.org/w/index.php?title=Equivalent_definitions_of_mathematical_structures&action=edit&section=9 "Edit section: See also"
[127]: https://en.wikipedia.org/w/index.php?title=Equivalent_definitions_of_mathematical_structures&action=edit&section=10 "Edit section: Notes"
[128]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-1 "Jump up"
[129]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFBourbaki1968
[130]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFMarshallChuaqui1991
[131]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-3 "Jump up"
[132]: https://en.wikipedia.org/wiki/Paris%E2%80%93Harrington_theorem "Paris-Harrington theorem"
[133]: https://en.wikipedia.org/wiki/Goodstein%27s_theorem "Goodstein's theorem"
[134]: https://en.wikipedia.org/wiki/Tarski%27s_undefinability_theorem "Tarski's undefinability theorem"
[135]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-9 "Jump up"
[136]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-10 "Jump up"
[137]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFPudl%C3%A1k2013
[138]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-13 "Jump up"
[139]: https://en.wikipedia.org/wiki/Countable_set "Countable set"
[140]: https://en.wikipedia.org/wiki/Alfred_Tarski#What_are_logical_notions? "Alfred Tarski"
[141]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFFeferman2010
[142]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-16 "Jump up"
[143]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#Canonical,_not_just_natural
[144]: https://en.wikipedia.org/w/index.php?title=Equivalent_definitions_of_mathematical_structures&action=edit&section=11 "Edit section: Footnotes"
[145]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-2 "Jump up"
[146]: https://en.wikipedia.org/wiki/Type_theory#Mathematical_foundations "Type theory"
[147]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-4 "Jump up"
[148]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFPudl%C3%A1k2013
[149]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-5 "Jump up"
[150]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFPudl%C3%A1k2013
[151]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-B-IV.1.1_6-0 "Jump up"
[152]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFBourbaki1968
[153]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-7 "Jump up"
[154]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFPudl%C3%A1k2013
[155]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-8 "Jump up"
[156]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFMarshallChuaqui1991
[157]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-B-IV.1.2_11-0 "Jump up"
[158]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFBourbaki1968
[159]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-B-IV.1.5_12-0 "Jump up"
[160]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFBourbaki1968
[161]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-B-IV.1.6_14-0 "Jump up"
[162]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFBourbaki1968
[163]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-B-IV.1.7_15-0
[164]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-B-IV.1.7_15-1
[165]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-B-IV.1.7_15-2
[166]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFBourbaki1968
[167]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-17 "Jump up"
[168]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFPudl%C3%A1k2013
[169]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-18 "Jump up"
[170]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFPudl%C3%A1k2013
[171]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-HoTT_19-0 "Jump up"
[172]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFThe_Univalent_Foundations_Program2013
[173]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#cite_ref-20 "Jump up"
[174]: https://en.wikipedia.org/wiki/Equivalent_definitions_of_mathematical_structures#CITEREFPudl%C3%A1k2013
[175]: https://en.wikipedia.org/w/index.php?title=Equivalent_definitions_of_mathematical_structures&action=edit&section=12 "Edit section: References"
[176]: https://en.wikipedia.org/wiki/Nicolas_Bourbaki "Nicolas Bourbaki"
[177]: https://en.wikipedia.org/w/index.php?title=Equivalent_definitions_of_mathematical_structures&action=edit&section=13 "Edit section: Further reading"
[178]: https://en.wikipedia.org/wiki/Solomon_Feferman "Solomon Feferman"
[179]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[180]: https://doi.org/10.1215%2F00294527-2010-002
[181]: https://en.wikipedia.org/wiki/Rolando_Chuaqui "Rolando Chuaqui"
[182]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[183]: https://doi.org/10.2178%2Fjsl%2F1183743741
[184]: http://homotopytypetheory.org/book
[185]: https://en.wikipedia.org/w/index.php?title=Equivalent_definitions_of_mathematical_structures&action=edit&section=14 "Edit section: External links"
[186]: http://ncatlab.org/nlab/show/structured+set
[187]: http://ncatlab.org/nlab/show/structure+in+model+theory
[188]: http://ncatlab.org/nlab/show/stuff%2C+structure%2C+property
[189]: https://mathoverflow.net/q/19644
[190]: http://www.abstractmath.org/MM/MMMathStructure.htm
[191]: https://math.stackexchange.com/q/303751
[192]: https://math.stackexchange.com/q/290507
