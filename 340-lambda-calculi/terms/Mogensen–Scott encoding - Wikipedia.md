---
created: 2021-08-30T01:00:16 (UTC +02:00)
tags: []
source: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding
author: 
---

# Mogensen–Scott encoding - Wikipedia

> ## Excerpt
> In computer science, Scott encoding is a way to represent (recursive) data types in the lambda calculus.  Church encoding performs a similar function.  The data and operators form a mathematical structure which is embedded in the lambda calculus.

---
In [computer science][1], **Scott encoding** is a way to represent [(recursive) data types][2] in the [lambda calculus][3]. [Church encoding][4] performs a similar function. The data and operators form a mathematical structure which is [embedded][5] in the lambda calculus.

Whereas Church encoding starts with representations of the basic data types, and builds up from it, Scott encoding starts from the simplest method to compose [algebraic data types][6].

**Mogensen–Scott encoding** extends and slightly modifies Scott encoding by applying the encoding to [Metaprogramming][7]. This encoding allows the representation of [lambda calculus][8] terms, as data, to be operated on by a meta program.

## History\[[edit][9]\]

Scott encoding appears first in a set of unpublished lecture notes by [Dana Scott][10][\[1\]][11] whose first citation occurs in the book _Combinatorial Logic, Volume II_.[\[2\]][12] [Michel Parigot][13] gave a logical interpretation of and strongly [normalizing][14] recursor for Scott-encoded numerals,[\[3\]][15] referring to them as the "Stack type" representation of numbers. [Torben Mogensen][16] later extended Scott encoding for the encoding of Lambda terms as data.[\[4\]][17]

## Discussion\[[edit][18]\]

Lambda calculus allows data to be stored as [parameters][19] to a function that does not yet have all the parameters required for application. For example,

![ ((\lambda x_1 \ldots x_n.\lambda c.c\ x_1 \ldots x_n)\ v_1 \ldots v_n)\ f ](https://wikimedia.org/api/rest_v1/media/math/render/svg/b94ad68301562d380d47a98376de6318e724c8f6)

May be thought of as a record or struct where the fields ![ x_1 \ldots x_n ](https://wikimedia.org/api/rest_v1/media/math/render/svg/385e5a8edaf19877588da2e8a6bf88a0df6aca47) have been initialized with the values ![ v_1 \ldots v_n ](https://wikimedia.org/api/rest_v1/media/math/render/svg/3181b66ef9f203bf30f0cb6e227ac4fb9e798799). These values may then be accessed by applying the term to a function _f_. This reduces to,

![ f\ v_1 \ldots v_n ](https://wikimedia.org/api/rest_v1/media/math/render/svg/327a9a32ceee5950e74b39e19a7193643a4cda6f)

_c_ may represent a constructor for an algebraic data type in functional languages such as [Haskell][20]. Now suppose there are _N_ constructors, each with ![A_{i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1aed3b5def921afbe6cc48aaf8f9b11c6f1c1e2d) arguments;

![{\displaystyle {\begin{array}{c|c|c}{\text{Constructor}}&{\text{Given arguments}}&{\text{Result}}\\\hline ((\lambda x_{1}\ldots x_{A_{1}}.\lambda c_{1}\ldots c_{N}.c_{1}\ x_{1}\ldots x_{A_{1}})\ v_{1}\ldots v_{A_{1}})&f_{1}\ldots f_{N}&f_{1}\ v_{1}\ldots v_{A_{1}}\\((\lambda x_{1}\ldots x_{A_{2}}.\lambda c_{1}\ldots c_{N}.c_{2}\ x_{1}\ldots x_{A_{2}})\ v_{1}\ldots v_{A_{2}})&f_{1}\ldots f_{N}&f_{2}\ v_{1}\ldots v_{A_{2}}\\\vdots &\vdots &\vdots \\((\lambda x_{1}\ldots x_{A_{N}}.\lambda c_{1}\ldots c_{N}.c_{N}\ x_{1}\ldots x_{A_{N}})\ v_{1}\ldots v_{A_{N}})&f_{1}\ldots f_{N}&f_{N}\ v_{1}\ldots v_{A_{N}}\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/21e6b630bada19f71b9afa0757c2f05068d2c1da)

Each constructor selects a different function from the function parameters ![ f_1 \ldots f_N ](https://wikimedia.org/api/rest_v1/media/math/render/svg/6ce6f2b35233053ae40688cded950baf50eefc54). This provides branching in the process flow, based on the constructor. Each constructor may have a different [arity][21] (number of parameters). If the constructors have no parameters then the set of constructors acts like an _enum_; a type with a fixed number of values. If the constructors have parameters, recursive data structures may be constructed.

## Definition\[[edit][22]\]

Let _D_ be a datatype with _N_ [constructors][23], ![\{c_i\}_{i=1}^N](https://wikimedia.org/api/rest_v1/media/math/render/svg/c5b51a278f1adfd25ff0be4634efeded72e3ad0c), such that constructor ![c_{i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/01acb7953ba52c2aa44264b5d0f8fd223aa178a2) has [arity][24] ![A_{i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1aed3b5def921afbe6cc48aaf8f9b11c6f1c1e2d).

### Scott encoding\[[edit][25]\]

The Scott encoding of constructor ![c_{i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/01acb7953ba52c2aa44264b5d0f8fd223aa178a2) of the data type _D_ is

![\lambda x_1 \ldots x_{A_i} . \lambda c_1 \ldots c_N . c_i\ x_1 \ldots x_{A_i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8af44450b22fb4d0be31d7841307c9e66b919da6)

### Mogensen–Scott encoding\[[edit][26]\]

Mogensen extends Scott encoding to encode any untyped lambda term as data. This allows a lambda term to be represented as data, within a Lambda calculus [meta program][27]. The meta function _mse_ converts a lambda term into the corresponding data representation of the lambda term;

![{\displaystyle {\begin{aligned}\operatorname {mse} [x]&=\lambda a,b,c.a\ x\\\operatorname {mse} [M\ N]&=\lambda a,b,c.b\ \operatorname {mse} [M]\ \operatorname {mse} [N]\\\operatorname {mse} [\lambda x.M]&=\lambda a,b,c.c\ (\lambda x.\operatorname {mse} [M])\\\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8fa35fda6d9423109a1613f1c17b84ac4e08d9fa)

The "lambda term" is represented as a [tagged union][28] with three cases:

-   Constructor _a_ - a variable ([arity][29] 1, not recursive)
-   Constructor _b_ - function application (arity 2, recursive in both arguments),
-   Constructor _c_ - lambda-abstraction (arity 1, recursive).

For example,

![{\displaystyle {\begin{array}{l}\operatorname {mse} [\lambda x.f\ (x\ x)]\\\lambda a,b,c.c\ (\lambda x.\operatorname {mse} [f\ (x\ x)])\\\lambda a,b,c.c\ (\lambda x.\lambda a,b,c.b\ \operatorname {mse} [f]\ \operatorname {mse} [x\ x])\\\lambda a,b,c.c\ (\lambda x.\lambda a,b,c.b\ (\lambda a,b,c.a\ f)\ \operatorname {mse} [x\ x])\\\lambda a,b,c.c\ (\lambda x.\lambda a,b,c.b\ (\lambda a,b,c.a\ f)\ (\lambda a,b,c.b\ \operatorname {mse} [x]\ \operatorname {mse} [x]))\\\lambda a,b,c.c\ (\lambda x.\lambda a,b,c.b\ (\lambda a,b,c.a\ f)\ (\lambda a,b,c.b\ (\lambda a,b,c.a\ x)\ (\lambda a,b,c.a\ x)))\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/97e6076b68630901e8e8c5ccbe41a2b5cd292335)

## Comparison to the Church encoding\[[edit][30]\]

The Scott encoding coincides with the [Church encoding][31] for booleans. Church encoding of pairs may be generalized to arbitrary data types by encoding ![c_{i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/01acb7953ba52c2aa44264b5d0f8fd223aa178a2) of _D_ above as\[_[citation needed][32]_\]

![\lambda x_1 \ldots x_{A_i} . \lambda c_1 \ldots c_N . c_i (x_1 c_1 \ldots c_N) \ldots (x_{A_i} c_1 \ldots c_N)](https://wikimedia.org/api/rest_v1/media/math/render/svg/77e5c269c5abf6d7a403f2008d07e825bba22b11)

compare this to the Mogensen Scott encoding,

![\lambda x_1 \ldots x_{A_i} . \lambda c_1 \ldots c_N . c_i x_1 \ldots x_{A_i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c9bec5282126e50d75a2cb2337b5f7af079cf597)

With this generalization, the Scott and Church encodings coincide on all enumerated datatypes (such as the boolean datatype) because each constructor is a constant (no parameters).

Concerning the practicality of using either the Church or Scott encoding for programming, there is a symmetric trade-off:[\[5\]][33] Church-encoded numerals support a constant-time addition operation and have no better than a linear-time predecessor operation; Scott-encoded numerals support a constant-time predecessor operation and have no better than a linear-time addition operation.

## Type definitions\[[edit][34]\]

Church-encoded data and operations on them are typable in [system F][35], but Scott-encoded data and operations are not obviously typable in system F. Universal as well as recursive types appear to be required,.[\[6\]][36] As [strong normalization][37] does not hold for unrestricted recursive types ,[\[7\]][38] establishing termination of programs manipulating Scott-encoded data by determining well-typedness requires the type system provide additional restrictions on the formation of recursively typed terms.

## See also\[[edit][39]\]

-   [Church encoding][40]
-   [System F][41]
-   [Lambda cube][42]

## Notes\[[edit][43]\]

1.  **[^][44]** Scott, Dana, A system of functional abstraction (1968). Lectures delivered at University of California, Berkeley, (1962)
2.  **[^][45]** Curry, Haskell (1972). _Combinatorial Logic, Volume II_. North-Holland Publishing Company. [ISBN][46] [0-7204-2208-6][47].
3.  **[^][48]** Parigot, Michel (1988). ["Programming with proofs: a second order type theory"][49]. _European Symposium on Programming_. Lecture Notes in Computer Science. **300**: 145–159. [doi][50]:[10.1007/3-540-19027-9\_10][51]. [ISBN][52] [978-3-540-19027-1][53].
4.  **[^][54]** Mogensen, Torben (1994). "Efficient Self-Interpretation in Lambda Calculus". _Journal of Functional Programming_. **2** (3): 345–364. [doi][55]:[10.1017/S0956796800000423][56].
5.  **[^][57]** Parigot, Michel (1990). "On the representation of data in lambda calculus". _International Workshop on Computer Science Logic_. Lecture Notes in Computer Science. **440**: 209–321. [doi][58]:[10.1007/3-540-52753-2\_47][59]. [ISBN][60] [978-3-540-52753-4][61].
6.  **[^][62]** See the note ["Types for the Scott numerals"][63] by Martín Abadi, Luca Cardelli and Gordon Plotkin (February 18, 1993).
7.  **[^][64]** Mendler, Nax (1987). ["Recursive types and type constraints in second-order lambda calculus"][65]. _Symposium on Logic in Computer Science_ (2): 30–36.

## References\[[edit][66]\]

-   Stump, A. (2009). [Directly reflective meta-programming][67]. _Higher-Order and Symbolic Computation, 22_, 115-144.
-   Mogensen, T.Æ. (1992). [Efficient Self-Interpretations in lambda Calculus][68]. _J. Funct. Program., 2_, 345-363.

[1]: https://en.wikipedia.org/wiki/Computer_science "Computer science"
[2]: https://en.wikipedia.org/wiki/Recursive_data_type "Recursive data type"
[3]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[4]: https://en.wikipedia.org/wiki/Church_encoding "Church encoding"
[5]: https://en.wikipedia.org/wiki/Embedding "Embedding"
[6]: https://en.wikipedia.org/wiki/Algebraic_data_types "Algebraic data types"
[7]: https://en.wikipedia.org/wiki/Metaprogramming "Metaprogramming"
[8]: https://en.wikipedia.org/wiki/Untyped_lambda_calculus "Untyped lambda calculus"
[9]: https://en.wikipedia.org/w/index.php?title=Mogensen%E2%80%93Scott_encoding&action=edit&section=1 "Edit section: History"
[10]: https://en.wikipedia.org/wiki/Dana_Scott "Dana Scott"
[11]: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding#cite_note-1
[12]: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding#cite_note-2
[13]: https://en.wikipedia.org/w/index.php?title=Michel_Parigot&action=edit&redlink=1 "Michel Parigot (page does not exist)"
[14]: https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting) "Normal form (abstract rewriting)"
[15]: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding#cite_note-3
[16]: https://en.wikipedia.org/w/index.php?title=Torben_Mogensen&action=edit&redlink=1 "Torben Mogensen (page does not exist)"
[17]: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding#cite_note-4
[18]: https://en.wikipedia.org/w/index.php?title=Mogensen%E2%80%93Scott_encoding&action=edit&section=2 "Edit section: Discussion"
[19]: https://en.wikipedia.org/wiki/Parameter_(computer_programming) "Parameter (computer programming)"
[20]: https://en.wikipedia.org/wiki/Haskell_(programming_language) "Haskell (programming language)"
[21]: https://en.wikipedia.org/wiki/Arity "Arity"
[22]: https://en.wikipedia.org/w/index.php?title=Mogensen%E2%80%93Scott_encoding&action=edit&section=3 "Edit section: Definition"
[23]: https://en.wikipedia.org/wiki/Algebraic_data_type "Algebraic data type"
[24]: https://en.wikipedia.org/wiki/Arity "Arity"
[25]: https://en.wikipedia.org/w/index.php?title=Mogensen%E2%80%93Scott_encoding&action=edit&section=4 "Edit section: Scott encoding"
[26]: https://en.wikipedia.org/w/index.php?title=Mogensen%E2%80%93Scott_encoding&action=edit&section=5 "Edit section: Mogensen–Scott encoding"
[27]: https://en.wikipedia.org/wiki/Metaprogramming
[28]: https://en.wikipedia.org/wiki/Tagged_union
[29]: https://en.wikipedia.org/wiki/Arity "Arity"
[30]: https://en.wikipedia.org/w/index.php?title=Mogensen%E2%80%93Scott_encoding&action=edit&section=6 "Edit section: Comparison to the Church encoding"
[31]: https://en.wikipedia.org/wiki/Church_encoding "Church encoding"
[32]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed
[33]: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding#cite_note-5
[34]: https://en.wikipedia.org/w/index.php?title=Mogensen%E2%80%93Scott_encoding&action=edit&section=7 "Edit section: Type definitions"
[35]: https://en.wikipedia.org/wiki/System_F "System F"
[36]: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding#cite_note-6
[37]: https://en.wikipedia.org/wiki/Strong_normalization "Strong normalization"
[38]: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding#cite_note-7
[39]: https://en.wikipedia.org/w/index.php?title=Mogensen%E2%80%93Scott_encoding&action=edit&section=8 "Edit section: See also"
[40]: https://en.wikipedia.org/wiki/Church_encoding "Church encoding"
[41]: https://en.wikipedia.org/wiki/System_F "System F"
[42]: https://en.wikipedia.org/wiki/Lambda_cube "Lambda cube"
[43]: https://en.wikipedia.org/w/index.php?title=Mogensen%E2%80%93Scott_encoding&action=edit&section=9 "Edit section: Notes"
[44]: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding#cite_ref-1 "Jump up"
[45]: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding#cite_ref-2 "Jump up"
[46]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[47]: https://en.wikipedia.org/wiki/Special:BookSources/0-7204-2208-6 "Special:BookSources/0-7204-2208-6"
[48]: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding#cite_ref-3 "Jump up"
[49]: https://doi.org/10.1007%2F3-540-19027-9_10
[50]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[51]: https://doi.org/10.1007%2F3-540-19027-9_10
[52]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[53]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-19027-1 "Special:BookSources/978-3-540-19027-1"
[54]: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding#cite_ref-4 "Jump up"
[55]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[56]: https://doi.org/10.1017%2FS0956796800000423
[57]: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding#cite_ref-5 "Jump up"
[58]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[59]: https://doi.org/10.1007%2F3-540-52753-2_47
[60]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[61]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-52753-4 "Special:BookSources/978-3-540-52753-4"
[62]: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding#cite_ref-6 "Jump up"
[63]: http://lucacardelli.name/Papers/Notes/scott2.pdf
[64]: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding#cite_ref-7 "Jump up"
[65]: http://www.nuprl.org/KB/show.php?ShowPub=Men87
[66]: https://en.wikipedia.org/w/index.php?title=Mogensen%E2%80%93Scott_encoding&action=edit&section=10 "Edit section: References"
[67]: https://api.semanticscholar.org/CorpusID:16124152
[68]: http://citeseer.ist.psu.edu/viewdoc/summary?doi=10.1.1.56.4382
