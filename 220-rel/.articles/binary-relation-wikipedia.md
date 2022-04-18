---
downloaded:       2021-12-25
page-url:         https://en.wikipedia.org/wiki/Binary_relation#Heterogeneous_relation
page-title:       Binary relation - Wikipedia
article-title:    Binary relation - Wikipedia
---
# Binary relation - Wikipedia

In mathematics, a binary relation associates elements of one set, called the domain, with elements of another set, called the codomain.[1]  A binary relation over sets X and Y is a new set of ordered pairs (x, y) consisting of elements x in X and y in Y.[2] It is a generalization of the more widely understood idea of a mathematical function, but with fewer restrictions. It encodes the common concept of relation: an element x is related to an element y, if and only if the pair (x, y) belongs to the set of ordered pairs that defines the binary relation. A binary relation is the most studied special case n = 2 of an n-ary relation over sets X1, ..., Xn, which is a subset of the Cartesian product [2]
In [mathematics][1], a **binary relation** associates elements of one set, called the *domain*, with elements of another set, called the *codomain*.[\[1\]][2] A binary relation over [sets][3] X and Y is a new set of [ordered pairs][4] (*x*, *y*) consisting of elements x in X and y in Y.[\[2\]][5] It is a generalization of the more widely understood idea of a mathematical [function][6], but with fewer restrictions. It encodes the common concept of relation: an element x is *related* to an element y, [if and only if][7] the pair (*x*, *y*) belongs to the set of ordered pairs that defines the *binary relation*. A binary relation is the most studied special case *n* = 2 of an [n\-ary relation][8] over sets *X*1, ..., *X**n*, which is a subset of the Cartesian product [\[2\]][9]

An example of a binary relation is the "[divides][10]" relation over the set of [prime numbers][11]  and the set of [integers][12] , in which each prime p is related to each integer z that is a [multiple][13] of p, but not to an integer that is not a multiple of p. In this relation, for instance, the prime number 2 is related to numbers such as −4, 0, 6, 10, but not to 1 or 9, just as the prime number 3 is related to 0, 6, and 9, but not to 4 or 13.

Binary relations are used in many branches of mathematics to model a wide variety of concepts. These include, among others:

-   the "[is greater than][14]", "[is equal to][15]", and "divides" relations in [arithmetic][16];
-   the "[is congruent to][17]" relation in [geometry][18];
-   the "is adjacent to" relation in [graph theory][19];
-   the "is [orthogonal][20] to" relation in [linear algebra][21].

A [function][22] may be defined as a special kind of binary relation.[\[3\]][23] Binary relations are also heavily used in [computer science][24].

A binary relation over sets X and Y is an element of the [power set][25] of  Since the latter set is ordered by [inclusion][26] (⊆), each relation has a place in the [lattice][27] of subsets of  A binary relation is either a [homogeneous relation][28] or a [heterogeneous relation][29] depending on whether *X* = *Y* or not.

Since relations are sets, they can be manipulated using set operations, including [union][30], [intersection][31], and [complementation][32], and satisfying the laws of an [algebra of sets][33]. Beyond that, operations like the [converse][34] of a relation and the [composition of relations][35] are available, satisfying the laws of a [calculus of relations][36], for which there are textbooks by [Ernst Schröder][37],[\[4\]][38] [Clarence Lewis][39],[\[5\]][40] and [Gunther Schmidt][41].[\[6\]][42] A deeper analysis of relations involves decomposing them into subsets called *concepts*, and placing them in a [complete lattice][43].

In some systems of [axiomatic set theory][44], relations are extended to [classes][45], which are generalizations of sets. This extension is needed for, among other things, modeling the concepts of "is an element of" or "is a subset of" in set theory, without running into logical inconsistencies such as [Russell's paradox][46].

The terms *correspondence*,[\[7\]][47] **dyadic relation** and **two-place relation** are synonyms for binary relation, though some authors use the term "binary relation" for any subset of a Cartesian product  without reference to X and Y, and reserve the term "correspondence" for a binary relation with reference to X and Y.\[*[citation needed][48]*\]

## Definition\[[edit][49]\]

Given sets *X* and *Y*, the [Cartesian product][50]  is defined as  and its elements are called ordered pairs.

A *binary relation* *R* over sets *X* and *Y* is a subset of [\[2\]][51][\[8\]][52] The set *X* is called the *domain*[\[2\]][53] or *set of departure* of *R*, and the set *Y* the *codomain* or *set of destination* of *R*. In order to specify the choices of the sets *X* and *Y*, some authors define a *binary relation* or *correspondence* as an ordered triple (*X*, *Y*, *G*), where *G* is a subset of  called the *graph* of the binary relation. The statement  reads "*x* is *R*\-related to *y*" and is denoted by *xRy*.[\[4\]][54][\[5\]][55][\[6\]][56][\[note 1\]][57] The *domain of definition* or *active domain*[\[2\]][58] of *R* is the set of all *x* such that *xRy* for at least one *y*. The *codomain of definition*, *active codomain*,[\[2\]][59] *image* or *range* of *R* is the set of all *y* such that *xRy* for at least one *x*. The *field* of *R* is the union of its domain of definition and its codomain of definition.[\[10\]][60][\[11\]][61][\[12\]][62]

When  a binary relation is called a *[homogeneous relation][63]* (or *endorelation*). Otherwise it is a *[heterogeneous relation][64]*.[\[13\]][65][\[14\]][66][\[15\]][67]

In a binary relation, the order of the elements is important; if  then *yRx* can be true or false independently of *xRy*. For example, 3 divides 9, but 9 does not divide 3.

## Examples\[[edit][68]\]

1) The following example shows that the choice of codomain is important. Suppose there are four objects  and four people  A possible relation on *A* and *B* is the relation "is owned by", given by  That is, John owns the ball, Mary owns the doll, and Venus owns the car. Nobody owns the cup and Ian owns nothing, see 1st example. As a set, *R* does not involve Ian, and therefore *R* could have been viewed as a subset of  i.e. a relation over *A* and  see 2nd example. While the 2nd example relation is surjective (see [below][69]), the 1st is not.

[][70]

Oceans and continents (islands omitted)

2) Let *A* = {Indian, Arctic, Atlantic, Pacific}, the [oceans][71] of the globe, and *B* = { NA, SA, AF, EU, AS, AU, AA }, the [continents][72]. Let *aRb* represent that ocean *a* borders continent *b*. Then the [logical matrix][73] for this relation is:

The connectivity of the planet Earth can be viewed through *R R*T and *R*T *R*, the former being a  relation on *A*, which is the universal relation ( or a logical matrix of all ones). This universal relation reflects the fact that every ocean is separated from the others by at most one continent. On the other hand, *R*T *R* is a relation on  which *fails* to be universal because at least two oceans must be traversed to voyage from [Europe][74] to [Australia][75].

3) Visualization of relations leans on [graph theory][76]: For relations on a set (homogeneous relations), a [directed graph][77] illustrates a relation and a [graph][78] a [symmetric relation][79]. For heterogeneous relations a [hypergraph][80] has edges possibly with more than two nodes, and can be illustrated by a [bipartite graph][81].

Just as the [clique][82] is integral to relations on a set, so [bicliques][83] are used to describe heterogeneous relations; indeed, they are the "concepts" that generate a lattice associated with a relation.

[][84]

The various *t* axes represent time for observers in motion, the corresponding *x* axes are their lines of simultaneity

4) [Hyperbolic orthogonality][85]: Time and space are different categories, and temporal properties are separate from spatial properties. The idea of *simultaneous events* is simple in [absolute time and space][86] since each time *t* determines a simultaneous [hyperplane][87] in that cosmology. [Herman Minkowski][88] changed that when he articulated the notion of *relative simultaneity*, which exists when spatial events are "normal" to a time characterized by a velocity. He used an indefinite inner product, and specified that a time vector is normal to a space vector when that product is zero. The indefinite inner product in a [composition algebra][89] is given by

 where the overbar denotes conjugation.

As a relation between some temporal events and some spatial events, [hyperbolic orthogonality][90] (as found in [split-complex numbers][91]) is a heterogeneous relation.[\[16\]][92]

5) A [geometric configuration][93] can be considered a relation between its points and its lines. The relation is expressed as [incidence][94]. Finite and infinite projective and affine planes are included. [Jakob Steiner][95] pioneered the cataloguing of configurations with the [Steiner systems][96]  which have an n-element set *S* and a set of k-element subsets called **blocks**, such that a subset with *t* elements lies in just one block. These [incidence structures][97] have been generalized with [block designs][98]. The [incidence matrix][99] used in these geometrical contexts corresponds to the logical matrix used generally with binary relations.

An incidence structure is a triple **D** = (*V*, **B**, *I*) where *V* and **B** are any two disjoint sets and *I* is a binary relation between *V* and **B**, i.e.  The elements of *V* will be called *points*, those of **B** blocks and those of *I flags*.[\[17\]][100]

## Special types of binary relations\[[edit][101]\]

[][102]

Examples of four types of binary relations over the [real numbers][103]: one-to-one (in green), one-to-many (in blue), many-to-one (in red), many-to-many (in black).

Some important types of binary relations *R* over sets *X* and *Y* are listed below.

*Set-like*\[*[citation needed][104]*\] (or *local*)

for all  the [class][105] of all y such that *yRx* is a set. (This makes sense only if relations over proper classes are allowed.) For example, the usual ordering < over the class of [ordinal numbers][106] is a set-like relation, while its inverse > is not.

Uniqueness properties:

-   **Injective** (also called **left-unique**):[\[18\]][107] for all  and all  if *xRy* and *zRy* then *x* = *z*. For such a relation, {*Y*} is called *a [primary key][108]* of *R*.[\[2\]][109] For example, the green and blue binary relations in the diagram are injective, but the red one is not (as it relates both −1 and 1 to 1), nor the black one (as it relates both −1 and 1 to 0).
-   **Functional** (also called **right-unique**,[\[18\]][110] **right-definite**[\[19\]][111] or **univalent**):[\[6\]][112] for all  and all  if *xRy* and *xRz* then *y* = *z*. Such a binary relation is called a *[partial function][113]*. For such a relation,  is called *a primary key* of *R*.[\[2\]][114] For example, the red and green binary relations in the diagram are functional, but the blue one is not (as it relates 1 to both −1 and 1), nor the black one (as it relates 0 to both −1 and 1).
-   **One-to-one**: injective and functional. For example, the green binary relation in the diagram is one-to-one, but the red, blue and black ones are not.
-   **One-to-many**: injective and not functional. For example, the blue binary relation in the diagram is one-to-many, but the red, green and black ones are not.
-   **Many-to-one**: functional and not injective. For example, the red binary relation in the diagram is many-to-one, but the green, blue and black ones are not.
-   **Many-to-many**: not injective nor functional. For example, the black binary relation in the diagram is many-to-many, but the red, green and blue ones are not.

Totality properties (only definable if the domain *X* and codomain *Y* are specified):

-   **[Serial][115]** (also called **left-total**):[\[18\]][116] for all *x* in *X* there exists a *y* in *Y* such that *xRy*. In other words, the domain of definition of *R* is equal to *X*. This property, although also referred to as *total* by some authors,\[*[citation needed][117]*\] is different from the definition of *[connected][118]* (also called *total* by some authors)\[*[citation needed][119]*\] in [Properties][120]. Such a binary relation is called a *[multivalued function][121]*. For example, the red and green binary relations in the diagram are serial, but the blue one is not (as it does not relate −1 to any real number), nor the black one (as it does not relate 2 to any real number). As another example, > is a serial relation over the integers. But it is not a serial relation over the positive integers, because there is no y in the positive integers such that 1 > *y*.[\[20\]][122] However, < is a serial relation over the positive integers, the rational numbers and the real numbers. Every reflexive relation is serial: for a given x, choose *y* = *x*.
-   **Surjective** (also called **right-total**[\[18\]][123] or **onto**): for all *y* in *Y*, there exists an *x* in *X* such that *xRy*. In other words, the codomain of definition of *R* is equal to *Y*. For example, the green and blue binary relations in the diagram are surjective, but the red one is not (as it does not relate any real number to −1), nor the black one (as it does not relate any real number to 2).

Uniqueness and totality properties (only definable if the domain *X* and codomain *Y* are specified):

-   A *[function][124]*: a binary relation that is functional and serial. For example, the red and green binary relations in the diagram are functions, but the blue and black ones are not.
-   An *[injection][125]*: a function that is injective. For example, the green binary relation in the diagram is an injection, but the red, blue and black ones are not.
-   A *[surjection][126]*: a function that is surjective. For example, the green binary relation in the diagram is a surjection, but the red, blue and black ones are not.
-   A *[bijection][127]*: a function that is injective and surjective. For example, the green binary relation in the diagram is a bijection, but the red, blue and black ones are not.

## Operations on binary relations\[[edit][128]\]

### Union\[[edit][129]\]

If *R* and *S* are binary relations over sets *X* and *Y* then  is the *union relation* of *R* and *S* over *X* and *Y*.

The identity element is the empty relation. For example,  is the union of < and =, and  is the union of > and =.

### Intersection\[[edit][130]\]

If *R* and *S* are binary relations over sets *X* and *Y* then  is the *intersection relation* of *R* and *S* over *X* and *Y*.

The identity element is the universal relation. For example, the relation "is divisible by 6" is the intersection of the relations "is divisible by 3" and "is divisible by 2".

### Composition\[[edit][131]\]

If *R* is a binary relation over sets *X* and *Y*, and *S* is a binary relation over sets *Y* and *Z* then  (also denoted by *R*; *S*) is the *composition relation* of *R* and *S* over *X* and *Z*.

The identity element is the identity relation. The order of *R* and *S* in the notation  used here agrees with the standard notational order for [composition of functions][132]. For example, the composition "is mother of" "is parent of" yields "is maternal grandparent of", while the composition "is parent of"  "is mother of" yields "is grandmother of". For the former case, if *x* is the parent of *y* and *y* is the mother of *z*, then *x* is the maternal grandparent of *z*.

### Converse\[[edit][133]\]

If *R* is a binary relation over sets *X* and *Y* then  is the *converse relation* of *R* over *Y* and *X*.

For example, = is the converse of itself, as is  and  and  are each other's converse, as are  and  A binary relation is equal to its converse if and only if it is [symmetric][134].

### Complement\[[edit][135]\]

If *R* is a binary relation over sets *X* and *Y* then  (also denoted by *R* or ¬ *R*) is the *complementary relation* of *R* over *X* and *Y*.

For example,  and  are each other's complement, as are  and   and  and  and  and, for [total orders][136], also < and  and > and 

The complement of the [converse relation][137]  is the converse of the complement: 

If  the complement has the following properties:

-   If a relation is symmetric, then so is the complement.
-   The complement of a reflexive relation is irreflexive—and vice versa.
-   The complement of a [strict weak order][138] is a total preorder—and vice versa.

### Restriction\[[edit][139]\]

If *R* is a binary [homogeneous relation][140] over a set *X* and *S* is a subset of *X* then  is the *restriction relation* of *R* to *S* over *X*.

If *R* is a binary relation over sets *X* and *Y* and if *S* is a subset of *X* then  is the *left-restriction relation* of *R* to *S* over *X* and *Y*.

If *R* is a binary relation over sets *X* and *Y* and if *S* is a subset of *Y* then  is the *right-restriction relation* of *R* to *S* over *X* and *Y*.

If a relation is [reflexive][141], irreflexive, [symmetric][142], [antisymmetric][143], [asymmetric][144], [transitive][145], [total][146], [trichotomous][147], a [partial order][148], [total order][149], [strict weak order][150], [total preorder][151] (weak order), or an [equivalence relation][152], then so too are its restrictions.

However, the transitive closure of a restriction is a subset of the restriction of the transitive closure, i.e., in general not equal. For example, restricting the relation "*x* is parent of *y*" to females yields the relation "*x* is mother of the woman *y*"; its transitive closure doesn't relate a woman with her paternal grandmother. On the other hand, the transitive closure of "is parent of" is "is ancestor of"; its restriction to females does relate a woman with her paternal grandmother.

Also, the various concepts of [completeness][153] (not to be confused with being "total") do not carry over to restrictions. For example, over the [real numbers][154] a property of the relation  is that every [non-empty][155] subset  with an [upper bound][156] in  has a [least upper bound][157] (also called supremum) in  However, for the rational numbers this supremum is not necessarily rational, so the same property does not hold on the restriction of the relation  to the rational numbers.

A binary relation *R* over sets *X* and *Y* is said to be *contained in* a relation *S* over *X* and *Y*, written  if *R* is a subset of *S*, that is, for all  and  if *xRy*, then *xSy*. If *R* is contained in *S* and *S* is contained in *R*, then *R* and *S* are called *equal* written *R* = *S*. If *R* is contained in *S* but *S* is not contained in *R*, then *R* is said to be *smaller* than *S*, written  For example, on the [rational numbers][158], the relation  is smaller than  and equal to the composition 

### Matrix representation\[[edit][159]\]

Binary relations over sets *X* and *Y* can be represented algebraically by [logical matrices][160] indexed by *X* and *Y* with entries in the [Boolean semiring][161] (addition corresponds to OR and multiplication to AND) where [matrix addition][162] corresponds to union of relations, [matrix multiplication][163] corresponds to composition of relations (of a relation over *X* and *Y* and a relation over *Y* and *Z*),[\[21\]][164] the [Hadamard product][165] corresponds to intersection of relations, the [zero matrix][166] corresponds to the empty relation, and the [matrix of ones][167] corresponds to the universal relation. Homogeneous relations (when *X* = *Y*) form a [matrix semiring][168] (indeed, a [matrix semialgebra][169] over the Boolean semiring) where the [identity matrix][170] corresponds to the identity relation.[\[22\]][171]

## Sets versus classes\[[edit][172]\]

Certain mathematical "relations", such as "equal to", "subset of", and "member of", cannot be understood to be binary relations as defined above, because their domains and codomains cannot be taken to be sets in the usual systems of [axiomatic set theory][173]. For example, to model the general concept of "equality" as a binary relation  take the domain and codomain to be the "class of all sets", which is not a set in the usual set theory.

In most mathematical contexts, references to the relations of equality, membership and subset are harmless because they can be understood implicitly to be restricted to some set in the context. The usual work-around to this problem is to select a "large enough" set *A*, that contains all the objects of interest, and work with the restriction =*A* instead of =. Similarly, the "subset of" relation  needs to be restricted to have domain and codomain P(*A*) (the power set of a specific set *A*): the resulting set relation can be denoted by  Also, the "member of" relation needs to be restricted to have domain *A* and codomain P(*A*) to obtain a binary relation  that is a set. Bertrand Russell has shown that assuming  to be defined over all sets leads to a [contradiction][174] in naive set theory.

Another solution to this problem is to use a set theory with proper classes, such as [NBG][175] or [Morse–Kelley set theory][176], and allow the domain and codomain (and so the graph) to be [proper classes][177]: in such a theory, equality, membership, and subset are binary relations without special comment. (A minor modification needs to be made to the concept of the ordered triple (*X*, *Y*, *G*), as normally a proper class cannot be a member of an ordered tuple; or of course one can identify the binary relation with its graph in this context.)[\[23\]][178] With this definition one can for instance define a binary relation over every set and its power set.

## Homogeneous relation\[[edit][179]\]

A **homogeneous relation** over a set *X* is a binary relation over *X* and itself, i.e. it is a subset of the Cartesian product [\[15\]][180][\[24\]][181][\[25\]][182] It is also simply called a (binary) relation over *X*.

A homogeneous relation *R* over a set *X* may be identified with a [directed simple graph permitting loops][183], where *X* is the vertex set and *R* is the edge set (there is an edge from a vertex *x* to a vertex *y* if and only if *xRy*). The set of all homogeneous relations  over a set *X* is the [power set][184]  which is a [Boolean algebra][185] augmented with the [involution][186] of mapping of a relation to its [converse relation][187]. Considering [composition of relations][188] as a [binary operation][189] on , it forms a [semigroup with involution][190].

Some important properties that a homogeneous relation R over a set X may have are:

A *[partial order][191]* is a relation that is reflexive, antisymmetric, and transitive. A *[strict partial order][192]* is a relation that is irreflexive, antisymmetric, and transitive. A *[total order][193]* is a relation that is reflexive, antisymmetric, transitive and connected.[\[29\]][194] A *[strict total order][195]* is a relation that is irreflexive, antisymmetric, transitive and connected. An *[equivalence relation][196]* is a relation that is reflexive, symmetric, and transitive. For example, "*x* divides *y*" is a partial, but not a total order on [natural numbers][197]  "*x* < *y*" is a strict total order on  and "*x* is parallel to *y*" is an equivalence relation on the set of all lines in the [Euclidean plane][198].

All operations defined in the section [Operations on binary relations][199] also apply to homogeneous relations. Beyond that, a homogeneous relation over a set *X* may be subjected to closure operations like:

*[Reflexive closure][200]*

the (unique) reflexive relation over *X* containing *R*,

*[Transitive closure][201]*

the smallest transitive relation over *X* containing *R*,

*[Equivalence closure][202]*

the smallest [equivalence relation][203] over *X* containing *R*.

## Heterogeneous relation\[[edit][204]\]

In [mathematics][205], a **heterogeneous relation** is a binary relation, a [subset][206] of a [Cartesian product][207]  where *A* and *B* are distinct sets.[\[30\]][208] The prefix *hetero* is from the Greek ἕτερος (*heteros*, "other, another, different").

A heterogeneous relation has been called a **rectangular relation**,[\[15\]][209] suggesting that it does not have the square-symmetry of a [homogeneous relation on a set][210] where  Commenting on the development of binary relations beyond homogeneous relations, researchers wrote, "...a variant of the theory has evolved that treats relations from the very beginning as *heterogeneous* or *rectangular*, i.e. as relations where the normal case is that they are relations between different sets."[\[31\]][211]

## Calculus of relations\[[edit][212]\]

Developments in [algebraic logic][213] have facilitated usage of binary relations. The [calculus of relations][214] includes the [algebra of sets][215], extended by [composition of relations][216] and the use of [converse relations][217]. The inclusion  meaning that *aRb* implies *aSb*, sets the scene in a [lattice][218] of relations. But since  the inclusion symbol is superfluous. Nevertheless, composition of relations and manipulation of the operators according to [Schröder rules][219], provides a calculus to work in the [power set][220] of 

In contrast to homogeneous relations, the [composition of relations][221] operation is only a [partial function][222]. The necessity of matching range to domain of composed relations has led to the suggestion that the study of heterogeneous relations is a chapter of [category theory][223] as in the [category of sets][224], except that the [morphisms][225] of this category are relations. The *objects* of the category [Rel][226] are sets, and the relation-morphisms compose as required in a [category][227].\[*[citation needed][228]*\]

## Induced concept lattice\[[edit][229]\]

Binary relations have been described through their induced [concept lattices][230]: A **concept** *C* ⊂ *R* satisfies two properties: (1) The logical matrix of *C* is the [outer product][231] of logical vectors

 logical vectors.\[*[clarification needed][232]*\] (2) *C* is maximal, not contained in any other outer product. Thus *C* is described as a non-enlargeable rectangle.

For a given relation  the set of concepts, enlarged by their joins and meets, forms an "induced lattice of concepts", with inclusion  forming a [preorder][233].

The [MacNeille completion theorem][234] (1937) (that any partial order may be embedded in a [complete lattice][235]) is cited in a 2013 survey article "Decomposition of relations on concept lattices".[\[32\]][236] The decomposition is

 where *f* and *g* are [functions][237], called *mappings* or left-total, univalent relations in this context. The "induced concept lattice is isomorphic to the cut completion of the partial order *E* that belongs to the minimal decomposition (*f, g, E*) of the relation *R*."

Particular cases are considered below: *E* total order corresponds to Ferrers type, and *E* identity corresponds to difunctional, a generalization of [equivalence relation][238] on a set.

Relations may be ranked by the **Schein rank** which counts the number of concepts necessary to cover a relation.[\[33\]][239] Structural analysis of relations with concepts provides an approach for [data mining][240].[\[34\]][241]

## Particular relations\[[edit][242]\]

### Difunctional\[[edit][243]\]

Among the homogeneous relations on a set, the [equivalence relations][244] are distinguished for their ability to partition the set. With binary relations in general the idea is to partition objects by distinguishing attributes. One way this can be done is with an intervening set  of [indicators][245]. The partitioning relation  is a [composition of relations][246] using *univalent* relations 

The [logical matrix][247] of such a relation *R* can be re-arranged as a [block matrix][248] with blocks of ones along the diagonal. In terms of the calculus of relations, in 1950 [Jacques Riguet][249] showed that such relations satisfy the inclusion

[\[35\]][250]

He named these relations **difunctional** since the composition *F G*T involves univalent relations, commonly called *functions*.

Using the notation {*y*: *xRy*} = *xR*, a difunctional relation can also be characterized as a relation *R* such that wherever *x*1*R* and *x*2*R* have a non-empty intersection, then these two sets coincide; formally  implies [\[36\]][251]

In 1997 researchers found "utility of binary decomposition based on difunctional dependencies in [database][252] management."[\[37\]][253] Furthermore, difunctional relations are fundamental in the study of [bisimulations][254].[\[38\]][255]

In the context of homogeneous relations, a [partial equivalence relation][256] is difunctional.

In [automata theory][257], the term **rectangular relation** has also been used to denote a difunctional relation. This terminology recalls the fact that, when represented as a logical matrix, the columns and rows of a difunctional relation can be arranged as a block diagonal matrix with rectangular blocks of true on the (asymmetric) main diagonal.[\[39\]][258]

### Ferrers type\[[edit][259]\]

A [strict order][260] on a set is a homogeneous relation arising in [order theory][261]. In 1951 [Jacques Riguet][262] adopted the ordering of a [partition][263] of an integer, called a [Ferrers diagram][264], to extend ordering to binary relations in general.[\[40\]][265]

The corresponding logical matrix of a general binary relation has rows which finish with a sequence of ones. Thus the dots of a Ferrer's diagram are changed to ones and aligned on the right in the matrix.

An algebraic statement required for a Ferrers type relation R is

If any one of the relations  is of Ferrers type, then all of them are. [\[30\]][266]

### Contact\[[edit][267]\]

Suppose *B* is the [power set][268] of *A*, the set of all [subsets][269] of *A*. Then a relation *g* is a **contact relation** if it satisfies three properties:

1.  
2.  
3.  

The [set membership][270] relation, ε = "is an element of", satisfies these properties so ε is a contact relation. The notion of a general contact relation was introduced by [Georg Aumann][271] in 1970.[\[41\]][272][\[42\]][273]

In terms of the calculus of relations, sufficient conditions for a contact relation include

where  is the converse of set membership (∈).[\[43\]][274]: 280 

## Preorder R\\R\[[edit][275]\]

Every relation *R* generates a [preorder][276]  which is the [left residual][277].[\[44\]][278] In terms of converse and complements,  Forming the diagonal of , the corresponding row of  and column of  will be of opposite logical values, so the diagonal is all zeros. Then

 so that  is a [reflexive relation][279].

To show [transitivity][280], one requires that  Recall that  is the largest relation such that  Then

 (repeat)

 (Schröder's rule)

 (complementation)

 (definition)

The [inclusion][281] relation Ω on the [power set][282] of *U* can be obtained in this way from the [membership relation][283]  on subsets of *U*:

[\[43\]][284]: 283 

## Fringe of a relation\[[edit][285]\]

Given a relation *R*, a sub-relation called its *fringe* is defined as

When *R* is a partial identity relation, difunctional, or a block diagonal relation, then fringe(*R*) = *R*. Otherwise the fringe operator selects a boundary sub-relation described in terms of its logical matrix: fringe(*R*) is the side diagonal if *R* is an upper right triangular [linear order][286] or [strict order][287]. Fringe(*R*) is the block fringe if R is irreflexive () or upper right block triangular. Fringe(*R*) is a sequence of boundary rectangles when *R* is of Ferrers type.

On the other hand, Fringe(*R*) = ∅ when *R* is a [dense][288], linear, strict order.[\[43\]][289]

## Mathematical heaps\[[edit][290]\]

Given two sets *A* and *B*, the set of binary relations between them  can be equipped with a [ternary operation][291]  where *b*T denotes the [converse relation][292] of *b*. In 1953 [Viktor Wagner][293] used properties of this ternary operation to define semiheaps, heaps, and generalized heaps.[\[45\]][294][\[46\]][295] The contrast of heterogeneous and homogeneous relations is highlighted by these definitions:

> There is a pleasant symmetry in Wagner's work between heaps, semiheaps, and generalised heaps on the one hand, and groups, semigroups, and generalised groups on the other. Essentially, the various types of semiheaps appear whenever we consider binary relations (and partial one-one mappings) between *different* sets *A* and *B*, while the various types of semigroups appear in the case where *A* = *B*.
> 
> — Christopher Hollings, "Mathematics across the Iron Curtain: a history of the algebraic theory of semigroups"[\[47\]][296]

## See also\[[edit][297]\]

## Notes\[[edit][298]\]

1.  **[^][299]** Authors who deal with binary relations only as a special case of *n*\-ary relations for arbitrary *n* usually write *Rxy* as a special case of *Rx*1...*x**n* ([prefix notation][300]).[\[9\]][301]

## References\[[edit][302]\]

1.  **[^][303]** Meyer, Albert (17 November 2021). ["MIT 6.042J Math for Computer Science, Lecture 3T, Slide 2"][304] (PDF).
2.  ^ [Jump up to: ***a***][305] [***b***][306] [***c***][307] [***d***][308] [***e***][309] [***f***][310] [***g***][311] [***h***][312] Codd, Edgar Frank (June 1970). ["A Relational Model of Data for Large Shared Data Banks"][313] (PDF). *Communications of the ACM*. **13** (6): 377–387. [doi][314]:[10.1145/362384.362685][315]. [S2CID][316] [207549016][317]. Retrieved 2020-04-29.
3.  **[^][318]** ["Relation definition – Math Insight"][319]. *mathinsight.org*. Retrieved 2019-12-11.
4.  ^ [Jump up to: ***a***][320] [***b***][321] [Ernst Schröder][322] (1895) [Algebra und Logic der Relative][323], via [Internet Archive][324]
5.  ^ [Jump up to: ***a***][325] [***b***][326] [C. I. Lewis][327] (1918) [A Survey of Symbolic Logic][328] , pages 269 to 279, via internet Archive
6.  ^ [Jump up to: ***a***][329] [***b***][330] [***c***][331] [Gunther Schmidt][332], 2010. *Relational Mathematics*. Cambridge University Press, [ISBN][333] [978-0-521-76268-7][334], Chapt. 5
7.  **[^][335]** Jacobson, Nathan (2009), [Basic Algebra II (2nd ed.)][336] § 2.1.
8.  **[^][337]** [Enderton 1977][338], Ch 3. pg. 40
9.  **[^][339]** Hans Hermes (1973). *Introduction to Mathematical Logic*. Hochschultext (Springer-Verlag). London: Springer. [ISBN][340] [3540058192][341]. [ISSN][342] [1431-4657][343]. Sect.II.§1.1.4
10.  **[^][344]** [Suppes, Patrick][345] (1972) \[originally published by D. van Nostrand Company in 1960\]. [*Axiomatic Set Theory*][346]. Dover. [ISBN][347] [0-486-61630-4][348].
11.  **[^][349]** [Smullyan, Raymond M.][350]; Fitting, Melvin (2010) \[revised and corrected republication of the work originally published in 1996 by Oxford University Press, New York\]. *Set Theory and the Continuum Problem*. Dover. [ISBN][351] [978-0-486-47484-7][352].
12.  **[^][353]** [Levy, Azriel][354] (2002) \[republication of the work published by Springer-Verlag, Berlin, Heidelberg and New York in 1979\]. *Basic Set Theory*. Dover. [ISBN][355] [0-486-42079-5][356].
13.  **[^][357]** [Schmidt, Gunther][358]; Ströhlein, Thomas (2012). [*Relations and Graphs: Discrete Mathematics for Computer Scientists*][359]. Springer Science & Business Media. Definition 4.1.1. [ISBN][360] [978-3-642-77968-8][361].
14.  **[^][362]** [Christodoulos A. Floudas][363]; Panos M. Pardalos (2008). [*Encyclopedia of Optimization*][364] (2nd ed.). Springer Science & Business Media. pp. 299–300. [ISBN][365] [978-0-387-74758-3][366].
15.  ^ [Jump up to: ***a***][367] [***b***][368] [***c***][369] Michael Winter (2007). *Goguen Categories: A Categorical Approach to L-fuzzy Relations*. Springer. pp. x–xi. [ISBN][370] [978-1-4020-6164-6][371].
16.  **[^][372]** [][373] [Relative simultaneity][374] at Wikibooks
17.  **[^][375]** Beth, Thomas; [Jungnickel, Dieter][376]; [Lenz, Hanfried][377] (1986). *Design Theory*. [Cambridge University Press][378]. p. 15.. 2nd ed. (1999) [ISBN][379] [978-0-521-44432-3][380]
18.  ^ [Jump up to: ***a***][381] [***b***][382] [***c***][383] [***d***][384] Kilp, Knauer and Mikhalev: p. 3. The same four definitions appear in the following:
    
    -   Peter J. Pahl; Rudolf Damrath (2001). *Mathematical Foundations of Computational Engineering: A Handbook*. Springer Science & Business Media. p. 506. [ISBN][385] [978-3-540-67995-0][386].
    -   [Eike Best][387] (1996). *Semantics of Sequential and Parallel Programs*. Prentice Hall. pp. 19–21. [ISBN][388] [978-0-13-460643-9][389].
    -   Robert-Christoph Riemann (1999). *Modelling of Concurrent Systems: Structural and Semantical Methods in the High Level Petri Net Calculus*. Herbert Utz Verlag. pp. 21–22. [ISBN][390] [978-3-89675-629-9][391].
    
19.  **[^][392]** Mäs, Stephan (2007), "Reasoning on Spatial Semantic Integrity Constraints", *Spatial Information Theory: 8th International Conference, COSIT 2007, Melbourne, Australia, September 19–23, 2007, Proceedings*, Lecture Notes in Computer Science, **4736**, Springer, pp. 285–302, [doi][393]:[10.1007/978-3-540-74788-8\_18][394]
20.  **[^][395]** Yao, Y.Y.; Wong, S.K.M. (1995). ["Generalization of rough sets using relationships between attribute values"][396] (PDF). *Proceedings of the 2nd Annual Joint Conference on Information Sciences*: 30–33..
21.  **[^][397]** [John C. Baez][398] (6 Nov 2001). ["quantum mechanics over a commutative rig"][399]. [Newsgroup][400]: [sci.physics.research][401]. [Usenet:][402] [9s87n0$iv5@gap.cco.caltech.edu][403]. Retrieved November 25, 2018.
22.  **[^][404]** Droste, M., & Kuich, W. (2009). Semirings and Formal Power Series. *Handbook of Weighted Automata*, 3–28. [doi][405]:[10.1007/978-3-642-01492-5\_1][406], pp. 7-10
23.  **[^][407]** [Tarski, Alfred][408]; Givant, Steven (1987). [*A formalization of set theory without variables*][409]. American Mathematical Society. p. [3][410]. [ISBN][411] [0-8218-1041-3][412].
24.  **[^][413]** M. E. Müller (2012). *Relational Knowledge Discovery*. Cambridge University Press. p. 22. [ISBN][414] [978-0-521-19021-3][415].
25.  **[^][416]** Peter J. Pahl; Rudolf Damrath (2001). *Mathematical Foundations of Computational Engineering: A Handbook*. Springer Science & Business Media. p. 496. [ISBN][417] [978-3-540-67995-0][418].
26.  **[^][419]** Smith, Douglas; Eggen, Maurice; St. Andre, Richard (2006), *A Transition to Advanced Mathematics* (6th ed.), Brooks/Cole, p. 160, [ISBN][420] [0-534-39900-2][421]
27.  **[^][422]** Nievergelt, Yves (2002), *Foundations of Logic and Mathematics: Applications to Computer Science and Cryptography*, Springer-Verlag, p. [158][423].
28.  **[^][424]** Flaška, V.; Ježek, J.; Kepka, T.; Kortelainen, J. (2007). [*Transitive Closures of Binary Relations I*][425] (PDF). Prague: School of Mathematics – Physics Charles University. p. 1. Archived from [the original][426] (PDF) on 2013-11-02. Lemma 1.1 (iv). This source refers to asymmetric relations as "strictly antisymmetric".
29.  **[^][427]** Joseph G. Rosenstein, *Linear orderings*, Academic Press, 1982, [ISBN][428] [0-12-597680-1][429], p. 4
30.  ^ [Jump up to: ***a***][430] [***b***][431] [Schmidt, Gunther][432]; Ströhlein, Thomas (2012). [*Relations and Graphs: Discrete Mathematics for Computer Scientists*][433]. Springer Science & Business Media. p. 77. [ISBN][434] [978-3-642-77968-8][435].
31.  **[^][436]** G. Schmidt, Claudia Haltensperger, and Michael Winter (1997) "Heterogeneous relation algebra", chapter 3 (pages 37 to 53) in *Relational Methods in Computer Science*, Advances in Computer Science, [Springer books][437] [ISBN][438] [3-211-82971-7][439]
32.  **[^][440]** [R. Berghammer][441] & M. Winter (2013) "Decomposition of relations on concept lattices", [Fundamenta Informaticae][442] 126(1): 37–82 [doi][443]:[10.3233/FI-2013-871][444]
33.  **[^][445]** Ki Hang Kim (1982) *Boolean Matrix Theory and Applications*, page 37, [Marcel Dekker][446] [ISBN][447] [0-8247-1788-0][448]
34.  **[^][449]** Ali Jaoua, Rehab Duwairi, Samir Elloumi, and Sadok Ben Yahia (2009) "Data mining, reasoning and incremental information retrieval through non enlargeable rectangular relation coverage", pages 199 to 210 in *Relations and Kleene algebras in computer science*, [Lecture Notes in Computer Science][450] 5827, Springer [MR][451][2781235][452]
35.  **[^][453]** [Jacques Riguet][454] (1950) "Quelques proprietes des relations difonctionelles", *Comptes Rendus* 230: 1999–2000
36.  **[^][455]** Chris Brink; Wolfram Kahl; Gunther Schmidt (1997). *Relational Methods in Computer Science*. Springer Science & Business Media. p. 200. [ISBN][456] [978-3-211-82971-4][457].
37.  **[^][458]** Ali Jaoua, Nadin Belkhiter, Habib Ounalli, and Theodore Moukam (1997) "Databases", pages 197–210 in *Relational Methods in Computer Science*, edited by Chris Brink, Wolfram Kahl, and [Gunther Schmidt][459], [Springer Science & Business Media][460] [ISBN][461] [978-3-211-82971-4][462]
38.  **[^][463]** Gumm, H. P.; Zarrad, M. (2014). "Coalgebraic Simulations and Congruences". *Coalgebraic Methods in Computer Science*. [Lecture Notes in Computer Science][464]. **8446**. p. 118. [doi][465]:[10.1007/978-3-662-44124-4\_7][466]. [ISBN][467] [978-3-662-44123-7][468].
39.  **[^][469]** [Julius Richard Büchi][470] (1989). *Finite Automata, Their Algebras and Grammars: Towards a Theory of Formal Expressions*. Springer Science & Business Media. pp. 35–37. [ISBN][471] [978-1-4613-8853-1][472].
40.  **[^][473]** J. Riguet (1951) "Les relations de Ferrers", [Comptes Rendus][474] 232: 1729,30
41.  **[^][475]** Georg Aumann (1971). ["Kontakt-Relationen"][476]. *Sitzungsberichte der mathematisch-physikalischen Klasse der Bayerischen Akademie der Wissenschaften München*. **1970** (II): 67–77.
42.  **[^][477]** Anne K. Steiner (1970) [Review:*Kontakt-Relationen*][478] from [Mathematical Reviews][479]
43.  ^ [Jump up to: ***a***][480] [***b***][481] [***c***][482] [Gunther Schmidt][483] (2011) *Relational Mathematics*, pages 211−15, [Cambridge University Press][484] [ISBN][485] [978-0-521-76268-7][486]
44.  **[^][487]** In this context, the symbol  does not mean "[set difference][488]".
45.  **[^][489]** [Viktor Wagner][490] (1953) "The theory of generalised heaps and generalised groups", [Matematicheskii Sbornik][491] 32(74): 545 to 632 [MR][492][0059267][493]
46.  **[^][494]** C.D. Hollings & M.V. Lawson (2017) *Wagner’s Theory of Generalised Heaps*, [Springer books][495] [ISBN][496] [978-3-319-63620-7][497] [MR][498][3729305][499]
47.  **[^][500]** Christopher Hollings (2014) *Mathematics across the Iron Curtain: a history of the algebraic theory of semigroups*, page 265, History of Mathematics 41, [American Mathematical Society][501] [ISBN][502] [978-1-4704-1493-1][503]

## Bibliography\[[edit][504]\]

-   [Schmidt, Gunther][505]; Ströhlein, Thomas (2012). ["Chapter 3: Heterogeneous relations"][506]. *Relations and Graphs: Discrete Mathematics for Computer Scientists*. Springer Science & Business Media. [ISBN][507] [978-3-642-77968-8][508].
-   [Ernst Schröder][509] (1895) [Algebra der Logik, Band III][510], via [Internet Archive][511]
-   [Codd, Edgar Frank][512] (1990). [*The Relational Model for Database Management: Version 2*][513] (PDF). Boston: [Addison-Wesley][514]. [ISBN][515] [978-0201141924][516].
-   [Enderton, Herbert][517] (1977). *Elements of Set Theory*. Boston: [Academic Press][518]. [ISBN][519] [978-0-12-238440-0][520].
-   Kilp, Mati; Knauer, Ulrich; Mikhalev, Alexander (2000). *Monoids, Acts and Categories: with Applications to Wreath Products and Graphs*. Berlin: [De Gruyter][521]. [ISBN][522] [978-3-11-015248-7][523].
-   [Peirce, Charles Sanders][524] (1873). ["Description of a Notation for the Logic of Relatives, Resulting from an Amplification of the Conceptions of Boole's Calculus of Logic"][525]. *Memoirs of the American Academy of Arts and Sciences*. **9** (2): 317–178. [doi][526]:[10.2307/25058006][527]. [hdl][528]:[2027/hvd.32044019561034][529]. [JSTOR][530] [25058006][531]. Retrieved 2020-05-05.
-   [Schmidt, Gunther][532] (2010). [*Relational Mathematics*][533]. Cambridge: [Cambridge University Press][534]. [ISBN][535] [978-0-521-76268-7][536].

## External links\[[edit][537]\]

-   [][538] Media related to [Binary relations][539] at Wikimedia Commons
-   ["Binary relation"][540], *[Encyclopedia of Mathematics][541]*, [EMS Press][542], 2001 \[1994\]

[1]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[2]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-1
[3]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[4]: https://en.wikipedia.org/wiki/Ordered_pair "Ordered pair"
[5]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Codd1970-2
[6]: https://en.wikipedia.org/wiki/Function_(mathematics) "Function (mathematics)"
[7]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[8]: https://en.wikipedia.org/wiki/Finitary_relation "Finitary relation"
[9]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Codd1970-2
[10]: https://en.wikipedia.org/wiki/Divides "Divides"
[11]: https://en.wikipedia.org/wiki/Prime_number "Prime number"
[12]: https://en.wikipedia.org/wiki/Integer "Integer"
[13]: https://en.wikipedia.org/wiki/Divisibility "Divisibility"
[14]: https://en.wikipedia.org/wiki/Inequality_(mathematics) "Inequality (mathematics)"
[15]: https://en.wikipedia.org/wiki/Equality_(mathematics) "Equality (mathematics)"
[16]: https://en.wikipedia.org/wiki/Arithmetic "Arithmetic"
[17]: https://en.wikipedia.org/wiki/Congruence_(geometry) "Congruence (geometry)"
[18]: https://en.wikipedia.org/wiki/Geometry "Geometry"
[19]: https://en.wikipedia.org/wiki/Graph_theory "Graph theory"
[20]: https://en.wikipedia.org/wiki/Orthogonal "Orthogonal"
[21]: https://en.wikipedia.org/wiki/Linear_algebra "Linear algebra"
[22]: https://en.wikipedia.org/wiki/Function_(mathematics) "Function (mathematics)"
[23]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-3
[24]: https://en.wikipedia.org/wiki/Computer_science "Computer science"
[25]: https://en.wikipedia.org/wiki/Power_set "Power set"
[26]: https://en.wikipedia.org/wiki/Inclusion_(set_theory) "Inclusion (set theory)"
[27]: https://en.wikipedia.org/wiki/Lattice_(order) "Lattice (order)"
[28]: https://en.wikipedia.org/wiki/Binary_relation#Homogeneous_relation
[29]: https://en.wikipedia.org/wiki/Heterogeneous_relation "Heterogeneous relation"
[30]: https://en.wikipedia.org/wiki/Union_(set_theory) "Union (set theory)"
[31]: https://en.wikipedia.org/wiki/Intersection_(set_theory) "Intersection (set theory)"
[32]: https://en.wikipedia.org/wiki/Complement_(set_theory) "Complement (set theory)"
[33]: https://en.wikipedia.org/wiki/Algebra_of_sets "Algebra of sets"
[34]: https://en.wikipedia.org/wiki/Converse_relation "Converse relation"
[35]: https://en.wikipedia.org/wiki/Composition_of_relations "Composition of relations"
[36]: https://en.wikipedia.org/wiki/Calculus_of_relations "Calculus of relations"
[37]: https://en.wikipedia.org/wiki/Ernst_Schr%C3%B6der_(mathematician) "Ernst Schröder (mathematician)"
[38]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Schroder.1895-4
[39]: https://en.wikipedia.org/wiki/Clarence_Lewis "Clarence Lewis"
[40]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Lewis.1918-5
[41]: https://en.wikipedia.org/wiki/Gunther_Schmidt "Gunther Schmidt"
[42]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-gs-6
[43]: https://en.wikipedia.org/wiki/Complete_lattice "Complete lattice"
[44]: https://en.wikipedia.org/wiki/Axiomatic_set_theory "Axiomatic set theory"
[45]: https://en.wikipedia.org/wiki/Class_(mathematics) "Class (mathematics)"
[46]: https://en.wikipedia.org/wiki/Russell%27s_paradox "Russell's paradox"
[47]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-7
[48]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[49]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=1 "Edit section: Definition"
[50]: https://en.wikipedia.org/wiki/Cartesian_product "Cartesian product"
[51]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Codd1970-2
[52]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-8
[53]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Codd1970-2
[54]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Schroder.1895-4
[55]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Lewis.1918-5
[56]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-gs-6
[57]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-10
[58]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Codd1970-2
[59]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Codd1970-2
[60]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-suppes-11
[61]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-smullyan-12
[62]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-levy-13
[63]: https://en.wikipedia.org/wiki/Homogeneous_relation "Homogeneous relation"
[64]: https://en.wikipedia.org/wiki/Binary_relation#Heterogeneous_relation
[65]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Schmidt-14
[66]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-FloudasPardalos2008-15
[67]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Winter2007-16
[68]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=2 "Edit section: Examples"
[69]: https://en.wikipedia.org/wiki/Binary_relation#Special_types_of_binary_relations
[70]: https://en.wikipedia.org/wiki/File:Oceans_and_continents_coarse.png
[71]: https://en.wikipedia.org/wiki/Ocean "Ocean"
[72]: https://en.wikipedia.org/wiki/Continent "Continent"
[73]: https://en.wikipedia.org/wiki/Logical_matrix "Logical matrix"
[74]: https://en.wikipedia.org/wiki/Europe "Europe"
[75]: https://en.wikipedia.org/wiki/Australia "Australia"
[76]: https://en.wikipedia.org/wiki/Graph_theory "Graph theory"
[77]: https://en.wikipedia.org/wiki/Directed_graph "Directed graph"
[78]: https://en.wikipedia.org/wiki/Graph_(discrete_mathematics) "Graph (discrete mathematics)"
[79]: https://en.wikipedia.org/wiki/Symmetric_relation "Symmetric relation"
[80]: https://en.wikipedia.org/wiki/Hypergraph "Hypergraph"
[81]: https://en.wikipedia.org/wiki/Bipartite_graph "Bipartite graph"
[82]: https://en.wikipedia.org/wiki/Clique_(graph_theory) "Clique (graph theory)"
[83]: https://en.wikipedia.org/wiki/Biclique "Biclique"
[84]: https://en.wikipedia.org/wiki/File:Add_velocity_ark_POV.svg
[85]: https://en.wikipedia.org/wiki/Hyperbolic_orthogonality "Hyperbolic orthogonality"
[86]: https://en.wikipedia.org/wiki/Absolute_time_and_space "Absolute time and space"
[87]: https://en.wikipedia.org/wiki/Hyperplane "Hyperplane"
[88]: https://en.wikipedia.org/wiki/Herman_Minkowski "Herman Minkowski"
[89]: https://en.wikipedia.org/wiki/Composition_algebra "Composition algebra"
[90]: https://en.wikipedia.org/wiki/Hyperbolic_orthogonality "Hyperbolic orthogonality"
[91]: https://en.wikipedia.org/wiki/Split-complex_number "Split-complex number"
[92]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-17
[93]: https://en.wikipedia.org/wiki/Geometric_configuration "Geometric configuration"
[94]: https://en.wikipedia.org/wiki/Incidence_relation "Incidence relation"
[95]: https://en.wikipedia.org/wiki/Jakob_Steiner "Jakob Steiner"
[96]: https://en.wikipedia.org/wiki/Steiner_system "Steiner system"
[97]: https://en.wikipedia.org/wiki/Incidence_structure "Incidence structure"
[98]: https://en.wikipedia.org/wiki/Block_design "Block design"
[99]: https://en.wikipedia.org/wiki/Incidence_matrix "Incidence matrix"
[100]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-18
[101]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=3 "Edit section: Special types of binary relations"
[102]: https://en.wikipedia.org/wiki/File:The_four_types_of_binary_relations.png
[103]: https://en.wikipedia.org/wiki/Real_number "Real number"
[104]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[105]: https://en.wikipedia.org/wiki/Class_(set_theory) "Class (set theory)"
[106]: https://en.wikipedia.org/wiki/Ordinal_number "Ordinal number"
[107]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-kkm-19
[108]: https://en.wikipedia.org/wiki/Primary_key "Primary key"
[109]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Codd1970-2
[110]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-kkm-19
[111]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-20
[112]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-gs-6
[113]: https://en.wikipedia.org/wiki/Partial_function "Partial function"
[114]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Codd1970-2
[115]: https://en.wikipedia.org/wiki/Serial_relation "Serial relation"
[116]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-kkm-19
[117]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[118]: https://en.wikipedia.org/wiki/Connected_relation "Connected relation"
[119]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[120]: https://en.wikipedia.org/wiki/Homogeneous_relation#Properties "Homogeneous relation"
[121]: https://en.wikipedia.org/wiki/Multivalued_function "Multivalued function"
[122]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-21
[123]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-kkm-19
[124]: https://en.wikipedia.org/wiki/Function_(mathematics) "Function (mathematics)"
[125]: https://en.wikipedia.org/wiki/Injective_function "Injective function"
[126]: https://en.wikipedia.org/wiki/Surjective_function "Surjective function"
[127]: https://en.wikipedia.org/wiki/Bijection "Bijection"
[128]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=4 "Edit section: Operations on binary relations"
[129]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=5 "Edit section: Union"
[130]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=6 "Edit section: Intersection"
[131]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=7 "Edit section: Composition"
[132]: https://en.wikipedia.org/wiki/Composition_of_functions "Composition of functions"
[133]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=8 "Edit section: Converse"
[134]: https://en.wikipedia.org/wiki/Symmetric_relation "Symmetric relation"
[135]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=9 "Edit section: Complement"
[136]: https://en.wikipedia.org/wiki/Total_order "Total order"
[137]: https://en.wikipedia.org/wiki/Converse_relation "Converse relation"
[138]: https://en.wikipedia.org/wiki/Strict_weak_order "Strict weak order"
[139]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=10 "Edit section: Restriction"
[140]: https://en.wikipedia.org/wiki/Homogeneous_relation "Homogeneous relation"
[141]: https://en.wikipedia.org/wiki/Reflexive_relation "Reflexive relation"
[142]: https://en.wikipedia.org/wiki/Symmetric_relation "Symmetric relation"
[143]: https://en.wikipedia.org/wiki/Antisymmetric_relation "Antisymmetric relation"
[144]: https://en.wikipedia.org/wiki/Asymmetric_relation "Asymmetric relation"
[145]: https://en.wikipedia.org/wiki/Transitive_relation "Transitive relation"
[146]: https://en.wikipedia.org/wiki/Serial_relation "Serial relation"
[147]: https://en.wikipedia.org/wiki/Trichotomy_(mathematics) "Trichotomy (mathematics)"
[148]: https://en.wikipedia.org/wiki/Partial_order "Partial order"
[149]: https://en.wikipedia.org/wiki/Total_order "Total order"
[150]: https://en.wikipedia.org/wiki/Strict_weak_order "Strict weak order"
[151]: https://en.wikipedia.org/wiki/Strict_weak_order#Total_preorders "Strict weak order"
[152]: https://en.wikipedia.org/wiki/Equivalence_relation "Equivalence relation"
[153]: https://en.wikipedia.org/wiki/Completeness_(order_theory) "Completeness (order theory)"
[154]: https://en.wikipedia.org/wiki/Real_number "Real number"
[155]: https://en.wikipedia.org/wiki/Empty_set "Empty set"
[156]: https://en.wikipedia.org/wiki/Upper_bound "Upper bound"
[157]: https://en.wikipedia.org/wiki/Supremum "Supremum"
[158]: https://en.wikipedia.org/wiki/Rational_number "Rational number"
[159]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=11 "Edit section: Matrix representation"
[160]: https://en.wikipedia.org/wiki/Logical_matrix "Logical matrix"
[161]: https://en.wikipedia.org/wiki/Boolean_semiring "Boolean semiring"
[162]: https://en.wikipedia.org/wiki/Matrix_addition "Matrix addition"
[163]: https://en.wikipedia.org/wiki/Matrix_multiplication "Matrix multiplication"
[164]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-22
[165]: https://en.wikipedia.org/wiki/Hadamard_product_(matrices) "Hadamard product (matrices)"
[166]: https://en.wikipedia.org/wiki/Zero_matrix "Zero matrix"
[167]: https://en.wikipedia.org/wiki/Matrix_of_ones "Matrix of ones"
[168]: https://en.wikipedia.org/wiki/Matrix_semiring "Matrix semiring"
[169]: https://en.wikipedia.org/wiki/Matrix_semialgebra "Matrix semialgebra"
[170]: https://en.wikipedia.org/wiki/Identity_matrix "Identity matrix"
[171]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-droste-23
[172]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=12 "Edit section: Sets versus classes"
[173]: https://en.wikipedia.org/wiki/Axiomatic_set_theory "Axiomatic set theory"
[174]: https://en.wikipedia.org/wiki/Russell%27s_paradox "Russell's paradox"
[175]: https://en.wikipedia.org/wiki/Von_Neumann%E2%80%93Bernays%E2%80%93G%C3%B6del_set_theory "Von Neumann–Bernays–Gödel set theory"
[176]: https://en.wikipedia.org/wiki/Morse%E2%80%93Kelley_set_theory "Morse–Kelley set theory"
[177]: https://en.wikipedia.org/wiki/Proper_class "Proper class"
[178]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-24
[179]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=13 "Edit section: Homogeneous relation"
[180]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Winter2007-16
[181]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-M%C3%BCller2012-25
[182]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-PahlDamrath2001-p496-26
[183]: https://en.wikipedia.org/wiki/Graph_theory#Directed_graph "Graph theory"
[184]: https://en.wikipedia.org/wiki/Power_set "Power set"
[185]: https://en.wikipedia.org/wiki/Boolean_algebra_(structure) "Boolean algebra (structure)"
[186]: https://en.wikipedia.org/wiki/Involution_(mathematics) "Involution (mathematics)"
[187]: https://en.wikipedia.org/wiki/Converse_relation "Converse relation"
[188]: https://en.wikipedia.org/wiki/Composition_of_relations "Composition of relations"
[189]: https://en.wikipedia.org/wiki/Binary_operation "Binary operation"
[190]: https://en.wikipedia.org/wiki/Semigroup_with_involution "Semigroup with involution"
[191]: https://en.wikipedia.org/wiki/Partially_ordered_set#Formal_definition "Partially ordered set"
[192]: https://en.wikipedia.org/wiki/Partially_ordered_set#Strict_and_non-strict_partial_orders "Partially ordered set"
[193]: https://en.wikipedia.org/wiki/Total_order "Total order"
[194]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-30
[195]: https://en.wikipedia.org/wiki/Total_order#Strict_total_order "Total order"
[196]: https://en.wikipedia.org/wiki/Equivalence_relation "Equivalence relation"
[197]: https://en.wikipedia.org/wiki/Natural_numbers "Natural numbers"
[198]: https://en.wikipedia.org/wiki/Euclidean_plane "Euclidean plane"
[199]: https://en.wikipedia.org/wiki/Binary_relation#Operations_on_binary_relations
[200]: https://en.wikipedia.org/wiki/Reflexive_closure "Reflexive closure"
[201]: https://en.wikipedia.org/wiki/Transitive_closure "Transitive closure"
[202]: https://en.wikipedia.org/wiki/Equivalence_closure "Equivalence closure"
[203]: https://en.wikipedia.org/wiki/Equivalence_relation "Equivalence relation"
[204]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=14 "Edit section: Heterogeneous relation"
[205]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[206]: https://en.wikipedia.org/wiki/Subset "Subset"
[207]: https://en.wikipedia.org/wiki/Cartesian_product
[208]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Schmidt_p.77-31
[209]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Winter2007-16
[210]: https://en.wikipedia.org/wiki/Binary_relation#Homogeneous_relation "Binary relation"
[211]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-32
[212]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=15 "Edit section: Calculus of relations"
[213]: https://en.wikipedia.org/wiki/Algebraic_logic
[214]: https://en.wikipedia.org/wiki/Calculus_of_relations
[215]: https://en.wikipedia.org/wiki/Algebra_of_sets
[216]: https://en.wikipedia.org/wiki/Composition_of_relations
[217]: https://en.wikipedia.org/wiki/Converse_relation
[218]: https://en.wikipedia.org/wiki/Lattice_(order_theory) "Lattice (order theory)"
[219]: https://en.wikipedia.org/wiki/Composition_of_relations#Schr%C3%B6der_rules "Composition of relations"
[220]: https://en.wikipedia.org/wiki/Power_set "Power set"
[221]: https://en.wikipedia.org/wiki/Composition_of_relations "Composition of relations"
[222]: https://en.wikipedia.org/wiki/Partial_function "Partial function"
[223]: https://en.wikipedia.org/wiki/Category_theory "Category theory"
[224]: https://en.wikipedia.org/wiki/Category_of_sets "Category of sets"
[225]: https://en.wikipedia.org/wiki/Morphism "Morphism"
[226]: https://en.wikipedia.org/wiki/Category_of_relations "Category of relations"
[227]: https://en.wikipedia.org/wiki/Category_(mathematics) "Category (mathematics)"
[228]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[229]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=16 "Edit section: Induced concept lattice"
[230]: https://en.wikipedia.org/wiki/Concept_lattice "Concept lattice"
[231]: https://en.wikipedia.org/wiki/Outer_product "Outer product"
[232]: https://en.wikipedia.org/wiki/Wikipedia:Please_clarify "Wikipedia:Please clarify"
[233]: https://en.wikipedia.org/wiki/Preorder "Preorder"
[234]: https://en.wikipedia.org/wiki/MacNeille_completion_theorem "MacNeille completion theorem"
[235]: https://en.wikipedia.org/wiki/Complete_lattice "Complete lattice"
[236]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-33
[237]: https://en.wikipedia.org/wiki/Function_(mathematics) "Function (mathematics)"
[238]: https://en.wikipedia.org/wiki/Equivalence_relation "Equivalence relation"
[239]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-34
[240]: https://en.wikipedia.org/wiki/Data_mining "Data mining"
[241]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-35
[242]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=17 "Edit section: Particular relations"
[243]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=18 "Edit section: Difunctional"
[244]: https://en.wikipedia.org/wiki/Equivalence_relation "Equivalence relation"
[245]: https://en.wikipedia.org/wiki/Indicator_(research) "Indicator (research)"
[246]: https://en.wikipedia.org/wiki/Composition_of_relations "Composition of relations"
[247]: https://en.wikipedia.org/wiki/Logical_matrix "Logical matrix"
[248]: https://en.wikipedia.org/wiki/Block_matrix "Block matrix"
[249]: https://en.wikipedia.org/wiki/Jacques_Riguet "Jacques Riguet"
[250]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-36
[251]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-BrinkKahl1997-37
[252]: https://en.wikipedia.org/wiki/Database "Database"
[253]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-38
[254]: https://en.wikipedia.org/wiki/Bisimulation "Bisimulation"
[255]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-39
[256]: https://en.wikipedia.org/wiki/Partial_equivalence_relation "Partial equivalence relation"
[257]: https://en.wikipedia.org/wiki/Automata_theory "Automata theory"
[258]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-B%C3%BCchi1989-40
[259]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=19 "Edit section: Ferrers type"
[260]: https://en.wikipedia.org/wiki/Strict_order "Strict order"
[261]: https://en.wikipedia.org/wiki/Order_theory "Order theory"
[262]: https://en.wikipedia.org/wiki/Jacques_Riguet "Jacques Riguet"
[263]: https://en.wikipedia.org/wiki/Partition_(number_theory) "Partition (number theory)"
[264]: https://en.wikipedia.org/wiki/Ferrers_diagram "Ferrers diagram"
[265]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-41
[266]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-Schmidt_p.77-31
[267]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=20 "Edit section: Contact"
[268]: https://en.wikipedia.org/wiki/Power_set "Power set"
[269]: https://en.wikipedia.org/wiki/Subset "Subset"
[270]: https://en.wikipedia.org/wiki/Set_membership "Set membership"
[271]: https://en.wikipedia.org/wiki/Georg_Aumann "Georg Aumann"
[272]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-42
[273]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-43
[274]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-GS11-44
[275]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=21 "Edit section: Preorder R\R"
[276]: https://en.wikipedia.org/wiki/Preorder "Preorder"
[277]: https://en.wikipedia.org/wiki/Composition_of_relations#Quotients "Composition of relations"
[278]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-45
[279]: https://en.wikipedia.org/wiki/Reflexive_relation "Reflexive relation"
[280]: https://en.wikipedia.org/wiki/Transitive_relation "Transitive relation"
[281]: https://en.wikipedia.org/wiki/Inclusion_(set_theory) "Inclusion (set theory)"
[282]: https://en.wikipedia.org/wiki/Power_set "Power set"
[283]: https://en.wikipedia.org/wiki/Element_(mathematics) "Element (mathematics)"
[284]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-GS11-44
[285]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=22 "Edit section: Fringe of a relation"
[286]: https://en.wikipedia.org/wiki/Linear_order "Linear order"
[287]: https://en.wikipedia.org/wiki/Strict_order "Strict order"
[288]: https://en.wikipedia.org/wiki/Dense_order "Dense order"
[289]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-GS11-44
[290]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=23 "Edit section: Mathematical heaps"
[291]: https://en.wikipedia.org/wiki/Ternary_operation "Ternary operation"
[292]: https://en.wikipedia.org/wiki/Converse_relation "Converse relation"
[293]: https://en.wikipedia.org/wiki/Viktor_Wagner "Viktor Wagner"
[294]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-46
[295]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-47
[296]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-48
[297]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=24 "Edit section: See also"
[298]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=25 "Edit section: Notes"
[299]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-10 "Jump up"
[300]: https://en.wikipedia.org/wiki/Polish_notation "Polish notation"
[301]: https://en.wikipedia.org/wiki/Binary_relation#cite_note-9
[302]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=26 "Edit section: References"
[303]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-1 "Jump up"
[304]: https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-042j-mathematics-for-computer-science-spring-2015/lecture-slides/MIT6_042JS16_Relations.pdf
[305]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Codd1970_2-0
[306]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Codd1970_2-1
[307]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Codd1970_2-2
[308]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Codd1970_2-3
[309]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Codd1970_2-4
[310]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Codd1970_2-5
[311]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Codd1970_2-6
[312]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Codd1970_2-7
[313]: https://www.seas.upenn.edu/~zives/03f/cis550/codd.pdf
[314]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[315]: https://doi.org/10.1145%2F362384.362685
[316]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[317]: https://api.semanticscholar.org/CorpusID:207549016
[318]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-3 "Jump up"
[319]: https://mathinsight.org/definition/relation
[320]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Schroder.1895_4-0
[321]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Schroder.1895_4-1
[322]: https://en.wikipedia.org/wiki/Ernst_Schr%C3%B6der_(mathematician) "Ernst Schröder (mathematician)"
[323]: https://archive.org/details/vorlesungenberd03mlgoog
[324]: https://en.wikipedia.org/wiki/Internet_Archive "Internet Archive"
[325]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Lewis.1918_5-0
[326]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Lewis.1918_5-1
[327]: https://en.wikipedia.org/wiki/C._I._Lewis "C. I. Lewis"
[328]: https://archive.org/details/asurveyofsymboli00lewiuoft
[329]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-gs_6-0
[330]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-gs_6-1
[331]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-gs_6-2
[332]: https://en.wikipedia.org/wiki/Gunther_Schmidt "Gunther Schmidt"
[333]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[334]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-76268-7 "Special:BookSources/978-0-521-76268-7"
[335]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-7 "Jump up"
[336]: https://books.google.com/books?id=hn75exNZZ-EC&printsec=frontcover#v=onepage&q=correspondence&f=false
[337]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-8 "Jump up"
[338]: https://en.wikipedia.org/wiki/Binary_relation#CITEREFEnderton1977
[339]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-9 "Jump up"
[340]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[341]: https://en.wikipedia.org/wiki/Special:BookSources/3540058192 "Special:BookSources/3540058192"
[342]: https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)"
[343]: https://www.worldcat.org/issn/1431-4657
[344]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-suppes_11-0 "Jump up"
[345]: https://en.wikipedia.org/wiki/Patrick_Suppes "Patrick Suppes"
[346]: https://archive.org/details/axiomaticsettheo00supp_0
[347]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[348]: https://en.wikipedia.org/wiki/Special:BookSources/0-486-61630-4 "Special:BookSources/0-486-61630-4"
[349]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-smullyan_12-0 "Jump up"
[350]: https://en.wikipedia.org/wiki/Raymond_Smullyan "Raymond Smullyan"
[351]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[352]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-486-47484-7 "Special:BookSources/978-0-486-47484-7"
[353]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-levy_13-0 "Jump up"
[354]: https://en.wikipedia.org/wiki/Azriel_Levy "Azriel Levy"
[355]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[356]: https://en.wikipedia.org/wiki/Special:BookSources/0-486-42079-5 "Special:BookSources/0-486-42079-5"
[357]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Schmidt_14-0 "Jump up"
[358]: https://en.wikipedia.org/wiki/Gunther_Schmidt "Gunther Schmidt"
[359]: https://books.google.com/books?id=ZgarCAAAQBAJ
[360]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[361]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-642-77968-8 "Special:BookSources/978-3-642-77968-8"
[362]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-FloudasPardalos2008_15-0 "Jump up"
[363]: https://en.wikipedia.org/wiki/Christodoulos_Floudas "Christodoulos Floudas"
[364]: https://books.google.com/books?id=1a6lSRbQ4YsC&q=relation
[365]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[366]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-387-74758-3 "Special:BookSources/978-0-387-74758-3"
[367]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Winter2007_16-0
[368]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Winter2007_16-1
[369]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Winter2007_16-2
[370]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[371]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-4020-6164-6 "Special:BookSources/978-1-4020-6164-6"
[372]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-17 "Jump up"
[373]: https://en.wikipedia.org/wiki/File:Wikibooks-logo-en-noslogan.svg
[374]: https://en.wikibooks.org/wiki/Calculus/Hyperbolic_angle#Split-complex_theory/Relative_simultaneity "wikibooks:Calculus/Hyperbolic angle"
[375]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-18 "Jump up"
[376]: https://en.wikipedia.org/wiki/Dieter_Jungnickel "Dieter Jungnickel"
[377]: https://en.wikipedia.org/wiki/Hanfried_Lenz "Hanfried Lenz"
[378]: https://en.wikipedia.org/wiki/Cambridge_University_Press "Cambridge University Press"
[379]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[380]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-44432-3 "Special:BookSources/978-0-521-44432-3"
[381]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-kkm_19-0
[382]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-kkm_19-1
[383]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-kkm_19-2
[384]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-kkm_19-3
[385]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[386]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-67995-0 "Special:BookSources/978-3-540-67995-0"
[387]: https://en.wikipedia.org/wiki/Eike_Best "Eike Best"
[388]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[389]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-13-460643-9 "Special:BookSources/978-0-13-460643-9"
[390]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[391]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-89675-629-9 "Special:BookSources/978-3-89675-629-9"
[392]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-20 "Jump up"
[393]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[394]: https://doi.org/10.1007%2F978-3-540-74788-8_18
[395]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-21 "Jump up"
[396]: http://www2.cs.uregina.ca/~yyao/PAPERS/relation.pdf
[397]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-22 "Jump up"
[398]: https://en.wikipedia.org/wiki/John_C._Baez "John C. Baez"
[399]: https://groups.google.com/d/msg/sci.physics.research/VJNPMCfreao/TMKt9tFYNwEJ
[400]: https://en.wikipedia.org/wiki/Usenet_newsgroup "Usenet newsgroup"
[401]: news:sci.physics.research
[402]: https://en.wikipedia.org/wiki/Usenet_(identifier) "Usenet (identifier)"
[403]: news:9s87n0$iv5@gap.cco.caltech.edu
[404]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-droste_23-0 "Jump up"
[405]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[406]: https://doi.org/10.1007%2F978-3-642-01492-5_1
[407]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-24 "Jump up"
[408]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[409]: https://archive.org/details/formalizationofs0000tars/page/3
[410]: https://archive.org/details/formalizationofs0000tars/page/3
[411]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[412]: https://en.wikipedia.org/wiki/Special:BookSources/0-8218-1041-3 "Special:BookSources/0-8218-1041-3"
[413]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-M%C3%BCller2012_25-0 "Jump up"
[414]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[415]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-19021-3 "Special:BookSources/978-0-521-19021-3"
[416]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-PahlDamrath2001-p496_26-0 "Jump up"
[417]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[418]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-67995-0 "Special:BookSources/978-3-540-67995-0"
[419]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-27 "Jump up"
[420]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[421]: https://en.wikipedia.org/wiki/Special:BookSources/0-534-39900-2 "Special:BookSources/0-534-39900-2"
[422]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-28 "Jump up"
[423]: https://books.google.com/books?id=_H_nJdagqL8C&pg=PA158
[424]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-29 "Jump up"
[425]: https://web.archive.org/web/20131102214049/http://www.karlin.mff.cuni.cz/~jezek/120/transitive1.pdf
[426]: http://www.karlin.mff.cuni.cz/~jezek/120/transitive1.pdf
[427]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-30 "Jump up"
[428]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[429]: https://en.wikipedia.org/wiki/Special:BookSources/0-12-597680-1 "Special:BookSources/0-12-597680-1"
[430]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Schmidt_p.77_31-0
[431]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-Schmidt_p.77_31-1
[432]: https://en.wikipedia.org/wiki/Gunther_Schmidt "Gunther Schmidt"
[433]: https://books.google.com/books?id=ZgarCAAAQBAJ
[434]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[435]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-642-77968-8 "Special:BookSources/978-3-642-77968-8"
[436]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-32 "Jump up"
[437]: https://en.wikipedia.org/wiki/Springer_books "Springer books"
[438]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[439]: https://en.wikipedia.org/wiki/Special:BookSources/3-211-82971-7 "Special:BookSources/3-211-82971-7"
[440]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-33 "Jump up"
[441]: https://en.wikipedia.org/wiki/R._Berghammer "R. Berghammer"
[442]: https://en.wikipedia.org/wiki/Fundamenta_Informaticae "Fundamenta Informaticae"
[443]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[444]: https://doi.org/10.3233%2FFI-2013-871
[445]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-34 "Jump up"
[446]: https://en.wikipedia.org/wiki/Marcel_Dekker "Marcel Dekker"
[447]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[448]: https://en.wikipedia.org/wiki/Special:BookSources/0-8247-1788-0 "Special:BookSources/0-8247-1788-0"
[449]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-35 "Jump up"
[450]: https://en.wikipedia.org/wiki/Lecture_Notes_in_Computer_Science "Lecture Notes in Computer Science"
[451]: https://en.wikipedia.org/wiki/MR_(identifier) "MR (identifier)"
[452]: https://mathscinet.ams.org/mathscinet-getitem?mr=2781235
[453]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-36 "Jump up"
[454]: https://en.wikipedia.org/wiki/Jacques_Riguet "Jacques Riguet"
[455]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-BrinkKahl1997_37-0 "Jump up"
[456]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[457]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-211-82971-4 "Special:BookSources/978-3-211-82971-4"
[458]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-38 "Jump up"
[459]: https://en.wikipedia.org/wiki/Gunther_Schmidt "Gunther Schmidt"
[460]: https://en.wikipedia.org/wiki/Springer_Science_%26_Business_Media "Springer Science & Business Media"
[461]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[462]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-211-82971-4 "Special:BookSources/978-3-211-82971-4"
[463]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-39 "Jump up"
[464]: https://en.wikipedia.org/wiki/Lecture_Notes_in_Computer_Science "Lecture Notes in Computer Science"
[465]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[466]: https://doi.org/10.1007%2F978-3-662-44124-4_7
[467]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[468]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-662-44123-7 "Special:BookSources/978-3-662-44123-7"
[469]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-B%C3%BCchi1989_40-0 "Jump up"
[470]: https://en.wikipedia.org/wiki/Julius_Richard_B%C3%BCchi "Julius Richard Büchi"
[471]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[472]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-4613-8853-1 "Special:BookSources/978-1-4613-8853-1"
[473]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-41 "Jump up"
[474]: https://en.wikipedia.org/wiki/Comptes_Rendus "Comptes Rendus"
[475]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-42 "Jump up"
[476]: https://www.zobodat.at/publikation_volumes.php?id=56359
[477]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-43 "Jump up"
[478]: https://mathscinet.ams.org/mathscinet-getitem?mr=0309040
[479]: https://en.wikipedia.org/wiki/Mathematical_Reviews "Mathematical Reviews"
[480]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-GS11_44-0
[481]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-GS11_44-1
[482]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-GS11_44-2
[483]: https://en.wikipedia.org/wiki/Gunther_Schmidt "Gunther Schmidt"
[484]: https://en.wikipedia.org/wiki/Cambridge_University_Press "Cambridge University Press"
[485]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[486]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-76268-7 "Special:BookSources/978-0-521-76268-7"
[487]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-45 "Jump up"
[488]: https://en.wikipedia.org/wiki/Set_difference "Set difference"
[489]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-46 "Jump up"
[490]: https://en.wikipedia.org/wiki/Viktor_Wagner "Viktor Wagner"
[491]: https://en.wikipedia.org/wiki/Matematicheskii_Sbornik "Matematicheskii Sbornik"
[492]: https://en.wikipedia.org/wiki/MR_(identifier) "MR (identifier)"
[493]: https://mathscinet.ams.org/mathscinet-getitem?mr=0059267
[494]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-47 "Jump up"
[495]: https://en.wikipedia.org/wiki/Springer_books "Springer books"
[496]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[497]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-319-63620-7 "Special:BookSources/978-3-319-63620-7"
[498]: https://en.wikipedia.org/wiki/MR_(identifier) "MR (identifier)"
[499]: https://mathscinet.ams.org/mathscinet-getitem?mr=3729305
[500]: https://en.wikipedia.org/wiki/Binary_relation#cite_ref-48 "Jump up"
[501]: https://en.wikipedia.org/wiki/American_Mathematical_Society "American Mathematical Society"
[502]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[503]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-4704-1493-1 "Special:BookSources/978-1-4704-1493-1"
[504]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=27 "Edit section: Bibliography"
[505]: https://en.wikipedia.org/wiki/Gunther_Schmidt "Gunther Schmidt"
[506]: https://books.google.com/books?id=ZgarCAAAQBAJ
[507]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[508]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-642-77968-8 "Special:BookSources/978-3-642-77968-8"
[509]: https://en.wikipedia.org/wiki/Ernst_Schr%C3%B6der_(mathematician) "Ernst Schröder (mathematician)"
[510]: https://archive.org/details/vorlesungenberd03mlgoog
[511]: https://en.wikipedia.org/wiki/Internet_Archive "Internet Archive"
[512]: https://en.wikipedia.org/wiki/Edgar_F._Codd "Edgar F. Codd"
[513]: https://codeblab.com/wp-content/uploads/2009/12/rmdb-codd.pdf
[514]: https://en.wikipedia.org/wiki/Addison-Wesley "Addison-Wesley"
[515]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[516]: https://en.wikipedia.org/wiki/Special:BookSources/978-0201141924 "Special:BookSources/978-0201141924"
[517]: https://en.wikipedia.org/wiki/Herbert_Enderton "Herbert Enderton"
[518]: https://en.wikipedia.org/wiki/Academic_Press "Academic Press"
[519]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[520]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-12-238440-0 "Special:BookSources/978-0-12-238440-0"
[521]: https://en.wikipedia.org/wiki/Walter_de_Gruyter "Walter de Gruyter"
[522]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[523]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-11-015248-7 "Special:BookSources/978-3-11-015248-7"
[524]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce "Charles Sanders Peirce"
[525]: https://archive.org/details/descriptionanot00peirgoog/mode/2up
[526]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[527]: https://doi.org/10.2307%2F25058006
[528]: https://en.wikipedia.org/wiki/Hdl_(identifier) "Hdl (identifier)"
[529]: https://hdl.handle.net/2027%2Fhvd.32044019561034
[530]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[531]: https://www.jstor.org/stable/25058006
[532]: https://en.wikipedia.org/wiki/Gunther_Schmidt "Gunther Schmidt"
[533]: https://books.google.com/books?id=E4dREBTs5WsC
[534]: https://en.wikipedia.org/wiki/Cambridge_University_Press "Cambridge University Press"
[535]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[536]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-76268-7 "Special:BookSources/978-0-521-76268-7"
[537]: https://en.wikipedia.org/w/index.php?title=Binary_relation&action=edit&section=28 "Edit section: External links"
[538]: https://en.wikipedia.org/wiki/File:Commons-logo.svg
[539]: https://commons.wikimedia.org/wiki/Category:Binary_relations "commons:Category:Binary relations"
[540]: https://www.encyclopediaofmath.org/index.php?title=Binary_relation
[541]: https://en.wikipedia.org/wiki/Encyclopedia_of_Mathematics "Encyclopedia of Mathematics"
[542]: https://en.wikipedia.org/wiki/European_Mathematical_Society "European Mathematical Society"
