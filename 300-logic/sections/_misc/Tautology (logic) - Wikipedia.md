---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Tautology_(logic)
page-title:       Tautology (logic) - Wikipedia
article-title:    Tautology (logic) - Wikipedia
---
# Tautology (logic) - Wikipedia

In mathematical logic, a tautology (from Greek: ταυτολογία) is a formula or assertion that is true in every possible interpretation. An example is "x=y or x≠y". Similarly, "either the ball is green, or the ball is not green" is always true, regardless of the colour of the ball.
In [mathematical logic][1], a __tautology__ (from [Greek][2]: ταυτολογία) is a [formula][3] or assertion that is true in every possible [interpretation][4]. An example is "x=y or x≠y". Similarly, "either the ball is green, or the ball is not green" is always true, regardless of the colour of the ball.

The philosopher [Ludwig Wittgenstein][5] first applied the term to redundancies of [propositional logic][6] in 1921, borrowing from [rhetoric][7], where a [tautology][8] is a repetitive statement. In logic, a formula is [satisfiable][9] if it is true under at least one interpretation, and thus a tautology is a formula whose negation is unsatisfiable. In other words it cannot be false. It cannot be untrue.

Unsatisfiable statements, both through negation and affirmation, are known formally as [contradictions][10]. A formula that is neither a tautology nor a contradiction is said to be [logically contingent][11].

Such a formula can be made either true or false based on the values assigned to its propositional variables. The [double turnstile][12] notation ![\vDash S](https://wikimedia.org/api/rest_v1/media/math/render/svg/9510f7d1d521313f9fc7f632c62fd6ec528553d8) is used to indicate that *S* is a tautology. Tautology is sometimes symbolized by "V*pq*", and contradiction by "O*pq*". The [tee][13] symbol ![\top ](https://wikimedia.org/api/rest_v1/media/math/render/svg/cf12e436fef2365e76fcb1034a51179d8328bb33) is sometimes used to denote an arbitrary tautology, with the dual symbol ![\bot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/f282c7bc331cc3bfcf1c57f1452cc23c022f58de) ([falsum][14]) representing an arbitrary contradiction; in any symbolism, a tautology may be substituted for the truth value "[true][15]", as symbolized, for instance, by "1".[\[1\]][16]

Tautologies are a key concept in [propositional logic][17], where a tautology is defined as a propositional formula that is true under any possible [Boolean valuation][18] of its [propositional variables][19].[\[2\]][20] A key property of tautologies in propositional logic is that an [effective method][21] exists for testing whether a given formula is always satisfied (equiv., whether its negation is unsatisfiable).

The definition of tautology can be extended to sentences in [predicate logic][22], which may contain [quantifiers][23]—a feature absent from sentences of propositional logic. Indeed, in propositional logic, there is no distinction between a tautology and a [logically valid][24] formula. In the context of predicate logic, many authors define a tautology to be a sentence that can be obtained by taking a tautology of propositional logic, and uniformly replacing each propositional variable by a first-order formula (one formula per propositional variable). The set of such formulas is a [proper subset][25] of the set of logically valid sentences of predicate logic (i.e., sentences that are true in every [model][26]).

## History\[[edit][27]\]

The word tautology was used by the ancient Greeks to describe a statement that was asserted to be true merely by virtue of saying the same thing twice, a [pejorative][28] meaning that is still used for [rhetorical tautologies][29]. Between 1800 and 1940, the word gained new meaning in logic, and is currently used in [mathematical logic][30] to denote a certain type of propositional formula, without the pejorative connotations it originally possessed.

In 1800, [Immanuel Kant][31] wrote in his book *Logic*:

> The identity of concepts in analytical judgments can be either *explicit* (*explicita*) or *non-explicit* (*implicita*). In the former case analytic propositions are *tautological.*

Here, *analytic proposition* refers to an [analytic truth][32], a statement in natural language that is true solely because of the terms involved.

In 1884, [Gottlob Frege][33] proposed in his *Grundlagen* that a truth is analytic exactly if it can be derived using logic. However, he maintained a distinction between analytic truths (i.e., truths based only on the meanings of their terms) and tautologies (i.e., statements devoid of content).

In his *[Tractatus Logico-Philosophicus][34]* in 1921, Ludwig Wittgenstein proposed that statements that can be deduced by logical deduction are tautological (empty of meaning), as well as being analytic truths. [Henri Poincaré][35] had made similar remarks in *[Science and Hypothesis][36]* in 1905. Although [Bertrand Russell][37] at first argued against these remarks by Wittgenstein and Poincaré, claiming that mathematical truths were not only non-tautologous but were [synthetic][38], he later spoke in favor of them in 1918:

> Everything that is a proposition of logic has got to be in some sense or the other like a tautology. It has got to be something that has some peculiar quality, which I do not know how to define, that belongs to logical propositions but not to others.

Here, *logical proposition* refers to a proposition that is provable using the laws of logic.

During the 1930s, the formalization of the semantics of propositional logic in terms of truth assignments was developed. The term "tautology" began to be applied to those propositional formulas that are true regardless of the truth or falsity of their propositional variables. Some early books on logic (such as *Symbolic Logic* by [C. I. Lewis][39] and Langford, 1932) used the term for any proposition (in any formal logic) that is universally valid. It is common in presentations after this (such as [Stephen Kleene][40] 1967 and [Herbert Enderton][41] 2002) to use tautology to refer to a logically valid propositional formula, but to maintain a distinction between "tautology" and "logically valid" in the context of first-order logic (see [below][42]).

## Background\[[edit][43]\]

Propositional logic begins with __propositional variables__, atomic units that represent concrete propositions. A __formula__ consists of propositional variables connected by logical connectives, built up in such a way that the truth of the overall formula can be deduced from the truth or falsity of each variable. A __valuation__ is a function that assigns each propositional variable to either T (for truth) or F (for falsity). So by using the propositional variables *A* and *B*, the binary connectives ![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a) and ![\land ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d6823e5a222eb3ca49672818ac3d13ec607052c4) representing [disjunction][44] and [conjunction][45] respectively, and the unary connective ![\lnot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/099107443792f5fec9bebe39b919a690db7198c1) representing [negation][46], the following formula can be obtained:![(A\land B)\lor (\lnot A)\lor (\lnot B)](https://wikimedia.org/api/rest_v1/media/math/render/svg/4f2d45f06cee4d4881219449c0b0a73fefab5654).

A valuation here must assign to each of *A* and *B* either T or F. But no matter how this assignment is made, the overall formula will come out true. For if the first conjunction ![(A\land B)](https://wikimedia.org/api/rest_v1/media/math/render/svg/ebdcd2d1d13bc1f915aa141415965509a4e2b4f1) is not satisfied by a particular valuation, then one of *A* and *B* is assigned F, which will make one of the following disjunct to be assigned T.

## Definition and examples\[[edit][47]\]

A formula of propositional logic is a *tautology* if the formula itself is always true, regardless of which valuation is used for the [propositional variables][48]. There are infinitely many tautologies. Examples include:

-   ![(A\lor \lnot A)](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab553b5d4656bafd558a2dc86a152fd94965f5f0) ("*A* or not *A*"), the [law of excluded middle][49]. This formula has only one propositional variable, *A*. Any valuation for this formula must, by definition, assign *A* one of the truth values *true* or *false*, and assign ![\lnot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/099107443792f5fec9bebe39b919a690db7198c1)*A* the other truth value. For instance, "The cat is black or the cat is not black".
-   ![(A\to B)\Leftrightarrow (\lnot B\to \lnot A)](https://wikimedia.org/api/rest_v1/media/math/render/svg/098f044d01ad9910ab70cd46e545a8903e50c454) ("if *A* implies *B*, then not-*B* implies not-*A*", and vice versa), which expresses the law of [contraposition][50]. For instance, "If it's a book, it is blue; if it's not blue, it's not a book."
-   ![((\lnot A\to B)\land (\lnot A\to \lnot B))\to A](https://wikimedia.org/api/rest_v1/media/math/render/svg/0f4a6d0f98e002706de264a485f925aedf33ede9) ("if not-*A* implies both *B* and its negation not-*B*, then not-*A* must be false, then *A* must be true"), which is the principle known as *[reductio ad absurdum][51]*. For instance, "If it's not blue, it's a book, if it's not blue, it's also not a book, so it is blue."
-   ![\lnot (A\land B)\Leftrightarrow (\lnot A\lor \lnot B)](https://wikimedia.org/api/rest_v1/media/math/render/svg/c524422701e12217f3b51cb7a4b5ebfe54ed12b7) ("if not both *A* and *B*, then not-*A* or not-*B*", and vice versa), which is known as [De Morgan's law][52]. "If it's either not a book or it's not blue, it's either not a book, or it's not blue, or neither."
-   ![((A\to B)\land (B\to C))\to (A\to C)](https://wikimedia.org/api/rest_v1/media/math/render/svg/72953ec90cee0d9be9b936f5622727a28913a239) ("if *A* implies *B* and *B* implies *C*, then *A* implies *C*"), which is the principle known as [syllogism][53]. "If it's a book, then it's blue, if it's blue, it's on that shelf. Hence, if it's a book, it's on that shelf."
-   ![((A\lor B)\land (A\to C)\land (B\to C))\to C](https://wikimedia.org/api/rest_v1/media/math/render/svg/d7043a8c9880f868c508c655566fd9fb9c62eb59) ("if at least one of *A* or *B* is true, and each implies *C*, then *C* must be true as well"), which is the principle known as [proof by cases][54]. "Books and blue things are on that shelf. If it's either a book or it's blue, it's on that shelf."

A minimal tautology is a tautology that is not the instance of a shorter tautology.

## Verifying tautologies\[[edit][55]\]

The problem of determining whether a formula is a tautology is fundamental in propositional logic. If there are *n* variables occurring in a formula then there are 2*n* distinct valuations for the formula. Therefore, the task of determining whether or not the formula is a tautology is a finite and mechanical one: one needs only to evaluate the [truth value][56] of the formula under each of its possible valuations. One algorithmic method for verifying that every valuation makes the formula to be true is to make a [truth table][57] that includes every possible valuation.[\[2\]][58]

For example, consider the formula

![((A\land B)\to C)\Leftrightarrow (A\to (B\to C)).](https://wikimedia.org/api/rest_v1/media/math/render/svg/cce8248fb6011325b512bf3355e488b106dd5136)

There are 8 possible valuations for the propositional variables *A*, *B*, *C*, represented by the first three columns of the following table. The remaining columns show the truth of subformulas of the formula above, culminating in a column showing the truth value of the original formula under each valuation.

![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3)

![B](https://wikimedia.org/api/rest_v1/media/math/render/svg/47136aad860d145f75f3eed3022df827cee94d7a)

![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029)

![A\land B](https://wikimedia.org/api/rest_v1/media/math/render/svg/74954195333a8593163b93a9688695b8dc74da55)

![(A\land B)\to C](https://wikimedia.org/api/rest_v1/media/math/render/svg/58fecede545555ce1607458f802a4f8ccb9accf7)

![B\to C](https://wikimedia.org/api/rest_v1/media/math/render/svg/a9febe2010e6933c5e384a066ef7d5f634b97a7e)

![A\to (B\to C)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b2b33f36f729c9aa2cfdadb0b7d6b58580818228)

![((A\land B)\to C)\Leftrightarrow (A\to (B\to C))](https://wikimedia.org/api/rest_v1/media/math/render/svg/b161ccc7e428dd923128dae00e2c4268a9382ba0)

T

T

T

T

T

T

T

T

T

T

F

T

F

F

F

T

T

F

T

F

T

T

T

T

T

F

F

F

T

T

T

T

F

T

T

F

T

T

T

T

F

T

F

F

T

F

T

T

F

F

T

F

T

T

T

T

F

F

F

F

T

T

T

T

Because each row of the final column shows *T*, the sentence in question is verified to be a tautology.

It is also possible to define a [deductive system][59] (i.e., proof system) for propositional logic, as a simpler variant of the deductive systems employed for first-order logic (see Kleene 1967, Sec 1.9 for one such system). A proof of a tautology in an appropriate deduction system may be much shorter than a complete truth table (a formula with *n* propositional variables requires a truth table with 2*n* lines, which quickly becomes infeasible as *n* increases). Proof systems are also required for the study of [intuitionistic][60] propositional logic, in which the method of truth tables cannot be employed because the law of the excluded middle is not assumed.

## Tautological implication\[[edit][61]\]

A formula *R* is said to __tautologically imply__ a formula *S* if every valuation that causes *R* to be true also causes *S* to be true. This situation is denoted ![R\models S](https://wikimedia.org/api/rest_v1/media/math/render/svg/6d49ddd79c8ada52cf08db64070fc134cfbd2b1a). It is equivalent to the formula ![R\to S](https://wikimedia.org/api/rest_v1/media/math/render/svg/499bc5e6b1153b43ba86d31780bc215f01aa0bf1) being a tautology (Kleene 1967 p. 27).

For example, let *![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2)* be ![A\land (B\lor \lnot B)](https://wikimedia.org/api/rest_v1/media/math/render/svg/60255d5b706f8baaee19318cfce4af5e376b0e3e). Then *![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2)* is not a tautology, because any valuation that makes *![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3)* false will make *![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2)* false. But any valuation that makes *![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3)* true will make *![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2)* true, because ![B\lor \lnot B](https://wikimedia.org/api/rest_v1/media/math/render/svg/99886f848ae93c75408b416dff4580494edd2523) is a tautology. Let *![R](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b0bfb3769bf24d80e15374dc37b0441e2616e33)* be the formula ![A\land C](https://wikimedia.org/api/rest_v1/media/math/render/svg/70bb9844880566f77e0ea00f8a17ed569d8d1726). Then ![R\models S](https://wikimedia.org/api/rest_v1/media/math/render/svg/6d49ddd79c8ada52cf08db64070fc134cfbd2b1a), because any valuation satisfying *![R](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b0bfb3769bf24d80e15374dc37b0441e2616e33)* will make *![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3)* true—and thus makes *![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2)* true.

It follows from the definition that if a formula *![R](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b0bfb3769bf24d80e15374dc37b0441e2616e33)* is a contradiction, then *![R](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b0bfb3769bf24d80e15374dc37b0441e2616e33)* tautologically implies every formula, because there is no truth valuation that causes *![R](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b0bfb3769bf24d80e15374dc37b0441e2616e33)* to be true, and so the definition of tautological implication is trivially satisfied. Similarly, if *![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2)* is a tautology, then *![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2)* is tautologically implied by every formula.

## Substitution\[[edit][62]\]

There is a general procedure, the __substitution rule__, that allows additional tautologies to be constructed from a given tautology (Kleene 1967 sec. 3). Suppose that S is a tautology and for each propositional variable A in S a fixed sentence SA is chosen. Then the sentence obtained by replacing each variable A in S with the corresponding sentence SA is also a tautology.

For example, let S be the tautology

![{\displaystyle (A\land B)\lor \lnot A\lor \lnot B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0de2fd72960eadc32257afb75315594108ff8cab).

Let SA be ![C\lor D](https://wikimedia.org/api/rest_v1/media/math/render/svg/c85b67fc743ea47c72219cc96329ea364997c82b) and let SB be ![C\to E](https://wikimedia.org/api/rest_v1/media/math/render/svg/27f24bf52b3555e18537a3f41044ed0f74af8b75).

It follows from the substitution rule that the sentence

![{\displaystyle ((C\lor D)\land (C\to E))\lor \lnot (C\lor D)\lor \lnot (C\to E)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4eebb1522e6ab842a8cae370e61d2857532ab2e5)

## Semantic completeness and soundness\[[edit][63]\]

An [axiomatic system][64] is [complete][65] if every tautology is a theorem (derivable from axioms). An axiomatic system is [sound][66] if every theorem is a tautology.

## Efficient verification and the Boolean satisfiability problem\[[edit][67]\]

The problem of constructing practical algorithms to determine whether sentences with large numbers of propositional variables are tautologies is an area of contemporary research in the area of [automated theorem proving][68].

The method of [truth tables][69] illustrated above is provably correct – the truth table for a tautology will end in a column with only *T*, while the truth table for a sentence that is not a tautology will contain a row whose final column is *F*, and the valuation corresponding to that row is a valuation that does not satisfy the sentence being tested. This method for verifying tautologies is an [effective procedure][70], which means that given unlimited computational resources it can always be used to mechanistically determine whether a sentence is a tautology. This means, in particular, the set of tautologies over a fixed finite or countable alphabet is a [decidable set][71].

As an [efficient procedure][72], however, truth tables are constrained by the fact that the number of valuations that must be checked increases as 2*k*, where *k* is the number of variables in the formula. This exponential growth in the computation length renders the truth table method useless for formulas with thousands of propositional variables, as contemporary computing hardware cannot execute the algorithm in a feasible time period.

The problem of determining whether there is any valuation that makes a formula true is the [Boolean satisfiability problem][73]; the problem of checking tautologies is equivalent to this problem, because verifying that a sentence *S* is a tautology is equivalent to verifying that there is no valuation satisfying ![\lnot S](https://wikimedia.org/api/rest_v1/media/math/render/svg/25d8e529dce6b478e956c5a52a56b35bd403929a). It is known that the Boolean satisfiability problem is [NP complete][74], and widely believed that there is no [polynomial-time algorithm][75] that can perform it. Consequently, tautology is [co-NP-complete][76]. Current research focuses on finding algorithms that perform well on special classes of formulas, or terminate quickly on average even though some inputs may cause them to take much longer.

## Tautologies versus validities in first-order logic\[[edit][77]\]

The fundamental definition of a tautology is in the context of propositional logic. The definition can be extended, however, to sentences in [first-order logic][78].[\[3\]][79] These sentences may contain quantifiers, unlike sentences of propositional logic. In the context of first-order logic, a distinction is maintained between *logical validities*, sentences that are true in every model, and *tautologies*, which are a proper subset of the first-order logical validities. In the context of propositional logic, these two terms coincide.

A tautology in first-order logic is a sentence that can be obtained by taking a tautology of propositional logic and uniformly replacing each propositional variable by a first-order formula (one formula per propositional variable). For example, because ![A\lor \lnot A](https://wikimedia.org/api/rest_v1/media/math/render/svg/42bc39c90e40298464f5f82377cb9e7ed52e938f) is a tautology of propositional logic, ![(\forall x(x=x))\lor (\lnot \forall x(x=x))](https://wikimedia.org/api/rest_v1/media/math/render/svg/dbd2ba6fe297ec4eca0ea94051d19189b7e25b83) is a tautology in first order logic. Similarly, in a first-order language with a unary relation symbols *R*,*S*,*T*, the following sentence is a tautology:

![(((\exists xRx)\land \lnot (\exists xSx))\to \forall xTx)\Leftrightarrow ((\exists xRx)\to ((\lnot \exists xSx)\to \forall xTx)).](https://wikimedia.org/api/rest_v1/media/math/render/svg/4430d0257beea1747560863b478044ded886d411)

It is obtained by replacing ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) with ![\exists xRx](https://wikimedia.org/api/rest_v1/media/math/render/svg/1a4d4a873b7094fbd05698877ee33d16eff96532), ![B](https://wikimedia.org/api/rest_v1/media/math/render/svg/47136aad860d145f75f3eed3022df827cee94d7a) with ![\lnot \exists xSx](https://wikimedia.org/api/rest_v1/media/math/render/svg/8f0badf19c8ba7ecd1d930556e4cc1cfa67374dc), and ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029) with ![\forall xTx](https://wikimedia.org/api/rest_v1/media/math/render/svg/e87d515ef56ffb2ba34b78014c7b8a450fffe1ca) in the propositional tautology ![((A\land B)\to C)\Leftrightarrow (A\to (B\to C))](https://wikimedia.org/api/rest_v1/media/math/render/svg/b161ccc7e428dd923128dae00e2c4268a9382ba0).

Not all logical validities are tautologies in first-order logic. For example, the sentence

![(\forall xRx)\to \lnot \exists x\lnot Rx](https://wikimedia.org/api/rest_v1/media/math/render/svg/96a7147c32a23111310147e6e255af950c5d8ed5)

is true in any first-order interpretation, but it corresponds to the propositional sentence ![A\to B](https://wikimedia.org/api/rest_v1/media/math/render/svg/d5b8dd84619daff17b52a08b77d15db2b9ad6c2a) which is not a tautology of propositional logic.

## See also\[[edit][80]\]

### Normal forms\[[edit][81]\]

-   [Algebraic normal form][82]
-   [Conjunctive normal form][83]
-   [Disjunctive normal form][84]
-   [Logic optimization][85]

### \[[edit][86]\]

## References\[[edit][87]\]

## Further reading\[[edit][88]\]

-   [Bocheński, J. M.][89] (1959) *Précis of Mathematical Logic*, translated from the French and German editions by Otto Bird, [Dordrecht][90], [South Holland][91]: [D. Reidel][92].
-   [Enderton, H. B.][93] (2002) *A Mathematical Introduction to Logic*, [Harcourt][94]/[Academic Press][95], [ISBN][96] [0-12-238452-0][97].
-   [Kleene, S. C.][98] (1967) *Mathematical Logic*, reprinted 2002, [Dover Publications][99], [ISBN][100] [0-486-42533-9][101].
-   [Reichenbach, H.][102] (1947). *Elements of Symbolic Logic*, reprinted 1980, Dover, [ISBN][103] [0-486-24004-5][104]
-   [Wittgenstein, L.][105] (1921). "Logisch-philosophiche Abhandlung", *Annalen der Naturphilosophie* (Leipzig), v. 14, pp. 185–262, reprinted in English translation as *Tractatus logico-philosophicus*, [New York City][106] and [London][107], 1922.

## External links\[[edit][108]\]

-   ["Tautology"][109], *[Encyclopedia of Mathematics][110]*, [EMS Press][111], 2001 \[1994\]

[1]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[2]: https://en.wikipedia.org/wiki/Greek_language "Greek language"
[3]: https://en.wikipedia.org/wiki/Well-formed_formula "Well-formed formula"
[4]: https://en.wikipedia.org/wiki/Interpretation_(logic) "Interpretation (logic)"
[5]: https://en.wikipedia.org/wiki/Ludwig_Wittgenstein "Ludwig Wittgenstein"
[6]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[7]: https://en.wikipedia.org/wiki/Rhetoric "Rhetoric"
[8]: https://en.wikipedia.org/wiki/Tautology_(rhetoric) "Tautology (rhetoric)"
[9]: https://en.wikipedia.org/wiki/Satisfiability_and_validity "Satisfiability and validity"
[10]: https://en.wikipedia.org/wiki/Contradiction "Contradiction"
[11]: https://en.wikipedia.org/wiki/Contingency_(philosophy) "Contingency (philosophy)"
[12]: https://en.wikipedia.org/wiki/Double_turnstile "Double turnstile"
[13]: https://en.wikipedia.org/wiki/Tee_(symbol) "Tee (symbol)"
[14]: https://en.wikipedia.org/wiki/Falsum "Falsum"
[15]: https://en.wikipedia.org/wiki/Logical_truth "Logical truth"
[16]: https://en.wikipedia.org/wiki/Tautology_(logic)#cite_note-1
[17]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[18]: https://en.wikipedia.org/wiki/Boolean_valuation "Boolean valuation"
[19]: https://en.wikipedia.org/wiki/Propositional_variable "Propositional variable"
[20]: https://en.wikipedia.org/wiki/Tautology_(logic)#cite_note-:0-2
[21]: https://en.wikipedia.org/wiki/Effective_method "Effective method"
[22]: https://en.wikipedia.org/wiki/Predicate_logic "Predicate logic"
[23]: https://en.wikipedia.org/wiki/Quantification_(logic) "Quantification (logic)"
[24]: https://en.wikipedia.org/wiki/Validity_(logic) "Validity (logic)"
[25]: https://en.wikipedia.org/wiki/Proper_subset "Proper subset"
[26]: https://en.wikipedia.org/wiki/Structure_(mathematical_logic) "Structure (mathematical logic)"
[27]: https://en.wikipedia.org/w/index.php?title=Tautology_(logic)&action=edit&section=1 "Edit section: History"
[28]: https://en.wikipedia.org/wiki/Pejorative "Pejorative"
[29]: https://en.wikipedia.org/wiki/Tautology_(rhetoric) "Tautology (rhetoric)"
[30]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[31]: https://en.wikipedia.org/wiki/Immanuel_Kant "Immanuel Kant"
[32]: https://en.wikipedia.org/wiki/Analytic_truth "Analytic truth"
[33]: https://en.wikipedia.org/wiki/Gottlob_Frege "Gottlob Frege"
[34]: https://en.wikipedia.org/wiki/Tractatus_Logico-Philosophicus "Tractatus Logico-Philosophicus"
[35]: https://en.wikipedia.org/wiki/Henri_Poincar%C3%A9 "Henri Poincaré"
[36]: https://en.wikipedia.org/wiki/Science_and_Hypothesis "Science and Hypothesis"
[37]: https://en.wikipedia.org/wiki/Bertrand_Russell "Bertrand Russell"
[38]: https://en.wikipedia.org/wiki/Synthetic_truth "Synthetic truth"
[39]: https://en.wikipedia.org/wiki/C._I._Lewis "C. I. Lewis"
[40]: https://en.wikipedia.org/wiki/Stephen_Kleene "Stephen Kleene"
[41]: https://en.wikipedia.org/wiki/Herbert_Enderton "Herbert Enderton"
[42]: https://en.wikipedia.org/wiki/Tautology_(logic)#Tautologies_versus_validities_in_first-order_logic
[43]: https://en.wikipedia.org/w/index.php?title=Tautology_(logic)&action=edit&section=2 "Edit section: Background"
[44]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[45]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[46]: https://en.wikipedia.org/wiki/Negation "Negation"
[47]: https://en.wikipedia.org/w/index.php?title=Tautology_(logic)&action=edit&section=3 "Edit section: Definition and examples"
[48]: https://en.wikipedia.org/wiki/Propositional_variable "Propositional variable"
[49]: https://en.wikipedia.org/wiki/Law_of_excluded_middle "Law of excluded middle"
[50]: https://en.wikipedia.org/wiki/Contraposition "Contraposition"
[51]: https://en.wikipedia.org/wiki/Reductio_ad_absurdum "Reductio ad absurdum"
[52]: https://en.wikipedia.org/wiki/De_Morgan%27s_law "De Morgan's law"
[53]: https://en.wikipedia.org/wiki/Syllogism "Syllogism"
[54]: https://en.wikipedia.org/wiki/Proof_by_cases "Proof by cases"
[55]: https://en.wikipedia.org/w/index.php?title=Tautology_(logic)&action=edit&section=4 "Edit section: Verifying tautologies"
[56]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[57]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[58]: https://en.wikipedia.org/wiki/Tautology_(logic)#cite_note-:0-2
[59]: https://en.wikipedia.org/wiki/Deductive_system "Deductive system"
[60]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[61]: https://en.wikipedia.org/w/index.php?title=Tautology_(logic)&action=edit&section=5 "Edit section: Tautological implication"
[62]: https://en.wikipedia.org/w/index.php?title=Tautology_(logic)&action=edit&section=6 "Edit section: Substitution"
[63]: https://en.wikipedia.org/w/index.php?title=Tautology_(logic)&action=edit&section=7 "Edit section: Semantic completeness and soundness"
[64]: https://en.wikipedia.org/wiki/Axiomatic_system "Axiomatic system"
[65]: https://en.wikipedia.org/wiki/Completeness_(logic) "Completeness (logic)"
[66]: https://en.wikipedia.org/wiki/Soundness "Soundness"
[67]: https://en.wikipedia.org/w/index.php?title=Tautology_(logic)&action=edit&section=8 "Edit section: Efficient verification and the Boolean satisfiability problem"
[68]: https://en.wikipedia.org/wiki/Automated_theorem_proving "Automated theorem proving"
[69]: https://en.wikipedia.org/wiki/Truth_tables "Truth tables"
[70]: https://en.wikipedia.org/wiki/Effective_procedure "Effective procedure"
[71]: https://en.wikipedia.org/wiki/Decidable_set "Decidable set"
[72]: https://en.wikipedia.org/wiki/Efficient_procedure "Efficient procedure"
[73]: https://en.wikipedia.org/wiki/Boolean_satisfiability_problem "Boolean satisfiability problem"
[74]: https://en.wikipedia.org/wiki/NP_complete "NP complete"
[75]: https://en.wikipedia.org/wiki/Polynomial-time_algorithm "Polynomial-time algorithm"
[76]: https://en.wikipedia.org/wiki/Co-NP-complete "Co-NP-complete"
[77]: https://en.wikipedia.org/w/index.php?title=Tautology_(logic)&action=edit&section=9 "Edit section: Tautologies versus validities in first-order logic"
[78]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[79]: https://en.wikipedia.org/wiki/Tautology_(logic)#cite_note-3
[80]: https://en.wikipedia.org/w/index.php?title=Tautology_(logic)&action=edit&section=10 "Edit section: See also"
[81]: https://en.wikipedia.org/w/index.php?title=Tautology_(logic)&action=edit&section=11 "Edit section: Normal forms"
[82]: https://en.wikipedia.org/wiki/Algebraic_normal_form "Algebraic normal form"
[83]: https://en.wikipedia.org/wiki/Conjunctive_normal_form "Conjunctive normal form"
[84]: https://en.wikipedia.org/wiki/Disjunctive_normal_form "Disjunctive normal form"
[85]: https://en.wikipedia.org/wiki/Logic_optimization "Logic optimization"
[86]: https://en.wikipedia.org/w/index.php?title=Tautology_(logic)&action=edit&section=12 "Edit section: Related logical topics"
[87]: https://en.wikipedia.org/w/index.php?title=Tautology_(logic)&action=edit&section=13 "Edit section: References"
[88]: https://en.wikipedia.org/w/index.php?title=Tautology_(logic)&action=edit&section=14 "Edit section: Further reading"
[89]: https://en.wikipedia.org/wiki/J%C3%B3zef_Maria_Boche%C5%84ski "Józef Maria Bocheński"
[90]: https://en.wikipedia.org/wiki/Dordrecht "Dordrecht"
[91]: https://en.wikipedia.org/wiki/South_Holland "South Holland"
[92]: https://en.wikipedia.org/wiki/D._Reidel "D. Reidel"
[93]: https://en.wikipedia.org/wiki/Herbert_Enderton "Herbert Enderton"
[94]: https://en.wikipedia.org/wiki/Harcourt_(publisher) "Harcourt (publisher)"
[95]: https://en.wikipedia.org/wiki/Academic_Press "Academic Press"
[96]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[97]: https://en.wikipedia.org/wiki/Special:BookSources/0-12-238452-0 "Special:BookSources/0-12-238452-0"
[98]: https://en.wikipedia.org/wiki/Stephen_Kleene "Stephen Kleene"
[99]: https://en.wikipedia.org/wiki/Dover_Publications "Dover Publications"
[100]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[101]: https://en.wikipedia.org/wiki/Special:BookSources/0-486-42533-9 "Special:BookSources/0-486-42533-9"
[102]: https://en.wikipedia.org/wiki/Hans_Reichenbach "Hans Reichenbach"
[103]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[104]: https://en.wikipedia.org/wiki/Special:BookSources/0-486-24004-5 "Special:BookSources/0-486-24004-5"
[105]: https://en.wikipedia.org/wiki/Ludwig_Wittgenstein "Ludwig Wittgenstein"
[106]: https://en.wikipedia.org/wiki/New_York_City "New York City"
[107]: https://en.wikipedia.org/wiki/London "London"
[108]: https://en.wikipedia.org/w/index.php?title=Tautology_(logic)&action=edit&section=15 "Edit section: External links"
[109]: https://www.encyclopediaofmath.org/index.php?title=Tautology
[110]: https://en.wikipedia.org/wiki/Encyclopedia_of_Mathematics "Encyclopedia of Mathematics"
[111]: https://en.wikipedia.org/wiki/European_Mathematical_Society "European Mathematical Society"
