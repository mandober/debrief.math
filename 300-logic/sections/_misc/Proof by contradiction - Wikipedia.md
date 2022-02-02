---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Proof_by_contradiction
page-title:       Proof by contradiction - Wikipedia
article-title:    Proof by contradiction - Wikipedia
---
# Proof by contradiction - Wikipedia

In logic and mathematics, proof by contradiction is a form of proof that establishes the truth or the validity of a proposition, by showing that assuming the proposition to be false leads to a contradiction. Proof by contradiction is also known as indirect proof, proof by assuming the opposite, and reductio ad impossibile.[1]
In [logic][1] and [mathematics][2], __proof by contradiction__ is a form of [proof][3] that establishes the [truth][4] or the [validity][5] of a [proposition][6], by showing that assuming the proposition to be false leads to a [contradiction][7]. Proof by contradiction is also known as __indirect proof__, __proof by assuming the opposite__, and *__reductio ad impossibile__*.[\[1\]][8]

## Principle\[[edit][9]\]

![](https://upload.wikimedia.org/wikipedia/en/thumb/b/b4/Ambox_important.svg/40px-Ambox_important.svg.png)

This article __needs attention from an expert in Logic or Mathematics__. The specific problem is: __fix presentation about intuitionistic logic.__ [WikiProject Logic][10] or [WikiProject Mathematics][11] may be able to help recruit an expert. *(October 2021)*

Proof by contradiction is based on the [law of noncontradiction][12] as first formalized as a metaphysical principle by [Aristotle][13]. Noncontradiction is also a theorem in [propositional logic][14]. This states that an assertion or mathematical statement cannot be both true and false. That is, a proposition *Q* and its negation ![\lnot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/099107443792f5fec9bebe39b919a690db7198c1)*Q* ("not-*Q*") cannot both be true. In a proof by contradiction, it is shown that the denial of the statement being proved results in such a contradiction. It has the form of a *[reductio ad absurdum][15]* argument, and usually proceeds as follows:

1.  The proposition to be proved, *P*, is assumed to be false. That is, ![\lnot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/099107443792f5fec9bebe39b919a690db7198c1)*P* is true.
2.  It is then shown that ![\lnot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/099107443792f5fec9bebe39b919a690db7198c1)*P* implies two mutually contradictory assertions, *Q* and ![\lnot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/099107443792f5fec9bebe39b919a690db7198c1)*Q*.
3.  Since *Q* and ![\lnot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/099107443792f5fec9bebe39b919a690db7198c1)*Q* cannot both be true, the assumption that *P* is false must be wrong, so *P* must be true.

The 3rd step is based on the following possible truth value cases of a valid argument p → q.

-   p(T) → q(T), where x in p(x) is the truth value of a statement p; T for True and F for False.
-   p(F) → q(T).
-   p(F) → q(F).

It tells that if a false statement is reached via a valid logic from an assumed statement, then the assumed statement is a false statement. This fact is used in proof by contradiction.

Proof by contradiction is formulated as ![{\displaystyle {\text{p}}\equiv {\text{p}}\vee \bot \equiv \lnot \left(\lnot {\text{p}}\right)\vee \bot \equiv \lnot {\text{p}}\to \bot }](https://wikimedia.org/api/rest_v1/media/math/render/svg/c71f8b7a4017076c3daf48cd6b385d1df4478421), where ![\bot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/f282c7bc331cc3bfcf1c57f1452cc23c022f58de) is a logical contradiction or a *false* statement (a statement which truth value is *false*). If ![\bot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/f282c7bc331cc3bfcf1c57f1452cc23c022f58de) is reached from ![\lnot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/099107443792f5fec9bebe39b919a690db7198c1)*P* via a valid logic, then ![{\displaystyle \lnot {\text{p}}\to \bot }](https://wikimedia.org/api/rest_v1/media/math/render/svg/5a0cbdbbb077727ff9a097e7aeda6f4da731f5ab) is proved as true so p is proved as true.

An alternate form of proof by contradiction derives a contradiction with the statement to be proved by showing that ![\lnot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/099107443792f5fec9bebe39b919a690db7198c1)*P* implies *P*. This is a contradiction so the assumption ![\lnot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/099107443792f5fec9bebe39b919a690db7198c1)*P* must be false, equivalently *P* as true. This is formulated as ![{\displaystyle {\text{p}}\equiv {\text{p}}\vee {\text{p}}\equiv \lnot \left(\lnot {\text{p}}\right)\vee {\text{p}}\equiv \lnot {\text{p}}\to {\text{p}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fff788d95883f78aede9a617f58bf3382f71ad6f).

An [existence proof][16] by contradiction assumes that some object doesn't exist, and then proves that this would lead to a contradiction; thus, such an object must exist. Although it is quite freely used in mathematical proofs, not every [school of mathematical thought][17] accepts this kind of [nonconstructive proof][18] as universally valid.

### Law of the excluded middle\[[edit][19]\]

Proof by contradiction also depends on the [law of the excluded middle][20], also first formulated by Aristotle. This states that either an assertion or its negation must be true

![{\displaystyle \forall P\vdash (P\lor \lnot P)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c108cf3fe3226f5b5dec4c37f5748e2fd2427f75)

(For all propositions *P*, either *P* or not-*P* is true)

That is, there is no other truth value besides "true" and "false" that a proposition can take. Combined with the principle of noncontradiction, this means that exactly one of ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) and ![\lnot P](https://wikimedia.org/api/rest_v1/media/math/render/svg/38a32afb77c17696c41588f6deaf9bcd7109b10c) is true. In proof by contradiction, this permits the conclusion that since the possibility of ![\lnot P](https://wikimedia.org/api/rest_v1/media/math/render/svg/38a32afb77c17696c41588f6deaf9bcd7109b10c) has been excluded, ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) must be true.

[Intuitionist][21] mathematicians do not accept the law of the excluded middle, and thus reject proof by contradiction as a viable proof technique.

If the proposition to be proved has itself the form of a negation ![\lnot P](https://wikimedia.org/api/rest_v1/media/math/render/svg/38a32afb77c17696c41588f6deaf9bcd7109b10c), a proof by contradiction can start by assuming that ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) is true and derive a contradiction from that assumption. It then follows that the assumption was wrong, so ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) is false. In such cases, the proof does not need to appeal to the law of the excluded middle.[\[2\]][22] An example is the [proof of irrationality of the square root of 2][23] given below.

## Relationship with other proof techniques\[[edit][24]\]

Proof by contradiction is closely related to [proof by contrapositive][25], and the two are sometimes confused, though they are distinct methods. The main distinction is that a proof by contrapositive applies only to statements ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) that can be written in the form ![A\rightarrow B](https://wikimedia.org/api/rest_v1/media/math/render/svg/23efef033def56a67de7ded823f14626de26d174) (i.e., implications), whereas the technique of proof by contradiction applies to statements ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) of any form:

-   __Proof by contradiction (general)__: assume ![{\displaystyle \lnot P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/38a32afb77c17696c41588f6deaf9bcd7109b10c) and derive a contradiction.

This corresponds, in the framework of [propositional logic][26], to the equivalence ![{\displaystyle {\text{p}}\equiv {\text{p}}\vee \bot \equiv \lnot \left(\lnot {\text{p}}\right)\vee \bot \equiv \lnot {\text{p}}\to \bot }](https://wikimedia.org/api/rest_v1/media/math/render/svg/c71f8b7a4017076c3daf48cd6b385d1df4478421), where ![\bot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/f282c7bc331cc3bfcf1c57f1452cc23c022f58de) is a logical contradiction or a *false* statement (a statement which truth value is *false*).

In the case where the statement to be proven *is* an implication ![{\displaystyle A\rightarrow B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/23efef033def56a67de7ded823f14626de26d174), then the differences between direct proof, proof by contrapositive, and proof by contradiction can be outlined as follows:

This corresponds to the equivalence ![{\displaystyle A\rightarrow B\equiv \lnot B\rightarrow \lnot A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4e3fd6f957b4a799033fa4372348740def9af0df).

This corresponds to the equivalences ![{\displaystyle {\text{p}}\to {\text{q}}\equiv \lnot {\text{p}}\vee {\text{q}}\equiv \lnot \left({\text{p}}\wedge \lnot {\text{q}}\right)\equiv \lnot \left({\text{p}}\wedge \lnot {\text{q}}\right)\vee \bot \equiv \left({\text{p}}\wedge \lnot {\text{q}}\right)\to \bot }](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b5bc483825925b536c23bc578ebb2b4d57272b0).

## Examples\[[edit][27]\]

### Irrationality of the square root of 2\[[edit][28]\]

A classic proof by contradiction from mathematics is the [proof that the square root of 2 is irrational][29].[\[3\]][30] If it were [rational][31], it would be expressible as a fraction *a*/*b* in [lowest terms][32], where *a* and *b* are [integers][33], at least one of which is [odd][34]. But if *a*/*b* = √2, then *a*2 = 2*b*2. Therefore, *a*2 must be even, and because the square of an odd number is odd, that in turn implies that *a* is itself even — which means that *b* must be odd because a/b is in lowest terms.

On the other hand, if *a* is even, then *a*2 is a multiple of 4. If *a*2 is a multiple of 4 and *a*2 = 2*b*2, then 2*b*2 is a multiple of 4, and therefore *b*2 must be even, which means that *b* must be even as well.

So *b* is both odd and even, a contradiction. Therefore, the initial assumption—that √2 can be expressed as a fraction—must be false.[\[4\]][35]

### The length of the hypotenuse\[[edit][36]\]

The method of proof by contradiction has also been used to show that for any [non-degenerate][37] [right triangle][38], the length of the hypotenuse is less than the sum of the lengths of the two remaining sides.[\[5\]][39] By letting *c* be the length of the hypotenuse and *a* and *b* be the lengths of the legs, one can also express the claim more succinctly as *a* + *b* > *c*. In which case, a proof by contradiction can then be made by appealing to the [Pythagorean theorem][40].

First, the claim is negated to assume that *a* + *b* ≤ *c*. In which case, squaring both sides would yield that (*a* + *b*)2 ≤ *c*2, or equivalently, *a*2 + 2*ab* + *b*2 ≤ *c*2. A triangle is non-degenerate if each of its edges has positive length, so it may be assumed that both *a* and *b* are greater than 0. Therefore, *a*2 + *b*2 < *a*2 + 2*ab* + *b*2 ≤ *c*2, and the [transitive relation][41] may be reduced further to *a*2 + *b*2 < *c*2.

On the other hand, it is also known from the Pythagorean theorem that *a*2 + *b*2 = *c*2. This would result in a contradiction since strict inequality and equality are [mutually exclusive][42]. The contradiction means that it is impossible for both to be true and it is known that the Pythagorean theorem holds. It follows from there that the assumption *a* + *b* ≤ *c* must be false and hence *a* + *b* > *c*, proving the claim.

### No least positive rational number\[[edit][43]\]

Consider the proposition, *P*: "there is no smallest rational number greater than 0". In a proof by contradiction, we start by assuming the opposite, ¬*P*: that there *is* a smallest rational number, say, *r*.

Now, *r*/2 is a rational number greater than 0 and smaller than *r*. But that contradicts the assumption that *r* was the *smallest* rational number (if "*r* is the smallest rational number" were *Q, then* one can infer from "*r*/2 is a rational number smaller than *r*" that ¬*Q*.) This contradictions shows that the original proposition, *P*, must be true. That is, that "there is no smallest rational number greater than 0".

### Other\[[edit][44]\]

For other examples, see [proof that the square root of 2 is not rational][45] (where indirect proofs different from the one [above][46] can be found) and [Cantor's diagonal argument][47].

## Notation\[[edit][48]\]

Proofs by contradiction sometimes end with the word "Contradiction!". [Isaac Barrow][49] and Baermann used the notation Q.E.A., for "*quod est absurdum*" ("which is absurd"), along the lines of [Q.E.D.][50], but this notation is rarely used today.[\[6\]][51] A graphical symbol sometimes used for contradictions is a downwards zigzag arrow "lightning" symbol (U+21AF: ↯), for example in Davey and Priestley.[\[7\]][52] Others sometimes used include a pair of [opposing arrows][53] (as ![\rightarrow\!\leftarrow](https://wikimedia.org/api/rest_v1/media/math/render/svg/07425b2c4997eb8bbba0b8da89f6135ee80f9022)\[*[citation needed][54]*\] or ![\Rightarrow\!\Leftarrow](https://wikimedia.org/api/rest_v1/media/math/render/svg/8bb28e46c3f9816815693758042ce20348767cbc)),\[*[citation needed][55]*\] struck-out arrows (![\nleftrightarrow](https://wikimedia.org/api/rest_v1/media/math/render/svg/dce85ed756bc5a6cdf0f62892f57a6a1f96803ac)),\[*[citation needed][56]*\] a stylized form of hash (such as U+2A33: ⨳),\[*[citation needed][57]*\] or the "reference mark" (U+203B: ※),\[*[citation needed][58]*\] or ![{\displaystyle \times \!\!\!\!\times }](https://wikimedia.org/api/rest_v1/media/math/render/svg/a349ce973c6db94fcd8c024da1ddbd08c40bbbb0).[\[8\]][59][\[9\]][60]

## Principle of explosion\[[edit][61]\]

A curious logical consequence of the principle of non-contradiction is that a contradiction implies any statement; if a contradiction is accepted as true, any proposition (including its negation) can be proved from it.[\[10\]][62] This is known as the [principle of explosion][63] (Latin: *ex falso quodlibet*, "from a falsehood, anything \[follows\]", or **ex contradictione sequitur quodlibet**, "from a contradiction, anything follows"), or the principle of pseudo-scotus.

![{\displaystyle \forall Q:(P\land \lnot P)\rightarrow Q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/be9f6cd77d6d8abac8f4c7666562f9d0ba060091)

(for all Q, P and not-P implies Q)

Thus a contradiction in a [formal axiomatic system][64] is disastrous; since any theorem can be proven true, it destroys the conventional meaning of truth and falsity.

The discovery of contradictions at the foundations of mathematics at the beginning of the 20th century, such as [Russell's paradox][65], threatened the entire structure of mathematics due to the principle of explosion. This motivated a great deal of work during the 20th century to create consistent axiomatic systems to provide a logical underpinning for mathematics. This has also led a few philosophers such as [Newton da Costa][66], [Walter Carnielli][67] and [Graham Priest][68] to reject the principle of non-contradiction, giving rise to theories such as [paraconsistent logic][69] and [dialethism][70], which accepts that there exist statements that are both true and false.[\[11\]][71]

## Reception\[[edit][72]\]

[G. H. Hardy][73] described proof by contradiction as "one of a mathematician's finest weapons", saying "It is a far finer gambit than any [chess gambit][74]: a chess player may offer the sacrifice of a pawn or even a piece, but a mathematician offers the game."[\[12\]][75]

## See also\[[edit][76]\]

-   [Law of excluded middle][77]
-   [Law of noncontradiction][78]
-   [Proof by exhaustion][79]
-   [Proof by infinite descent][80], a form of proof by contradiction

## References\[[edit][81]\]

1.  __[^][82]__ ["Reductio ad absurdum | logic"][83]. *Encyclopedia Britannica*. Retrieved 2019-10-25.
2.  __[^][84]__ Bauer, Andrej (29 March 2010). ["Proof of negation and proof by contradiction"][85]. *Mathematics and Computation*. Retrieved 26 October 2021.
3.  __[^][86]__ Alfeld, Peter (16 August 1996). ["Why is the square root of 2 irrational?"][87]. *Understanding Mathematics, a study guide*. Department of Mathematics, University of Utah. Retrieved 6 February 2013.
4.  __[^][88]__ ["Proof by contradiction"][89]. *Art of Problem Solving*. Retrieved 2019-10-25.
5.  __[^][90]__ Stone, Peter. ["Logic, Sets, and Functions: Honors"][91] (PDF). *Course materials*. pp 14–23: Department of Computer Sciences, The University of Texas at Austin. Retrieved 6 February 2013.CS1 maint: location ([link][92])
6.  __[^][93]__ ["Math Forum Discussions"][94].
7.  __[^][95]__ B. Davey and H.A. Priestley, *[Introduction to Lattices and Order][96]*, Cambridge University Press, 2002; see "Notation Index", p. 286.
8.  __[^][97]__ Gary Hardegree, *Introduction to Modal Logic*, Chapter 2, pg. II–2. [https://web.archive.org/web/20110607061046/http://people.umass.edu/gmhwww/511/pdf/c02.pdf][98]
9.  __[^][99]__ The Comprehensive LaTeX Symbol List, pg. 20. [http://www.ctan.org/tex-archive/info/symbols/comprehensive/symbols-a4.pdf][100]
10.  __[^][101]__ Ferguson, Thomas Macaulay; Priest, Graham (2016). [*A Dictionary of Logic*][102]. Oxford University Press. p. 146. [ISBN][103] [978-0192511553][104].
11.  __[^][105]__ Carnielli, Walter; Marcos, João (2001). "A Taxonomy of C-systems". [arXiv][106]:[math/0108036][107].
12.  __[^][108]__ [G. H. Hardy][109], *[A Mathematician's Apology][110]; Cambridge University Press, 1992. [ISBN][111] [9780521427067][112].* [PDF p.19][113].

## Further reading and external links\[[edit][114]\]

-   [Franklin, James][115]; Daoud, Albert (2011). [*Proof in Mathematics: An Introduction*][116]. chapter 6: Kew. [ISBN][117] [978-0-646-54509-7][118].CS1 maint: location ([link][119])
-   [Proof by Contradiction][120] from Larry W. Cusick's [How To Write Proofs][121]
-   [Reductio ad Absurdum][122] Internet Encyclopedia of Philosophy; ISSN 2161-0002

[1]: https://en.wikipedia.org/wiki/Logic "Logic"
[2]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[3]: https://en.wikipedia.org/wiki/Mathematical_proof "Mathematical proof"
[4]: https://en.wikipedia.org/wiki/Truth#Formal_theories "Truth"
[5]: https://en.wikipedia.org/wiki/Validity_(logic) "Validity (logic)"
[6]: https://en.wikipedia.org/wiki/Proposition "Proposition"
[7]: https://en.wikipedia.org/wiki/Contradiction "Contradiction"
[8]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_note-1
[9]: https://en.wikipedia.org/w/index.php?title=Proof_by_contradiction&action=edit&section=1 "Edit section: Principle"
[10]: https://en.wikipedia.org/wiki/Wikipedia:WikiProject_Logic "Wikipedia:WikiProject Logic"
[11]: https://en.wikipedia.org/wiki/Wikipedia:WikiProject_Mathematics "Wikipedia:WikiProject Mathematics"
[12]: https://en.wikipedia.org/wiki/Law_of_noncontradiction "Law of noncontradiction"
[13]: https://en.wikipedia.org/wiki/Aristotle "Aristotle"
[14]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[15]: https://en.wikipedia.org/wiki/Reductio_ad_absurdum "Reductio ad absurdum"
[16]: https://en.wikipedia.org/wiki/Existence_proof "Existence proof"
[17]: https://en.wikipedia.org/wiki/Philosophy_of_mathematics "Philosophy of mathematics"
[18]: https://en.wikipedia.org/wiki/Nonconstructive_proof "Nonconstructive proof"
[19]: https://en.wikipedia.org/w/index.php?title=Proof_by_contradiction&action=edit&section=2 "Edit section: Law of the excluded middle"
[20]: https://en.wikipedia.org/wiki/Law_of_the_excluded_middle "Law of the excluded middle"
[21]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[22]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_note-2
[23]: https://en.wikipedia.org/wiki/Proof_by_contradiction#Irrationality_of_the_square_root_of_2 "Proof by contradiction"
[24]: https://en.wikipedia.org/w/index.php?title=Proof_by_contradiction&action=edit&section=3 "Edit section: Relationship with other proof techniques"
[25]: https://en.wikipedia.org/wiki/Proof_by_contrapositive "Proof by contrapositive"
[26]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[27]: https://en.wikipedia.org/w/index.php?title=Proof_by_contradiction&action=edit&section=4 "Edit section: Examples"
[28]: https://en.wikipedia.org/w/index.php?title=Proof_by_contradiction&action=edit&section=5 "Edit section: Irrationality of the square root of 2"
[29]: https://en.wikipedia.org/wiki/Square_root_of_2#Proof_by_infinite_descent "Square root of 2"
[30]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_note-3
[31]: https://en.wikipedia.org/wiki/Rational_number "Rational number"
[32]: https://en.wikipedia.org/wiki/Lowest_terms "Lowest terms"
[33]: https://en.wikipedia.org/wiki/Integers "Integers"
[34]: https://en.wikipedia.org/wiki/Odd_number "Odd number"
[35]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_note-4
[36]: https://en.wikipedia.org/w/index.php?title=Proof_by_contradiction&action=edit&section=6 "Edit section: The length of the hypotenuse"
[37]: https://en.wikipedia.org/wiki/Degeneracy_(mathematics) "Degeneracy (mathematics)"
[38]: https://en.wikipedia.org/wiki/Right_triangle "Right triangle"
[39]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_note-5
[40]: https://en.wikipedia.org/wiki/Pythagorean_theorem "Pythagorean theorem"
[41]: https://en.wikipedia.org/wiki/Transitive_relation "Transitive relation"
[42]: https://en.wikipedia.org/wiki/Mutually_exclusive_events "Mutually exclusive events"
[43]: https://en.wikipedia.org/w/index.php?title=Proof_by_contradiction&action=edit&section=7 "Edit section: No least positive rational number"
[44]: https://en.wikipedia.org/w/index.php?title=Proof_by_contradiction&action=edit&section=8 "Edit section: Other"
[45]: https://en.wikipedia.org/wiki/Square_root_of_2#Proofs_of_irrationality "Square root of 2"
[46]: https://en.wikipedia.org/wiki/Proof_by_contradiction#Irrationality_of_the_square_root_of_2
[47]: https://en.wikipedia.org/wiki/Cantor%27s_diagonal_argument "Cantor's diagonal argument"
[48]: https://en.wikipedia.org/w/index.php?title=Proof_by_contradiction&action=edit&section=9 "Edit section: Notation"
[49]: https://en.wikipedia.org/wiki/Isaac_Barrow "Isaac Barrow"
[50]: https://en.wikipedia.org/wiki/Q.E.D. "Q.E.D."
[51]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_note-6
[52]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_note-7
[53]: https://en.wikipedia.org/wiki/Hand_of_Eris "Hand of Eris"
[54]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[55]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[56]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[57]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[58]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[59]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_note-8
[60]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_note-9
[61]: https://en.wikipedia.org/w/index.php?title=Proof_by_contradiction&action=edit&section=10 "Edit section: Principle of explosion"
[62]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_note-Ferguson1-10
[63]: https://en.wikipedia.org/wiki/Principle_of_explosion "Principle of explosion"
[64]: https://en.wikipedia.org/wiki/Axiomatic_system "Axiomatic system"
[65]: https://en.wikipedia.org/wiki/Russell%27s_paradox "Russell's paradox"
[66]: https://en.wikipedia.org/wiki/Newton_da_Costa "Newton da Costa"
[67]: https://en.wikipedia.org/wiki/Walter_Carnielli "Walter Carnielli"
[68]: https://en.wikipedia.org/wiki/Graham_Priest "Graham Priest"
[69]: https://en.wikipedia.org/wiki/Paraconsistent_logic "Paraconsistent logic"
[70]: https://en.wikipedia.org/wiki/Dialethism "Dialethism"
[71]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_note-11
[72]: https://en.wikipedia.org/w/index.php?title=Proof_by_contradiction&action=edit&section=11 "Edit section: Reception"
[73]: https://en.wikipedia.org/wiki/G._H._Hardy "G. H. Hardy"
[74]: https://en.wikipedia.org/wiki/Gambit "Gambit"
[75]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_note-Hardy-12
[76]: https://en.wikipedia.org/w/index.php?title=Proof_by_contradiction&action=edit&section=12 "Edit section: See also"
[77]: https://en.wikipedia.org/wiki/Law_of_excluded_middle "Law of excluded middle"
[78]: https://en.wikipedia.org/wiki/Law_of_noncontradiction "Law of noncontradiction"
[79]: https://en.wikipedia.org/wiki/Proof_by_exhaustion "Proof by exhaustion"
[80]: https://en.wikipedia.org/wiki/Proof_by_infinite_descent "Proof by infinite descent"
[81]: https://en.wikipedia.org/w/index.php?title=Proof_by_contradiction&action=edit&section=13 "Edit section: References"
[82]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_ref-1 "Jump up"
[83]: https://www.britannica.com/topic/reductio-ad-absurdum
[84]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_ref-2 "Jump up"
[85]: http://math.andrej.com/2010/03/29/proof-of-negation-and-proof-by-contradiction/
[86]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_ref-3 "Jump up"
[87]: http://www.math.utah.edu/~pa/math/q1.html
[88]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_ref-4 "Jump up"
[89]: https://artofproblemsolving.com/wiki/index.php/Proof_by_contradiction
[90]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_ref-5 "Jump up"
[91]: http://www.cs.utexas.edu/~pstone/Courses/313Hfall12/resources/week2a-pp4.pdf
[92]: https://en.wikipedia.org/wiki/Category:CS1_maint:_location "Category:CS1 maint: location"
[93]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_ref-6 "Jump up"
[94]: http://mathforum.org/kb/message.jspa?messageID=1175481
[95]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_ref-7 "Jump up"
[96]: https://en.wikipedia.org/wiki/Introduction_to_Lattices_and_Order "Introduction to Lattices and Order"
[97]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_ref-8 "Jump up"
[98]: https://web.archive.org/web/20110607061046/http://people.umass.edu/gmhwww/511/pdf/c02.pdf
[99]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_ref-9 "Jump up"
[100]: http://www.ctan.org/tex-archive/info/symbols/comprehensive/symbols-a4.pdf
[101]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_ref-Ferguson1_10-0 "Jump up"
[102]: https://books.google.com/books?id=2Q5nDAAAQBAJ&pg=PT146&dq=%22principle+of+non-contradiction%22
[103]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[104]: https://en.wikipedia.org/wiki/Special:BookSources/978-0192511553 "Special:BookSources/978-0192511553"
[105]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_ref-11 "Jump up"
[106]: https://en.wikipedia.org/wiki/ArXiv_(identifier) "ArXiv (identifier)"
[107]: https://arxiv.org/abs/math/0108036
[108]: https://en.wikipedia.org/wiki/Proof_by_contradiction#cite_ref-Hardy_12-0 "Jump up"
[109]: https://en.wikipedia.org/wiki/G._H._Hardy "G. H. Hardy"
[110]: https://en.wikipedia.org/wiki/A_Mathematician%27s_Apology "A Mathematician's Apology"
[111]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[112]: https://en.wikipedia.org/wiki/Special:BookSources/9780521427067 "Special:BookSources/9780521427067"
[113]: https://www.math.ualberta.ca/mss/misc/A%20Mathematician's%20Apology.pdf
[114]: https://en.wikipedia.org/w/index.php?title=Proof_by_contradiction&action=edit&section=14 "Edit section: Further reading and external links"
[115]: https://en.wikipedia.org/wiki/James_Franklin_(philosopher) "James Franklin (philosopher)"
[116]: http://www.maths.unsw.edu.au/~jim/proofs.html
[117]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[118]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-646-54509-7 "Special:BookSources/978-0-646-54509-7"
[119]: https://en.wikipedia.org/wiki/Category:CS1_maint:_location "Category:CS1 maint: location"
[120]: http://zimmer.csufresno.edu/~larryc/proofs/proofs.contradict.html
[121]: http://zimmer.csufresno.edu/~larryc/proofs/proofs.html
[122]: http://www.iep.utm.edu/reductio/
