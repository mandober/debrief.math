# Connected relation


In mathematics, a [relation on a set][2] is called __connected__ or __total__ if it relates (or "compares") all *distinct* pairs of elements of the set in one direction or the other while it is called __strongly connected__ if it relates *all* pairs of elements. As described in the [terminology section below][3], the terminology for these properties is not uniform. This notion of "total" should not be confused with that of a total relation in the sense that for all ![x\in X](https://wikimedia.org/api/rest_v1/media/math/render/svg/3e580967f68f36743e894aa7944f032dda6ea01d) there is a ![y \in X](https://wikimedia.org/api/rest_v1/media/math/render/svg/6015f751d0278b3aa3b5e4c33740456f08e888b9) so that ![{\displaystyle x\mathrel {R} y}](https://wikimedia.org/api/rest_v1/media/math/render/svg/acce0569ab621fa97a085e8cf64a24638e17f0f1) (see [serial relation][4]).

Connectedness features prominently in the definition of [total orders][5]: a total (or linear) order is a [partial order][6] in which any two elements are comparable; that is, the order relation is connected. Similarly, a [strict partial order][7] that is connected is a strict total order. A relation is a total order [if and only if][8] it is both a partial order and strongly connected. A relation is a [strict total order][9] if, and only if, it is a strict partial order and just connected. A strict total order can never be strongly connected (except on an empty domain).

## Formal definition

A relation ![R](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b0bfb3769bf24d80e15374dc37b0441e2616e33) on a set ![X](https://wikimedia.org/api/rest_v1/media/math/render/svg/68baa052181f707c662844a465bfeeb135e82bab) is called __*connected* when for all ![{\displaystyle x,y\in X,}](https://wikimedia.org/api/rest_v1/media/math/render/svg/10c8e2c619d7ee4f04b7422de1bf3ac3945c12ff)__ 

![{\displaystyle {\text{ if }}x\neq y{\text{ then }}x\mathrel {R} y\quad {\text{or}}\quad y\mathrel {R} x,}](https://wikimedia.org/api/rest_v1/media/math/render/svg/064a8fef4a3f49e531728b952c8a2a5340b2ef62)

or, equivalently, when for all ![{\displaystyle x,y\in X,}](https://wikimedia.org/api/rest_v1/media/math/render/svg/10c8e2c619d7ee4f04b7422de1bf3ac3945c12ff)

![{\displaystyle x\mathrel {R} y\quad {\text{or}}\quad y\mathrel {R} x\quad {\text{or}}\quad x=y.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bb491f9b465727607ff7748336aceff5c7ec6b63)

A relation with the property that for all ![{\displaystyle x,y\in X,}](https://wikimedia.org/api/rest_v1/media/math/render/svg/10c8e2c619d7ee4f04b7422de1bf3ac3945c12ff)

![{\displaystyle x\mathrel {R} y\quad {\text{or}}\quad y\mathrel {R} x}](https://wikimedia.org/api/rest_v1/media/math/render/svg/991f17eb201c506ef885bb461e67df23a1e0169e)

is called __*strongly connected*__.[\[1\]][11][\[2\]][12][\[3\]][13]

### Terminology\[[edit][14]\]

The main use of the notion of connected relation is in the context of orders, where it is used to define total, or linear, orders. In this context, the property is often not specifically named. Rather, total orders are defined as partial orders in which any two elements are comparable.[\[4\]][15][\[5\]][16] Thus, __*total*__ is used more generally for relations that are connected or strongly connected.[\[6\]][17] However, this notion of "total relation" must be distinguished from the property of being [serial][18], which is also called total. Similarly, connected relations are sometimes called __*complete*__,[\[7\]][19] although this, too, can lead to confusion: The [universal relation][20] is also called complete,[\[8\]][21] and "[complete][22]" has several other meanings in [order theory][23]. Connected relations are also called __*connex*__[\[9\]][24][\[10\]][25] or said to satisfy __trichotomy__[\[11\]][26] (although the more common definition of [trichotomy][27] is stronger in that *exactly one* of the three options ![{\displaystyle x\mathrel {R} y,y\mathrel {R} x,x=y}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8599882e7c86da9e0758af1b8e815e245095b131) must hold).

When the relations considered are not orders, being connected and being strongly connected are importantly different properties. Sources which define both then use pairs of terms such as __*weakly connected*__ and __connected__,[\[12\]][28] __complete__ and __strongly complete__,[\[13\]][29] __total__ and __complete__,[\[6\]][30] __*semiconnex*__ and __connex__,[\[14\]][31] or __connex__ and __*strictly connex*__,[\[15\]][32] respectively, as alternative names for the notions of connected and strongly connected as defined above.

## Characterizations\[[edit][33]\]

Let ![R](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b0bfb3769bf24d80e15374dc37b0441e2616e33) be a homogeneous relation. The following are equivalent:[\[14\]][34]

where ![U](https://wikimedia.org/api/rest_v1/media/math/render/svg/458a728f53b9a0274f059cd695e067c430956025) is the [universal relation][35] and ![{\displaystyle R^{\top }}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0bbd1fa459e732bcd625f108bbb3ad3ecdabc9f2) is the [converse relation][36] of ![R.](https://wikimedia.org/api/rest_v1/media/math/render/svg/fdcae6b33a27f86c7961318cd7ee3d789d3bcdd2)

The following are equivalent:[\[14\]][37]

where ![\overline {I}](https://wikimedia.org/api/rest_v1/media/math/render/svg/43b8e66ae8bc148a0ef25e32292c223ee9ae24d5) is the [complementary relation][38] of the [identity relation][39] ![I](https://wikimedia.org/api/rest_v1/media/math/render/svg/535ea7fc4134a31cbe2251d9d3511374bc41be9f) and ![{\displaystyle R^{\top }}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0bbd1fa459e732bcd625f108bbb3ad3ecdabc9f2) is the [converse relation][40] of ![R.](https://wikimedia.org/api/rest_v1/media/math/render/svg/fdcae6b33a27f86c7961318cd7ee3d789d3bcdd2)

Introducing progressions, Russell invoked the axiom of connection:

> Whenever a series is originally given by a transitive asymmetrical relation, we can express connection by the condition that any two terms of our series are to have the [generating relation][41].

## Properties\[[edit][42]\]

-   The *edge* relation[\[note 1\]][43] ![E](https://wikimedia.org/api/rest_v1/media/math/render/svg/4232c9de2ee3eec0a9c0a19b15ab92daa6223f9b) of a [tournament][44] graph ![G](https://wikimedia.org/api/rest_v1/media/math/render/svg/f5f3c8921a3b352de45446a6789b104458c9f90b) is always a connected relation on the set of ![G](https://wikimedia.org/api/rest_v1/media/math/render/svg/f5f3c8921a3b352de45446a6789b104458c9f90b)'s vertices.
-   If a strongly connected relation is [symmetric][45], it is the [universal relation][46].
-   A relation is strongly connected if, and only if, it is connected and reflexive.[\[proof 1\]][47]
-   A connected relation on a set ![X](https://wikimedia.org/api/rest_v1/media/math/render/svg/68baa052181f707c662844a465bfeeb135e82bab) cannot be [antitransitive][48], provided ![X](https://wikimedia.org/api/rest_v1/media/math/render/svg/68baa052181f707c662844a465bfeeb135e82bab) has at least 4 elements.[\[16\]][49] On a 3-element set ![{\displaystyle \{a,b,c\},}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f25ce208141b6e535046292a5ca672177abafd09) for example, the relation ![{\displaystyle \{(a,b),(b,c),(c,a)\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f09e6564ebf1ccda796fe4205d39a4e01cff58cc) has both properties.
-   If ![R](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b0bfb3769bf24d80e15374dc37b0441e2616e33) is a connected relation on ![X,](https://wikimedia.org/api/rest_v1/media/math/render/svg/09ba32eeb405f7f5f2bac1eb12987c47d2fd42df) then all, or all but one, elements of ![X](https://wikimedia.org/api/rest_v1/media/math/render/svg/68baa052181f707c662844a465bfeeb135e82bab) are in the [range][50] of ![R.](https://wikimedia.org/api/rest_v1/media/math/render/svg/fdcae6b33a27f86c7961318cd7ee3d789d3bcdd2)[\[proof 2\]][51] Similarly, all, or all but one, elements of ![X](https://wikimedia.org/api/rest_v1/media/math/render/svg/68baa052181f707c662844a465bfeeb135e82bab) are in the domain of ![R.](https://wikimedia.org/api/rest_v1/media/math/render/svg/fdcae6b33a27f86c7961318cd7ee3d789d3bcdd2)

## Notes\[[edit][52]\]

Proofs

## References\[[edit][53]\]

1.  __[^][54]__ Clapham, Christopher; Nicholson, James (2014-09-18). "connected". [*The Concise Oxford Dictionary of Mathematics*][55]. Oxford University Press. [ISBN][56] [978-0-19-967959-1][57]. Retrieved 2021-04-12.
2.  __[^][58]__ Nievergelt, Yves (2015-10-13). [*Logic, Mathematics, and Computer Science: Modern Foundations with Practical Applications*][59]. Springer. p. 182. [ISBN][60] [978-1-4939-3223-8][61].
3.  __[^][62]__ Causey, Robert L. (1994). *Logic, Sets, and Recursion*. Jones & Bartlett Learning. [ISBN][63] [0-86720-463-X][64]., p. 135
4.  __[^][65]__ Paul R. Halmos (1968). *Naive Set Theory*. Princeton: Nostrand. Here: Ch.14. Halmos gives the names of reflexivity, anti-symmetry, and transitivity, but not of connectedness.
5.  __[^][66]__ Patrick Cousot (1990). "Methods and Logics for Proving Programs". In Jan van Leeuwen (ed.). *Formal Models and Semantics*. Handbook of Theoretical Computer Science. __B__. Elsevier. pp. 841–993. [ISBN][67] [0-444-88074-7][68]. Here: Sect.6.3, p.878
6.  ^ [Jump up to: *__a__*][69] [*__b__*][70] Aliprantis, Charalambos D.; Border, Kim C. (2007-05-02). *Infinite Dimensional Analysis: A Hitchhiker's Guide*. Springer. [ISBN][71] [978-3-540-32696-0][72]., p. 6
7.  __[^][73]__ Makinson, David (2012-02-27). *Sets, Logic and Maths for Computing*. Springer. [ISBN][74] [978-1-4471-2500-6][75]., p. 50
8.  __[^][76]__ [Whitehead, Alfred North][77]; [Russell, Bertrand][78] (1910). [*Principia Mathematica*][79]. Cambridge: Cambridge University Press.CS1 maint: date and year ([link][80])
9.  __[^][81]__ Wall, Robert E. (1974). *Introduction to Mathematical Linguistics*. Prentice-Hall. page 114.
10.  __[^][82]__ Carl Pollard. ["Relations and Functions"][83] (PDF). Ohio State University. Retrieved 2018-05-28. Page 7.
11.  __[^][84]__ Kunen, Kenneth (2009). *The Foundations of Mathematics*. College Publications. [ISBN][85] [978-1-904987-14-7][86]. p. 24
12.  __[^][87]__ Fishburn, Peter C. (2015-03-08). [*The Theory of Social Choice*][88]. Princeton University Press. p. 72. [ISBN][89] [978-1-4008-6833-9][90].
13.  __[^][91]__ Roberts, Fred S. (2009-03-12). *Measurement Theory: Volume 7: With Applications to Decisionmaking, Utility, and the Social Sciences*. Cambridge University Press. [ISBN][92] [978-0-521-10243-8][93]. page 29
14.  ^ [Jump up to: *__a__*][94] [*__b__*][95] [*__c__*][96] [Schmidt, Gunther][97]; Ströhlein, Thomas (1993). [*Relations and Graphs: Discrete Mathematics for Computer Scientists*][98]. Berlin: Springer. [ISBN][99] [978-3-642-77970-1][100].
15.  __[^][101]__ Ganter, Bernhard; Wille, Rudolf (2012-12-06). *Formal Concept Analysis: Mathematical Foundations*. Springer Science & Business Media. [ISBN][102] [978-3-642-59830-2][103]. p. 86
16.  __[^][104]__ Jochen Burghardt (Jun 2018). Simple Laws about Nonprominent Properties of Binary Relations (Technical Report). [arXiv][105]:[1806.05036][106]. [Bibcode][107]:[2018arXiv180605036B][108]. Lemma 8.2, p.8.

[1]: https://en.wikipedia.org/wiki/Connexity_Inc.
[2]: https://en.wikipedia.org/wiki/Relation_on_a_set
[3]: https://en.wikipedia.org/wiki/Connected_relation#Terminology
[4]: https://en.wikipedia.org/wiki/Serial_relation
[5]: https://en.wikipedia.org/wiki/Total_order "Total order"
[6]: https://en.wikipedia.org/wiki/Partial_order "Partial order"
[7]: https://en.wikipedia.org/wiki/Strict_partial_order
[8]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[9]: https://en.wikipedia.org/wiki/Strict_total_order "Strict total order"
[10]: https://en.wikipedia.org/w/index.php?title=Connected_relation&action=edit&section=1 "Edit section: Formal definition"
[11]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-1
[12]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-2
[13]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-3
[14]: https://en.wikipedia.org/w/index.php?title=Connected_relation&action=edit&section=2 "Edit section: Terminology"
[15]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-4
[16]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-5
[17]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-Aliprantis-6
[18]: https://en.wikipedia.org/wiki/Serial_relation "Serial relation"
[19]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-7
[20]: https://en.wikipedia.org/wiki/Universal_relation "Universal relation"
[21]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-8
[22]: https://en.wikipedia.org/wiki/Completeness_(order_theory) "Completeness (order theory)"
[23]: https://en.wikipedia.org/wiki/Order_theory "Order theory"
[24]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-9
[25]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-10
[26]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-11
[27]: https://en.wikipedia.org/wiki/Trichotomy_(mathematics) "Trichotomy (mathematics)"
[28]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-12
[29]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-13
[30]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-Aliprantis-6
[31]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-Schmidt-14
[32]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-15
[33]: https://en.wikipedia.org/w/index.php?title=Connected_relation&action=edit&section=3 "Edit section: Characterizations"
[34]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-Schmidt-14
[35]: https://en.wikipedia.org/wiki/Universal_relation "Universal relation"
[36]: https://en.wikipedia.org/wiki/Converse_relation "Converse relation"
[37]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-Schmidt-14
[38]: https://en.wikipedia.org/wiki/Complement_(set_theory) "Complement (set theory)"
[39]: https://en.wikipedia.org/wiki/Binary_relation#Particular_homogeneous_relations "Binary relation"
[40]: https://en.wikipedia.org/wiki/Converse_relation "Converse relation"
[41]: https://en.wikipedia.org/wiki/Serial_relation "Serial relation"
[42]: https://en.wikipedia.org/w/index.php?title=Connected_relation&action=edit&section=4 "Edit section: Properties"
[43]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-16
[44]: https://en.wikipedia.org/wiki/Tournament_(graph_theory) "Tournament (graph theory)"
[45]: https://en.wikipedia.org/wiki/Symmetric_relation "Symmetric relation"
[46]: https://en.wikipedia.org/wiki/Universal_relation "Universal relation"
[47]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-17
[48]: https://en.wikipedia.org/wiki/Antitransitive "Antitransitive"
[49]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-18
[50]: https://en.wikipedia.org/wiki/Image_(mathematics)#Generalization_to_binary_relations "Image (mathematics)"
[51]: https://en.wikipedia.org/wiki/Connected_relation#cite_note-19
[52]: https://en.wikipedia.org/w/index.php?title=Connected_relation&action=edit&section=5 "Edit section: Notes"
[53]: https://en.wikipedia.org/w/index.php?title=Connected_relation&action=edit&section=6 "Edit section: References"
[54]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-1 "Jump up"
[55]: http://www.oxfordreference.com/view/10.1093/acref/9780199679591.001.0001/acref-9780199679591-e-598
[56]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[57]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-19-967959-1 "Special:BookSources/978-0-19-967959-1"
[58]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-2 "Jump up"
[59]: https://www.google.ca/books/edition/Logic_Mathematics_and_Computer_Science/AInDCgAAQBAJ?hl=en&gbpv=1&pg=PA182
[60]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[61]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-4939-3223-8 "Special:BookSources/978-1-4939-3223-8"
[62]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-3 "Jump up"
[63]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[64]: https://en.wikipedia.org/wiki/Special:BookSources/0-86720-463-X "Special:BookSources/0-86720-463-X"
[65]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-4 "Jump up"
[66]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-5 "Jump up"
[67]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[68]: https://en.wikipedia.org/wiki/Special:BookSources/0-444-88074-7 "Special:BookSources/0-444-88074-7"
[69]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-Aliprantis_6-0
[70]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-Aliprantis_6-1
[71]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[72]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-32696-0 "Special:BookSources/978-3-540-32696-0"
[73]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-7 "Jump up"
[74]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[75]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-4471-2500-6 "Special:BookSources/978-1-4471-2500-6"
[76]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-8 "Jump up"
[77]: https://en.wikipedia.org/wiki/Alfred_North_Whitehead "Alfred North Whitehead"
[78]: https://en.wikipedia.org/wiki/Bertrand_Russell "Bertrand Russell"
[79]: http://archive.org/details/principiamathema01anwh
[80]: https://en.wikipedia.org/wiki/Category:CS1_maint:_date_and_year "Category:CS1 maint: date and year"
[81]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-9 "Jump up"
[82]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-10 "Jump up"
[83]: http://www.ling.ohio-state.edu/~pollard/680/chapters/relations.pdf
[84]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-11 "Jump up"
[85]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[86]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-904987-14-7 "Special:BookSources/978-1-904987-14-7"
[87]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-12 "Jump up"
[88]: https://books.google.com/books?id=m2V9BgAAQBAJ&pg=PA72
[89]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[90]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-4008-6833-9 "Special:BookSources/978-1-4008-6833-9"
[91]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-13 "Jump up"
[92]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[93]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-10243-8 "Special:BookSources/978-0-521-10243-8"
[94]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-Schmidt_14-0
[95]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-Schmidt_14-1
[96]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-Schmidt_14-2
[97]: https://en.wikipedia.org/wiki/Gunther_Schmidt "Gunther Schmidt"
[98]: https://books.google.com/books?id=ZgarCAAAQBAJ
[99]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[100]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-642-77970-1 "Special:BookSources/978-3-642-77970-1"
[101]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-15 "Jump up"
[102]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[103]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-642-59830-2 "Special:BookSources/978-3-642-59830-2"
[104]: https://en.wikipedia.org/wiki/Connected_relation#cite_ref-18 "Jump up"
[105]: https://en.wikipedia.org/wiki/ArXiv_(identifier) "ArXiv (identifier)"
[106]: https://arxiv.org/abs/1806.05036
[107]: https://en.wikipedia.org/wiki/Bibcode_(identifier) "Bibcode (identifier)"
[108]: https://ui.adsabs.harvard.edu/abs/2018arXiv180605036B
