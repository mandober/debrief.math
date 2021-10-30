# History of type theory

The type theory was initially created to avoid paradoxes in a variety of formal logics and rewrite systems. Later, type theory referred to a class of formal systems, some of which can serve as alternatives to naive set theory as a foundation for all mathematics. It has been tied to formal mathematics since Principia Mathematica to today's proof assistants.

## 1900-1927

### Origin of Russell's theory of types

In a letter to [Gottlob Frege][10] (1902), [Bertrand Russell][11] announced his discovery of the paradox in Frege's [Begriffsschrift][12].[\[1\]][13] Frege promptly responded, acknowledging the problem and proposing a solution in a technical discussion of "levels". To quote Frege:

> Incidentally, it seems to me that the expression "a [predicate][14] is predicated of itself" is not exact. A predicate is as a rule a first-level function, and this function requires an object as argument and cannot have itself as argument (subject). Therefore I would prefer to say "a concept is predicated of its own extension".[\[2\]][15]

He goes about showing how this might work but seems to pull back from it. As a consequence of what has become known as [Russell's paradox][16] both Frege and Russell had to quickly amend works that they had at the printers. In an Appendix B that Russell tacked onto his *[The Principles of Mathematics][17]* (1903) one finds his "tentative" theory of types. The matter plagued Russell for about five years.[\[3\]][18]

[Willard Quine][19][\[4\]][20] presents a historical synopsis of the origin of the theory of types and the "ramified" theory of types: after considering abandoning the theory of types (1905), Russell proposed in turn three theories:

1.  the zigzag theory
2.  theory of limitation of size,
3.  the no-class theory (1905-1906) and then,
4.  readopting the theory of types (1908ff)

Quine observes that Russell's intrduction of the notion of "apparent variable" had the following result:

> the distinction between 'all' and 'any': 'all' is expressed by the bound ('apparent') variable of universal quantification, which ranges over a type, and 'any' is expressed by the free ('real') variable which refers schematically to any unspecified thing irrespective of type.

Quine dismisses this notion of "bound variable" as "*pointless apart from a certain aspect of the theory of types*".[\[5\]][21]

### The 1908 "ramified" theory of types\[[edit][22]\]

Quine explains the *ramified* theory as follows: "It has been so called because the type of a function depends both on the types of its arguments and on the types of the apparent variables contained in it (or in its expression), in case these exceed the types of the arguments".[\[5\]][23] [Stephen Kleene][24] in his 1952 *Introduction to Metamathematics* describes the *ramified* theory of types this way:

The primary objects or individuals (i.e. the given things not being subjected to logical analysis) are assigned to one type (say *type 0*), the properties of individuals to *type 1*, properties of properties of individuals to *type 2*, etc.; and no properties are admitted which do not fall into one of these logical types (e.g. this puts the properties 'predicable' and 'impredicable' ... outside the pale of logic). A more detailed account would describe the admitted types for other objects as relations and classes. Then to exclude [impredicative][25] definitions within a type, the types above type 0 are further separated into orders. Thus for type 1, properties defined without mentioning any totality belong to *order 0*, and properties defined using the totality of properties of a given order belong to the next higher order. ... But this separation into orders makes it impossible to construct the familiar analysis, which we saw above contains impredicative definitions. To escape this outcome, Russell postulated his *[axiom of reducibility][26]*, which asserts that to any property belonging to an order above the lowest, there is a coextensive property (i.e. one possessed by exactly the same objects) of order 0. If only definable properties are considered to exist, then the axiom means that to every impredicative definition within a given type there is an equivalent predicative one (Kleene 1952:44-45).

### The axiom of reducibility and the notion of "matrix"\[[edit][27]\]

But because the stipulations of the ramified theory would prove (to quote Quine) "onerous", Russell in his 1908 *Mathematical logic as based on the theory of types*[\[6\]][28] also would propose his *[axiom of reducibility][29]*. By 1910 Whitehead and Russell in their *Principia Mathematica* would further augment this axiom with the notion of a *matrix* - a fully extensional specification of a function. From its matrix a function could be derived by the process of "generalization" and vice versa, i.e. the two processes are reversible - (i) generalization from a matrix to a function (by using apparent variables) and (ii) the reverse process of reduction of type by courses-of-values substitution of arguments for the apparent variable. By this method impredicativity could be avoided.[\[7\]][30]

### Truth tables\[[edit][31]\]

In 1921, [Emil Post][32] would develop a theory of "truth functions" and their truth tables, which replace the notion of apparent versus real variables. From his "Introduction" (1921): "Whereas the complete theory \[of Whitehead and Russell (1910, 1912, 1913)\] requires for the enunciation of its propositions real and apparent variables, which represent both individuals and [propositional functions][33] of different kinds, and as a result necessitates the cumbersome theory of types, this subtheory uses only real variables, and these real variables represent but one kind of entity, which the authors have chosen to call elementary propositions".[\[8\]][34]

At about the same time [Ludwig Wittgenstein][35] developed similar ideas in his 1922 work [Tractatus Logico-Philosophicus][36]:

> 3.331 From this observation we get a further view - into Russell's Theory of Types. Russell's error is shown by the fact that in drawing up his symbolic rules he has to speak of the meanings of his signs.
> 
> 3.332 No proposition can say anything about itself, because the propositional sign cannot be contained in itself (that is the whole "theory of types").
> 
> 3.333 A function cannot be its own argument, because the functional sign already contains the prototype of its own argument and it cannot contain itself...

Wittgenstein proposed the truth-table method as well. In his 4.3 through 5.101, Wittgenstein adopts an unbounded [Sheffer stroke][37] as his fundamental logical entity and then lists all 16 functions of two variables (5.101).

The notion of matrix-as-truth-table appears as late as the 1940-1950s in the work of Tarski, e.g. his 1946 indexes "Matrix, see: Truth table"[\[9\]][38]

### Russell's doubts\[[edit][39]\]

Russell in his 1920 *Introduction to Mathematical Philosophy* devotes an entire chapter to "The axiom of Infinity and logical types" wherein he states his concerns: "Now the theory of types emphatically does not belong to the finished and certain part of our subject: much of this theory is still inchoate, confused, and obscure. But the need of *some* doctrine of types is less doubtful than the precise form the doctrine should take; and in connection with the axiom of infinity it is particularly easy to see the necessity of some such doctrine".[\[10\]][40]

__Russell abandons the axiom of reducibility__: In the second edition of *Principia Mathematica* (1927) he acknowledges Wittgenstein's argument.[\[11\]][41] At the outset of his Introduction he declares "there can be no doubt ... that there is no need of the distinction between real and apparent variables...".[\[12\]][42] Now he fully embraces the matrix notion and declares "A *function can only appear in a matrix through its values*" (but demurs in a footnote: "It takes the place (not quite adequately) of the axiom of reducibility"[\[13\]][43]). Furthermore, he introduces a new (abbreviated, generalized) notion of "matrix", that of a "logical matrix . . . one that contains no constants. Thus *p*|*q* is a logical matrix".[\[14\]][44] Thus Russell has virtually abandoned the axiom of reducibility,[\[15\]][45] but in his last paragraphs he states that from "our present primitive propositions" he cannot derive "Dedekindian relations and well-ordered relations" and observes that if there is a new axiom to replace the axiom of reducibility "it remains to be discovered".[\[16\]][46]

### Theory of simple types\[[edit][47]\]

In the 1920s, [Leon Chwistek][48][\[17\]][49] and [Frank P. Ramsey][50][\[18\]][51] noticed that, if one is willing to give up the [vicious circle principle][52], the hierarchy of levels of types in the "ramified theory of types" can be collapsed.

The resulting restricted logic is called the theory of simple types[\[19\]][53] or, perhaps more commonly, simple type theory.[\[20\]][54] Detailed formulations of simple type theory were published in the late 1920s and early 1930s by R. Carnap, F. Ramsey, W.V.O. Quine, and A. Tarski. In 1940 [Alonzo Church][55] (re)formulated it as [simply typed lambda calculus][56].[\[21\]][57] and examined by Gödel in 1944. A survey of these developments is found in Collins (2012).[\[22\]][58]

### 1940s-present\[[edit][59]\]

#### Gödel 1944\[[edit][60]\]

[Kurt Gödel][61] in his 1944 *Russell's mathematical logic* gave the following definition of the "theory of simple types" in a footnote:

By the theory of simple types I mean the doctrine which says that the objects of thought (or, in another interpretation, the symbolic expressions) are divided into types, namely: individuals, properties of individuals, relations between individuals, properties of such relations, etc. (with a similar hierarchy for extensions), and that sentences of the form: " *a* has the property *φ* ", " *b* bears the relation *R* to *c* ", etc. are meaningless, if *a, b, c, R, φ* are not of types fitting together. Mixed types (such as classes containing individuals and classes as elements) and therefore also transfinite types (such as the class of all classes of finite types) are excluded. That the theory of simple types suffices for avoiding also the epistemological paradoxes is shown by a closer analysis of these. (Cf. *Ramsey 1926* and *Tarski 1935*, p. 399).".[\[23\]][62]

He concluded the (1) theory of simple types and (2) axiomatic set theory, "permit the derivation of modern mathematics and at the same time avoid all known paradoxes" (Gödel 1944:126); furthermore, the theory of simple types "is the system of the first *Principia* \[*Principia Mathematica*\] in an appropriate interpretation. . . . \[M\]any symptoms show only too clearly, however, that the primitive concepts need further elucidation" (Gödel 1944:126).

#### Curry-Howard correspondence, 1934-1969\[[edit][63]\]

The [Curry-Howard correspondence][64] is the interpretation of proofs-as-programs and formulae-as-types. The idea starting in 1934 with [Haskell Curry][65] and finalized in 1969 with [William Alvin Howard][66]. It connected the "computational component" of many type theories to the derivations in logics.

Howard showed that the typed lambda calculus corresponded to intuitionistic [natural deduction][67] (that is, natural deduction without the [Law of excluded middle][68]). The connection between types and logic lead to a lot of subsequent research to find new type theories for existing logics and new logics for existing type theories.

#### de Bruijn's AUTOMATH, 1967-2003\[[edit][69]\]

[Nicolaas Govert de Bruijn][70] created the type theory [Automath][71] as a mathematical foundation for the Automath system, which could verify the correctness of proofs. The system developed and added features over time as type theory developed.

#### Martin-Löf's Intuitionistic type theory, 1971-1984\[[edit][72]\]

[Per Martin-Löf][73] found a type theory that corresponded to [predicate logic][74] by introducing [dependent types][75], which became known as [intuitionistic type theory][76] or Martin-Löf type theory.

Martin-Löf's theory uses inductive types to represent unbounded data structures, such as natural numbers.

#### Barendregt's lambda cube, 1991\[[edit][77]\]

The [lambda cube][78] was not a new type theory but a categorization of existing type theories. The eight corners of the cube included some existing theories with [simply typed lambda calculus][79] at the lowest corner and the [calculus of constructions][80] at the highest.

## References\[[edit][81]\]

1.  __[^][82]__ Russell's (1902) *Letter to Frege* appears, with commentary, in van Heijenoort 1967:124-125.
2.  __[^][83]__ Frege (1902) *Letter to Russell* appears, with commentary, in van Heijenoort 1967:126-128.
3.  __[^][84]__ cf. Quine's commentary before Russell (1908) *Mathematical Logic as based on the theory of types* in van Heijenoort 1967:150
4.  __[^][85]__ cf. commentary by [W. V. O. Quine][86] before Russell's (1908) *Mathematical logic as based on the theory of types* in van Hiejenoort 1967:150-153
5.  ^ [Jump up to: *__a__*][87] [*__b__*][88] Quine's commentary before Russell (1908) *Mathematical logic as based on the theory of types* in van Heijenoort 1967:151
6.  __[^][89]__ Russell (1908) *Mathematical Logic as based on the theory of types* in van Heijenoort 1967:153-182
7.  __[^][90]__ cf. in particular p. 51 in Chapter II *The theory of Logical Types* and \*12 *The Hierarchy of Types and the Axiom of Reducibility* pp. 162-167. Whitehead and Russell (1910-1913, 1927 2nd edition) *Principia Mathematica*
8.  __[^][91]__ Post (1921) *Introduction to a general theory of elementary propositions* in van Heijenoort 1967:264-283
9.  __[^][92]__ Tarski 1946, *Introduction to Logic and to the Methodology of Deductive Sciences*, Dover republication 1995
10.  __[^][93]__ Russell 1920:135
11.  __[^][94]__ cf. "Introduction" to 2nd edition, Russell 1927:xiv and Appendix C
12.  __[^][95]__ cf. "Introduction" to 2nd edition, Russell 1927:i
13.  __[^][96]__ cf. "Introduction" to 2nd edition, Russell 1927:xxix
14.  __[^][97]__ The vertical bar " | " is the Sheffer stroke; cf. "Introduction" to 2nd edition, Russell 1927:xxxi
15.  __[^][98]__ "The theory of classes is at once simplified in one direction and complicated in another by the assumption that functions only occur through their values and by the abandonment of the axiom of reducibility"; cf. "Introduction" to 2nd edition, Russell 1927:xxxix
16.  __[^][99]__ These quotes from "Introduction" to 2nd edition, Russell 1927:xliv-xlv.
17.  __[^][100]__ L. Chwistek, Antynomje logikiformalnej, *Przeglad Filozoficzny* 24 (1921) 164-171
18.  __[^][101]__ F. P. Ramsey, The foundations of mathematics, *Proceedings of the London Mathematical Society*, Series 2 25 (1926) 338-384.
19.  __[^][102]__ Gödel 1944, pages 126 and 136-138, footnote 17: "Russell's mathematical logic" appearing in *Kurt Gödel: Collected Works: Volume II Publications 1938-1974*, Oxford University Press, New York NY, [ISBN][103] [978-0-19-514721-6][104](v.2.pbk).
20.  __[^][105]__ This does not mean the theory is "simple", it means that the theory is *restricted*: types of different orders are not to be mixed: "Mixed types (such as classes containing individuals and classes as elements) and therefore also transfinite types (such as the class of all classes of finite types) are excluded." Gödel 1944, pages 127, footnote 17: "Russell's mathematical logic" appearing in *Kurt Gödel: Collected Works: Volume II Publications 1938-1974*, Oxford University Press, New York NY, [ISBN][106] [978-0-19-514721-6][107](v.2.pbk).
21.  __[^][108]__ A. Church, A formulation of the simple theory of types, Journal of Symbolic Logic 5 (1940) 56-68.
22.  __[^][109]__ J. Collins, A History of the Theory of Types: Developments after the Second Edition of 'Principia Mathematica'. LAP Lambert Academic Publishing (2012). [ISBN][110] [978-3-8473-2963-3][111], esp. chs. 4-6.
23.  __[^][112]__ Gödel 1944:126 footnote 17: "Russell's mathematical logic" appearing in *Kurt Gödel: Collected Works: Volume II Publications 1938-1974*, Oxford University Press, New York NY, [ISBN][113] [978-0-19-514721-6][114](v.2.pbk).

## Sources

-   Bertrand Russell (1903), *The Principles of Mathematics: Vol. 1*, Cambridge at the University Press, Cambridge, UK.
-   Bertrand Russell (1920), *Introduction to Mathematical Philosophy* (second edition), Dover Publishing Inc., New York NY, [ISBN][116] [0-486-27724-0][117] (in particular chapters XIII and XVII).
-   Alfred Tarski (1946), *Introduction to Logic and to the Methodology of Deductive Sciences*, republished 1995 by Dover Publications, Inc., New York, NY [ISBN][118] [0-486-28462-X][119]
-   Jean van Heijenoort (1967, 3rd printing 1976), *From Frege to Godel: A Source Book in Mathematical Logic, 1879-1931*, Harvard University Press, Cambridge, MA, [ISBN][120] [0-674-32449-8][121] (pbk)
    -   Bertrand Russell (1902), *Letter to Frege* with commentary by van Heijenoort, pages 124-125. Wherein Russell announces his discovery of a "paradox" in Frege's work.
    -   Gottlob Frege (1902), *Letter to Russell* with commentary by van Heijenoort, pages 126-128.
    -   Bertrand Russell (1908), *Mathematical logic as based on the theory of types*, with commentary by [Willard Quine][122], pages 150-182.
    -   Emil Post (1921), *Introduction to a general theory of elementary propositions*, with commentary by van Heijenoort, pages 264-283.
-   Alfred North Whitehead and Bertrand Russell (1910-1913, 1927 2nd edition reprinted 1962), *Principia Mathematica to \*56*, Cambridge at the University Press, London UK, no ISBN or US card catalog number.
-   Ludwig Wittgenstein (republished 2009), *Major Works: Selected Philosophical Writings*, HarperCollins, New York. [ISBN][123] [978-0-06-155024-9][124]. Wittgenstein's (1921 in English), *Tractatus Logico-Philosophicus*, pages 1-82.

## Further reading

-   W. Farmer, "The seven virtues of simple type theory", *Journal of Applied Logic*, Vol. 6, No. 3. (September 2008), pp. 267-286.

[1]: https://en.wikipedia.org/wiki/Type_theory "Type theory"
[2]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[3]: https://en.wikipedia.org/wiki/Rewrite_system "Rewrite system"
[4]: https://en.wikipedia.org/wiki/Formal_systems "Formal systems"
[5]: https://en.wikipedia.org/wiki/Naive_set_theory "Naive set theory"
[6]: https://en.wikipedia.org/wiki/Principia_Mathematica
[7]: https://en.wikipedia.org/wiki/Proof_assistant
[12]: https://en.wikipedia.org/wiki/Begriffsschrift "Begriffsschrift"
[14]: https://en.wikipedia.org/wiki/Predicate_(mathematical_logic) "Predicate (mathematical logic)"
[16]: https://en.wikipedia.org/wiki/Russell%27s_paradox "Russell's paradox"
[17]: https://en.wikipedia.org/wiki/The_Principles_of_Mathematics "The Principles of Mathematics"
[25]: https://en.wikipedia.org/wiki/Impredicativity "Impredicativity"
[26]: https://en.wikipedia.org/wiki/Axiom_of_reducibility "Axiom of reducibility"
[33]: https://en.wikipedia.org/wiki/Propositional_function "Propositional function"
[37]: https://en.wikipedia.org/wiki/Sheffer_stroke "Sheffer stroke"
[52]: https://en.wikipedia.org/wiki/Vicious_circle_principle "Vicious circle principle"
[56]: https://en.wikipedia.org/wiki/Simply_typed_lambda_calculus "Simply typed lambda calculus"
[64]: https://en.wikipedia.org/wiki/Curry-Howard_correspondence "Curry-Howard correspondence"
[67]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[68]: https://en.wikipedia.org/wiki/Law_of_excluded_middle "Law of excluded middle"
[71]: https://en.wikipedia.org/wiki/Automath "Automath"
[74]: https://en.wikipedia.org/wiki/Predicate_logic "Predicate logic"
[75]: https://en.wikipedia.org/wiki/Dependent_types "Dependent types"
[76]: https://en.wikipedia.org/wiki/Intuitionistic_type_theory "Intuitionistic type theory"
[78]: https://en.wikipedia.org/wiki/Lambda_cube "Lambda cube"
[79]: https://en.wikipedia.org/wiki/Simply_typed_lambda_calculus "Simply typed lambda calculus"
[80]: https://en.wikipedia.org/wiki/Calculus_of_constructions "Calculus of constructions"

[10]: https://en.wikipedia.org/wiki/Gottlob_Frege "Gottlob Frege"
[11]: https://en.wikipedia.org/wiki/Bertrand_Russell
[19]: https://en.wikipedia.org/wiki/Willard_Quine "Willard Quine"
[24]: https://en.wikipedia.org/wiki/Stephen_Kleene "Stephen Kleene"
[32]: https://en.wikipedia.org/wiki/Emil_Post "Emil Post"
[35]: https://en.wikipedia.org/wiki/Ludwig_Wittgenstein "Ludwig Wittgenstein"
[48]: https://en.wikipedia.org/wiki/Leon_Chwistek "Leon Chwistek"
[50]: https://en.wikipedia.org/wiki/Frank_P._Ramsey "Frank P. Ramsey"
[55]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[61]: https://en.wikipedia.org/wiki/Kurt_G%C3%B6del "Kurt Gödel"
[65]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[66]: https://en.wikipedia.org/wiki/William_Alvin_Howard "William Alvin Howard"
[70]: https://en.wikipedia.org/wiki/Nicolaas_Govert_de_Bruijn "Nicolaas Govert de Bruijn"
[73]: https://en.wikipedia.org/wiki/Per_Martin-L%C3%B6f "Per Martin-Löf"
[86]: https://en.wikipedia.org/wiki/Willard_Van_Orman_Quine "Willard Van Orman Quine"
