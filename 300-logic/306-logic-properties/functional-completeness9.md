---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Functional_completeness#Minimal_functionally_complete_operator_sets
page-title:       Functional completeness - Wikipedia
article-title:    Functional completeness - Wikipedia
---
# Functional completeness - Wikipedia

In logic, a functionally complete set of logical connectives or Boolean operators is one which can be used to express all possible truth tables by combining members of the set into a Boolean expression.[1][2] A well-known complete set of connectives is { AND, NOT }, consisting of binary conjunction and negation. Each of the singleton sets { NAND } and { NOR } is functionally complete.
In [logic][1], a __functionally complete__ set of [logical connectives][2] or [Boolean operators][3] is one which can be used to express all possible [truth tables][4] by combining members of the [set][5] into a [Boolean expression][6].[\[1\]][7][\[2\]][8] A well-known complete set of connectives is { AND, NOT }, consisting of binary [conjunction][9] and [negation][10]. Each of the [singleton][11] sets { [NAND][12] } and { [NOR][13] } is functionally complete.

A gate or set of gates which is functionally complete can also be called a universal gate / gates.

A functionally complete set of gates may utilise or generate 'garbage bits' as part of its computation which are either not part of the input or not part of the output to the system.

In a context of [propositional logic][14], functionally complete sets of connectives are also called (__expressively__) __adequate__.[\[3\]][15]

From the point of view of [digital electronics][16], functional completeness means that every possible [logic gate][17] can be realized as a network of gates of the types prescribed by the set. In particular, all logic gates can be assembled from either only binary [NAND gates][18], or only binary [NOR gates][19].

## Introduction\[[edit][20]\]

Modern texts on logic typically take as primitive some subset of the connectives: [conjunction][21] (![\land ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d6823e5a222eb3ca49672818ac3d13ec607052c4)); [disjunction][22] (![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a)); [negation][23] (![\neg ](https://wikimedia.org/api/rest_v1/media/math/render/svg/fa78fd02085d39aa58c9e47a6d4033ce41e02fad)); [material conditional][24] (![\to ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1daab843254cfcb23a643070cf93f3badc4fbbbd)); and possibly the [biconditional][25] (![\leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/046b918c43e05caf6624fe9b676c69ec9cd6b892)). Further connectives can be defined, if so desired, by defining them in terms of these primitives. For example, NOR (sometimes denoted ![\downarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4618f22b0f780805eb94bb407578d9bc9487947a), the negation of the disjunction) can be expressed as conjunction of two negations:

![A\downarrow B:=\neg A\land \neg B](https://wikimedia.org/api/rest_v1/media/math/render/svg/0abb0639bb9abb6e770f0176959cf6aecec81a7e)

Similarly, the negation of the conjunction, NAND (sometimes denoted as ![\uparrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ddb20b28c74cdaa09e1f101d426441da1996072f)), can be defined in terms of disjunction and negation. It turns out that every binary connective can be defined in terms of ![\{\neg ,\land ,\lor ,\to ,\leftrightarrow \}](https://wikimedia.org/api/rest_v1/media/math/render/svg/54b4874f437697d5ff55f5d020caf59e8ca11395), so this set is functionally complete.

However, it still contains some redundancy: this set is not a *minimal* functionally complete set, because the conditional and biconditional can be defined in terms of the other connectives as

![{\begin{aligned}A\to B&:=\neg A\lor B\\A\leftrightarrow B&:=(A\to B)\land (B\to A).\end{aligned}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2d673bf84fe5b3cf8aa3a7f15df80d99388b2776)

It follows that the smaller set ![\{\neg ,\land ,\lor \}](https://wikimedia.org/api/rest_v1/media/math/render/svg/66b8dad6246e3a501c7ebb4be34b16512ce5b4e7) is also functionally complete. But this is still not minimal, as ![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a) can be defined as

![A\lor B:=\neg (\neg A\land \neg B).](https://wikimedia.org/api/rest_v1/media/math/render/svg/80ecac5597cf2411ea362a3c381a864c7110abcb)

Alternatively, ![\land ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d6823e5a222eb3ca49672818ac3d13ec607052c4) may be defined in terms of ![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a) in a similar manner, or ![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a) may be defined in terms of ![\rightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/53e574cc3aa5b4bf5f3f5906caf121a378eef08b):

![\ A\vee B:=\neg A\rightarrow B.](https://wikimedia.org/api/rest_v1/media/math/render/svg/ba054acdac8cea4efa434d83524aa58db607df2c)

No further simplifications are possible. Hence, every two-element set of connectives containing ![\neg ](https://wikimedia.org/api/rest_v1/media/math/render/svg/fa78fd02085d39aa58c9e47a6d4033ce41e02fad) and one of ![\{\land ,\lor ,\rightarrow \}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d7c28e44e1a3b887c8353339271739f8c37078d5) is a minimal functionally complete [subset][26] of ![\{\neg ,\land ,\lor ,\to ,\leftrightarrow \}](https://wikimedia.org/api/rest_v1/media/math/render/svg/54b4874f437697d5ff55f5d020caf59e8ca11395).

## Formal definition\[[edit][27]\]

Given the [Boolean domain][28] __B__ = {0,1}, a set *F* of Boolean functions *ƒ*i: __B__*ni* → __B__ is __functionally complete__ if the [clone][29] on __B__ generated by the basic functions *ƒ*i contains all functions *ƒ*: __B__*n* → __B__, for all *strictly positive* integers *n* ≥ 1. In other words, the set is functionally complete if every Boolean function that takes at least one variable can be expressed in terms of the functions *ƒ*i. Since every Boolean function of at least one variable can be expressed in terms of binary Boolean functions, *F* is functionally complete if and only if every binary Boolean function can be expressed in terms of the functions in *F*.

A more natural condition would be that the clone generated by *F* consist of all functions *ƒ*: __B__*n* → __B__, for all integers *n* ≥ 0. However, the examples given above are not functionally complete in this stronger sense because it is not possible to write a [nullary][30] function, i.e. a constant expression, in terms of *F* if *F* itself does not contain at least one nullary function. With this stronger definition, the smallest functionally complete sets would have 2 elements.

Another natural condition would be that the clone generated by *F* together with the two nullary constant functions be functionally complete or, equivalently, functionally complete in the strong sense of the previous paragraph. The example of the Boolean function given by *S*(*x*, *y*, *z*) = *z* if *x* = *y* and *S*(*x*, *y*, *z*) = *x* otherwise shows that this condition is strictly weaker than functional completeness.[\[4\]][31][\[5\]][32][\[6\]][33]

## Characterization of functional completeness\[[edit][34]\]

[Emil Post][35] proved that a set of logical connectives is functionally complete if and only if it is not a subset of any of the following sets of connectives:

-   The [monotonic][36] connectives; changing the truth value of any connected variables from __F__ to __T__ without changing any from __T__ to __F__ never makes these connectives change their return value from __T__ to __F__, e.g. ![{\displaystyle \vee ,\wedge ,\top ,\bot }](https://wikimedia.org/api/rest_v1/media/math/render/svg/f22868c57609ee445a551d9b03f8bcccf96e8a20).
-   The [affine][37] connectives, such that each connected variable either always or never affects the truth value these connectives return, e.g. ![{\displaystyle \neg ,\top ,\bot ,\leftrightarrow ,\nleftrightarrow }](https://wikimedia.org/api/rest_v1/media/math/render/svg/daec5e148d0c4e1bd354279114a8823a52beaf24).
-   The __self-dual__ connectives, which are equal to their own [de Morgan dual][38]; if the truth values of all variables are reversed, so is the truth value these connectives return, e.g. ![\neg ](https://wikimedia.org/api/rest_v1/media/math/render/svg/fa78fd02085d39aa58c9e47a6d4033ce41e02fad), *[MAJ][39]*(*p*,*q*,*r*).
-   The __truth-preserving__ connectives; they return the [truth value][40] __T__ under any interpretation which assigns __T__ to all variables, e.g. ![{\displaystyle \vee ,\wedge ,\top ,\rightarrow ,\leftrightarrow }](https://wikimedia.org/api/rest_v1/media/math/render/svg/9fb078948a0519a9b517b1e95363c608ac6c32c3).
-   The __falsity-preserving__ connectives; they return the truth value __F__ under any interpretation which assigns __F__ to all variables, e.g. ![{\displaystyle \vee ,\wedge ,\bot ,\nrightarrow ,\nleftrightarrow }](https://wikimedia.org/api/rest_v1/media/math/render/svg/31251967de0c2982527a26c567d2f08f294765a1).

In fact, Post gave a complete description of the [lattice][41] of all [clones][42] (sets of operations closed under composition and containing all projections) on the two-element set {__T__, __F__}, nowadays called [Post's lattice][43], which implies the above result as a simple corollary: the five mentioned sets of connectives are exactly the maximal clones.

## Minimal functionally complete operator sets\[[edit][44]\]

When a single logical connective or Boolean operator is functionally complete by itself, it is called a __Sheffer function__[\[7\]][45] or sometimes a __sole sufficient operator__. There are no [unary][46] operators with this property. [NAND][47] and [NOR][48] , which are [dual to each other][49], are the only two binary Sheffer functions. These were discovered, but not published, by [Charles Sanders Peirce][50] around 1880, and rediscovered independently and published by [Henry M. Sheffer][51] in 1913.[\[8\]][52] In digital electronics terminology, the binary [NAND gate][53] and the binary [NOR gate][54] are the only binary [universal logic gates][55].

The following are the minimal functionally complete sets of logical connectives with [arity][56] ≤ 2:[\[9\]][57]

One element

{↑}, {↓}.

Two elements

![{\displaystyle \{\vee ,\neg \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e2e9c0ba8d7e6d25eb7b7c42514a8e5455533aa0), ![{\displaystyle \{\wedge ,\neg \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cea2d696984c094e742f17b4a0980812c34c5311), ![{\displaystyle \{\to ,\neg \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ce75e2f3daac9cec837fe974c6afd887701b5a64), ![{\displaystyle \{\gets ,\neg \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8e85dd5c575acd2855f93a08b102eabb6a2c2086), ![{\displaystyle \{\to ,\bot \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/55ebcc40157f1c4fb9352bcda77afdcfe135b11b), ![{\displaystyle \{\gets ,\bot \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7fcc3d747c0f79a70db6878511e5008e48df1c95), ![{\displaystyle \{\to ,\nleftrightarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b2d41b0afc20bb0ee130b470c495068a8771adb4), ![{\displaystyle \{\gets ,\nleftrightarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/25a8500d440a083dec2165e932ec595f2bd2190a), ![{\displaystyle \{\to ,\nrightarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ead9c6cca0d49e461ddc6772d82b6d6d367b4d61), ![{\displaystyle \{\to ,\nleftarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/daab405ca48bd7c7e387d635272447b59dd88a0b), ![{\displaystyle \{\gets ,\nrightarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5983419b30c5273441d0dc24b634b8206fe1c678), ![{\displaystyle \{\gets ,\nleftarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/54bb952bacbeef29cd08883ae5eb3619f32b103a), ![{\displaystyle \{\nrightarrow ,\neg \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b20fab34e5fb82fefa38d5066ad53924c3bce448), ![{\displaystyle \{\nleftarrow ,\neg \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/43288ebe50fa63d70ef9157560434678ca37ba48), ![{\displaystyle \{\nrightarrow ,\top \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ed8a953e72b9d747fc5b8ce20875c0851ec5029f), ![{\displaystyle \{\nleftarrow ,\top \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5206ca5d7c500efe3089b24d9808cde1dd705db7), ![{\displaystyle \{\nrightarrow ,\leftrightarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/653c466be112e74751723a7139883dc2d5e7d4a6), ![{\displaystyle \{\nleftarrow ,\leftrightarrow \}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a6dc0da57d0ae529b13fad55a6881947444d5976)

Three elements

![{\displaystyle \{\lor ,\leftrightarrow ,\bot \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/18c4d581f0cfe84e08c450cc07d3f2fb33fb1842), ![{\displaystyle \{\lor ,\leftrightarrow ,\nleftrightarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/634408661bb912f434b14ec6561f21d74b2af415), ![{\displaystyle \{\lor ,\nleftrightarrow ,\top \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/acf8252f4312b6a20a7f0f2ca495aed3f7cb861e), ![{\displaystyle \{\land ,\leftrightarrow ,\bot \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7b45580e38a2f5365ddb6aa6c736d061dd71b601), ![{\displaystyle \{\land ,\leftrightarrow ,\nleftrightarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d83f94b1b629f429470d329fc4c35af42068f797), ![{\displaystyle \{\land ,\nleftrightarrow ,\top \}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/208d869de19e54e8c020727ff1a237efb0086f40)

There are no minimal functionally complete sets of more than three at most binary logical connectives.[\[9\]][58] In order to keep the lists above readable, operators that ignore one or more inputs have been omitted. For example, an operator that ignores the first input and outputs the negation of the second could be substituted for a unary negation.

## Examples\[[edit][59]\]

-   Examples of using the `NAND`(↑) completeness. As illustrated by,[\[10\]][60]
    -   ¬A ≡ A ↑ A
    -   A ∧ B ≡ ¬(A ↑ B) ≡ (A ↑ B) ↑ (A ↑ B)
    -   A ∨ B ≡ (A ↑ A) ↑ (B ↑ B)
-   Examples of using the `NOR`(↓) completeness. As illustrated by,[\[11\]][61]
    -   ¬A ≡ A ↓ A
    -   A ∨ B ≡ ¬(A ↓ B) ≡ (A ↓ B) ↓ (A ↓ B)
    -   A ∧ B ≡ (A ↓ A) ↓ (B ↓ B)

Note that an electronic circuit or a software function can be optimized by reuse, to reduce the number of gates. For instance, the "A ∧ B" operation, when expressed by ↑ gates, is implemented with the reuse of "A ↑ B",

X ≡ (A ↑ B); A ∧ B ≡ X ↑ X

## In other domains\[[edit][62]\]

Apart from logical connectives (Boolean operators), functional completeness can be introduced in other domains. For example, a set of [reversible][63] gates is called functionally complete, if it can express every reversible operator.

The 3-input [Fredkin gate][64] is functionally complete reversible gate by itself – a sole sufficient operator. There are many other three-input universal logic gates, such as the [Toffoli gate][65].

In [quantum computing][66], the [Hadamard gate][67] and the [T gate][68] are universal, albeit with a [slightly more restrictive definition][69] than that of functional completeness.

## Set theory\[[edit][70]\]

There is an [isomorphism][71] between the [algebra of sets][72] and the [Boolean algebra][73], that is, they have the same [structure][74]. Then, if we map boolean operators into set operators, the "translated" above text are valid also for sets: there are many "minimal complete set of set-theory operators" that can generate any other set relations. The more popular "Minimal complete operator sets" are {¬, ∩} and {¬, ∪}. If the [universal set][75] [is forbidden][76], set operators are restricted to being falsity- (Ø) preserving, and cannot be equivalent to functionally complete Boolean algebra.

## See also\[[edit][77]\]

-   [Completeness (logic)][78]
-   [Algebra of sets][79]
-   [Boolean algebra][80]
-   [NAND logic][81]
-   [NOR logic][82]
-   [One instruction set computer][83]

## References\[[edit][84]\]

1.  __[^][85]__ Enderton, Herbert (2001), *A mathematical introduction to logic* (2nd ed.), Boston, MA: [Academic Press][86], [ISBN][87] [978-0-12-238452-3][88]. ("Complete set of logical connectives").
2.  __[^][89]__ Nolt, John; Rohatyn, Dennis; Varzi, Achille (1998), *Schaum's outline of theory and problems of logic* (2nd ed.), New York: [McGraw–Hill][90], [ISBN][91] [978-0-07-046649-4][92]. ("\[F\]unctional completeness of \[a\] set of logical operators").
3.  __[^][93]__ Smith, Peter (2003), *An introduction to formal logic*, [Cambridge University Press][94], [ISBN][95] [978-0-521-00804-4][96]. (Defines "expressively adequate", shortened to "adequate set of connectives" in a section heading.)
4.  __[^][97]__ Wesselkamper, T.C. (1975), ["A sole sufficient operator"][98], *Notre Dame Journal of Formal Logic*, __16__: 86–88, [doi][99]:[10.1305/ndjfl/1093891614][100]
5.  __[^][101]__ Massey, G.J. (1975), ["Concerning an alleged Sheffer function"][102], *Notre Dame Journal of Formal Logic*, __16__ (4): 549–550, [doi][103]:[10.1305/ndjfl/1093891898][104]
6.  __[^][105]__ Wesselkamper, T.C. (1975), ["A Correction To My Paper" A. Sole Sufficient Operator"][106], *Notre Dame Journal of Formal Logic*, __16__ (4): 551, [doi][107]:[10.1305/ndjfl/1093891899][108]
7.  __[^][109]__ The term was originally restricted to *binary* operations, but since the end of the 20th century it is used more generally. Martin, N.M. (1989), *Systems of logic*, Cambridge University Press, p. 54, [ISBN][110] [978-0-521-36770-7][111].
8.  __[^][112]__ Scharle, T.W. (1965), ["Axiomatization of propositional calculus with Sheffer functors"][113], *Notre Dame J. Formal Logic*, __6__ (3): 209–217, [doi][114]:[10.1305/ndjfl/1093958259][115].
9.  ^ [*__a__*][116] [*__b__*][117] Wernick, William (1942) "Complete Sets of Logical Functions," *Transactions of the American Mathematical Society 51*: 117–32. In his list on the last page of the article, Wernick does not distinguish between ← and →, or between ![\nleftarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/7694c9fc8eebe8a57c8156dd3c2caf022a619439) and ![\nrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4c458d67617e028ed10948d2dbcfef80e9e060a2).
10.  __[^][118]__ "NAND Gate Operations" at [http://hyperphysics.phy-astr.gsu.edu/hbase/electronic/nand.html][119]
11.  __[^][120]__ "NOR Gate Operations" at [http://hyperphysics.phy-astr.gsu.edu/hbase/electronic/nor.html][121]

[1]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[2]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[3]: https://en.wikipedia.org/wiki/Boolean_function "Boolean function"
[4]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[5]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[6]: https://en.wikipedia.org/wiki/Boolean_expression "Boolean expression"
[7]: https://en.wikipedia.org/wiki/Functional_completeness#cite_note-Enderton2001-1
[8]: https://en.wikipedia.org/wiki/Functional_completeness#cite_note-Nolt1998-2
[9]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[10]: https://en.wikipedia.org/wiki/Logical_negation "Logical negation"
[11]: https://en.wikipedia.org/wiki/Singleton_(mathematics) "Singleton (mathematics)"
[12]: https://en.wikipedia.org/wiki/Sheffer_stroke "Sheffer stroke"
[13]: https://en.wikipedia.org/wiki/Logical_NOR "Logical NOR"
[14]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[15]: https://en.wikipedia.org/wiki/Functional_completeness#cite_note-Smith2003-3
[16]: https://en.wikipedia.org/wiki/Digital_electronics "Digital electronics"
[17]: https://en.wikipedia.org/wiki/Logic_gate "Logic gate"
[18]: https://en.wikipedia.org/wiki/NAND_gate "NAND gate"
[19]: https://en.wikipedia.org/wiki/NOR_gate "NOR gate"
[20]: https://en.wikipedia.org/w/index.php?title=Functional_completeness&action=edit&section=1 "Edit section: Introduction"
[21]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[22]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[23]: https://en.wikipedia.org/wiki/Negation "Negation"
[24]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[25]: https://en.wikipedia.org/wiki/Logical_biconditional "Logical biconditional"
[26]: https://en.wikipedia.org/wiki/Subset "Subset"
[27]: https://en.wikipedia.org/w/index.php?title=Functional_completeness&action=edit&section=2 "Edit section: Formal definition"
[28]: https://en.wikipedia.org/wiki/Boolean_domain "Boolean domain"
[29]: https://en.wikipedia.org/wiki/Clone_(algebra) "Clone (algebra)"
[30]: https://en.wikipedia.org/wiki/Arity "Arity"
[31]: https://en.wikipedia.org/wiki/Functional_completeness#cite_note-Wesselkamper1975a-4
[32]: https://en.wikipedia.org/wiki/Functional_completeness#cite_note-Massey1975-5
[33]: https://en.wikipedia.org/wiki/Functional_completeness#cite_note-Wesselkamper1975b-6
[34]: https://en.wikipedia.org/w/index.php?title=Functional_completeness&action=edit&section=3 "Edit section: Characterization of functional completeness"
[35]: https://en.wikipedia.org/wiki/Emil_Leon_Post "Emil Leon Post"
[36]: https://en.wikipedia.org/wiki/Monotonic "Monotonic"
[37]: https://en.wikipedia.org/wiki/Affine_transformation "Affine transformation"
[38]: https://en.wikipedia.org/wiki/De_Morgan_dual "De Morgan dual"
[39]: https://en.wikipedia.org/wiki/Majority_function "Majority function"
[40]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[41]: https://en.wikipedia.org/wiki/Lattice_(order) "Lattice (order)"
[42]: https://en.wikipedia.org/wiki/Clone_(algebra) "Clone (algebra)"
[43]: https://en.wikipedia.org/wiki/Post%27s_lattice "Post's lattice"
[44]: https://en.wikipedia.org/w/index.php?title=Functional_completeness&action=edit&section=4 "Edit section: Minimal functionally complete operator sets"
[45]: https://en.wikipedia.org/wiki/Functional_completeness#cite_note-Martin1989-7
[46]: https://en.wikipedia.org/wiki/Unary_operation "Unary operation"
[47]: https://en.wikipedia.org/wiki/Logical_NAND "Logical NAND"
[48]: https://en.wikipedia.org/wiki/Logical_NOR "Logical NOR"
[49]: https://en.wikipedia.org/wiki/Boolean_algebra#Duality_principle "Boolean algebra"
[50]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce "Charles Sanders Peirce"
[51]: https://en.wikipedia.org/wiki/Henry_M._Sheffer "Henry M. Sheffer"
[52]: https://en.wikipedia.org/wiki/Functional_completeness#cite_note-Scharle1965-8
[53]: https://en.wikipedia.org/wiki/NAND_gate "NAND gate"
[54]: https://en.wikipedia.org/wiki/NOR_gate "NOR gate"
[55]: https://en.wikipedia.org/wiki/Universal_logic_gate "Universal logic gate"
[56]: https://en.wikipedia.org/wiki/Arity "Arity"
[57]: https://en.wikipedia.org/wiki/Functional_completeness#cite_note-Wernick-9
[58]: https://en.wikipedia.org/wiki/Functional_completeness#cite_note-Wernick-9
[59]: https://en.wikipedia.org/w/index.php?title=Functional_completeness&action=edit&section=5 "Edit section: Examples"
[60]: https://en.wikipedia.org/wiki/Functional_completeness#cite_note-10
[61]: https://en.wikipedia.org/wiki/Functional_completeness#cite_note-11
[62]: https://en.wikipedia.org/w/index.php?title=Functional_completeness&action=edit&section=6 "Edit section: In other domains"
[63]: https://en.wikipedia.org/wiki/Reversible_computation "Reversible computation"
[64]: https://en.wikipedia.org/wiki/Fredkin_gate "Fredkin gate"
[65]: https://en.wikipedia.org/wiki/Toffoli_gate "Toffoli gate"
[66]: https://en.wikipedia.org/wiki/Quantum_computing "Quantum computing"
[67]: https://en.wikipedia.org/wiki/Hadamard_gate "Hadamard gate"
[68]: https://en.wikipedia.org/wiki/Quantum_logic_gate#Phase_shift_gates "Quantum logic gate"
[69]: https://en.wikipedia.org/wiki/Quantum_logic_gate#Universal_quantum_gates "Quantum logic gate"
[70]: https://en.wikipedia.org/w/index.php?title=Functional_completeness&action=edit&section=7 "Edit section: Set theory"
[71]: https://en.wikipedia.org/wiki/Isomorphism "Isomorphism"
[72]: https://en.wikipedia.org/wiki/Algebra_of_sets "Algebra of sets"
[73]: https://en.wikipedia.org/wiki/Boolean_algebra "Boolean algebra"
[74]: https://en.wikipedia.org/wiki/Boolean_algebra_(structure) "Boolean algebra (structure)"
[75]: https://en.wikipedia.org/wiki/Universal_set "Universal set"
[76]: https://en.wikipedia.org/wiki/Russell%27s_Paradox "Russell's Paradox"
[77]: https://en.wikipedia.org/w/index.php?title=Functional_completeness&action=edit&section=8 "Edit section: See also"
[78]: https://en.wikipedia.org/wiki/Completeness_(logic) "Completeness (logic)"
[79]: https://en.wikipedia.org/wiki/Algebra_of_sets "Algebra of sets"
[80]: https://en.wikipedia.org/wiki/Boolean_algebra "Boolean algebra"
[81]: https://en.wikipedia.org/wiki/NAND_logic "NAND logic"
[82]: https://en.wikipedia.org/wiki/NOR_logic "NOR logic"
[83]: https://en.wikipedia.org/wiki/One_instruction_set_computer "One instruction set computer"
[84]: https://en.wikipedia.org/w/index.php?title=Functional_completeness&action=edit&section=9 "Edit section: References"
[85]: https://en.wikipedia.org/wiki/Functional_completeness#cite_ref-Enderton2001_1-0
[86]: https://en.wikipedia.org/wiki/Academic_Press "Academic Press"
[87]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[88]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-12-238452-3 "Special:BookSources/978-0-12-238452-3"
[89]: https://en.wikipedia.org/wiki/Functional_completeness#cite_ref-Nolt1998_2-0
[90]: https://en.wikipedia.org/wiki/McGraw%E2%80%93Hill "McGraw–Hill"
[91]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[92]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-07-046649-4 "Special:BookSources/978-0-07-046649-4"
[93]: https://en.wikipedia.org/wiki/Functional_completeness#cite_ref-Smith2003_3-0
[94]: https://en.wikipedia.org/wiki/Cambridge_University_Press "Cambridge University Press"
[95]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[96]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-00804-4 "Special:BookSources/978-0-521-00804-4"
[97]: https://en.wikipedia.org/wiki/Functional_completeness#cite_ref-Wesselkamper1975a_4-0
[98]: http://projecteuclid.org/euclid.ndjfl/1093891614
[99]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[100]: https://doi.org/10.1305%2Fndjfl%2F1093891614
[101]: https://en.wikipedia.org/wiki/Functional_completeness#cite_ref-Massey1975_5-0
[102]: http://projecteuclid.org/euclid.ndjfl/1093891898
[103]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[104]: https://doi.org/10.1305%2Fndjfl%2F1093891898
[105]: https://en.wikipedia.org/wiki/Functional_completeness#cite_ref-Wesselkamper1975b_6-0
[106]: http://projecteuclid.org/euclid.ndjfl/1093891899
[107]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[108]: https://doi.org/10.1305%2Fndjfl%2F1093891899
[109]: https://en.wikipedia.org/wiki/Functional_completeness#cite_ref-Martin1989_7-0
[110]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[111]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-36770-7 "Special:BookSources/978-0-521-36770-7"
[112]: https://en.wikipedia.org/wiki/Functional_completeness#cite_ref-Scharle1965_8-0
[113]: http://projecteuclid.org/euclid.ndjfl/1093958259
[114]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[115]: https://doi.org/10.1305%2Fndjfl%2F1093958259
[116]: https://en.wikipedia.org/wiki/Functional_completeness#cite_ref-Wernick_9-0
[117]: https://en.wikipedia.org/wiki/Functional_completeness#cite_ref-Wernick_9-1
[118]: https://en.wikipedia.org/wiki/Functional_completeness#cite_ref-10
[119]: http://hyperphysics.phy-astr.gsu.edu/hbase/electronic/nand.html
[120]: https://en.wikipedia.org/wiki/Functional_completeness#cite_ref-11
[121]: http://hyperphysics.phy-astr.gsu.edu/hbase/electronic/nor.html
