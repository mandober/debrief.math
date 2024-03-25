---
downloaded:       2021-12-18
page-url:         https://en.wikipedia.org/wiki/Resolution_(logic)
page-title:       Resolution (logic) - Wikipedia
article-title:    Resolution (logic) - Wikipedia
---
# Resolution (logic) - Wikipedia

In mathematical logic and automated theorem proving, resolution is a rule of inference leading to a refutation complete theorem-proving technique for sentences in propositional logic and first-order logic. For propositional logic, systematically applying the resolution rule acts as a decision procedure for formula unsatisfiability, solving the (complement of the) Boolean satisfiability problem. For first-order logic, resolution can be used as the basis for a semi-algorithm for the unsatisfiability problem of first-order logic, providing a more practical method than one following from Gödel's completeness theorem.
In [mathematical logic][1] and [automated theorem proving][2], __resolution__ is a [rule of inference][3] leading to a [refutation complete][4] [theorem-proving][5] technique for sentences in [propositional logic][6] and [first-order logic][7]. For propositional logic, systematically applying the resolution rule acts as a [decision procedure][8] for formula unsatisfiability, solving the (complement of the) [Boolean satisfiability problem][9]. For [first-order logic][10], resolution can be used as the basis for a [semi-algorithm][11] for the unsatisfiability problem of [first-order logic][12], providing a more practical method than one following from [Gödel's completeness theorem][13].

The resolution rule can be traced back to [Davis][14] and [Putnam][15] (1960);[\[1\]][16] however, their [algorithm][17] required trying all [ground instances][18] of the given formula. This source of combinatorial explosion was eliminated in 1965 by [John Alan Robinson][19]'s syntactical [unification algorithm][20], which allowed one to instantiate the formula during the proof "on demand" just as far as needed to keep [refutation completeness][21].[\[2\]][22]

The clause produced by a resolution rule is sometimes called a __resolvent__.

## Resolution in propositional logic\[[edit][23]\]

### Resolution rule\[[edit][24]\]

The __resolution rule__ in propositional logic is a single valid inference rule that produces a new clause implied by two [clauses][25] containing complementary literals. A [literal][26] is a propositional variable or the negation of a propositional variable. Two literals are said to be complements if one is the negation of the other (in the following, ![\lnot c](https://wikimedia.org/api/rest_v1/media/math/render/svg/d23f5c72ebb1b0cf2c01ff954c983a4dde9bed0f) is taken to be the complement to ![c](https://wikimedia.org/api/rest_v1/media/math/render/svg/86a67b81c2de995bd608d5b2df50cd8cd7d92455)). The resulting clause contains all the literals that do not have complements. Formally:

![{\displaystyle {\frac {a_{1}\lor a_{2}\lor \cdots \lor c,\quad b_{1}\lor b_{2}\lor \cdots \lor \neg c}{a_{1}\lor a_{2}\lor \cdots \lor b_{1}\lor b_{2}\lor \cdots }}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6fa5d6e4731a36e9c72993ea807f6cb1ca86d55a)

where

all ![a_{i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0bc77764b2e74e64a63341054fa90f3e07db275f), ![b_{i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/40a8c2db2990a53c683e75961826167c5adac7c3), and ![c](https://wikimedia.org/api/rest_v1/media/math/render/svg/86a67b81c2de995bd608d5b2df50cd8cd7d92455) are literals,

the dividing line stands for "[entails][27]".

The above may also be written as:

![{\displaystyle {\frac {(\neg a_{1}\land \neg a_{2}\land \cdots )\rightarrow c,\quad c\rightarrow (b_{1}\lor b_{2}\lor \cdots )}{(\neg a_{1}\land \neg a_{2}\land \cdots )\rightarrow (b_{1}\lor b_{2}\lor \cdots )}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9f81bbdc7e02d0e62d3ae1311e379007a97d8d14)

Or schematically as:

![{\displaystyle {\frac {\Gamma _{1}\cup \left\{\ell \right\}\,\,\,\,\Gamma _{2}\cup \left\{{\overline {\ell }}\right\}}{\Gamma _{1}\cup \Gamma _{2}}}|\ell |}](https://wikimedia.org/api/rest_v1/media/math/render/svg/02ed95d935e863df4c4d85aa6b6b263d140423ab)

We have the following terminology:

The clause produced by the resolution rule is called the *resolvent* of the two input clauses. It is the principle of *[consensus][28]* applied to clauses rather than terms.[\[3\]][29]

When the two clauses contain more than one pair of complementary literals, the resolution rule can be applied (independently) for each such pair; however, the result is always a [tautology][30].

[Modus ponens][31] can be seen as a special case of resolution (of a one-literal clause and a two-literal clause).

![{\displaystyle {\frac {p\rightarrow q,\quad p}{q}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/068fd2f7d9941d23aa8aeaaedd4246b73d519d53)

is equivalent to

![{\displaystyle {\frac {\lnot p\lor q,\quad p}{q}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/db216940e908d43bdc65f7e05898c8477f1c4467)

### A resolution technique\[[edit][32]\]

When coupled with a complete [search algorithm][33], the resolution rule yields a [sound][34] and [complete][35] algorithm for deciding the *satisfiability* of a propositional formula, and, by extension, the [validity][36] of a sentence under a set of axioms.

This resolution technique uses [proof by contradiction][37] and is based on the fact that any sentence in propositional logic can be transformed into an equivalent sentence in [conjunctive normal form][38].[\[4\]][39] The steps are as follows.

-   All sentences in the knowledge base and the *negation* of the sentence to be proved (the *conjecture*) are conjunctively connected.
-   The resulting sentence is transformed into a conjunctive normal form with the conjuncts viewed as elements in a set, *S*, of clauses.[\[4\]][40]
-   The resolution rule is applied to all possible pairs of clauses that contain complementary literals. After each application of the resolution rule, the resulting sentence is simplified by removing repeated literals. If the clause contains complementary literals, it is discarded (as a tautology). If not, and if it is not yet present in the clause set *S*, it is added to *S*, and is considered for further resolution inferences.
-   If after applying a resolution rule the *empty clause* is derived, the original formula is unsatisfiable (or *contradictory*), and hence it can be concluded that the initial conjecture [follows from][41] the axioms.
-   If, on the other hand, the empty clause cannot be derived, and the resolution rule cannot be applied to derive any more new clauses, the conjecture is not a theorem of the original knowledge base.

One instance of this algorithm is the original [Davis–Putnam algorithm][42] that was later refined into the [DPLL algorithm][43] that removed the need for explicit representation of the resolvents.

This description of the resolution technique uses a set *S* as the underlying [data-structure][44] to represent resolution derivations. [Lists][45], [Trees][46] and [Directed Acyclic Graphs][47] are other possible and common alternatives. Tree representations are more faithful to the fact that the resolution rule is binary. Together with a sequent notation for clauses, a tree representation also makes it clear to see how the resolution rule is related to a special case of the [cut-rule][48], restricted to atomic cut-formulas. However, tree representations are not as compact as set or list representations, because they explicitly show redundant subderivations of clauses that are used more than once in the derivation of the empty clause. Graph representations can be as compact in the number of clauses as list representations and they also store structural information regarding which clauses were resolved to derive each resolvent.

#### A simple example\[[edit][49]\]

![{\frac  {a\vee b,\quad \neg a\vee c}{b\vee c}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a1f3e55c811cce6ca68558709ec432a13a7d8313)

In plain language: Suppose ![a](https://wikimedia.org/api/rest_v1/media/math/render/svg/ffd2487510aa438433a2579450ab2b3d557e5edc) is false. In order for the premise ![a\vee b](https://wikimedia.org/api/rest_v1/media/math/render/svg/3393da6721f85fa89a1d3a8c28e82c679abe4032) to be true, ![b](https://wikimedia.org/api/rest_v1/media/math/render/svg/f11423fbb2e967f986e36804a8ae4271734917c3) must be true. Alternatively, suppose ![a](https://wikimedia.org/api/rest_v1/media/math/render/svg/ffd2487510aa438433a2579450ab2b3d557e5edc) is true. In order for the premise ![\neg a\vee c](https://wikimedia.org/api/rest_v1/media/math/render/svg/dbe8bf3a68197739100e3f82dc0103bfe41947f0) to be true, ![c](https://wikimedia.org/api/rest_v1/media/math/render/svg/86a67b81c2de995bd608d5b2df50cd8cd7d92455) must be true. Therefore, regardless of falsehood or veracity of ![a](https://wikimedia.org/api/rest_v1/media/math/render/svg/ffd2487510aa438433a2579450ab2b3d557e5edc), if both premises hold, then the conclusion ![b\vee c](https://wikimedia.org/api/rest_v1/media/math/render/svg/ca5cecad1409bbd54c8ef9f526c6d43599c7d639) is true.

## Resolution in first order logic\[[edit][50]\]

Resolution rule can be generalized to [first-order logic][51] to:[\[5\]][52]

![{\frac  {\Gamma _{1}\cup \left\{L_{1}\right\}\,\,\,\,\Gamma _{2}\cup \left\{L_{2}\right\}}{(\Gamma _{1}\cup \Gamma _{2})\phi }}\phi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/3dcdf6e4eb271c2b084d16c0355d50776ec280a6)

where ![\phi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/72b1f30316670aee6270a28334bdf4f5072cdde4) is a [most general unifier][53] of ![L_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0e79dc1b001f8b923df475ed14de023cbc456013) and ![\overline {L_{2}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0edef00a4b6001a16523b8125c1dbdbe3625d596), and ![\Gamma _{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/427e60078dcc86b35e6822c29368bd4a086ecb18) and ![\Gamma _{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c0c3af2863f650e8ffbc1fd37149f3c37c479116) have no common variables.

### Example\[[edit][54]\]

The clauses ![P(x),Q(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/0d977ad3e84749c4b5138c5dc5e8dee02c66be41) and ![\neg P(b)](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b8c68d2f5c434e391bb809a12447aab49452093) can apply this rule with ![[b/x]](https://wikimedia.org/api/rest_v1/media/math/render/svg/838f5c44f9a3f4ed28f7c1bd94f1873c154026c2) as unifier.

Here x is a variable and b is a constant.

![{\frac  {P(x),Q(x)\,\,\,\,\neg P(b)}{Q(b)}}[b/x]](https://wikimedia.org/api/rest_v1/media/math/render/svg/ae163bde90d398e7bd031ea7f9ca161f468a54c4)

Here we see that

### Informal explanation\[[edit][55]\]

In first order logic, resolution condenses the traditional [syllogisms][56] of [logical inference][57] down to a single rule.

To understand how resolution works, consider the following example syllogism of [term logic][58]:

All Greeks are Europeans.

Homer is a Greek.

Therefore, Homer is a European.

Or, more generally:

![\forall x.P(x)\Rightarrow Q(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/e46dd5366fec189c0959f925ddbf9ec7d2237f9f)

![P(a)](https://wikimedia.org/api/rest_v1/media/math/render/svg/87843d318d662e597ebd3c0260bcb2727707009d)

Therefore, ![Q(a)](https://wikimedia.org/api/rest_v1/media/math/render/svg/bc3643830d3a80689904100873bbd1f309af8cf5)

To recast the reasoning using the resolution technique, first the clauses must be converted to [conjunctive normal form][59] (CNF). In this form, all [quantification][60] becomes implicit: [universal quantifiers][61] on variables (*X*, *Y*, ...) are simply omitted as understood, while [existentially-quantified][62] variables are replaced by [Skolem functions][63].

![\neg P(x)\vee Q(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/40efeface5cb251f9d148ae6886041e87639ef07)

![P(a)](https://wikimedia.org/api/rest_v1/media/math/render/svg/87843d318d662e597ebd3c0260bcb2727707009d)

Therefore, ![Q(a)](https://wikimedia.org/api/rest_v1/media/math/render/svg/bc3643830d3a80689904100873bbd1f309af8cf5)

So the question is, how does the resolution technique derive the last clause from the first two? The rule is simple:

-   Find two clauses containing the same predicate, where it is negated in one clause but not in the other.
-   Perform a [unification][64] on the two predicates. (If the unification fails, you made a bad choice of predicates. Go back to the previous step and try again.)
-   If any unbound variables which were bound in the unified predicates also occur in other predicates in the two clauses, replace them with their bound values (terms) there as well.
-   Discard the unified predicates, and combine the remaining ones from the two clauses into a new clause, also joined by the "∨" operator.

To apply this rule to the above example, we find the predicate *P* occurs in negated form

¬*P*(*X*)

in the first clause, and in non-negated form

*P*(*a*)

in the second clause. *X* is an unbound variable, while *a* is a bound value (term). Unifying the two produces the substitution

*X* ↦ *a*

Discarding the unified predicates, and applying this substitution to the remaining predicates (just *Q*(*X*), in this case), produces the conclusion:

*Q*(*a*)

For another example, consider the syllogistic form

All Cretans are islanders.

All islanders are liars.

Therefore all Cretans are liars.

Or more generally,

∀*X* *P*(*X*) → *Q*(*X*)

∀*X* *Q*(*X*) → *R*(*X*)

Therefore, ∀*X* *P*(*X*) → *R*(*X*)

In CNF, the antecedents become:

¬*P*(*X*) ∨ *Q*(*X*)

¬*Q*(*Y*) ∨ *R*(*Y*)

(Note that the variable in the second clause was renamed to make it clear that variables in different clauses are distinct.)

Now, unifying *Q*(*X*) in the first clause with ¬*Q*(*Y*) in the second clause means that *X* and *Y* become the same variable anyway. Substituting this into the remaining clauses and combining them gives the conclusion:

¬*P*(*X*) ∨ *R*(*X*)

### Factoring\[[edit][65]\]

The resolution rule, as defined by Robinson, also incorporated factoring, which unifies two literals in the same clause, before or during the application of resolution as defined above. The resulting inference rule is refutation-complete,[\[6\]][66] in that a set of clauses is unsatisfiable if and only if there exists a derivation of the empty clause using only resolution, enhanced by factoring.

An example for an unsatisfiable clause set for which factoring is needed to derive the empty clause is:

![{\displaystyle {\begin{array}{rlcl}(1):&P(u)&\lor &P(f(u))\\(2):&\lnot P(v)&\lor &P(f(w))\\(3):&\lnot P(x)&\lor &\lnot P(f(x))\\\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8387c2d50e9f8a7bce33329ff87d27936fb2faa1)

Since each clause consists of two literals, so does each possible resolvent. Therefore, by resolution without factoring, the empty clause can never be obtained. Using factoring, it can be obtained e.g. as follows:[\[7\]][67]

![{\displaystyle {\begin{array}{rll}(4):&P(u)\lor P(f(w))&{\text{by resolving (1) and (2), with }}v=f(u)\\(5):&P(f(w))&{\text{by factoring (4), with }}u=f(w)\\(6):&\lnot P(f(f(w')))&{\text{by resolving (5) and (3), with }}w=w',x=f(w')\\(7):&{\text{false}}&{\text{by resolving (5) and (6), with }}w=f(w')\\\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3ccc054f7294f86ba0225ca5e4630c85b5bebc97)

## Non-clausal resolution\[[edit][68]\]

Generalizations of the above resolution rule have been devised that do not require the originating formulas to be in [clausal normal form][69].[\[8\]][70][\[9\]][71][\[10\]][72][\[11\]][73][\[12\]][74][\[13\]][75]

These techniques are useful mainly in interactive theorem proving where it is important to preserve human readability of intermediate result formulas. Besides, they avoid combinatorial explosion during transformation to clause-form,[\[10\]][76]: 98  and sometimes save resolution steps.[\[13\]][77]: 425 

### Non-clausal resolution in propositional logic\[[edit][78]\]

For propositional logic, Murray[\[9\]][79]: 18  and Manna and Waldinger[\[10\]][80]: 98  use the rule

![{\displaystyle {\begin{array}{c}F[p]\;\;\;\;\;\;\;\;\;\;G[p]\\\hline F[{\textit {true}}]\lor G[{\textit {false}}]\\\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fd8f22aca2a7f8c5e8844f63e6c1053a0738058c),

where ![p](https://wikimedia.org/api/rest_v1/media/math/render/svg/81eac1e205430d1f40810df36a0edffdc367af36) denotes an arbitrary formula, ![F[p]](https://wikimedia.org/api/rest_v1/media/math/render/svg/38f8a6d48ca352c71da6f0955c23e9be49548f75) denotes a formula containing ![p](https://wikimedia.org/api/rest_v1/media/math/render/svg/81eac1e205430d1f40810df36a0edffdc367af36) as a subformula, and ![{\displaystyle F[{\textit {true}}]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bd88dbfd47694095cfed477f8d41b694506dae79) is built by replacing in ![F[p]](https://wikimedia.org/api/rest_v1/media/math/render/svg/38f8a6d48ca352c71da6f0955c23e9be49548f75) every occurrence of ![p](https://wikimedia.org/api/rest_v1/media/math/render/svg/81eac1e205430d1f40810df36a0edffdc367af36) by ![{\textit  {true}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/39477b5045e93ab825d9d763e7f97e541f12851b); likewise for ![G](https://wikimedia.org/api/rest_v1/media/math/render/svg/f5f3c8921a3b352de45446a6789b104458c9f90b). The resolvent ![{\displaystyle F[{\textit {true}}]\lor G[{\textit {false}}]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8c607605ccc585c3915e95621939b7d99d4b2da8) is intended to be simplified using rules like ![{\displaystyle q\land {\textit {true}}\implies q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/325ddee417be8fea3fcb135b56d69244336538ff), etc. In order to prevent generating useless trivial resolvents, the rule shall be applied only when ![p](https://wikimedia.org/api/rest_v1/media/math/render/svg/81eac1e205430d1f40810df36a0edffdc367af36) has at least one "negative" and "positive"[\[14\]][81] occurrence in ![F](https://wikimedia.org/api/rest_v1/media/math/render/svg/545fd099af8541605f7ee55f08225526be88ce57) and ![G](https://wikimedia.org/api/rest_v1/media/math/render/svg/f5f3c8921a3b352de45446a6789b104458c9f90b), respectively. Murray has shown that this rule is complete if augmented by appropriate logical transformation rules.[\[10\]][82]: 103 

Traugott uses the rule

![{\displaystyle {\begin{array}{c}F[p^{+},p^{-}]\;\;\;\;\;\;\;\;G[p]\\\hline F[G[{\textit {true}}],\lnot G[{\textit {false}}]]\\\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3e3e0dc2e4576a0200350a1f22f3d8b1a2e388bb),

where the exponents of ![p](https://wikimedia.org/api/rest_v1/media/math/render/svg/81eac1e205430d1f40810df36a0edffdc367af36) indicate the polarity of its occurrences. While ![{\displaystyle G[{\textit {true}}]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3fcc3f852da3aca6f5422c6f3b4f1ae1fd746369) and ![{\displaystyle G[{\textit {false}}]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c48d4e0866ec9203072a33da3c34ca170d2b05c8) are built as before, the formula ![{\displaystyle F[G[{\textit {true}}],\lnot G[{\textit {false}}]]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bbf11ba523ad4316097edecb5852655dd4c8f052) is obtained by replacing each positive and each negative occurrence of ![p](https://wikimedia.org/api/rest_v1/media/math/render/svg/81eac1e205430d1f40810df36a0edffdc367af36) in ![F](https://wikimedia.org/api/rest_v1/media/math/render/svg/545fd099af8541605f7ee55f08225526be88ce57) with ![{\displaystyle G[{\textit {true}}]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3fcc3f852da3aca6f5422c6f3b4f1ae1fd746369) and ![{\displaystyle G[{\textit {false}}]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c48d4e0866ec9203072a33da3c34ca170d2b05c8), respectively. Similar to Murray's approach, appropriate simplifying transformations are to be applied to the resolvent. Traugott proved his rule to be complete, provided ![{\displaystyle \land ,\lor ,\rightarrow ,\lnot }](https://wikimedia.org/api/rest_v1/media/math/render/svg/bd3d7c86254e83a9d8a7a53d901354bd315fd63f) are the only connectives used in formulas.[\[12\]][83]: 398–400 

Traugott's resolvent is stronger than Murray's.[\[12\]][84]: 395  Moreover, it does not introduce new binary junctors, thus avoiding a tendency towards clausal form in repeated resolution. However, formulas may grow longer when a small ![p](https://wikimedia.org/api/rest_v1/media/math/render/svg/81eac1e205430d1f40810df36a0edffdc367af36) is replaced multiple times with a larger ![{\displaystyle G[{\textit {true}}]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3fcc3f852da3aca6f5422c6f3b4f1ae1fd746369) and/or ![{\displaystyle G[{\textit {false}}]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c48d4e0866ec9203072a33da3c34ca170d2b05c8).[\[12\]][85]: 398 

### Propositional non-clausal resolution example\[[edit][86]\]

As an example, starting from the user-given assumptions

![{\displaystyle {\begin{array}{rccc}(1):&a&\rightarrow &b\land c\\(2):&c&\rightarrow &d\\(3):&b\land d&\rightarrow &e\\(4):&\lnot (a&\rightarrow &e)\\\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a6dfb6ccc34266db44776d2a86faeb8370bd6ab3)

the Murray rule can be used as follows to infer a contradiction:[\[15\]][87]

![{\displaystyle {\begin{array}{rrclccl}(5):&({\textit {true}}\rightarrow d)&\lor &(a\rightarrow b\land {\textit {false}})&\implies &d\lor \lnot a&{\mbox{from (2) and (1), with }}p=c\\(6):&(b\land {\textit {true}}\rightarrow e)&\lor &({\textit {false}}\lor \lnot a)&\implies &(b\rightarrow e)\lor \lnot a&{\mbox{from (3) and (5), with }}p=d\\(7):&(({\textit {true}}\rightarrow e)\lor \lnot a)&\lor &(a\rightarrow {\textit {false}}\land c)&\implies &e\lor \lnot a\lor \lnot a&{\mbox{from (6) and (1), with }}p=b\\(8):&(e\lor \lnot {\textit {true}}\lor \lnot {\textit {true}})&\lor &\lnot ({\textit {false}}\rightarrow e)&\implies &e&{\mbox{from (7) and (4), with }}p=a\\(9):&\lnot (a\rightarrow {\textit {true}})&\lor &{\textit {false}}&\implies &{\textit {false}}&{\mbox{from (4) and (8), with }}p=e\\\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1a5eac8aeb3cda380cc768926f3c5b18b5d802bc)

For the same purpose, the Traugott rule can be used as follows :[\[12\]][88]: 397 

![{\displaystyle {\begin{array}{rcccl}(10):&a\rightarrow b\land ({\textit {true}}\rightarrow d)&\implies &a\rightarrow b\land d&{\mbox{from (1) and (2), with }}p=c\\(11):&a\rightarrow ({\textit {true}}\rightarrow e)&\implies &a\rightarrow e&{\mbox{from (10) and (3), with }}p=(b\land d)\\(12):&\lnot {\textit {true}}&\implies &{\textit {false}}&{\mbox{from (11) and (4), with }}p=(a\rightarrow e)\\\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/df08790c319ded3d0fd10812ddd6d6c0f2a317b3)

From a comparison of both deductions, the following issues can be seen:

-   Traugott's rule may yield a sharper resolvent: compare (5) and (10), which both resolve (1) and (2) on ![{\displaystyle p=c}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3259880a830e8f109a36cf821568af702a88a987).
-   Murray's rule introduced 3 new disjunction symbols: in (5), (6), and (7), while Traugott's rule didn't introduce any new symbol; in this sense, Traugott's intermediate formulas resemble the user's style more closely than Murray's.
-   Due to the latter issue, Traugott's rule can take advantage of the implication in assumption (4), using as ![p](https://wikimedia.org/api/rest_v1/media/math/render/svg/81eac1e205430d1f40810df36a0edffdc367af36) the [non-atomic formula][89] ![{\displaystyle a\rightarrow e}](https://wikimedia.org/api/rest_v1/media/math/render/svg/afab70a874e633ed1a05dd075fcbf6f29b3c8898) in step (12). Using Murray's rules, the semantically equivalent formula ![{\displaystyle e\lor \lnot a\lor \lnot a}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d593b725b7250c599f517ca0744705d2cce33583) was obtained as (7), however, it could not be used as ![p](https://wikimedia.org/api/rest_v1/media/math/render/svg/81eac1e205430d1f40810df36a0edffdc367af36) due to its syntactic form.

### Non-clausal resolution in first-order logic\[[edit][90]\]

For first-order predicate logic, Murray's rule is generalized to allow distinct, but unifiable, subformulas ![p_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b9b58f22283ca46dd5da309cc34303b06a797783) and ![p_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/43f1b08d7d69712872e051c2b33fdfa9f5d42319) of ![F](https://wikimedia.org/api/rest_v1/media/math/render/svg/545fd099af8541605f7ee55f08225526be88ce57) and ![G](https://wikimedia.org/api/rest_v1/media/math/render/svg/f5f3c8921a3b352de45446a6789b104458c9f90b), respectively. If ![\phi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/72b1f30316670aee6270a28334bdf4f5072cdde4) is the most general unifier of ![p_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b9b58f22283ca46dd5da309cc34303b06a797783) and ![p_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/43f1b08d7d69712872e051c2b33fdfa9f5d42319), then the generalized resolvent is ![{\displaystyle F\phi [{\textit {true}}]\lor G\phi [{\textit {false}}]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c8063c45c7477094b7e8527678b2282e0dae0b1a). While the rule remains sound if a more special substitution ![\phi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/72b1f30316670aee6270a28334bdf4f5072cdde4) is used, no such rule applications are needed to achieve completeness.\[*[citation needed][91]*\]

Traugott's rule is generalized to allow several pairwise distinct subformulas ![{\displaystyle p_{1},\ldots ,p_{m}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/92e43e4cbe8115165ca3559393f90caee2e86a75) of ![F](https://wikimedia.org/api/rest_v1/media/math/render/svg/545fd099af8541605f7ee55f08225526be88ce57) and ![{\displaystyle p_{m+1},\ldots ,p_{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/234318f01f9c1bf5ff83c5bf8ab8092cd3c2ba74) of ![G](https://wikimedia.org/api/rest_v1/media/math/render/svg/f5f3c8921a3b352de45446a6789b104458c9f90b), as long as ![p_1, \ldots, p_n](https://wikimedia.org/api/rest_v1/media/math/render/svg/4d4021f35aca5bc2f464be2b99b0fae72f2c7870) have a common most general unifier, say ![\phi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/72b1f30316670aee6270a28334bdf4f5072cdde4). The generalized resolvent is obtained after applying ![\phi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/72b1f30316670aee6270a28334bdf4f5072cdde4) to the parent formulas, thus making the propositional version applicable. Traugott's completeness proof relies on the assumption that this fully general rule is used;[\[12\]][92]: 401  it is not clear whether his rule would remain complete if restricted to ![{\displaystyle p_{1}=\cdots =p_{m}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b57fd11bd1e78472552de6fa050cb265320a7454) and ![{\displaystyle p_{m+1}=\cdots =p_{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cff9246b1d87d9a95ff70dfa4f5ab08b4bf6d713).[\[16\]][93]

## Paramodulation\[[edit][94]\]

Paramodulation is a related technique for reasoning on sets of clauses where the [predicate symbol][95] is equality. It generates all "equal" versions of clauses, except reflexive identities. The paramodulation operation takes a positive *from* clause, which must contain an equality literal. It then searches an *into* clause with a subterm that unifies with one side of the equality. The subterm is then replaced by the other side of the equality. The general aim of paramodulation is to reduce the system to atoms, reducing the size of the terms when substituting.[\[17\]][96]

## Implementations\[[edit][97]\]

-   [CARINE][98]
-   [GKC][99]
-   [Otter][100]
-   [Prover9][101]
-   [SNARK][102]
-   [SPASS][103]
-   [Vampire][104]
-   [Logictools][105] online prover

## See also\[[edit][106]\]

-   [Condensed detachment][107] — an earlier version of resolution
-   [Inductive logic programming][108]
-   [Inverse resolution][109]
-   [Logic programming][110]
-   [Method of analytic tableaux][111]
-   [SLD resolution][112]
-   [Resolution inference][113]

## Notes\[[edit][114]\]

1.  __[^][115]__ Martin Davis, Hilary Putnam (1960). "A Computing Procedure for Quantification Theory". *J. ACM*. __7__ (3): 201–215. [doi][116]:[10.1145/321033.321034][117]. Here: p. 210, "III. Rule for Eliminating Atomic Formulas".
2.  __[^][118]__ J.A. Robinson (Jan 1965). "A Machine-Oriented Logic Based on the Resolution Principle". *Journal of the ACM*. __12__ (1): 23–41. [doi][119]:[10.1145/321250.321253][120].
3.  __[^][121]__ D.E. Knuth, *[The Art of Computer Programming][122]* __4A__: *Combinatorial Algorithms*, part 1, p. 539
4.  ^ [Jump up to: *__a__*][123] [*__b__*][124] Leitsch, Alexander (1997), *The resolution calculus*, EATCS Monographs in Theoretical Computer Science, Springer, p. 11, Before applying the inference method itself, we transform the formulas to quantifier-free conjunctive normal form.
5.  __[^][125]__ Enrique P. Arís, Juan L. González y Fernando M. Rubio, Lógica Computacional, Thomson, (2005).
6.  __[^][126]__ Stuart J. Russell; Peter Norvig (2009). *Artificial Intelligence: A Modern Approach* (3rd ed.). Prentice Hall. p. 350 (= p. 286 in the 1st edition of 1995)
7.  __[^][127]__ David A. Duffy (1991). *Principles of Automated Theorem Proving*. New York: Wiley. See p. 77. The example here is slightly modified to demonstrate a not-trivial factoring substitution. For clarity, the factoring step, (5), is shown separately. In step (6), the fresh variable ![w'](https://wikimedia.org/api/rest_v1/media/math/render/svg/98af407af5c02e29010c7563af95f8986026679c) was introduced to enable unifiability of (5) and (6), needed for (7).
8.  __[^][128]__ D. Wilkins (1973). *QUEST — A Non-Clausal Theorem Proving System* (Master's Thesis). Univ. of Essex, England.
9.  ^ [Jump up to: *__a__*][129] [*__b__*][130] Neil V. Murray (Feb 1979). [*A Proof Procedure for Quantifier-Free Non-Clausal First Order Logic*][131] (Technical report). Syracuse Univ. 2-79. (Cited from Manna, Waldinger, 1980 as: "A Proof Procedure for Non-Clausal First-Order Logic", 1978)
10.  ^ [Jump up to: *__a__*][132] [*__b__*][133] [*__c__*][134] [*__d__*][135] [Zohar Manna][136], [Richard Waldinger][137] (Jan 1980). ["A Deductive Approach to Program Synthesis"][138]. *[ACM Transactions on Programming Languages and Systems][139]*. __2__: 90–121. [doi][140]:[10.1145/357084.357090][141]. A preprint appeared in Dec 1978 as [SRI Technical Note 177][142]
11.  __[^][143]__ N. V. Murray (1982). "Completely Non-Clausal Theorem Proving". *[Artificial Intelligence][144]*. __18__: 67–85. [doi][145]:[10.1016/0004-3702(82)90011-x][146].
12.  ^ [Jump up to: *__a__*][147] [*__b__*][148] [*__c__*][149] [*__d__*][150] [*__e__*][151] [*__f__*][152] J. Traugott (1986). "Nested Resolution". *Proc. 8th [Conference on Automated Deduction][153]*. [LNCS][154]. __230__. Springer. pp. 394–403.
13.  ^ [Jump up to: *__a__*][155] [*__b__*][156] Schmerl, U.R. (1988). "Resolution on Formula-Trees". *[Acta Informatica][157]*. __25__: 425–438. [doi][158]:[10.1007/bf02737109][159]. [Summary][160]
14.  __[^][161]__ These notions, called "polarities", refer to the number of explicit or implicit negations found above ![p](https://wikimedia.org/api/rest_v1/media/math/render/svg/81eac1e205430d1f40810df36a0edffdc367af36). For example, ![p](https://wikimedia.org/api/rest_v1/media/math/render/svg/81eac1e205430d1f40810df36a0edffdc367af36) occurs positive in ![{\displaystyle (p\land q)\lor r}](https://wikimedia.org/api/rest_v1/media/math/render/svg/edafea648f8a3b745dd7ea43afb8463c595333da) and in ![{\displaystyle q\rightarrow p}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f0c4b7a404e70f10b9e0734cf1d64777619bf271), negative in ![{\displaystyle \lnot (p\land q)\lor r}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b9f2f142f7c4dd0919ca32a69de152302a89b894) and in ![p\rightarrow q](https://wikimedia.org/api/rest_v1/media/math/render/svg/4e3f9e5de9aaead8d19411bb3ad0dc490a50ec69), and in both polarities in ![{\displaystyle p\leftrightarrow q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/85f8399d94c0a05764a2961ddee15ee8ac2a8ece).
15.  __[^][162]__ "![\implies ](https://wikimedia.org/api/rest_v1/media/math/render/svg/913c2e89ea94dfa446f69b056d4bf505e01fcc5f)" is used to indicate simplification after resolution.
16.  __[^][163]__ Here, "![=](https://wikimedia.org/api/rest_v1/media/math/render/svg/505a4ceef454c69dffd23792c84b90f488543743)" denotes [syntactical term equality modulo renaming][164]
17.  __[^][165]__ Nieuwenhuis, Robert; Rubio, Alberto. "Paramodulation-Based Theorem Proving". [*Handbook of Automated Reasoning*][166] (PDF).

## References\[[edit][167]\]

-   [Robinson][168], J. Alan (1965). "A Machine-Oriented Logic Based on the Resolution Principle". *[Journal of the ACM][169]*. __12__ (1): 23–41. [doi][170]:[10.1145/321250.321253][171].
-   Leitsch, Alexander (1997). *The Resolution Calculus*. [Springer][172].
-   [Gallier, Jean H.][173] (1986). [*Logic for Computer Science: Foundations of Automatic Theorem Proving*][174]. [Harper & Row][175] Publishers.
-   Lee, Chin-Liang Chang, Richard Char-Tung (1987). [*Symbolic logic and mechanical theorem proving*][176] (\[reprint\] ed.). San Diego: Academic Press. [ISBN][177] [0-12-170350-9][178].

## External links\[[edit][179]\]

-   Alex Sakharov. ["Resolution Principle"][180]. *[MathWorld][181]*.
-   Alex Sakharov. ["Resolution"][182]. *[MathWorld][183]*.

[1]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[2]: https://en.wikipedia.org/wiki/Automated_theorem_proving "Automated theorem proving"
[3]: https://en.wikipedia.org/wiki/Rule_of_inference "Rule of inference"
[4]: https://en.wikipedia.org/wiki/Completeness_(logic)#Refutation_completeness "Completeness (logic)"
[5]: https://en.wikipedia.org/wiki/Theorem-proving "Theorem-proving"
[6]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[7]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[8]: https://en.wikipedia.org/wiki/Decision_procedure "Decision procedure"
[9]: https://en.wikipedia.org/wiki/Boolean_satisfiability_problem "Boolean satisfiability problem"
[10]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[11]: https://en.wikipedia.org/wiki/RE_(complexity) "RE (complexity)"
[12]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[13]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_completeness_theorem "Gödel's completeness theorem"
[14]: https://en.wikipedia.org/wiki/Martin_Davis_(mathematician) "Martin Davis (mathematician)"
[15]: https://en.wikipedia.org/wiki/Hilary_Putnam "Hilary Putnam"
[16]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-1
[17]: https://en.wikipedia.org/wiki/Davis-Putnam_algorithm "Davis-Putnam algorithm"
[18]: https://en.wikipedia.org/wiki/Ground_instance "Ground instance"
[19]: https://en.wikipedia.org/wiki/John_Alan_Robinson "John Alan Robinson"
[20]: https://en.wikipedia.org/wiki/Unification_(computer_science) "Unification (computer science)"
[21]: https://en.wikipedia.org/wiki/Refutation_completeness "Refutation completeness"
[22]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-2
[23]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=1 "Edit section: Resolution in propositional logic"
[24]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=2 "Edit section: Resolution rule"
[25]: https://en.wikipedia.org/wiki/Clause_(logic) "Clause (logic)"
[26]: https://en.wikipedia.org/wiki/Literal_(mathematical_logic) "Literal (mathematical logic)"
[27]: https://en.wikipedia.org/wiki/Logical_consequence "Logical consequence"
[28]: https://en.wikipedia.org/wiki/Consensus_theorem "Consensus theorem"
[29]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-3
[30]: https://en.wikipedia.org/wiki/Tautology_(logic) "Tautology (logic)"
[31]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[32]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=3 "Edit section: A resolution technique"
[33]: https://en.wikipedia.org/wiki/Search_algorithm "Search algorithm"
[34]: https://en.wikipedia.org/wiki/Soundness "Soundness"
[35]: https://en.wikipedia.org/wiki/Completeness_(logic) "Completeness (logic)"
[36]: https://en.wikipedia.org/wiki/Validity_(logic) "Validity (logic)"
[37]: https://en.wikipedia.org/wiki/Proof_by_contradiction "Proof by contradiction"
[38]: https://en.wikipedia.org/wiki/Conjunctive_normal_form "Conjunctive normal form"
[39]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-leitsch-4
[40]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-leitsch-4
[41]: https://en.wikipedia.org/wiki/Logical_consequence "Logical consequence"
[42]: https://en.wikipedia.org/wiki/Davis%E2%80%93Putnam_algorithm "Davis–Putnam algorithm"
[43]: https://en.wikipedia.org/wiki/DPLL_algorithm "DPLL algorithm"
[44]: https://en.wikipedia.org/wiki/Data_structure "Data structure"
[45]: https://en.wikipedia.org/wiki/List_(data_structure) "List (data structure)"
[46]: https://en.wikipedia.org/wiki/Tree_(data_structure) "Tree (data structure)"
[47]: https://en.wikipedia.org/wiki/Directed_Acyclic_Graph "Directed Acyclic Graph"
[48]: https://en.wikipedia.org/wiki/Cut_rule "Cut rule"
[49]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=4 "Edit section: A simple example"
[50]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=5 "Edit section: Resolution in first order logic"
[51]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[52]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-5
[53]: https://en.wikipedia.org/wiki/Most_general_unifier "Most general unifier"
[54]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=6 "Edit section: Example"
[55]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=7 "Edit section: Informal explanation"
[56]: https://en.wikipedia.org/wiki/Syllogism "Syllogism"
[57]: https://en.wikipedia.org/wiki/Rule_of_inference "Rule of inference"
[58]: https://en.wikipedia.org/wiki/Term_logic "Term logic"
[59]: https://en.wikipedia.org/wiki/Conjunctive_normal_form "Conjunctive normal form"
[60]: https://en.wikipedia.org/wiki/Quantification_(logic) "Quantification (logic)"
[61]: https://en.wikipedia.org/wiki/Universal_quantification "Universal quantification"
[62]: https://en.wikipedia.org/wiki/Existential_quantification "Existential quantification"
[63]: https://en.wikipedia.org/wiki/Skolem_function "Skolem function"
[64]: https://en.wikipedia.org/wiki/Unification_(computing) "Unification (computing)"
[65]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=8 "Edit section: Factoring"
[66]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-6
[67]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-7
[68]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=9 "Edit section: Non-clausal resolution"
[69]: https://en.wikipedia.org/wiki/Clausal_normal_form "Clausal normal form"
[70]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-8
[71]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-Murray.1979-9
[72]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-Manna.Waldinger.1980-10
[73]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-11
[74]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-Traugott.1986-12
[75]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-Schmerl.1988-13
[76]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-Manna.Waldinger.1980-10
[77]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-Schmerl.1988-13
[78]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=10 "Edit section: Non-clausal resolution in propositional logic"
[79]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-Murray.1979-9
[80]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-Manna.Waldinger.1980-10
[81]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-14
[82]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-Manna.Waldinger.1980-10
[83]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-Traugott.1986-12
[84]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-Traugott.1986-12
[85]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-Traugott.1986-12
[86]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=11 "Edit section: Propositional non-clausal resolution example"
[87]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-15
[88]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-Traugott.1986-12
[89]: https://en.wikipedia.org/wiki/Atomic_formula "Atomic formula"
[90]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=12 "Edit section: Non-clausal resolution in first-order logic"
[91]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[92]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-Traugott.1986-12
[93]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-16
[94]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=13 "Edit section: Paramodulation"
[95]: https://en.wikipedia.org/wiki/Predicate_symbol "Predicate symbol"
[96]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_note-Rubio-17
[97]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=14 "Edit section: Implementations"
[98]: https://en.wikipedia.org/wiki/CARINE "CARINE"
[99]: https://en.wikipedia.org/w/index.php?title=GKC_Theorem_Prover&action=edit&redlink=1 "GKC Theorem Prover (page does not exist)"
[100]: https://en.wikipedia.org/wiki/Otter_(theorem_prover) "Otter (theorem prover)"
[101]: https://en.wikipedia.org/wiki/Prover9 "Prover9"
[102]: https://en.wikipedia.org/wiki/SNARK_(theorem_prover) "SNARK (theorem prover)"
[103]: https://en.wikipedia.org/wiki/SPASS "SPASS"
[104]: https://en.wikipedia.org/wiki/Vampire_(theorem_prover) "Vampire (theorem prover)"
[105]: https://logictools.org/
[106]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=15 "Edit section: See also"
[107]: https://en.wikipedia.org/wiki/Condensed_detachment "Condensed detachment"
[108]: https://en.wikipedia.org/wiki/Inductive_logic_programming "Inductive logic programming"
[109]: https://en.wikipedia.org/wiki/Inverse_resolution "Inverse resolution"
[110]: https://en.wikipedia.org/wiki/Logic_programming "Logic programming"
[111]: https://en.wikipedia.org/wiki/Method_of_analytic_tableaux "Method of analytic tableaux"
[112]: https://en.wikipedia.org/wiki/SLD_resolution "SLD resolution"
[113]: https://en.wikipedia.org/wiki/Resolution_inference "Resolution inference"
[114]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=16 "Edit section: Notes"
[115]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-1 "Jump up"
[116]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[117]: https://doi.org/10.1145%2F321033.321034
[118]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-2 "Jump up"
[119]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[120]: https://doi.org/10.1145%2F321250.321253
[121]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-3 "Jump up"
[122]: https://en.wikipedia.org/wiki/The_Art_of_Computer_Programming "The Art of Computer Programming"
[123]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-leitsch_4-0
[124]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-leitsch_4-1
[125]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-5 "Jump up"
[126]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-6 "Jump up"
[127]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-7 "Jump up"
[128]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-8 "Jump up"
[129]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-Murray.1979_9-0
[130]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-Murray.1979_9-1
[131]: http://surface.syr.edu/cgi/viewcontent.cgi?article=1005&context=eecs_techreports
[132]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-Manna.Waldinger.1980_10-0
[133]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-Manna.Waldinger.1980_10-1
[134]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-Manna.Waldinger.1980_10-2
[135]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-Manna.Waldinger.1980_10-3
[136]: https://en.wikipedia.org/wiki/Zohar_Manna "Zohar Manna"
[137]: https://en.wikipedia.org/wiki/Richard_Waldinger "Richard Waldinger"
[138]: http://www.dtic.mil/get-tr-doc/pdf?AD=ADA065558
[139]: https://en.wikipedia.org/wiki/ACM_Transactions_on_Programming_Languages_and_Systems "ACM Transactions on Programming Languages and Systems"
[140]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[141]: https://doi.org/10.1145%2F357084.357090
[142]: http://www.sri.com/sites/default/files/uploads/publications/pdf/725.pdf
[143]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-11 "Jump up"
[144]: https://en.wikipedia.org/wiki/Artificial_Intelligence_(journal) "Artificial Intelligence (journal)"
[145]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[146]: https://doi.org/10.1016%2F0004-3702%2882%2990011-x
[147]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-Traugott.1986_12-0
[148]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-Traugott.1986_12-1
[149]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-Traugott.1986_12-2
[150]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-Traugott.1986_12-3
[151]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-Traugott.1986_12-4
[152]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-Traugott.1986_12-5
[153]: https://en.wikipedia.org/wiki/Conference_on_Automated_Deduction "Conference on Automated Deduction"
[154]: https://en.wikipedia.org/wiki/LNCS "LNCS"
[155]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-Schmerl.1988_13-0
[156]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-Schmerl.1988_13-1
[157]: https://en.wikipedia.org/wiki/Acta_Informatica "Acta Informatica"
[158]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[159]: https://doi.org/10.1007%2Fbf02737109
[160]: http://www.zentralblatt-math.org/ioport/en/?id=2297405&type=pdf
[161]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-14 "Jump up"
[162]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-15 "Jump up"
[163]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-16 "Jump up"
[164]: https://en.wikipedia.org/wiki/Term_(logic)#Structural_equality "Term (logic)"
[165]: https://en.wikipedia.org/wiki/Resolution_(logic)#cite_ref-Rubio_17-0 "Jump up"
[166]: http://www.cmi.ac.in/~madhavan/courses/theorem-proving-2014/reading/Nieuwenhuis-Rubio.pdf
[167]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=17 "Edit section: References"
[168]: https://en.wikipedia.org/wiki/John_Alan_Robinson "John Alan Robinson"
[169]: https://en.wikipedia.org/wiki/Journal_of_the_ACM "Journal of the ACM"
[170]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[171]: https://doi.org/10.1145%2F321250.321253
[172]: https://en.wikipedia.org/wiki/Springer_Science%2BBusiness_Media "Springer Science+Business Media"
[173]: https://en.wikipedia.org/wiki/Jean_Gallier "Jean Gallier"
[174]: http://www.cis.upenn.edu/~jean/gbooks/logic.html
[175]: https://en.wikipedia.org/wiki/Harper_%26_Row "Harper & Row"
[176]: https://archive.org/details/symboliclogicmec00chan
[177]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[178]: https://en.wikipedia.org/wiki/Special:BookSources/0-12-170350-9 "Special:BookSources/0-12-170350-9"
[179]: https://en.wikipedia.org/w/index.php?title=Resolution_(logic)&action=edit&section=18 "Edit section: External links"
[180]: https://mathworld.wolfram.com/ResolutionPrinciple.html
[181]: https://en.wikipedia.org/wiki/MathWorld "MathWorld"
[182]: https://mathworld.wolfram.com/Resolution.html
[183]: https://en.wikipedia.org/wiki/MathWorld "MathWorld"
