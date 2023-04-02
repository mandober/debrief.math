---
downloaded:       2021-12-11
page-url:         https://en.wikipedia.org/wiki/Algebraic_structure
page-title:       Algebraic structure - Wikipedia
---
# Algebraic structure

In mathematics, an algebraic structure consists of a nonempty set A (called the underlying set, carrier set or domain), a collection of operations on A of finite arity (typically binary operations), and a finite set of identities, known as axioms, that these operations must satisfy.
In [mathematics][1], an __algebraic structure__ consists of a nonempty [set][2] *A* (called the __underlying set__, __carrier set__ or __domain__), a collection of [operations][3] on *A* of finite [arity][4] (typically [binary operations][5]), and a finite set of [identities][6], known as [axioms][7], that these operations must satisfy.

An algebraic structure may be based on other algebraic structures with operations and axioms involving several structures. For instance, a [vector space][8] involves a second structure called a [field][9], and an operation called *scalar multiplication* between elements of the field (called *[scalars][10]*), and elements of the vector space (called *[vectors][11]*).

In the context of [universal algebra][12], the set *A* with this [structure][13] is called an *algebra*,[\[1\]][14] while, in other contexts, it is (somewhat ambiguously) called an *algebraic structure*, the term *algebra* being reserved for specific algebraic structures that are [vector spaces][15] over a [field][16] or [modules][17] over a [commutative ring][18].

The properties of specific algebraic structures are studied in [abstract algebra][19]. The general theory of algebraic structures has been formalized in universal algebra. The language of [category theory][20] is used to express and study relationships between different classes of algebraic and non-algebraic objects. This is because it is sometimes possible to find strong connections between some classes of objects, sometimes of different kinds. For example, [Galois theory][21] establishes a connection between certain fields and groups: two algebraic structures of different kinds.

## Introduction

Addition and multiplication of real numbers are the prototypical examples of operations that combine two elements of a set to produce a third element of the set. These operations obey several algebraic laws. For example, *a* + (*b* + *c*) = (*a* + *b*) + *c* and *a*(*bc*) = (*ab*)*c* as the *associative laws*. Also *a* + *b* = *b* + *a* and *ab* = *ba* as the *commutative laws.* Many systems studied by mathematicians have operations that obey some, but not necessarily all, of the laws of ordinary arithmetic. For example, rotations of an object in three-dimensional space can be combined by, for example, performing the first rotation on the object and then applying the second rotation on it in its new orientation made by the previous rotation. Rotation as an operation obeys the associative law, but can fail to satisfy the commutative law.

Mathematicians give names to sets with one or more operations that obey a particular collection of laws, and study them in the abstract as algebraic structures. When a new problem can be shown to follow the laws of one of these algebraic structures, all the work that has been done on that category in the past can be applied to the new problem.

In full generality, algebraic structures may involve an arbitrary collection of operations, including operations that combine more than two elements (higher [arity][23] operations) and operations that take only one [argument][24] ([unary operations][25]). The examples used here are by no means a complete list, but they are meant to be a representative list and include the most common structures. Longer lists of algebraic structures may be found in the external links and within *[Category:Algebraic structures][26].* Structures are listed in approximate order of increasing complexity.

## Examples\[[edit][27]\]

### One set with operations\[[edit][28]\]

__Simple structures__: __no__ [binary operation][29]:

-   [Set][30]: a degenerate algebraic structure *S* having no operations.
-   [Pointed set][31]: *S* has one or more distinguished elements, often 0, 1, or both.
-   Unary system: *S* and a single [unary operation][32] over *S*.
-   Pointed unary system: a unary system with *S* a pointed set.

__Group-like structures__: __one__ binary operation. The binary operation can be indicated by any symbol, or with no symbol (juxtaposition) as is done for ordinary multiplication of real numbers.

-   [Magma or groupoid][33]: *S* and a single binary operation over *S*.
-   [Semigroup][34]: an [associative][35] magma.
-   [Monoid][36]: a semigroup with [identity element][37].
-   [Group][38]: a monoid with a unary operation (inverse), giving rise to [inverse elements][39].
-   [Abelian group][40]: a group whose binary operation is [commutative][41].
-   [Semilattice][42]: a semigroup whose operation is [idempotent][43] and commutative. The binary operation can be called either [meet][44] or [join][45].
-   [Quasigroup][46]: a magma obeying the Latin square property. A quasigroup may also be represented using three binary operations.[\[2\]][47]

-   [Loop][48]: a quasigroup with [identity][49].

__Ring-like structures__ or __Ringoids__: __two__ binary operations, often called [addition][50] and [multiplication][51], with multiplication [distributing][52] over addition.

-   [Semiring][53]: a ringoid such that *S* is a monoid under each operation. Addition is typically assumed to be commutative and associative, and the monoid product is assumed to distribute over the addition on both sides, and the additive identity 0 is an [absorbing element][54] in the sense that 0 *x* = 0 for all *x*.
-   [Near-ring][55]: a semiring whose additive monoid is a (not necessarily abelian) group.
-   [Ring][56]: a semiring whose additive monoid is an abelian group.
-   [Lie ring][57]: a ringoid whose additive monoid is an abelian group, but whose multiplicative operation satisfies the [Jacobi identity][58] rather than associativity.
-   [Commutative ring][59]: a ring in which the multiplication operation is commutative.
-   [Boolean ring][60]: a commutative ring with idempotent multiplication operation.
-   [Field][61]: a commutative ring which contains a multiplicative inverse for every nonzero element.
-   [Kleene algebras][62]: a semiring with idempotent addition and a unary operation, the [Kleene star][63], satisfying additional properties.
-   [\*-algebra][64]: a ring with an additional unary operation (\*) satisfying additional properties.

__Lattice structures__: __two__ or more binary operations, including operations called [meet and join][65], connected by the [absorption law][66].[\[3\]][67]

-   [Complete lattice][68]: a lattice in which arbitrary [meet and joins][69] exist.
-   [Bounded lattice][70]: a lattice with a [greatest element][71] and least element.
-   [Complemented lattice][72]: a bounded lattice with a unary operation, complementation, denoted by [postfix][73] [⊥][74]. The join of an element with its complement is the greatest element, and the meet of the two elements is the least element.
-   [Modular lattice][75]: a lattice whose elements satisfy the additional *modular identity*.
-   [Distributive lattice][76]: a lattice in which each of meet and join [distributes][77] over the other. Distributive lattices are modular, but the converse does not hold.
-   [Boolean algebra][78]: a complemented distributive lattice. Either of meet or join can be defined in terms of the other and complementation. This can be shown to be equivalent with the ring-like structure of the same name above.
-   [Heyting algebra][79]: a bounded distributive lattice with an added binary operation, [relative pseudo-complement][80], denoted by [infix][81] →, and governed by the axioms:
    -   *x* → *x* = 1
    -   *x* (*x* → *y*) = *x y*
    -   *y* (*x* → *y*) = *y*
    -   *x* → (*y z*) = (*x* → *y*) (*x* → *z*)

__Arithmetics__: __two__ [binary operations][82], addition and multiplication. *S* is an [infinite set][83]. Arithmetics are pointed unary systems, whose [unary operation][84] is [injective][85] [successor][86], and with distinguished element 0.

-   [Robinson arithmetic][87]. Addition and multiplication are [recursively][88] defined by means of successor. 0 is the identity element for addition, and annihilates multiplication. Robinson arithmetic is listed here even though it is a variety, because of its closeness to Peano arithmetic.
-   [Peano arithmetic][89]. Robinson arithmetic with an [axiom schema][90] of [induction][91]. Most ring and field axioms bearing on the properties of addition and multiplication are theorems of Peano arithmetic or of proper extensions thereof.

### Two sets with operations\[[edit][92]\]

__[Module][93]\-like structures:__ composite systems involving two sets and employing at least two binary operations.

-   [Group with operators][94]: a group *G* with a set Ω and a binary operation Ω × *G* → *G* satisfying certain axioms.
-   [Module][95]: an abelian group *M* and a ring *R* acting as operators on *M*. The members of *R* are sometimes called [scalars][96], and the binary operation of *scalar multiplication* is a function *R* × *M* → *M*, which satisfies several axioms. Counting the ring operations these systems have at least three operations.
-   [Vector space][97]: a module where the ring *R* is a [division ring][98] or [field][99].
-   [Graded vector space][100]: a vector space with a [direct sum][101] decomposition breaking the space into "grades".
-   [Quadratic space][102]: a vector space *V* over a field *F* with a [quadratic form][103] on *V* taking values in *F*.

__[Algebra][104]\-like structures__: composite system defined over two sets, a ring *R* and an *R*\-module *M* equipped with an operation called multiplication. This can be viewed as a system with five binary operations: two operations on *R*, two on *M* and one involving both *R* and *M*.

-   [Algebra over a ring][105] (also *R-algebra*): a module over a [commutative ring][106] *R*, which also carries a multiplication operation that is compatible with the module structure. This includes distributivity over addition and [linearity][107] with respect to multiplication by elements of *R*. The theory of an [algebra over a field][108] is especially well developed.
-   [Associative algebra][109]: an algebra over a ring such that the multiplication is [associative][110].
-   [Nonassociative algebra][111]: a module over a commutative ring, equipped with a ring multiplication operation that is not necessarily associative. Often associativity is replaced with a different identity, such as [alternation][112], the [Jacobi identity][113], or the [Jordan identity][114].
-   [Coalgebra][115]: a vector space with a "comultiplication" defined dually to that of associative algebras.
-   [Lie algebra][116]: a special type of nonassociative algebra whose product satisfies the [Jacobi identity][117].
-   [Lie coalgebra][118]: a vector space with a "comultiplication" defined dually to that of Lie algebras.
-   [Graded algebra][119]: a graded vector space with an algebra structure compatible with the grading. The idea is that if the grades of two elements *a* and *b* are known, then the grade of *ab* is known, and so the location of the product *ab* is determined in the decomposition.
-   [Inner product space][120]: an *F* vector space *V* with a [definite bilinear form][121] *V* × *V* → *F*.

__Four__ or more binary operations:

-   [Bialgebra][122]: an associative algebra with a compatible coalgebra structure.
-   [Lie bialgebra][123]: a Lie algebra with a compatible bialgebra structure.
-   [Hopf algebra][124]: a bialgebra with a connection axiom (antipode).
-   [Clifford algebra][125]: a graded associative algebra equipped with an [exterior product][126] from which may be derived several possible inner products. [Exterior algebras][127] and [geometric algebras][128] are special cases of this construction.

## Hybrid structures\[[edit][129]\]

Algebraic structures can also coexist with added structure of non-algebraic nature, such as [partial order][130] or a [topology][131]. The added structure must be compatible, in some sense, with the algebraic structure.

-   [Topological group][132]: a group with a topology compatible with the group operation.
-   [Lie group][133]: a topological group with a compatible smooth [manifold][134] structure.
-   [Ordered groups][135], [ordered rings][136] and [ordered fields][137]: each type of structure with a compatible [partial order][138].
-   [Archimedean group][139]: a linearly ordered group for which the [Archimedean property][140] holds.
-   [Topological vector space][141]: a vector space whose *M* has a compatible topology.
-   [Normed vector space][142]: a vector space with a compatible [norm][143]. If such a space is [complete][144] (as a metric space) then it is called a [Banach space][145].
-   [Hilbert space][146]: an inner product space over the real or complex numbers whose inner product gives rise to a Banach space structure.
-   [Vertex operator algebra][147]
-   [Von Neumann algebra][148]: a \*-algebra of operators on a Hilbert space equipped with the [weak operator topology][149].

## Universal algebra\[[edit][150]\]

Algebraic structures are defined through different configurations of [axioms][151]. [Universal algebra][152] abstractly studies such objects. One major dichotomy is between structures that are axiomatized entirely by *identities* and structures that are not. If all axioms defining a class of algebras are identities, then this class is a [variety][153] (not to be confused with [algebraic varieties][154] of [algebraic geometry][155]).

Identities are equations formulated using only the operations the structure allows, and variables that are tacitly [universally quantified][156] over the relevant [universe][157]. Identities contain no [connectives][158], [existentially quantified variables][159], or [relations][160] of any kind other than the allowed operations. The study of varieties is an important part of [universal algebra][161]. An algebraic structure in a variety may be understood as the [quotient algebra][162] of term algebra (also called "absolutely [free algebra][163]") divided by the equivalence relations generated by a set of identities. So, a collection of functions with given [signatures][164] generate a free algebra, the [term algebra][165] *T*. Given a set of equational identities (the axioms), one may consider their symmetric, transitive closure *E*. The quotient algebra *T*/*E* is then the algebraic structure or variety. Thus, for example, groups have a signature containing two operators: the multiplication operator *m*, taking two arguments, and the inverse operator *i*, taking one argument, and the identity element *e*, a constant, which may be considered an operator that takes zero arguments. Given a (countable) set of variables *x*, *y*, *z*, etc. the term algebra is the collection of all possible [terms][166] involving *m*, *i*, *e* and the variables; so for example, *m*(*i*(*x*), *m*(*x*, *m*(*y*,*e*))) would be an element of the term algebra. One of the axioms defining a group is the identity *m*(*x*, *i*(*x*)) = *e*; another is *m*(*x*,*e*) = *x*. The axioms can be represented as [trees][167]. These equations induce [equivalence classes][168] on the free algebra; the quotient algebra then has the algebraic structure of a group.

Some structures do not form varieties, because either:

1.  It is necessary that 0 ≠ 1, 0 being the additive [identity element][169] and 1 being a multiplicative identity element, but this is a nonidentity;
2.  Structures such as fields have some axioms that hold only for nonzero members of *S*. For an algebraic structure to be a variety, its operations must be defined for *all* members of *S*; there can be no partial operations.

Structures whose axioms unavoidably include nonidentities are among the most important ones in mathematics, e.g., [fields][170] and [division rings][171]. Structures with nonidentities present challenges varieties do not. For example, the [direct product][172] of two [fields][173] is not a field, because ![{\displaystyle (1,0)\cdot (0,1)=(0,0)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/768a1fceb4398bd0ad0622a41ccea52b6e63df06), but fields do not have [zero divisors][174].

## Category theory\[[edit][175]\]

[Category theory][176] is another tool for studying algebraic structures (see, for example, Mac Lane 1998). A category is a collection of *objects* with associated *morphisms.* Every algebraic structure has its own notion of [homomorphism][177], namely any [function][178] compatible with the operation(s) defining the structure. In this way, every algebraic structure gives rise to a [category][179]. For example, the [category of groups][180] has all [groups][181] as objects and all [group homomorphisms][182] as morphisms. This [concrete category][183] may be seen as a [category of sets][184] with added category-theoretic structure. Likewise, the category of [topological groups][185] (whose morphisms are the continuous group homomorphisms) is a [category of topological spaces][186] with extra structure. A [forgetful functor][187] between categories of algebraic structures "forgets" a part of a structure.

There are various concepts in category theory that try to capture the algebraic character of a context, for instance

-   [algebraic category][188]
-   [essentially algebraic category][189]
-   [presentable category][190]
-   [locally presentable category][191]
-   [monadic][192] functors and categories
-   [universal property][193].

## Different meanings of "structure"\[[edit][194]\]

In a slight [abuse of notation][195], the word "structure" can also refer to just the operations on a structure, instead of the underlying set itself. For example, the sentence, "We have defined a ring *structure* on the set ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3)," means that we have defined [ring][196] *operations* on the set ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3). For another example, the group ![({\mathbb  Z},+)](https://wikimedia.org/api/rest_v1/media/math/render/svg/910eaae0a8267ccb04d4846f6a28f02ce6ab8ac9) can be seen as a set ![\mathbb {Z} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/449494a083e0a1fda2b61c62b2f09b6bee4633dc) that is equipped with an *algebraic structure,* namely the *operation* ![+](https://wikimedia.org/api/rest_v1/media/math/render/svg/fe6ef363cd19902d1a7a71fb1c8b21e8ede52406).

## See also\[[edit][197]\]

-   [Free object][198]
-   [List of algebraic structures][199]
-   [Mathematical structure][200]
-   [Outline of algebraic structures][201]
-   [Signature (logic)][202]
-   [Structure (mathematical logic)][203]

## Notes\[[edit][204]\]

## References\[[edit][205]\]

-   [Mac Lane, Saunders][206]; [Birkhoff, Garrett][207] (1999), *Algebra* (2nd ed.), AMS Chelsea, [ISBN][208] [978-0-8218-1646-2][209]
-   Michel, Anthony N.; Herget, Charles J. (1993), *Applied Algebra and Functional Analysis*, New York: [Dover Publications][210], [ISBN][211] [978-0-486-67598-5][212]
-   Burris, Stanley N.; Sankappanavar, H. P. (1981), [*A Course in Universal Algebra*][213], Berlin, New York: [Springer-Verlag][214], [ISBN][215] [978-3-540-90578-3][216]

Category theory

-   [Mac Lane, Saunders][217] (1998), *[Categories for the Working Mathematician][218]* (2nd ed.), Berlin, New York: Springer-Verlag, [ISBN][219] [978-0-387-98403-2][220]
-   Taylor, Paul (1999), *Practical foundations of mathematics*, [Cambridge University Press][221], [ISBN][222] [978-0-521-63107-5][223]

## External links\[[edit][224]\]

-   [Jipsen's algebra structures.][225] Includes many structures not mentioned here.
-   [Mathworld][226] page on abstract algebra.
-   [Stanford Encyclopedia of Philosophy][227]: [Algebra][228] by [Vaughan Pratt][229].

[1]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[2]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[3]: https://en.wikipedia.org/wiki/Operation_(mathematics) "Operation (mathematics)"
[4]: https://en.wikipedia.org/wiki/Arity "Arity"
[5]: https://en.wikipedia.org/wiki/Binary_operation "Binary operation"
[6]: https://en.wikipedia.org/wiki/Identity_(mathematics) "Identity (mathematics)"
[7]: https://en.wikipedia.org/wiki/Axiom#Non-logical_axioms "Axiom"
[8]: https://en.wikipedia.org/wiki/Vector_space "Vector space"
[9]: https://en.wikipedia.org/wiki/Field_(mathematics) "Field (mathematics)"
[10]: https://en.wikipedia.org/wiki/Scalar_(mathematics) "Scalar (mathematics)"
[11]: https://en.wikipedia.org/wiki/Vector_(mathematics_and_physics) "Vector (mathematics and physics)"
[12]: https://en.wikipedia.org/wiki/Universal_algebra "Universal algebra"
[13]: https://en.wikipedia.org/wiki/Structure_(mathematical_logic) "Structure (mathematical logic)"
[14]: https://en.wikipedia.org/wiki/Algebraic_structure#cite_note-1
[15]: https://en.wikipedia.org/wiki/Vector_space "Vector space"
[16]: https://en.wikipedia.org/wiki/Field_(mathematics) "Field (mathematics)"
[17]: https://en.wikipedia.org/wiki/Module_(ring_theory) "Module (ring theory)"
[18]: https://en.wikipedia.org/wiki/Commutative_ring "Commutative ring"
[19]: https://en.wikipedia.org/wiki/Abstract_algebra "Abstract algebra"
[20]: https://en.wikipedia.org/wiki/Category_theory "Category theory"
[21]: https://en.wikipedia.org/wiki/Galois_theory "Galois theory"
[22]: https://en.wikipedia.org/w/index.php?title=Algebraic_structure&action=edit&section=1 "Edit section: Introduction"
[23]: https://en.wikipedia.org/wiki/Arity "Arity"
[24]: https://en.wikipedia.org/wiki/Argument_of_a_function "Argument of a function"
[25]: https://en.wikipedia.org/wiki/Unary_operation "Unary operation"
[26]: https://en.wikipedia.org/wiki/Category:Algebraic_structures "Category:Algebraic structures"
[27]: https://en.wikipedia.org/w/index.php?title=Algebraic_structure&action=edit&section=2 "Edit section: Examples"
[28]: https://en.wikipedia.org/w/index.php?title=Algebraic_structure&action=edit&section=3 "Edit section: One set with operations"
[29]: https://en.wikipedia.org/wiki/Binary_operation "Binary operation"
[30]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[31]: https://en.wikipedia.org/wiki/Pointed_set "Pointed set"
[32]: https://en.wikipedia.org/wiki/Unary_operation "Unary operation"
[33]: https://en.wikipedia.org/wiki/Magma_(algebra) "Magma (algebra)"
[34]: https://en.wikipedia.org/wiki/Semigroup "Semigroup"
[35]: https://en.wikipedia.org/wiki/Associative "Associative"
[36]: https://en.wikipedia.org/wiki/Monoid "Monoid"
[37]: https://en.wikipedia.org/wiki/Identity_element "Identity element"
[38]: https://en.wikipedia.org/wiki/Group_(mathematics) "Group (mathematics)"
[39]: https://en.wikipedia.org/wiki/Inverse_element "Inverse element"
[40]: https://en.wikipedia.org/wiki/Abelian_group "Abelian group"
[41]: https://en.wikipedia.org/wiki/Commutative "Commutative"
[42]: https://en.wikipedia.org/wiki/Semilattice "Semilattice"
[43]: https://en.wikipedia.org/wiki/Idempotence "Idempotence"
[44]: https://en.wikipedia.org/wiki/Meet_(mathematics) "Meet (mathematics)"
[45]: https://en.wikipedia.org/wiki/Join_(mathematics) "Join (mathematics)"
[46]: https://en.wikipedia.org/wiki/Quasigroup "Quasigroup"
[47]: https://en.wikipedia.org/wiki/Algebraic_structure#cite_note-2
[48]: https://en.wikipedia.org/wiki/Loop_(mathematics) "Loop (mathematics)"
[49]: https://en.wikipedia.org/wiki/Identity_element "Identity element"
[50]: https://en.wikipedia.org/wiki/Addition "Addition"
[51]: https://en.wikipedia.org/wiki/Multiplication "Multiplication"
[52]: https://en.wikipedia.org/wiki/Distributivity "Distributivity"
[53]: https://en.wikipedia.org/wiki/Semiring "Semiring"
[54]: https://en.wikipedia.org/wiki/Absorbing_element "Absorbing element"
[55]: https://en.wikipedia.org/wiki/Near-ring "Near-ring"
[56]: https://en.wikipedia.org/wiki/Ring_(mathematics) "Ring (mathematics)"
[57]: https://en.wikipedia.org/wiki/Lie_ring "Lie ring"
[58]: https://en.wikipedia.org/wiki/Jacobi_identity "Jacobi identity"
[59]: https://en.wikipedia.org/wiki/Commutative_ring "Commutative ring"
[60]: https://en.wikipedia.org/wiki/Boolean_ring "Boolean ring"
[61]: https://en.wikipedia.org/wiki/Field_(mathematics) "Field (mathematics)"
[62]: https://en.wikipedia.org/wiki/Kleene_algebra "Kleene algebra"
[63]: https://en.wikipedia.org/wiki/Kleene_star "Kleene star"
[64]: https://en.wikipedia.org/wiki/*-algebra "*-algebra"
[65]: https://en.wikipedia.org/wiki/Meet_and_join "Meet and join"
[66]: https://en.wikipedia.org/wiki/Absorption_law "Absorption law"
[67]: https://en.wikipedia.org/wiki/Algebraic_structure#cite_note-3
[68]: https://en.wikipedia.org/wiki/Complete_lattice "Complete lattice"
[69]: https://en.wikipedia.org/wiki/Meet_and_join "Meet and join"
[70]: https://en.wikipedia.org/wiki/Bounded_lattice "Bounded lattice"
[71]: https://en.wikipedia.org/wiki/Greatest_element "Greatest element"
[72]: https://en.wikipedia.org/wiki/Complemented_lattice "Complemented lattice"
[73]: https://en.wikipedia.org/wiki/Reverse_Polish_notation "Reverse Polish notation"
[74]: https://en.wikipedia.org/wiki/%E2%8A%A5 "⊥"
[75]: https://en.wikipedia.org/wiki/Modular_lattice "Modular lattice"
[76]: https://en.wikipedia.org/wiki/Distributive_lattice "Distributive lattice"
[77]: https://en.wikipedia.org/wiki/Distributive_lattice "Distributive lattice"
[78]: https://en.wikipedia.org/wiki/Boolean_algebra_(structure) "Boolean algebra (structure)"
[79]: https://en.wikipedia.org/wiki/Heyting_algebra "Heyting algebra"
[80]: https://en.wikipedia.org/wiki/Relative_pseudo-complement "Relative pseudo-complement"
[81]: https://en.wikipedia.org/wiki/Infix "Infix"
[82]: https://en.wikipedia.org/wiki/Binary_operation "Binary operation"
[83]: https://en.wikipedia.org/wiki/Infinite_set "Infinite set"
[84]: https://en.wikipedia.org/wiki/Unary_operation "Unary operation"
[85]: https://en.wikipedia.org/wiki/Injective "Injective"
[86]: https://en.wikipedia.org/wiki/Successor_function "Successor function"
[87]: https://en.wikipedia.org/wiki/Robinson_arithmetic "Robinson arithmetic"
[88]: https://en.wikipedia.org/wiki/Recursion "Recursion"
[89]: https://en.wikipedia.org/wiki/Peano_arithmetic "Peano arithmetic"
[90]: https://en.wikipedia.org/wiki/Axiom_schema "Axiom schema"
[91]: https://en.wikipedia.org/wiki/Mathematical_induction "Mathematical induction"
[92]: https://en.wikipedia.org/w/index.php?title=Algebraic_structure&action=edit&section=4 "Edit section: Two sets with operations"
[93]: https://en.wikipedia.org/wiki/Module_(mathematics) "Module (mathematics)"
[94]: https://en.wikipedia.org/wiki/Group_with_operators "Group with operators"
[95]: https://en.wikipedia.org/wiki/Module_(mathematics) "Module (mathematics)"
[96]: https://en.wikipedia.org/wiki/Scalar_(mathematics) "Scalar (mathematics)"
[97]: https://en.wikipedia.org/wiki/Vector_space "Vector space"
[98]: https://en.wikipedia.org/wiki/Division_ring "Division ring"
[99]: https://en.wikipedia.org/wiki/Field_(mathematics) "Field (mathematics)"
[100]: https://en.wikipedia.org/wiki/Graded_vector_space "Graded vector space"
[101]: https://en.wikipedia.org/wiki/Direct_sum_of_modules "Direct sum of modules"
[102]: https://en.wikipedia.org/wiki/Quadratic_space "Quadratic space"
[103]: https://en.wikipedia.org/wiki/Quadratic_form "Quadratic form"
[104]: https://en.wikipedia.org/wiki/Algebra_(ring_theory) "Algebra (ring theory)"
[105]: https://en.wikipedia.org/wiki/Algebra_over_a_ring "Algebra over a ring"
[106]: https://en.wikipedia.org/wiki/Commutative_ring "Commutative ring"
[107]: https://en.wikipedia.org/wiki/Bilinear_map "Bilinear map"
[108]: https://en.wikipedia.org/wiki/Algebra_over_a_field "Algebra over a field"
[109]: https://en.wikipedia.org/wiki/Associative_algebra "Associative algebra"
[110]: https://en.wikipedia.org/wiki/Associative_property "Associative property"
[111]: https://en.wikipedia.org/wiki/Nonassociative_algebra "Nonassociative algebra"
[112]: https://en.wikipedia.org/wiki/Alternative_algebra "Alternative algebra"
[113]: https://en.wikipedia.org/wiki/Jacobi_identity "Jacobi identity"
[114]: https://en.wikipedia.org/wiki/Jordan_identity "Jordan identity"
[115]: https://en.wikipedia.org/wiki/Coalgebra "Coalgebra"
[116]: https://en.wikipedia.org/wiki/Lie_algebra "Lie algebra"
[117]: https://en.wikipedia.org/wiki/Jacobi_identity "Jacobi identity"
[118]: https://en.wikipedia.org/wiki/Lie_coalgebra "Lie coalgebra"
[119]: https://en.wikipedia.org/wiki/Graded_algebra "Graded algebra"
[120]: https://en.wikipedia.org/wiki/Inner_product_space "Inner product space"
[121]: https://en.wikipedia.org/wiki/Definite_bilinear_form "Definite bilinear form"
[122]: https://en.wikipedia.org/wiki/Bialgebra "Bialgebra"
[123]: https://en.wikipedia.org/wiki/Lie_bialgebra "Lie bialgebra"
[124]: https://en.wikipedia.org/wiki/Hopf_algebra "Hopf algebra"
[125]: https://en.wikipedia.org/wiki/Clifford_algebra "Clifford algebra"
[126]: https://en.wikipedia.org/wiki/Exterior_product "Exterior product"
[127]: https://en.wikipedia.org/wiki/Exterior_algebra "Exterior algebra"
[128]: https://en.wikipedia.org/wiki/Geometric_algebra "Geometric algebra"
[129]: https://en.wikipedia.org/w/index.php?title=Algebraic_structure&action=edit&section=5 "Edit section: Hybrid structures"
[130]: https://en.wikipedia.org/wiki/Partially_ordered_set#Formal_definition "Partially ordered set"
[131]: https://en.wikipedia.org/wiki/Topology "Topology"
[132]: https://en.wikipedia.org/wiki/Topological_group "Topological group"
[133]: https://en.wikipedia.org/wiki/Lie_group "Lie group"
[134]: https://en.wikipedia.org/wiki/Manifold "Manifold"
[135]: https://en.wikipedia.org/wiki/Ordered_group "Ordered group"
[136]: https://en.wikipedia.org/wiki/Ordered_ring "Ordered ring"
[137]: https://en.wikipedia.org/wiki/Ordered_field "Ordered field"
[138]: https://en.wikipedia.org/wiki/Partial_order "Partial order"
[139]: https://en.wikipedia.org/wiki/Archimedean_group "Archimedean group"
[140]: https://en.wikipedia.org/wiki/Archimedean_property "Archimedean property"
[141]: https://en.wikipedia.org/wiki/Topological_vector_space "Topological vector space"
[142]: https://en.wikipedia.org/wiki/Normed_vector_space "Normed vector space"
[143]: https://en.wikipedia.org/wiki/Norm_(mathematics) "Norm (mathematics)"
[144]: https://en.wikipedia.org/wiki/Complete_metric_space "Complete metric space"
[145]: https://en.wikipedia.org/wiki/Banach_space "Banach space"
[146]: https://en.wikipedia.org/wiki/Hilbert_space "Hilbert space"
[147]: https://en.wikipedia.org/wiki/Vertex_operator_algebra "Vertex operator algebra"
[148]: https://en.wikipedia.org/wiki/Von_Neumann_algebra "Von Neumann algebra"
[149]: https://en.wikipedia.org/wiki/Weak_operator_topology "Weak operator topology"
[150]: https://en.wikipedia.org/w/index.php?title=Algebraic_structure&action=edit&section=6 "Edit section: Universal algebra"
[151]: https://en.wikipedia.org/wiki/Axiom "Axiom"
[152]: https://en.wikipedia.org/wiki/Universal_algebra "Universal algebra"
[153]: https://en.wikipedia.org/wiki/Variety_(universal_algebra) "Variety (universal algebra)"
[154]: https://en.wikipedia.org/wiki/Algebraic_varieties "Algebraic varieties"
[155]: https://en.wikipedia.org/wiki/Algebraic_geometry "Algebraic geometry"
[156]: https://en.wikipedia.org/wiki/Universal_quantifier "Universal quantifier"
[157]: https://en.wikipedia.org/wiki/Universe_(mathematics) "Universe (mathematics)"
[158]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[159]: https://en.wikipedia.org/wiki/Quantification_(science) "Quantification (science)"
[160]: https://en.wikipedia.org/wiki/Finitary_relation "Finitary relation"
[161]: https://en.wikipedia.org/wiki/Universal_algebra "Universal algebra"
[162]: https://en.wikipedia.org/wiki/Quotient_(universal_algebra) "Quotient (universal algebra)"
[163]: https://en.wikipedia.org/wiki/Free_object "Free object"
[164]: https://en.wikipedia.org/wiki/Signature_(logic) "Signature (logic)"
[165]: https://en.wikipedia.org/wiki/Term_algebra "Term algebra"
[166]: https://en.wikipedia.org/wiki/Term_(logic) "Term (logic)"
[167]: http://ncatlab.org/nlab/show/variety+of+algebras#examples_4
[168]: https://en.wikipedia.org/wiki/Equivalence_class "Equivalence class"
[169]: https://en.wikipedia.org/wiki/Identity_element "Identity element"
[170]: https://en.wikipedia.org/wiki/Field_(mathematics) "Field (mathematics)"
[171]: https://en.wikipedia.org/wiki/Division_ring "Division ring"
[172]: https://en.wikipedia.org/wiki/Direct_product "Direct product"
[173]: https://en.wikipedia.org/wiki/Field_(mathematics) "Field (mathematics)"
[174]: https://en.wikipedia.org/wiki/Zero_divisor "Zero divisor"
[175]: https://en.wikipedia.org/w/index.php?title=Algebraic_structure&action=edit&section=7 "Edit section: Category theory"
[176]: https://en.wikipedia.org/wiki/Category_theory "Category theory"
[177]: https://en.wikipedia.org/wiki/Homomorphism "Homomorphism"
[178]: https://en.wikipedia.org/wiki/Function_(mathematics) "Function (mathematics)"
[179]: https://en.wikipedia.org/wiki/Category_(mathematics) "Category (mathematics)"
[180]: https://en.wikipedia.org/wiki/Category_of_groups "Category of groups"
[181]: https://en.wikipedia.org/wiki/Group_(mathematics) "Group (mathematics)"
[182]: https://en.wikipedia.org/wiki/Group_homomorphism "Group homomorphism"
[183]: https://en.wikipedia.org/wiki/Concrete_category "Concrete category"
[184]: https://en.wikipedia.org/wiki/Category_of_sets "Category of sets"
[185]: https://en.wikipedia.org/wiki/Topological_group "Topological group"
[186]: https://en.wikipedia.org/wiki/Category_of_topological_spaces "Category of topological spaces"
[187]: https://en.wikipedia.org/wiki/Forgetful_functor "Forgetful functor"
[188]: https://en.wikipedia.org/wiki/Algebraic_category "Algebraic category"
[189]: https://en.wikipedia.org/w/index.php?title=Essentially_algebraic_category&action=edit&redlink=1 "Essentially algebraic category (page does not exist)"
[190]: https://en.wikipedia.org/w/index.php?title=Presentable_category&action=edit&redlink=1 "Presentable category (page does not exist)"
[191]: https://en.wikipedia.org/wiki/Locally_presentable_category "Locally presentable category"
[192]: https://en.wikipedia.org/wiki/Monad_(category_theory) "Monad (category theory)"
[193]: https://en.wikipedia.org/wiki/Universal_property "Universal property"
[194]: https://en.wikipedia.org/w/index.php?title=Algebraic_structure&action=edit&section=8 "Edit section: Different meanings of "structure""
[195]: https://en.wikipedia.org/wiki/Abuse_of_notation "Abuse of notation"
[196]: https://en.wikipedia.org/wiki/Ring_(mathematics) "Ring (mathematics)"
[197]: https://en.wikipedia.org/w/index.php?title=Algebraic_structure&action=edit&section=9 "Edit section: See also"
[198]: https://en.wikipedia.org/wiki/Free_object "Free object"
[199]: https://en.wikipedia.org/wiki/List_of_algebraic_structures "List of algebraic structures"
[200]: https://en.wikipedia.org/wiki/Mathematical_structure "Mathematical structure"
[201]: https://en.wikipedia.org/wiki/Outline_of_algebraic_structures "Outline of algebraic structures"
[202]: https://en.wikipedia.org/wiki/Signature_(logic) "Signature (logic)"
[203]: https://en.wikipedia.org/wiki/Structure_(mathematical_logic) "Structure (mathematical logic)"
[204]: https://en.wikipedia.org/w/index.php?title=Algebraic_structure&action=edit&section=10 "Edit section: Notes"
[205]: https://en.wikipedia.org/w/index.php?title=Algebraic_structure&action=edit&section=11 "Edit section: References"
[206]: https://en.wikipedia.org/wiki/Saunders_Mac_Lane "Saunders Mac Lane"
[207]: https://en.wikipedia.org/wiki/Garrett_Birkhoff "Garrett Birkhoff"
[208]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[209]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-8218-1646-2 "Special:BookSources/978-0-8218-1646-2"
[210]: https://en.wikipedia.org/wiki/Dover_Publications "Dover Publications"
[211]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[212]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-486-67598-5 "Special:BookSources/978-0-486-67598-5"
[213]: http://www.thoralf.uwaterloo.ca/htdocs/ualg.html
[214]: https://en.wikipedia.org/wiki/Springer-Verlag "Springer-Verlag"
[215]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[216]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-90578-3 "Special:BookSources/978-3-540-90578-3"
[217]: https://en.wikipedia.org/wiki/Saunders_Mac_Lane "Saunders Mac Lane"
[218]: https://en.wikipedia.org/wiki/Categories_for_the_Working_Mathematician "Categories for the Working Mathematician"
[219]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[220]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-387-98403-2 "Special:BookSources/978-0-387-98403-2"
[221]: https://en.wikipedia.org/wiki/Cambridge_University_Press "Cambridge University Press"
[222]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[223]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-63107-5 "Special:BookSources/978-0-521-63107-5"
[224]: https://en.wikipedia.org/w/index.php?title=Algebraic_structure&action=edit&section=12 "Edit section: External links"
[225]: http://math.chapman.edu/~jipsen/structures/doku.php
[226]: http://mathworld.wolfram.com/topics/Algebra.html
[227]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
[228]: http://plato.stanford.edu/entries/algebra/
[229]: https://en.wikipedia.org/wiki/Vaughan_Pratt "Vaughan Pratt"
