---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Modus_ponens
page-title:       Modus ponens - Wikipedia
article-title:    Modus ponens - Wikipedia
---
# Modus ponens - Wikipedia

"Forward reasoning" redirects here. For other uses, see Forward chaining.
"Forward reasoning" redirects here. For other uses, see [Forward chaining][1].

In [propositional logic][2], *__modus ponens__* (; __MP__), also known as *__modus ponendo [ponens][3]__* ([Latin][4] for "method of putting by placing")[\[1\]][5] or __implication elimination__ or __affirming the antecedent__,[\[2\]][6] is a [deductive][7] [argument form][8] and [rule of inference][9].[\[3\]][10] It can be summarized as "*P [implies][11] Q.* *P* is true. Therefore *Q* must also be true."

*Modus ponens* is closely related to another [valid][12] form of argument, *[modus tollens][13]*. Both have apparently similar but invalid forms such as [affirming the consequent][14], [denying the antecedent][15], and [evidence of absence][16]. [Constructive dilemma][17] is the [disjunctive][18] version of *modus ponens*. [Hypothetical syllogism][19] is closely related to *modus ponens* and sometimes thought of as "double *modus ponens*."

The history of *modus ponens* goes back to [antiquity][20].[\[4\]][21] The first to explicitly describe the argument form *modus ponens* was [Theophrastus][22].[\[5\]][23] It, along with *[modus tollens][24]*, is one of the standard patterns of inference that can be applied to derive chains of conclusions that lead to the desired goal.

## Explanation\[[edit][25]\]

The form of a *modus ponens* argument resembles a [syllogism][26], with two premises and a conclusion:

If *P*, then *Q*.

*P*.

Therefore, *Q*.

The first premise is a [conditional][27] ("if–then") claim, namely that *P* implies *Q*. The second premise is an assertion that *P*, the [antecedent][28] of the conditional claim, is the case. From these two premises it can be logically concluded that *Q*, the [consequent][29] of the conditional claim, must be the case as well.

An example of an argument that fits the form *modus ponens*:

If today is Tuesday, then John will go to work.

Today is Tuesday.

Therefore, John will go to work.

This argument is [valid][30], but this has no bearing on whether any of the statements in the argument are actually [true][31]; for *modus ponens* to be a [sound][32] argument, the premises must be true for any true instances of the conclusion. An [argument][33] can be valid but nonetheless unsound if one or more premises are false; if an argument is valid *and* all the premises are true, then the argument is sound. For example, John might be going to work on Wednesday. In this case, the reasoning for John's going to work (because it is Wednesday) is unsound. The argument is only sound on Tuesdays (when John goes to work), but valid on every day of the week. A [propositional][34] argument using *modus ponens* is said to be [deductive][35].

In single-conclusion [sequent calculi][36], *modus ponens* is the Cut rule. The [cut-elimination theorem][37] for a calculus says that every proof involving Cut can be transformed (generally, by a constructive method) into a proof without Cut, and hence that Cut is [admissible][38].

The [Curry–Howard correspondence][39] between proofs and programs relates *modus ponens* to [function application][40]: if *f* is a function of type *P* → *Q* and *x* is of type *P*, then *f x* is of type *Q*.

In [artificial intelligence][41], *modus ponens* is often called [forward chaining][42].

## Formal notation\[[edit][43]\]

The *modus ponens* rule may be written in [sequent][44] notation as

![P \to Q,\; P\;\; \vdash\;\; Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/9cfe9d41c26581c2a6fb6d4dd49275f53d5df619)

where *P*, *Q* and *P* → *Q* are statements (or propositions) in a formal language and [⊢][45] is a [metalogical][46] symbol meaning that *Q* is a [syntactic consequence][47] of *P* and *P* → *Q* in some [logical system][48].

## Justification via truth table\[[edit][49]\]

The validity of *modus ponens* in classical two-valued logic can be clearly demonstrated by use of a [truth table][50].

In instances of *modus ponens* we assume as premises that *p* → *q* is true and *p* is true. Only one line of the truth table—the first—satisfies these two conditions (*p* and *p* → *q*). On this line, *q* is also true. Therefore, whenever *p* → *q* is true and *p* is true, *q* must also be true.

## Status\[[edit][51]\]

While *modus ponens* is one of the most commonly used [argument forms][52] in logic it must not be mistaken for a logical law; rather, it is one of the accepted mechanisms for the construction of deductive proofs that includes the "rule of definition" and the "rule of substitution".[\[6\]][53] *Modus ponens* allows one to eliminate a [conditional statement][54] from a [logical proof or argument][55] (the antecedents) and thereby not carry these antecedents forward in an ever-lengthening string of symbols; for this reason modus ponens is sometimes called the __rule of detachment__[\[7\]][56] or the __law of detachment__.[\[8\]][57] Enderton, for example, observes that "modus ponens can produce shorter formulas from longer ones",[\[9\]][58] and Russell observes that "the process of the inference cannot be reduced to symbols. Its sole record is the occurrence of ⊦q \[the consequent\] ... an inference is the dropping of a true premise; it is the dissolution of an implication".[\[10\]][59]

A justification for the "trust in inference is the belief that if the two former assertions \[the antecedents\] are not in error, the final assertion \[the consequent\] is not in error".[\[10\]][60] In other words: if one [statement][61] or [proposition][62] [implies][63] a second one, and the first statement or proposition is true, then the second one is also true. If *P* implies *Q* and *P* is true, then *Q* is true.[\[11\]][64]

## Correspondence to other mathematical frameworks\[[edit][65]\]

### Probability calculus\[[edit][66]\]

*Modus ponens* represents an instance of the [Law of total probability][67] which for a binary variable is expressed as:

![{\displaystyle \Pr(Q)=\Pr(Q\mid P)\Pr(P)+\Pr(Q\mid \lnot P)\Pr(\lnot P)\,}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bf9f17f0c8f08e312300fd70ea2b7f247106ea54),

where e.g. ![{\displaystyle \Pr(Q)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9c629eb750321a80c64ad3529aded1a33e35f0bb) denotes the probability of ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) and the [conditional probability][68] ![{\displaystyle \Pr(Q\mid P)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/537fbccf23ef68fe8e23b8b9941e64c5298b59c7) generalizes the logical implication ![P\to Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/d7cad5b2c2991ae1dbded560c5d875fbf49fe8ea). Assume that ![{\displaystyle \Pr(Q)=1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/00f9d5bb8000a03539e90cd9a85ae7126bff190b) is equivalent to ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) being TRUE, and that ![{\displaystyle \Pr(Q)=0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3e350ab5bcd947089e454641a330b052f91aaf5f) is equivalent to ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) being FALSE. It is then easy to see that ![{\displaystyle \Pr(Q)=1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/00f9d5bb8000a03539e90cd9a85ae7126bff190b) when ![{\displaystyle \Pr(Q\mid P)=1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2c9794a7586658ac6d5bf98cc0f6cd7d840db29a) and ![{\displaystyle \Pr(P)=1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/24a3af14688e37b072e2dda71e83ff22d1a69971). Hence, the [law of total probability][69] represents a generalization of *modus ponens*.[\[12\]][70]

### Subjective logic\[[edit][71]\]

*Modus ponens* represents an instance of the binomial deduction operator in [subjective logic][72] expressed as:

![{\displaystyle \omega _{Q\|P}^{A}=(\omega _{Q|P}^{A},\omega _{Q|\lnot P}^{A})\circledcirc \omega _{P}^{A}\,}](https://wikimedia.org/api/rest_v1/media/math/render/svg/27ce61067fbf76113b60e46e8e7e3920f777acf7),

where ![{\displaystyle \omega _{P}^{A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f71c98c7da7a716f2a6f273e4e4c07f512ed2dfa) denotes the subjective opinion about ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) as expressed by source ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3), and the conditional opinion ![{\displaystyle \omega _{Q|P}^{A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1fbcadc50e7dbdbb35fea79b4b71a2c00305c529) generalizes the logical implication ![P\to Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/d7cad5b2c2991ae1dbded560c5d875fbf49fe8ea). The deduced marginal opinion about ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) is denoted by ![{\displaystyle \omega _{Q\|P}^{A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/20dad6bcf5e3ab6771b6c23ac043f94082495db3). The case where ![{\displaystyle \omega _{P}^{A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f71c98c7da7a716f2a6f273e4e4c07f512ed2dfa) is an absolute TRUE opinion about ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) is equivalent to source ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) saying that ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) is TRUE, and the case where ![{\displaystyle \omega _{P}^{A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f71c98c7da7a716f2a6f273e4e4c07f512ed2dfa) is an absolute FALSE opinion about ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) is equivalent to source ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) saying that ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) is FALSE. The deduction operator ![{\displaystyle \circledcirc }](https://wikimedia.org/api/rest_v1/media/math/render/svg/cf70a53592b87a725eabcbb2dffc880e9aa9b66c) of [subjective logic][73] produces an absolute TRUE deduced opinion ![{\displaystyle \omega _{Q\|P}^{A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/20dad6bcf5e3ab6771b6c23ac043f94082495db3) when the conditional opinion ![{\displaystyle \omega _{Q|P}^{A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1fbcadc50e7dbdbb35fea79b4b71a2c00305c529) is absolute TRUE and the antecedent opinion ![{\displaystyle \omega _{P}^{A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f71c98c7da7a716f2a6f273e4e4c07f512ed2dfa) is absolute TRUE. Hence, subjective logic deduction represents a generalization of both *modus ponens* and the [Law of total probability][74].[\[13\]][75]

## Alleged cases of failure\[[edit][76]\]

Philosophers and linguists have identified a variety of cases where *modus ponens* appears to fail. One famous putative counterexample was identified by [Vann McGee][77], who argued that *modus ponens* can fail for conditionals whose consequents are themselves conditionals.[\[14\]][78]

1.  Either [Shakespeare][79] or [Hobbes][80] wrote *[Hamlet][81]*.
2.  If either Shakespeare or Hobbes wrote *Hamlet*, then if Shakespeare didn't do it, Hobbes did.
3.  Therefore, if Shakespeare didn't write *Hamlet*, Hobbes did it.

Since Shakespeare did write *Hamlet*, the first premise is true. The second premise is also true, since starting with a set of possible authors limited to just Shakespeare and Hobbes and eliminating one of them leaves only the other. However, the conclusion may seem false since ruling out Shakespeare as the author of *Hamlet* would leave numerous possible candidates, many of them more plausible alternatives than Hobbes.

The general form of McGee-type counterexamples to *modus ponens* is simply ![{\displaystyle P,P\rightarrow (Q\rightarrow R)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/efa231e26c737e13fdd3488af510cbd9a5afcdbe), therefore ![{\displaystyle Q\rightarrow R}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b76e444a574635586201a7ce3424d8777e3d6e22); it is not essential that ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) be a disjunction, as in the example given. That these kinds of cases constitute failures of *modus ponens* remains a minority view among logicians, but opinions vary on how the cases should be disposed of.[\[15\]][82][\[16\]][83][\[17\]][84]

In [deontic logic][85], some examples of conditional obligation also raise the possibility of *modus ponens* failure. These are cases where the conditional premise describes an obligation predicated on an immoral or imprudent action, e.g., “If Doe murders his mother, he ought to do so gently,” for which the dubious unconditional conclusion would be "Doe ought to gently murder his mother."[\[18\]][86] It would appear to follow that if Doe is in fact gently murdering his mother, then by *modus ponens* he is doing exactly what he should, unconditionally, be doing. Here again, *modus ponens* failure is not a popular diagnosis but is sometimes argued for.[\[19\]][87]

## Possible fallacies\[[edit][88]\]

The fallacy of [affirming the consequent][89] is a common misinterpretation of the *modus ponens*.[\[20\]][90]

## See also\[[edit][91]\]

-   [Condensed detachment][92]
-   [Import-Export (logic)][93]
-   [Latin phrases][94]
-   [*Modus tollens*][95] – Rule of logical inference
-   [*Modus vivendi*][96] – Arrangement that allows conflicting parties to coexist in peace
-   [Stoic logic][97] – System of propositional logic developed by the Stoic philosophers
-   [What the Tortoise Said to Achilles][98] – Allegorical dialogue by Lewis Carroll

## References\[[edit][99]\]

1.  __[^][100]__ Stone, Jon R. (1996). [*Latin for the Illiterati: Exorcizing the Ghosts of a Dead Language*][101]. London: Routledge. p. [60][102]. [ISBN][103] [0-415-91775-1][104].
2.  __[^][105]__ ["Oxford reference: affirming the antecedent"][106]. *[Oxford Reference][107]*.
3.  __[^][108]__ Enderton 2001:110
4.  __[^][109]__ [Susanne Bobzien][110] (2002). "The Development of Modus Ponens in Antiquity", *Phronesis* 47, No. 4, 2002.
5.  __[^][111]__ ["Ancient Logic: Forerunners of *Modus Ponens* and *Modus Tollens*"][112]. *[Stanford Encyclopedia of Philosophy][113]*.
6.  __[^][114]__ Alfred Tarski 1946:47. Also Enderton 2001:110ff.
7.  __[^][115]__ Tarski 1946:47
8.  __[^][116]__ ["Modus ponens - Encyclopedia of Mathematics"][117]. *encyclopediaofmath.org*. Retrieved 5 April 2018.
9.  __[^][118]__ Enderton 2001:111
10.  ^ [Jump up to: *__a__*][119] [*__b__*][120] Whitehead and Russell 1927:9
11.  __[^][121]__ Jago, Mark (2007). *Formal Logic*. [Humanities-Ebooks LLP][122]. [ISBN][123] [978-1-84760-041-7][124].
12.  __[^][125]__ Audun Jøsang 2016:2
13.  __[^][126]__ Audun Jøsang 2016:92
14.  __[^][127]__ Vann McGee (1985). "A Counterexample to Modus Ponens", *The Journal of Philosophy* 82, 462–471.
15.  __[^][128]__ Sinnott-Armstrong, Moor, and Fogelin (1986). "A Defense of Modus Ponens", *The Journal of Philosophy* 83, 296–300.
16.  __[^][129]__ D. E. Over (1987). "Assumption and the Supposed Counterexamples to Modus Ponens", *Analysis* 47, 142–146.
17.  __[^][130]__ Bledin (2015). "Modus Ponens Defended", *The Journal of Philosophy* 112, 462–471.
18.  __[^][131]__ ["Deontic Logic"][132]. 21 April 2010. Retrieved 30 January 2020. *[Stanford Encyclopedia of Philosophy][133]*.
19.  __[^][134]__ E.g., by Kolodny and MacFarlane (2010). "Ifs and Oughts", *The Journal of Philosophy* 107, 115–143.
20.  __[^][135]__ ["Fallacies | Internet Encyclopedia of Philosophy"][136]. *iep.utm.edu*. Retrieved 6 March 2020.

## Sources\[[edit][137]\]

-   Herbert B. Enderton, 2001, *A Mathematical Introduction to Logic Second Edition*, Harcourt Academic Press, Burlington MA, [ISBN][138] [978-0-12-238452-3][139].
-   Audun Jøsang, 2016, *Subjective Logic; A formalism for Reasoning Under Uncertainty* Springer, Cham, [ISBN][140] [978-3-319-42337-1][141]
-   [Alfred North Whitehead][142] and [Bertrand Russell][143] 1927 *Principia Mathematica to \*56 (Second Edition)* paperback edition 1962, Cambridge at the University Press, London UK. No ISBN, no LCCCN.
-   [Alfred Tarski][144] 1946 *Introduction to Logic and to the Methodology of the Deductive Sciences* 2nd Edition, reprinted by Dover Publications, Mineola NY. [ISBN][145] [0-486-28462-X][146] (pbk).

## External links\[[edit][147]\]

-   ["Modus ponens"][148], *[Encyclopedia of Mathematics][149]*, [EMS Press][150], 2001 \[1994\]
-   [Modus ponens][151] at [PhilPapers][152]
-   *[Modus ponens][153]* at Wolfram MathWorld

[1]: https://en.wikipedia.org/wiki/Forward_chaining "Forward chaining"
[2]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[3]: https://en.wiktionary.org/wiki/ponens "wiktionary:ponens"
[4]: https://en.wikipedia.org/wiki/Latin "Latin"
[5]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-1
[6]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-2
[7]: https://en.wikipedia.org/wiki/Deductive_reasoning "Deductive reasoning"
[8]: https://en.wikipedia.org/wiki/Argument_form "Argument form"
[9]: https://en.wikipedia.org/wiki/Rule_of_inference "Rule of inference"
[10]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-3
[11]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[12]: https://en.wikipedia.org/wiki/Validity_(logic) "Validity (logic)"
[13]: https://en.wikipedia.org/wiki/Modus_tollens "Modus tollens"
[14]: https://en.wikipedia.org/wiki/Affirming_the_consequent "Affirming the consequent"
[15]: https://en.wikipedia.org/wiki/Denying_the_antecedent "Denying the antecedent"
[16]: https://en.wikipedia.org/wiki/Evidence_of_absence "Evidence of absence"
[17]: https://en.wikipedia.org/wiki/Constructive_dilemma "Constructive dilemma"
[18]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[19]: https://en.wikipedia.org/wiki/Hypothetical_syllogism "Hypothetical syllogism"
[20]: https://en.wikipedia.org/wiki/Classical_antiquity "Classical antiquity"
[21]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-4
[22]: https://en.wikipedia.org/wiki/Theophrastus "Theophrastus"
[23]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-5
[24]: https://en.wikipedia.org/wiki/Modus_tollens "Modus tollens"
[25]: https://en.wikipedia.org/w/index.php?title=Modus_ponens&action=edit&section=1 "Edit section: Explanation"
[26]: https://en.wikipedia.org/wiki/Syllogism "Syllogism"
[27]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[28]: https://en.wikipedia.org/wiki/Antecedent_(logic) "Antecedent (logic)"
[29]: https://en.wikipedia.org/wiki/Consequent "Consequent"
[30]: https://en.wikipedia.org/wiki/Validity_(logic) "Validity (logic)"
[31]: https://en.wikipedia.org/wiki/Truth "Truth"
[32]: https://en.wikipedia.org/wiki/Soundness "Soundness"
[33]: https://en.wikipedia.org/wiki/Argument "Argument"
[34]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[35]: https://en.wikipedia.org/wiki/Deductive_reasoning "Deductive reasoning"
[36]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[37]: https://en.wikipedia.org/wiki/Cut-elimination_theorem "Cut-elimination theorem"
[38]: https://en.wikipedia.org/wiki/Admissible_rule "Admissible rule"
[39]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence "Curry–Howard correspondence"
[40]: https://en.wikipedia.org/wiki/Function_application "Function application"
[41]: https://en.wikipedia.org/wiki/Artificial_intelligence "Artificial intelligence"
[42]: https://en.wikipedia.org/wiki/Forward_chaining "Forward chaining"
[43]: https://en.wikipedia.org/w/index.php?title=Modus_ponens&action=edit&section=2 "Edit section: Formal notation"
[44]: https://en.wikipedia.org/wiki/Sequent "Sequent"
[45]: https://en.wikipedia.org/wiki/%E2%8A%A2 "⊢"
[46]: https://en.wikipedia.org/wiki/Metalogic "Metalogic"
[47]: https://en.wikipedia.org/wiki/Logical_consequence "Logical consequence"
[48]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[49]: https://en.wikipedia.org/w/index.php?title=Modus_ponens&action=edit&section=3 "Edit section: Justification via truth table"
[50]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[51]: https://en.wikipedia.org/w/index.php?title=Modus_ponens&action=edit&section=4 "Edit section: Status"
[52]: https://en.wikipedia.org/wiki/Argument_form "Argument form"
[53]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-6
[54]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[55]: https://en.wikipedia.org/wiki/Formal_proof "Formal proof"
[56]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-7
[57]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-8
[58]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-9
[59]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-auto-10
[60]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-auto-10
[61]: https://en.wikipedia.org/wiki/Statement_(logic) "Statement (logic)"
[62]: https://en.wikipedia.org/wiki/Proposition "Proposition"
[63]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[64]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-11
[65]: https://en.wikipedia.org/w/index.php?title=Modus_ponens&action=edit&section=5 "Edit section: Correspondence to other mathematical frameworks"
[66]: https://en.wikipedia.org/w/index.php?title=Modus_ponens&action=edit&section=6 "Edit section: Probability calculus"
[67]: https://en.wikipedia.org/wiki/Law_of_total_probability "Law of total probability"
[68]: https://en.wikipedia.org/wiki/Conditional_probability "Conditional probability"
[69]: https://en.wikipedia.org/wiki/Law_of_total_probability "Law of total probability"
[70]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-12
[71]: https://en.wikipedia.org/w/index.php?title=Modus_ponens&action=edit&section=7 "Edit section: Subjective logic"
[72]: https://en.wikipedia.org/wiki/Subjective_logic "Subjective logic"
[73]: https://en.wikipedia.org/wiki/Subjective_logic "Subjective logic"
[74]: https://en.wikipedia.org/wiki/Law_of_total_probability "Law of total probability"
[75]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-13
[76]: https://en.wikipedia.org/w/index.php?title=Modus_ponens&action=edit&section=8 "Edit section: Alleged cases of failure"
[77]: https://en.wikipedia.org/w/index.php?title=Vann_McGee&action=edit&redlink=1 "Vann McGee (page does not exist)"
[78]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-14
[79]: https://en.wikipedia.org/wiki/Shakespeare "Shakespeare"
[80]: https://en.wikipedia.org/wiki/Thomas_Hobbes "Thomas Hobbes"
[81]: https://en.wikipedia.org/wiki/Hamlet "Hamlet"
[82]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-15
[83]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-16
[84]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-17
[85]: https://en.wikipedia.org/wiki/Deontic_logic "Deontic logic"
[86]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-SEP_Deontic_Logic-18
[87]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-19
[88]: https://en.wikipedia.org/w/index.php?title=Modus_ponens&action=edit&section=9 "Edit section: Possible fallacies"
[89]: https://en.wikipedia.org/wiki/Affirming_the_consequent "Affirming the consequent"
[90]: https://en.wikipedia.org/wiki/Modus_ponens#cite_note-20
[91]: https://en.wikipedia.org/w/index.php?title=Modus_ponens&action=edit&section=10 "Edit section: See also"
[92]: https://en.wikipedia.org/wiki/Condensed_detachment "Condensed detachment"
[93]: https://en.wikipedia.org/wiki/Import-Export_(logic) "Import-Export (logic)"
[94]: https://en.wikipedia.org/wiki/Latin_phrases "Latin phrases"
[95]: https://en.wikipedia.org/wiki/Modus_tollens "Modus tollens"
[96]: https://en.wikipedia.org/wiki/Modus_vivendi "Modus vivendi"
[97]: https://en.wikipedia.org/wiki/Stoic_logic "Stoic logic"
[98]: https://en.wikipedia.org/wiki/What_the_Tortoise_Said_to_Achilles "What the Tortoise Said to Achilles"
[99]: https://en.wikipedia.org/w/index.php?title=Modus_ponens&action=edit&section=11 "Edit section: References"
[100]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-1 "Jump up"
[101]: https://archive.org/details/latinforillitera0000ston
[102]: https://archive.org/details/latinforillitera0000ston/page/60
[103]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[104]: https://en.wikipedia.org/wiki/Special:BookSources/0-415-91775-1 "Special:BookSources/0-415-91775-1"
[105]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-2 "Jump up"
[106]: https://www.oxfordreference.com/view/10.1093/oi/authority.20110803095354544
[107]: https://en.wikipedia.org/wiki/Oxford_Reference "Oxford Reference"
[108]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-3 "Jump up"
[109]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-4 "Jump up"
[110]: https://en.wikipedia.org/wiki/Susanne_Bobzien "Susanne Bobzien"
[111]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-5 "Jump up"
[112]: http://plato.stanford.edu/entries/logic-ancient/#StoSyl
[113]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
[114]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-6 "Jump up"
[115]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-7 "Jump up"
[116]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-8 "Jump up"
[117]: https://www.encyclopediaofmath.org/index.php/Modus_ponens
[118]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-9 "Jump up"
[119]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-auto_10-0
[120]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-auto_10-1
[121]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-11 "Jump up"
[122]: http://www.humanities-ebooks.co.uk/
[123]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[124]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-84760-041-7 "Special:BookSources/978-1-84760-041-7"
[125]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-12 "Jump up"
[126]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-13 "Jump up"
[127]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-14 "Jump up"
[128]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-15 "Jump up"
[129]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-16 "Jump up"
[130]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-17 "Jump up"
[131]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-SEP_Deontic_Logic_18-0 "Jump up"
[132]: https://plato.stanford.edu/entries/logic-deontic/#4.5
[133]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
[134]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-19 "Jump up"
[135]: https://en.wikipedia.org/wiki/Modus_ponens#cite_ref-20 "Jump up"
[136]: https://www.iep.utm.edu/fallacy/
[137]: https://en.wikipedia.org/w/index.php?title=Modus_ponens&action=edit&section=12 "Edit section: Sources"
[138]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[139]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-12-238452-3 "Special:BookSources/978-0-12-238452-3"
[140]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[141]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-319-42337-1 "Special:BookSources/978-3-319-42337-1"
[142]: https://en.wikipedia.org/wiki/Alfred_North_Whitehead "Alfred North Whitehead"
[143]: https://en.wikipedia.org/wiki/Bertrand_Russell "Bertrand Russell"
[144]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[145]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[146]: https://en.wikipedia.org/wiki/Special:BookSources/0-486-28462-X "Special:BookSources/0-486-28462-X"
[147]: https://en.wikipedia.org/w/index.php?title=Modus_ponens&action=edit&section=13 "Edit section: External links"
[148]: https://www.encyclopediaofmath.org/index.php?title=Modus_ponens
[149]: https://en.wikipedia.org/wiki/Encyclopedia_of_Mathematics "Encyclopedia of Mathematics"
[150]: https://en.wikipedia.org/wiki/European_Mathematical_Society "European Mathematical Society"
[151]: https://philpapers.org/s/modus_ponens
[152]: https://en.wikipedia.org/wiki/PhilPapers "PhilPapers"
[153]: http://mathworld.wolfram.com/ModusPonens.html
