---
downloaded:       2021-12-11
page-url:         https://en.wikipedia.org/wiki/Finitary_relation
page-title:       Finitary relation - Wikipedia
article-title:    Finitary relation - Wikipedia
---
# Finitary relation - Wikipedia

In mathematics, a finitary relation over sets X1, …, Xn is a subset of the Cartesian product X1 × ⋯ × Xn; that is, it is a set of n-tuples (x1, …, xn) consisting of elements xi in Xi.[1][2][3] Typically, the relation describes a possible connection between the elements of an n-tuple. For example, the relation "x is divisible by y and z" consists of the set of 3-tuples such that when substituted to x, y and z, respectively, make the sentence true.
In [mathematics][1], a __finitary relation__ over sets *X*1, …, *X**n* is a subset of the [Cartesian product][2] *X*1 × ⋯ × *X**n*; that is, it is a set of *n*\-tuples (*x*1, …, *x**n*) consisting of elements *x**i* in *X**i*.[\[1\]][3][\[2\]][4][\[3\]][5] Typically, the relation describes a possible connection between the elements of an *n*\-tuple. For example, the relation "*x* is divisible by *y* and *z*" consists of the set of 3-tuples such that when substituted to *x*, *y* and *z*, respectively, make the sentence true.

The non-negative integer *n* giving the number of "places" in the relation is called the *[arity][6]*, *adicity* or *degree* of the relation. A relation with *n* "places" is variously called an __*n*\-ary relation__, an __*n*\-adic relation__ or a __relation of degree *n*__. Relations with a finite number of places are called *finitary relations* (or simply *relations* if the context is clear). It is also possible to generalize the concept to *infinitary relations* with [infinite sequences][7].[\[4\]][8]

An *n*\-ary relation over sets *X*1, …, *X**n* is an element of the [power set][9] of *X*1 × ⋯ × *X**n*.

0-ary relations count only two members: the one that always holds, and the one that never holds. This is because there is only one 0-tuple, the empty tuple (). They are sometimes useful for constructing the base case of an [induction][10] argument.

Unary relations can be viewed as a collection of members (such as the collection of [Nobel laureates][11]) having some property (such as that of having been awarded the [Nobel prize][12]).

[Binary relations][13] are the most commonly studied form of finitary relations. When *X*1 = *X*2 it is called a [homogeneous relation][14], for example:

-   [Equality][15] and [inequality][16], denoted by signs such as = and < in statements such as "5 < 12", or
-   [Divisibility][17], denoted by the sign | in statements such as "13|143".

Otherwise it is a [heterogeneous relation][18], for example:

-   [Set membership][19], denoted by the sign ∈ in statements such as "1 ∈ __N__".

## Example\[[edit][20]\]

Consider the ternary relation *R* "*x* thinks that *y* likes *z*" over the set of people *P* = {Alice, Bob, Charles, Denise}, defined by:

*R* = {(Alice, Bob, Denise), (Charles, Alice, Bob), (Charles, Charles, Alice), (Denise, Denise, Denise)}.

*R* can be represented equivalently by the following table:

Here, each row represents a triple of *R*, that is it makes a statement of the form "*x* thinks that *y* likes *z*". For instance, the first row states that "Alice thinks that Bob likes Denise". All rows are distinct. The ordering of rows is insignificant but the ordering of columns is significant.[\[1\]][21]

The above table is also a simple example of a [relational database][22], a field with theory rooted in [relational algebra][23] and applications in data management.[\[5\]][24] Computer scientists, logicians, and mathematicians, however, tend to have different conceptions what a general relation is, and what it is consisted of. For example, databases are designed to deal with empirical data, which is by definition finite, whereas in mathematics, relations with infinite arity (i.e., infinitary relation) are also considered.

## Definitions\[[edit][25]\]

> When two objects, qualities, classes, or attributes, viewed together by the mind, are seen under some connexion, that connexion is called a relation.

The first definition of relations encountered in mathematics is:

Definition 1

An *n*\-ary __relation__ *R* over sets *X*1, ⋯, *X**n* is a subset of the Cartesian product *X*1 × ⋯ × *X**n*.[\[1\]][26]

The second definition of relations makes use of an idiom that is common in mathematics, stipulating that "such and such is an *n*\-tuple" in order to ensure that such and such a mathematical object is determined by the specification of mathematical objects with *n* elements. In the case of a relation *R* over *n* sets, there are *n* + 1 things to specify, namely, the *n* sets plus a subset of their Cartesian product. In the idiom, this is expressed by saying that *R* is a (*n* + 1)-tuple.

Definition 2

An *n*\-ary __relation__ *R* over sets *X*1, ⋯, *X**n* is an (*n* + 1)-tuple (*X*1, ⋯, *X**n*, *G*) where *G* is a subset of the Cartesian product *X*1 × ⋯ × *X**n* called the *graph* of *R*.

As a rule, whatever definition best fits the application at hand will be chosen for that purpose, and if it ever becomes necessary to distinguish between the two definitions, then an entity satisfying the second definition may be called an *embedded* or *included relation*.

Both statements (*x*1, ⋯, *x**n*) ∈ *R* (under the first definition) and (*x*1, ⋯, *x**n*) ∈ *G* (under the second definition) read "*x*1, ⋯, *x**n* are *R*\-related" and are denoted using [prefix notation][27] by *Rx*1⋯*x**n* and using [postfix notation][28] by *x*1⋯*x**n**R*. In the case where *R* is a binary relation, those statements are also denoted using [infix notation][29] by *x*1*Rx*2.

The following considerations apply under either definition:

-   The set *X**i* is called the ith *domain* of *R*.[\[1\]][30] Under the first definition, the relation does not uniquely determine a given sequence of domains. In the case where *R* is a binary relation, *X*1 is also called simply the [*domain*][31] or *set of departure* of *R*, and *X*2 is also called the [*codomain*][32] or *set of destination* of *R*.
-   When the elements of *X**i* are relations, *X**i* is called a *nonsimple domain* of *R*.[\[1\]][33]
-   The set of ∀*x**i* ∈ *X**i* for which there exists (*x*1, ⋯, *x**i* − 1, *x**i* + 1, ⋯, *x**n*) ∈ *X*1 × ⋯ × *X**i* − 1 × *X**i* + 1 × ⋯ × *X**n* such that *Rx*1⋯*x**i* − 1*x**i**x**i* + 1⋯*x**n* is called the *i*th *domain of definition* or *active domain* of *R*.[\[1\]][34] In the case where *R* is a binary relation, its first domain of definition is also called simply the [*domain of definition*][35] or *active domain* of *R*, and its second domain of definition is also called the [*codomain of definition*][36] or *active codomain* of *R*.
-   When the ith domain of definition of *R* is equal to *X**i*, *R* is said to be *total* on *X**i*. In the case where *R* is a binary relation, when *R* is total on *X*1, it is also said to be [*left-total*][37] or *serial*, and when *R* is total on *X*2, it is also said to be [*right-total*][38] or *surjective*.
-   When ∀*x* ∀*y* ∈ *π**i* ∈ *I* *X**i* and ∀*z* ∈ *π**i* ∈ *J* *X**i* where {*I*, *J*} is a [partition][39] of {1, ⋯, *n*}, if the components of *x* and *z* are *R*\-related and the components of *y* and *z* are *R*\-related then *x* = *y*, *R* is said to be *unique* on {*X**i*}*i* ∈ *I*, and {*X**i*}*i* ∈ *J* is called *a [primary key][40]*[\[1\]][41] of *R*. In the case where *R* is a binary relation, when *R* is unique on {*X*1}, it is also said to be [*left-unique*][42] or *injective*, and when *R* is unique on {*X*2}, it is also said to be [*right-unique*][43] or *functional*.
-   When all *X**i* are the same set *X*, it is simpler to refer to *R* as an *n*\-ary relation over *X*, called a *homogeneous relation*. Otherwise *R* is called a *heterogeneous relation*.
-   When any of *X**i* is empty, the defining Cartesian product is empty, and the only relation over such a sequence of domains is the empty relation *R* = ∅. Hence it is commonly stipulated that all of the domains be nonempty.

Let a [Boolean domain][44] __B__ be a two-element set, say, __B__ = {0, 1}, whose elements can be interpreted as logical values, typically 0 = false and 1 = true. The [characteristic function][45] of *R*, denoted by χ*R*, is the [Boolean-valued function][46] χ*R*: *X*1 × ⋯ × *X**n* → __B__, defined by χ*R*((*x*1, ⋯, *x**n*)) = 1 if *Rx*1⋯*x**n* and χ*R*((*x*1, ⋯, *x**n*)) = 0 otherwise.

In applied mathematics, [computer science][47] and statistics, it is common to refer to a Boolean-valued function as an *n*\-ary [*predicate*][48]. From the more abstract viewpoint of [formal logic][49] and [model theory][50], the relation *R* constitutes a *logical model* or a *relational structure*, that serves as one of many possible [interpretations][51] of some *n*\-ary predicate symbol.

Because relations arise in many scientific disciplines, as well as in many branches of [mathematics][52] and [logic][53], there is considerable variation in terminology. Aside from the [set-theoretic][54] [extension][55] of a relational concept or term, the term "relation" can also be used to refer to the corresponding logical entity, either the [logical comprehension][56], which is the totality of [intensions][57] or abstract properties shared by all elements in the relation, or else the symbols denoting these elements and intensions. Further, some writers of the latter persuasion introduce terms with more concrete connotations (such as "relational structure" for the set-theoretic extension of a given relational concept).

## History\[[edit][58]\]

The logician [Augustus De Morgan][59], in work published around 1860, was the first to articulate the notion of relation in anything like its present sense. He also stated the first formal results in the theory of relations (on De Morgan and relations, see Merrill 1990).

[Charles Peirce][60], [Gottlob Frege][61], [Georg Cantor][62], [Richard Dedekind][63] and others advanced the theory of relations. Many of their ideas, especially on relations called [orders][64], were summarized in *[The Principles of Mathematics][65]* (1903) where [Bertrand Russell][66] made free use of these results.

In 1970, [Edgar Codd][67] proposed a [relational model][68] for [databases][69], thus anticipating the development of [data base management systems][70].[\[1\]][71]

## See also\[[edit][72]\]

## References\[[edit][73]\]

## Bibliography\[[edit][74]\]

-   [Codd, Edgar Frank][75] (1990). [*The Relational Model for Database Management: Version 2*][76] (PDF). Boston: [Addison-Wesley][77]. [ISBN][78] [978-0201141924][79].
-   [Bourbaki, N.][80] (1994) *Elements of the History of Mathematics*, John Meldrum, trans. Springer-Verlag.
-   [Carnap, Rudolf][81] (1958) *Introduction to Symbolic Logic with Applications*. Dover Publications.
-   [Halmos, P.R.][82] (1960) *Naive Set Theory*. Princeton NJ: D. Van Nostrand Company.
-   [Lawvere, F.W.][83], and R. Rosebrugh (2003) *Sets for Mathematics*, Cambridge Univ. Press.
-   [Lewis, C.I.][84] (1918) [A Survey of Symbolic Logic][85], Chapter 3: Applications of the Boole—Schröder Algebra, via [Internet Archive][86]
-   [Lucas, J. R.][87] (1999) *Conceptual Roots of Mathematics*. Routledge.
-   [Maddux, R.D.][88] (2006) *Relation Algebras*, vol. 150 in 'Studies in Logic and the Foundations of Mathematics'. Elsevier Science.
-   Merrill, Dan D. (1990) *Augustus De Morgan and the logic of relations*. Kluwer.
-   [Peirce, C.S.][89] (1870), "Description of a Notation for the Logic of Relatives, Resulting from an Amplification of the Conceptions of Boole's Calculus of Logic", *Memoirs of the American Academy of Arts and Sciences* 9, 317–78, 1870. Reprinted, *Collected Papers* CP 3.45–149, *Chronological Edition* CE 2, 359–429.
-   [Peirce, C.S.][90] (1984) *Writings of Charles S. Peirce: A Chronological Edition, Volume 2, 1867-1871*. Peirce Edition Project, eds. Indiana University Press.
-   [Russell, Bertrand][91] (1903/1938) *[The Principles of Mathematics, 2nd ed.][92]* Cambridge Univ. Press.
-   [Suppes, Patrick][93] (1960/1972) *Axiomatic Set Theory*. Dover Publications.
-   [Tarski, A.][94] (1956/1983) *Logic, Semantics, Metamathematics, Papers from 1923 to 1938*, J.H. Woodger, trans. 1st edition, Oxford University Press. 2nd edition, J. Corcoran, ed. Indianapolis IN: Hackett Publishing.
-   [Ulam, S.M.][95] and [Bednarek, A.R.][96] (1990), "On the Theory of Relational Structures and Schemata for Parallel Computation", pp. 477–508 in A.R. Bednarek and Françoise Ulam (eds.), *Analogies Between Analogies: The Mathematical Reports of S.M. Ulam and His Los Alamos Collaborators*, University of California Press, Berkeley, CA.
-   [Ulam, S.M.][97] (1990) *Analogies Between Analogies: The Mathematical Reports of S.M. Ulam and His Los Alamos Collaborators* in A.R. Bednarek and Françoise Ulam, eds., University of California Press.
-   [Roland Fraïssé][98] (2000) \[1986\] *Theory of Relations*, North Holland

[1]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[2]: https://en.wikipedia.org/wiki/Cartesian_product "Cartesian product"
[3]: https://en.wikipedia.org/wiki/Finitary_relation#cite_note-Codd1970-1
[4]: https://en.wikipedia.org/wiki/Finitary_relation#cite_note-2
[5]: https://en.wikipedia.org/wiki/Finitary_relation#cite_note-3
[6]: https://en.wikipedia.org/wiki/Arity "Arity"
[7]: https://en.wikipedia.org/wiki/Sequence "Sequence"
[8]: https://en.wikipedia.org/wiki/Finitary_relation#cite_note-4
[9]: https://en.wikipedia.org/wiki/Power_set "Power set"
[10]: https://en.wikipedia.org/wiki/Mathematical_induction "Mathematical induction"
[11]: https://en.wikipedia.org/wiki/Nobel_laureates "Nobel laureates"
[12]: https://en.wikipedia.org/wiki/Nobel_prize "Nobel prize"
[13]: https://en.wikipedia.org/wiki/Binary_relation "Binary relation"
[14]: https://en.wikipedia.org/wiki/Homogeneous_relation "Homogeneous relation"
[15]: https://en.wikipedia.org/wiki/Equality_(mathematics) "Equality (mathematics)"
[16]: https://en.wikipedia.org/wiki/Inequality_(mathematics) "Inequality (mathematics)"
[17]: https://en.wikipedia.org/wiki/Divisor "Divisor"
[18]: https://en.wikipedia.org/wiki/Heterogeneous_relation "Heterogeneous relation"
[19]: https://en.wikipedia.org/wiki/Element_(mathematics)
[20]: https://en.wikipedia.org/w/index.php?title=Finitary_relation&action=edit&section=1 "Edit section: Example"
[21]: https://en.wikipedia.org/wiki/Finitary_relation#cite_note-Codd1970-1
[22]: https://en.wikipedia.org/wiki/Relational_database "Relational database"
[23]: https://en.wikipedia.org/wiki/Relational_algebra "Relational algebra"
[24]: https://en.wikipedia.org/wiki/Finitary_relation#cite_note-5
[25]: https://en.wikipedia.org/w/index.php?title=Finitary_relation&action=edit&section=2 "Edit section: Definitions"
[26]: https://en.wikipedia.org/wiki/Finitary_relation#cite_note-Codd1970-1
[27]: https://en.wikipedia.org/wiki/Polish_notation "Polish notation"
[28]: https://en.wikipedia.org/wiki/Reverse_Polish_notation "Reverse Polish notation"
[29]: https://en.wikipedia.org/wiki/Infix_notation "Infix notation"
[30]: https://en.wikipedia.org/wiki/Finitary_relation#cite_note-Codd1970-1
[31]: https://en.wikipedia.org/wiki/Binary_relation#Definition "Binary relation"
[32]: https://en.wikipedia.org/wiki/Binary_relation#Definition "Binary relation"
[33]: https://en.wikipedia.org/wiki/Finitary_relation#cite_note-Codd1970-1
[34]: https://en.wikipedia.org/wiki/Finitary_relation#cite_note-Codd1970-1
[35]: https://en.wikipedia.org/wiki/Binary_relation#Definition "Binary relation"
[36]: https://en.wikipedia.org/wiki/Binary_relation#Definition "Binary relation"
[37]: https://en.wikipedia.org/wiki/Binary_relation#Special_types_of_binary_relations "Binary relation"
[38]: https://en.wikipedia.org/wiki/Binary_relation#Special_types_of_binary_relations "Binary relation"
[39]: https://en.wikipedia.org/wiki/Partition_of_a_set "Partition of a set"
[40]: https://en.wikipedia.org/wiki/Primary_key "Primary key"
[41]: https://en.wikipedia.org/wiki/Finitary_relation#cite_note-Codd1970-1
[42]: https://en.wikipedia.org/wiki/Binary_relation#Special_types_of_binary_relations "Binary relation"
[43]: https://en.wikipedia.org/wiki/Binary_relation#Special_types_of_binary_relations "Binary relation"
[44]: https://en.wikipedia.org/wiki/Boolean_domain "Boolean domain"
[45]: https://en.wikipedia.org/wiki/Indicator_function "Indicator function"
[46]: https://en.wikipedia.org/wiki/Boolean-valued_function "Boolean-valued function"
[47]: https://en.wikipedia.org/wiki/Computer_science "Computer science"
[48]: https://en.wikipedia.org/wiki/Predicate_(mathematics) "Predicate (mathematics)"
[49]: https://en.wikipedia.org/wiki/Formal_logic "Formal logic"
[50]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[51]: https://en.wikipedia.org/wiki/Interpretation_(logic) "Interpretation (logic)"
[52]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[53]: https://en.wikipedia.org/wiki/Logic "Logic"
[54]: https://en.wikipedia.org/wiki/Set_theory "Set theory"
[55]: https://en.wikipedia.org/wiki/Extension_(semantics) "Extension (semantics)"
[56]: https://en.wikipedia.org/wiki/Comprehension_(logic) "Comprehension (logic)"
[57]: https://en.wikipedia.org/wiki/Intension "Intension"
[58]: https://en.wikipedia.org/w/index.php?title=Finitary_relation&action=edit&section=3 "Edit section: History"
[59]: https://en.wikipedia.org/wiki/Augustus_De_Morgan "Augustus De Morgan"
[60]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce "Charles Sanders Peirce"
[61]: https://en.wikipedia.org/wiki/Gottlob_Frege "Gottlob Frege"
[62]: https://en.wikipedia.org/wiki/Georg_Cantor "Georg Cantor"
[63]: https://en.wikipedia.org/wiki/Richard_Dedekind "Richard Dedekind"
[64]: https://en.wikipedia.org/wiki/Order_theory "Order theory"
[65]: https://en.wikipedia.org/wiki/The_Principles_of_Mathematics "The Principles of Mathematics"
[66]: https://en.wikipedia.org/wiki/Bertrand_Russell "Bertrand Russell"
[67]: https://en.wikipedia.org/wiki/Edgar_F._Codd "Edgar F. Codd"
[68]: https://en.wikipedia.org/wiki/Relational_model "Relational model"
[69]: https://en.wikipedia.org/wiki/Database "Database"
[70]: https://en.wikipedia.org/wiki/Data_base_management_system "Data base management system"
[71]: https://en.wikipedia.org/wiki/Finitary_relation#cite_note-Codd1970-1
[72]: https://en.wikipedia.org/w/index.php?title=Finitary_relation&action=edit&section=4 "Edit section: See also"
[73]: https://en.wikipedia.org/w/index.php?title=Finitary_relation&action=edit&section=5 "Edit section: References"
[74]: https://en.wikipedia.org/w/index.php?title=Finitary_relation&action=edit&section=6 "Edit section: Bibliography"
[75]: https://en.wikipedia.org/wiki/Edgar_F._Codd "Edgar F. Codd"
[76]: https://codeblab.com/wp-content/uploads/2009/12/rmdb-codd.pdf
[77]: https://en.wikipedia.org/wiki/Addison-Wesley "Addison-Wesley"
[78]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[79]: https://en.wikipedia.org/wiki/Special:BookSources/978-0201141924 "Special:BookSources/978-0201141924"
[80]: https://en.wikipedia.org/wiki/Nicolas_Bourbaki "Nicolas Bourbaki"
[81]: https://en.wikipedia.org/wiki/Rudolf_Carnap "Rudolf Carnap"
[82]: https://en.wikipedia.org/wiki/Paul_Richard_Halmos "Paul Richard Halmos"
[83]: https://en.wikipedia.org/wiki/Francis_William_Lawvere "Francis William Lawvere"
[84]: https://en.wikipedia.org/wiki/Clarence_Irving_Lewis "Clarence Irving Lewis"
[85]: https://archive.org/details/asurveyofsymboli00lewiuoft "iarchive:asurveyofsymboli00lewiuoft"
[86]: https://en.wikipedia.org/wiki/Internet_Archive "Internet Archive"
[87]: https://en.wikipedia.org/wiki/John_Lucas_(philosopher) "John Lucas (philosopher)"
[88]: https://en.wikipedia.org/wiki/Roger_Maddux "Roger Maddux"
[89]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce "Charles Sanders Peirce"
[90]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce "Charles Sanders Peirce"
[91]: https://en.wikipedia.org/wiki/Bertrand_Russell "Bertrand Russell"
[92]: http://fair-use.org/bertrand-russell/the-principles-of-mathematics
[93]: https://en.wikipedia.org/wiki/Patrick_Suppes "Patrick Suppes"
[94]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[95]: https://en.wikipedia.org/wiki/Stanislaw_Ulam "Stanislaw Ulam"
[96]: https://en.wikipedia.org/w/index.php?title=Al_Bednarek&action=edit&redlink=1 "Al Bednarek (page does not exist)"
[97]: https://en.wikipedia.org/wiki/Stanislaw_Ulam "Stanislaw Ulam"
[98]: https://en.wikipedia.org/wiki/Roland_Fra%C3%AFss%C3%A9 "Roland Fraïssé"
