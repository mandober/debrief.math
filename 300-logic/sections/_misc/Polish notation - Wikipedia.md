---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Polish_notation#Polish_notation_for_logic
page-title:       Polish notation - Wikipedia
article-title:    Polish notation - Wikipedia
---
# Polish notation - Wikipedia

This article is about a prefix notation in mathematics and computer sciences. For the similarly named logic, see Łukasiewicz logic.
This article is about a prefix notation in mathematics and computer sciences. For the similarly named logic, see [Łukasiewicz logic][1].

__Polish notation__ (__PN__), also known as __normal Polish notation__ (__NPN__),[\[1\]][2] __Łukasiewicz notation__, __Warsaw notation__, __Polish prefix notation__ or simply __prefix notation__, is a mathematical notation in which [operators][3] *precede* their [operands][4], in contrast to the more common [infix notation][5], in which operators are placed *between* operands, as well as [reverse Polish notation][6] (RPN), in which operators *follow* their operands. It does not need any parentheses as long as each operator has a fixed [number of operands][7]. The description "Polish" refers to the [nationality][8] of [logician][9] [Jan Łukasiewicz][10],[\[2\]][11] who invented Polish notation in 1924.[\[3\]][12][\[4\]][13]

The term *Polish notation* is sometimes taken (as the opposite of *infix notation*) to also include reverse Polish notation.[\[5\]][14]

When Polish notation is used as a syntax for mathematical expressions by [programming language][15] [interpreters][16], it is readily parsed into [abstract syntax trees][17] and can, in fact, define a [one-to-one representation][18] for the same. Because of this, [Lisp][19] ([see below][20]) and related programming languages define their entire syntax in prefix notation (and others use postfix notation).

## History\[[edit][21]\]

A quotation from a paper by [Jan Łukasiewicz][22], *Remarks on Nicod's Axiom and on "Generalizing Deduction"*, page 180, states how the notation was invented:

> I came upon the idea of a parenthesis-free notation in 1924. I used that notation for the first time in my article Łukasiewicz(1), p. 610, footnote.

The reference cited by Łukasiewicz is apparently a lithographed report in [Polish][23]. The referring paper by Łukasiewicz *Remarks on Nicod's Axiom and on "Generalizing Deduction"* was reviewed by [Henry A. Pogorzelski][24] in the *Journal of Symbolic Logic* in 1965.[\[6\]][25] [Heinrich Behmann][26], editor in 1924 of the article of [Moses Schönfinkel][27],[\[7\]][28] already had the idea of eliminating parentheses in logic formulas.

[Alonzo Church][29] mentions this notation in his classic book on [mathematical logic][30] as worthy of remark in notational systems even contrasted to [Alfred Whitehead][31] and [Bertrand Russell][32]'s logical notational exposition and work in [Principia Mathematica][33].[\[8\]][34]

In Łukasiewicz's 1951 book, *Aristotle's Syllogistic from the Standpoint of Modern Formal Logic*, he mentions that the principle of his notation was to write the [functors][35] before the [arguments][36] to avoid brackets and that he had employed his notation in his logical papers since 1929.[\[9\]][37] He then goes on to cite, as an example, a 1930 paper he wrote with [Alfred Tarski][38] on the [sentential calculus][39].[\[10\]][40]

While no longer used much in logic,[\[11\]][41] Polish notation has since found a place in [computer science][42].

## Explanation\[[edit][43]\]

The expression for adding the numbers 1 and 2 is written in Polish notation as \+ 1 2 (pre-fix), rather than as 1 + 2 (in-fix). In more complex expressions, the operators still precede their operands, but the operands may themselves be expressions including again operators and their operands. For instance, the expression that would be written in conventional infix notation as

(5 − 6) × 7

can be written in Polish notation as

× (− 5 6) 7

Assuming a given [arity][44] of all involved operators (here the "−" denotes the binary operation of subtraction, not the unary function of sign-change), any well formed prefix representation thereof is unambiguous, and brackets within the prefix expression are unnecessary. As such, the above expression can be further simplified to

× − 5 6 7

The processing of the product is deferred until its two operands are available (i.e., 5 minus 6, and 7). As with *any* notation, the innermost expressions are evaluated first, but in Polish notation this "innermost-ness" can be conveyed by the sequence of operators and operands rather than by bracketing.

In the conventional infix notation, parentheses are required to override the standard [precedence rules][45], since, referring to the above example, moving them

5 − (6 × 7)

or removing them

5 − 6 × 7

changes the meaning and the result of the expression. This version is written in Polish notation as

− 5 × 6 7.

When dealing with non-commutative operations, like division or subtraction, it is necessary to coordinate the sequential arrangement of the operands with the definition of how the operator takes its arguments, i.e., from left to right. For example, ÷ 10 5, with 10 left to 5, has the meaning of 10 ÷ 5 (read as "divide 10 by 5"), or \- 7 6, with 7 left to 6, has the meaning of 7 - 6 (read as "subtract from 7 the operand 6").

## Evaluation algorithm\[[edit][46]\]

Prefix/postfix notation is especially popular for its innate ability to express the intended order of operations without the need for parentheses and other precedence rules, as are usually employed with [infix notation][47]. Instead, the notation uniquely indicates which operator to evaluate first. The operators are assumed to have a fixed [arity][48] each, and all necessary operands are assumed to be explicitly given. A valid prefix expression always starts with an operator and ends with an operand. Evaluation can either proceed from left to right, or in the opposite direction. Starting at the left, the input string, consisting of tokens denoting operators or operands, is pushed token for token on a [stack][49], until the top entries of the stack contain the number of operands that fits to the top most operator (immediately beneath). This group of tokens at the stacktop (the last stacked operator and the according number of operands) is replaced by the result of executing the operator on these/this operand(s). Then the processing of the input continues in this manner. The rightmost operand in a valid prefix expression thus empties the stack, except for the result of evaluating the whole expression. When starting at the right, the pushing of tokens is performed similarly, just the evaluation is triggered by an operator, finding the appropriate number of operands that fits its arity already at the stacktop. Now the leftmost token of a valid prefix expression must be an operator, fitting to the number of operands in the stack, which again yields the result. As can be seen from the description, a [push-down store][50] with no capability of arbitrary stack inspection suffices to implement this [parsing][51].

The above sketched stack manipulation works—with mirrored input—also for expressions in [reverse Polish notation][52].

## Polish notation for logic\[[edit][53]\]

The table below shows the core of [Jan Łukasiewicz][54]'s notation for [sentential logic][55].[\[12\]][56] Some letters in the Polish notation table stand for particular words in [Polish][57], as shown:

Note that the [quantifiers][58] ranged over propositional values in Łukasiewicz's work on many-valued logics.

[Bocheński][59] introduced a system of Polish notation that names all 16 binary [connectives][60] of classical [propositional logic][61]. For classical propositional logic, it is a compatible extension of the notation of Łukasiewicz. But the notations are incompatible in the sense that Bocheński uses L and M (for nonimplication and converse nonimplication) in propositional logic and Łukasiewicz uses L and M in modal logic.[\[13\]][62]

## Implementations\[[edit][63]\]

Prefix notation has seen wide application in [Lisp][64] [S-expressions][65], where the brackets are required since the operators in the language are themselves data ([first-class functions][66]). Lisp functions may also be [variadic][67]. The [Tcl][68] programming language, much like Lisp also uses Polish notation through the mathop library. The Ambi[\[14\]][69] programming language uses Polish notation for arithmetic operations and program construction. [LDAP][70] filter syntax uses Polish prefix notation.[\[15\]][71]

Postfix notation is used in many [stack-oriented programming languages][72] like [PostScript][73] and [Forth][74]. [CoffeeScript][75] syntax also allows functions to be called using prefix notation, while still supporting the unary postfix syntax common in other languages.

The number of return values of an expression equals the difference between the number of operands in an expression and the total arity of the operators minus the total number of return values of the operators.

Polish notation, usually in postfix form, is the chosen notation of certain [calculators][76], notably from [Hewlett-Packard][77].[\[16\]][78] At a lower level, postfix operators are used by some [stack machines][79] such as the [Burroughs large systems][80].

## See also\[[edit][81]\]

-   [Reverse Polish notation][82]
-   [Function application][83]
-   [Lambda calculus][84]
-   [Currying][85]
-   [Lisp (programming language)][86]
    -   [S-expression][87]
-   [Polish School of Mathematics][88]
-   [Hungarian notation][89]
-   [Verb–subject–object][90] (VSO)
-   [Verb–object–subject][91] (VOS)

## References\[[edit][92]\]

1.  __[^][93]__ Jorke, Günter; Lampe, Bernhard; Wengel, Norbert (1989). [*Arithmetische Algorithmen der Mikrorechentechnik*][94] \[*Arithmetic algorithms in microcomputers*\] (in German) (1 ed.). Berlin, Germany: [VEB Verlag Technik][95]. [ISBN][96] [3341005153][97]. [EAN][98] [9783341005156][99]. MPN 5539165. License 201.370/4/89. Retrieved 2015-12-01.
2.  __[^][100]__ [Łukasiewicz, Jan][101] (1957). *Aristotle's Syllogistic from the Standpoint of Modern Formal Logic*. [Oxford University Press][102]. (Reprinted by Garland Publishing in 1987. [ISBN][103] [0-8240-6924-2][104])
3.  __[^][105]__ [Hamblin, Charles Leonard][106] (1962). ["Translation to and from Polish notation"][107]. *[Computer Journal][108]*. __5__ (3): 210–213. [doi][109]:[10.1093/comjnl/5.3.210][110].
4.  __[^][111]__ Ball, John A. (1978). [*Algorithms for RPN calculators*][112] (1 ed.). Cambridge, Massachusetts, USA: [Wiley-Interscience][113], [John Wiley & Sons, Inc.][114] [ISBN][115] [0-471-03070-8][116].
5.  __[^][117]__ Main, Michael (2006). [*Data structures and other objects using Java*][118] (3rd ed.). [Pearson PLC][119] [Addison-Wesley][120]. p. 334. [ISBN][121] [978-0-321-37525-4][122].
6.  __[^][123]__ Pogorzelski, Henry A., ["Reviewed work(s): Remarks on Nicod's Axiom and on "Generalizing Deduction" by Jan Łukasiewicz; Jerzy Słupecki; Państwowe Wydawnictwo Naukowe"][124], *The Journal of Symbolic Logic*, Vol. 30, No. 3 (September 1965), pp. 376–377. The original paper by Łukasiewicz was published in [Warsaw][125] in 1961 in a volume edited by Jerzy Słupecki.
7.  __[^][126]__ "Über die Bausteine der mathematischen Logik", *Mathematische Annalen* __92__, pages 305-316. Translated by Stefan Bauer-Mengelberg as "On the building blocks of mathematical logic" in [Jean van Heijenoort][127], 1967. *A Source Book in Mathematical Logic, 1879-1931*. [Harvard University Press][128]: 355-66.
8.  __[^][129]__ Church, Alonzo (1944). *Introduction to Mathematical Logic*. Princeton, New Jersey, USA: [Princeton University Press][130]. p. 38. \[…\] Worthy of remark is the parenthesis-free notation of Jan Łukasiewicz. In this the letters N, A, C, E, K are used in the roles of negation, disjunction, implication, equivalence, conjunction respectively. \[…\]
9.  __[^][131]__ Łukasiewicz, (1951) *Aristotle's Syllogistic from the Standpoint of Modern Formal Logic*, Chapter IV "Aristotle's System in Symbolic Form" (section on "Explanation of the Symbolism"), p. 78 and on.
10.  __[^][132]__ Łukasiewicz, Jan; Tarski, Alfred, "Untersuchungen über den Aussagenkalkül" \["Investigations into the sentential calculus"\], *Comptes Rendus des Séances de la Société des Sciences et des Lettres de Varsovie*, Vol. 23 (1930) Cl. III, pp. 31–32.
11.  __[^][133]__ Martínez Nava, Xóchitl (2011-06-01), "Mhy bib I fail logic? Dyslexia in the teaching of logic", in Blackburn, Patrick; van Ditmarsch, Hans; [Manzano, Maria][134]; Soler-Toscano, Fernando (eds.), [*Tools for Teaching Logic: Third International Congress, TICTTL 2011, Salamanca, Spain, June 1-4, 2011, Proceedings*][135], Lecture Notes in Artificial Intelligence, __6680__, [Springer Nature][136], pp. 162–169, [doi][137]:[10.1007/978-3-642-21350-2\_19][138], [ISBN][139] [9783642213496][140], \[…\] Polish or prefix notation has come to disuse given the difficulty that using it implies. \[…\]
12.  __[^][141]__ Craig, Edward (1998), [*Routledge Encyclopedia of Philosophy, Volume 8*][142], [Taylor & Francis][143], p. 496, [ISBN][144] [9780415073103][145].
13.  __[^][146]__ Bocheński, Józef Maria (1959). A Precis of Mathematical Logic, translated by Otto Bird from the French and German editions, D. Reidel: Dordrecht, Holland.
14.  __[^][147]__ ["Google Code Archive - Long-term storage for Google Code Project Hosting"][148].
15.  __[^][149]__ ["LDAP Filter Syntax"][150].
16.  __[^][151]__ ["HP calculators | __HP 35s__ RPN Mode"][152] (PDF). [Hewlett-Packard][153].

## Further reading\[[edit][154]\]

-   [Łukasiewicz, Jan][155] (1957). *Aristotle's Syllogistic from the Standpoint of Modern Formal Logic*. [Oxford University Press][156].
-   [Łukasiewicz, Jan][157] (1930). "Philosophische Bemerkungen zu mehrwertigen Systemen des Aussagenkalküls" \[Philosophical Remarks on Many-Valued Systems of Propositional Logics\]. *Comptes Rendus des Séances de la Société des Sciences et des Lettres de Varsovie* (in German). __23__: 51–77. Translated by H. Weber in Storrs McCall, *Polish Logic 1920-1939*, [Clarendon Press][158]: Oxford (1967).

## External links\[[edit][159]\]

-   [![](https://upload.wikimedia.org/wikipedia/en/thumb/4/4a/Commons-logo.svg/12px-Commons-logo.svg.png)][160] Media related to [Polish notation (mathematics)][161] at Wikimedia Commons

[1]: https://en.wikipedia.org/wiki/%C5%81ukasiewicz_logic "Łukasiewicz logic"
[2]: https://en.wikipedia.org/wiki/Polish_notation#cite_note-Jorke_1989-1
[3]: https://en.wikipedia.org/wiki/Operation_(mathematics) "Operation (mathematics)"
[4]: https://en.wikipedia.org/wiki/Operand "Operand"
[5]: https://en.wikipedia.org/wiki/Infix_notation "Infix notation"
[6]: https://en.wikipedia.org/wiki/Reverse_Polish_notation "Reverse Polish notation"
[7]: https://en.wikipedia.org/wiki/Arity "Arity"
[8]: https://en.wikipedia.org/wiki/Nationality "Nationality"
[9]: https://en.wikipedia.org/wiki/Logician "Logician"
[10]: https://en.wikipedia.org/wiki/Jan_%C5%81ukasiewicz "Jan Łukasiewicz"
[11]: https://en.wikipedia.org/wiki/Polish_notation#cite_note-%C5%81ukasiewicz_1957-2
[12]: https://en.wikipedia.org/wiki/Polish_notation#cite_note-Hamblin_1962-3
[13]: https://en.wikipedia.org/wiki/Polish_notation#cite_note-Ball_1978-4
[14]: https://en.wikipedia.org/wiki/Polish_notation#cite_note-Main_2006-5
[15]: https://en.wikipedia.org/wiki/Programming_language "Programming language"
[16]: https://en.wikipedia.org/wiki/Interpreter_(computing) "Interpreter (computing)"
[17]: https://en.wikipedia.org/wiki/Abstract_syntax_tree "Abstract syntax tree"
[18]: https://en.wikipedia.org/wiki/Bijection "Bijection"
[19]: https://en.wikipedia.org/wiki/Lisp_(programming_language) "Lisp (programming language)"
[20]: https://en.wikipedia.org/wiki/Polish_notation#Implementations
[21]: https://en.wikipedia.org/w/index.php?title=Polish_notation&action=edit&section=1 "Edit section: History"
[22]: https://en.wikipedia.org/wiki/Jan_%C5%81ukasiewicz "Jan Łukasiewicz"
[23]: https://en.wikipedia.org/wiki/Polish_language "Polish language"
[24]: https://en.wikipedia.org/wiki/Henry_Pogorzelski "Henry Pogorzelski"
[25]: https://en.wikipedia.org/wiki/Polish_notation#cite_note-Pogorzelski_1965-6
[26]: https://en.wikipedia.org/wiki/Heinrich_Behmann "Heinrich Behmann"
[27]: https://en.wikipedia.org/wiki/Moses_Sch%C3%B6nfinkel "Moses Schönfinkel"
[28]: https://en.wikipedia.org/wiki/Polish_notation#cite_note-Mengelberg-7
[29]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[30]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[31]: https://en.wikipedia.org/wiki/Alfred_North_Whitehead "Alfred North Whitehead"
[32]: https://en.wikipedia.org/wiki/Bertrand_Russell "Bertrand Russell"
[33]: https://en.wikipedia.org/wiki/Principia_Mathematica "Principia Mathematica"
[34]: https://en.wikipedia.org/wiki/Polish_notation#cite_note-Church_1944-8
[35]: https://en.wikipedia.org/wiki/Function_symbol "Function symbol"
[36]: https://en.wikipedia.org/wiki/Argument_of_a_function "Argument of a function"
[37]: https://en.wikipedia.org/wiki/Polish_notation#cite_note-%C5%81ukasiewicz_1951-9
[38]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[39]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[40]: https://en.wikipedia.org/wiki/Polish_notation#cite_note-%C5%81ukasiewicz_1930-10
[41]: https://en.wikipedia.org/wiki/Polish_notation#cite_note-Mart%C3%ADnez_2011-11
[42]: https://en.wikipedia.org/wiki/Computer_science "Computer science"
[43]: https://en.wikipedia.org/w/index.php?title=Polish_notation&action=edit&section=2 "Edit section: Explanation"
[44]: https://en.wikipedia.org/wiki/Arity "Arity"
[45]: https://en.wikipedia.org/wiki/Order_of_operations "Order of operations"
[46]: https://en.wikipedia.org/w/index.php?title=Polish_notation&action=edit&section=3 "Edit section: Evaluation algorithm"
[47]: https://en.wikipedia.org/wiki/Infix_notation "Infix notation"
[48]: https://en.wikipedia.org/wiki/Arity "Arity"
[49]: https://en.wikipedia.org/wiki/Stack_(abstract_data_type) "Stack (abstract data type)"
[50]: https://en.wikipedia.org/wiki/Deterministic_pushdown_automaton "Deterministic pushdown automaton"
[51]: https://en.wikipedia.org/wiki/Parsing "Parsing"
[52]: https://en.wikipedia.org/wiki/Reverse_Polish_notation "Reverse Polish notation"
[53]: https://en.wikipedia.org/w/index.php?title=Polish_notation&action=edit&section=4 "Edit section: Polish notation for logic"
[54]: https://en.wikipedia.org/wiki/Jan_%C5%81ukasiewicz "Jan Łukasiewicz"
[55]: https://en.wikipedia.org/wiki/Sentential_logic "Sentential logic"
[56]: https://en.wikipedia.org/wiki/Polish_notation#cite_note-Craig_1998-12
[57]: https://en.wikipedia.org/wiki/Polish_language "Polish language"
[58]: https://en.wikipedia.org/wiki/Quantifier_(logic) "Quantifier (logic)"
[59]: https://en.wikipedia.org/wiki/J%C3%B3zef_Maria_Boche%C5%84ski "Józef Maria Bocheński"
[60]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[61]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[62]: https://en.wikipedia.org/wiki/Polish_notation#cite_note-Boche%C5%84ski_1959-13
[63]: https://en.wikipedia.org/w/index.php?title=Polish_notation&action=edit&section=5 "Edit section: Implementations"
[64]: https://en.wikipedia.org/wiki/Lisp_(programming_language) "Lisp (programming language)"
[65]: https://en.wikipedia.org/wiki/S-expressions "S-expressions"
[66]: https://en.wikipedia.org/wiki/First-class_function "First-class function"
[67]: https://en.wikipedia.org/wiki/Variadic_function "Variadic function"
[68]: https://en.wikipedia.org/wiki/Tcl "Tcl"
[69]: https://en.wikipedia.org/wiki/Polish_notation#cite_note-Ambi-14
[70]: https://en.wikipedia.org/wiki/LDAP "LDAP"
[71]: https://en.wikipedia.org/wiki/Polish_notation#cite_note-LDAPSyntax-15
[72]: https://en.wikipedia.org/wiki/Stack-oriented_programming_language "Stack-oriented programming language"
[73]: https://en.wikipedia.org/wiki/PostScript "PostScript"
[74]: https://en.wikipedia.org/wiki/Forth_(programming_language) "Forth (programming language)"
[75]: https://en.wikipedia.org/wiki/CoffeeScript "CoffeeScript"
[76]: https://en.wikipedia.org/wiki/Calculator "Calculator"
[77]: https://en.wikipedia.org/wiki/HP_calculators "HP calculators"
[78]: https://en.wikipedia.org/wiki/Polish_notation#cite_note-RPN_HP35S-16
[79]: https://en.wikipedia.org/wiki/Stack_machines "Stack machines"
[80]: https://en.wikipedia.org/wiki/Burroughs_large_systems "Burroughs large systems"
[81]: https://en.wikipedia.org/w/index.php?title=Polish_notation&action=edit&section=6 "Edit section: See also"
[82]: https://en.wikipedia.org/wiki/Reverse_Polish_notation "Reverse Polish notation"
[83]: https://en.wikipedia.org/wiki/Function_application "Function application"
[84]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[85]: https://en.wikipedia.org/wiki/Currying "Currying"
[86]: https://en.wikipedia.org/wiki/Lisp_(programming_language) "Lisp (programming language)"
[87]: https://en.wikipedia.org/wiki/S-expression "S-expression"
[88]: https://en.wikipedia.org/wiki/Polish_School_of_Mathematics "Polish School of Mathematics"
[89]: https://en.wikipedia.org/wiki/Hungarian_notation "Hungarian notation"
[90]: https://en.wikipedia.org/wiki/Verb%E2%80%93subject%E2%80%93object "Verb–subject–object"
[91]: https://en.wikipedia.org/wiki/Verb%E2%80%93object%E2%80%93subject "Verb–object–subject"
[92]: https://en.wikipedia.org/w/index.php?title=Polish_notation&action=edit&section=7 "Edit section: References"
[93]: https://en.wikipedia.org/wiki/Polish_notation#cite_ref-Jorke_1989_1-0 "Jump up"
[94]: https://books.google.com/books?id=DqYWAQAAMAAJ
[95]: https://de.wikipedia.org/wiki/VEB_Verlag_Technik "de:VEB Verlag Technik"
[96]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[97]: https://en.wikipedia.org/wiki/Special:BookSources/3341005153 "Special:BookSources/3341005153"
[98]: https://en.wikipedia.org/wiki/EAN_(identifier) "EAN (identifier)"
[99]: https://eandata.com/lookup/9783341005156
[100]: https://en.wikipedia.org/wiki/Polish_notation#cite_ref-%C5%81ukasiewicz_1957_2-0 "Jump up"
[101]: https://en.wikipedia.org/wiki/Jan_%C5%81ukasiewicz "Jan Łukasiewicz"
[102]: https://en.wikipedia.org/wiki/Oxford_University_Press "Oxford University Press"
[103]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[104]: https://en.wikipedia.org/wiki/Special:BookSources/0-8240-6924-2 "Special:BookSources/0-8240-6924-2"
[105]: https://en.wikipedia.org/wiki/Polish_notation#cite_ref-Hamblin_1962_3-0 "Jump up"
[106]: https://en.wikipedia.org/wiki/Charles_Leonard_Hamblin "Charles Leonard Hamblin"
[107]: https://doi.org/10.1093%2Fcomjnl%2F5.3.210
[108]: https://en.wikipedia.org/wiki/Computer_Journal "Computer Journal"
[109]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[110]: https://doi.org/10.1093%2Fcomjnl%2F5.3.210
[111]: https://en.wikipedia.org/wiki/Polish_notation#cite_ref-Ball_1978_4-0 "Jump up"
[112]: https://archive.org/details/algorithmsforrpn0000ball
[113]: https://en.wikipedia.org/wiki/Wiley-Interscience "Wiley-Interscience"
[114]: https://en.wikipedia.org/wiki/John_Wiley_%26_Sons,_Inc. "John Wiley & Sons, Inc."
[115]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[116]: https://en.wikipedia.org/wiki/Special:BookSources/0-471-03070-8 "Special:BookSources/0-471-03070-8"
[117]: https://en.wikipedia.org/wiki/Polish_notation#cite_ref-Main_2006_5-0 "Jump up"
[118]: https://books.google.com/books?id=Tok_AQAAIAAJ
[119]: https://en.wikipedia.org/wiki/Pearson_PLC "Pearson PLC"
[120]: https://en.wikipedia.org/wiki/Addison-Wesley "Addison-Wesley"
[121]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[122]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-321-37525-4 "Special:BookSources/978-0-321-37525-4"
[123]: https://en.wikipedia.org/wiki/Polish_notation#cite_ref-Pogorzelski_1965_6-0 "Jump up"
[124]: https://www.jstor.org/stable/2269644
[125]: https://en.wikipedia.org/wiki/Warsaw "Warsaw"
[126]: https://en.wikipedia.org/wiki/Polish_notation#cite_ref-Mengelberg_7-0 "Jump up"
[127]: https://en.wikipedia.org/wiki/Jean_van_Heijenoort "Jean van Heijenoort"
[128]: https://en.wikipedia.org/wiki/Harvard_University_Press "Harvard University Press"
[129]: https://en.wikipedia.org/wiki/Polish_notation#cite_ref-Church_1944_8-0 "Jump up"
[130]: https://en.wikipedia.org/wiki/Princeton_University_Press "Princeton University Press"
[131]: https://en.wikipedia.org/wiki/Polish_notation#cite_ref-%C5%81ukasiewicz_1951_9-0 "Jump up"
[132]: https://en.wikipedia.org/wiki/Polish_notation#cite_ref-%C5%81ukasiewicz_1930_10-0 "Jump up"
[133]: https://en.wikipedia.org/wiki/Polish_notation#cite_ref-Mart%C3%ADnez_2011_11-0 "Jump up"
[134]: https://en.wikipedia.org/wiki/Mar%C3%ADa_Manzano "María Manzano"
[135]: https://books.google.com/books?id=be-pTR5TmZIC&pg=PA166
[136]: https://en.wikipedia.org/wiki/Springer_Nature "Springer Nature"
[137]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[138]: https://doi.org/10.1007%2F978-3-642-21350-2_19
[139]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[140]: https://en.wikipedia.org/wiki/Special:BookSources/9783642213496 "Special:BookSources/9783642213496"
[141]: https://en.wikipedia.org/wiki/Polish_notation#cite_ref-Craig_1998_12-0 "Jump up"
[142]: https://books.google.com/books?id=mxpFwcAplaAC&pg=PA496
[143]: https://en.wikipedia.org/wiki/Taylor_%26_Francis "Taylor & Francis"
[144]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[145]: https://en.wikipedia.org/wiki/Special:BookSources/9780415073103 "Special:BookSources/9780415073103"
[146]: https://en.wikipedia.org/wiki/Polish_notation#cite_ref-Boche%C5%84ski_1959_13-0 "Jump up"
[147]: https://en.wikipedia.org/wiki/Polish_notation#cite_ref-Ambi_14-0 "Jump up"
[148]: https://code.google.com/p/ambi/
[149]: https://en.wikipedia.org/wiki/Polish_notation#cite_ref-LDAPSyntax_15-0 "Jump up"
[150]: http://www.ldapexplorer.com/en/manual/109010000-ldap-filter-syntax.htm
[151]: https://en.wikipedia.org/wiki/Polish_notation#cite_ref-RPN_HP35S_16-0 "Jump up"
[152]: http://h20331.www2.hp.com/Hpsub/downloads/35_02_RPN_Mode.pdf
[153]: https://en.wikipedia.org/wiki/Hewlett-Packard "Hewlett-Packard"
[154]: https://en.wikipedia.org/w/index.php?title=Polish_notation&action=edit&section=8 "Edit section: Further reading"
[155]: https://en.wikipedia.org/wiki/Jan_%C5%81ukasiewicz "Jan Łukasiewicz"
[156]: https://en.wikipedia.org/wiki/Oxford_University_Press "Oxford University Press"
[157]: https://en.wikipedia.org/wiki/Jan_%C5%81ukasiewicz "Jan Łukasiewicz"
[158]: https://en.wikipedia.org/wiki/Clarendon_Press "Clarendon Press"
[159]: https://en.wikipedia.org/w/index.php?title=Polish_notation&action=edit&section=9 "Edit section: External links"
[160]: https://en.wikipedia.org/wiki/File:Commons-logo.svg
[161]: https://commons.wikimedia.org/wiki/Category:Polish_notation_(mathematics) "commons:Category:Polish notation (mathematics)"
