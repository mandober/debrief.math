---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Sequent
page-title:       Sequent - Wikipedia
article-title:    Sequent - Wikipedia
---
# Sequent - Wikipedia

In mathematical logic, a sequent is a very general kind of conditional assertion.
In [mathematical logic][1], a __sequent__ is a very general kind of conditional assertion.

![A_{1},\,\dots ,A_{m}\,\vdash \,B_{1},\,\dots ,B_{n}.](https://wikimedia.org/api/rest_v1/media/math/render/svg/35ffb6452eb87d03e5e205d6d4705b6ccfe74a73)

A sequent may have any number *m* of condition [formulas][2] *Ai* (called "[antecedents][3]") and any number *n* of asserted formulas *Bj* (called "succedents" or "[consequents][4]"). A sequent is understood to mean that if all of the antecedent conditions are true, then at least one of the consequent formulas is true. This style of conditional assertion is almost always associated with the conceptual framework of [sequent calculus][5].

## Introduction\[[edit][6]\]

### The form and semantics of sequents\[[edit][7]\]

Sequents are best understood in the context of the following three kinds of [logical judgments][8]:

1.  __Unconditional assertion__. No antecedent formulas.
    -   Example: ⊢ *B*
    -   Meaning: *B* is true.
2.  __Conditional assertion__. Any number of antecedent formulas.
    1.  __Simple conditional assertion__. Single consequent formula.
        -   Example: *A1*, *A2*, *A3* ⊢ *B*
        -   Meaning: IF *A1* AND *A2* AND *A3* are true, THEN *B* is true.
    2.  __Sequent__. Any number of consequent formulas.
        -   Example: *A1*, *A2*, *A3* ⊢ *B1*, *B2*, *B3*, *B4*
        -   Meaning: IF *A1* AND *A2* AND *A3* are true, THEN *B1* OR *B2* OR *B3* OR *B4* is true.

Thus sequents are a generalization of simple conditional assertions, which are a generalization of unconditional assertions.

The word "OR" here is the [inclusive OR][9].[\[1\]][10] The motivation for disjunctive semantics on the right side of a sequent comes from three main benefits.

1.  The symmetry of the classical [inference rules][11] for sequents with such semantics.
2.  The ease and simplicity of converting such classical rules to intuitionistic rules.
3.  The ability to prove completeness for predicate calculus when it is expressed in this way.

All three of these benefits were identified in the founding paper by [Gentzen (1934][12], p. 194).

Not all authors have adhered to Gentzen's original meaning for the word "sequent". For example, [Lemmon (1965)][13] used the word "sequent" strictly for simple conditional assertions with one and only one consequent formula.[\[2\]][14] The same single-consequent definition for a sequent is given by [Huth & Ryan 2004][15], p. 5.

### Syntax details\[[edit][16]\]

In a general sequent of the form

![\Gamma \vdash \Sigma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1cab875d02dc019d847e8ca0a3e85f3ccfeed781)

both Γ and Σ are [sequences][17] of logical formulas, not [sets][18]. Therefore both the number and order of occurrences of formulas are significant. In particular, the same formula may appear twice in the same sequence. The full set of [sequent calculus inference rules][19] contains rules to swap adjacent formulas on the left and on the right of the assertion symbol (and thereby arbitrarily [permute][20] the left and right sequences), and also to insert arbitrary formulas and remove duplicate copies within the left and the right sequences. (However, [Smullyan (1995][21], pp. 107–108), uses *sets* of formulas in sequents instead of sequences of formulas. Consequently the three pairs of *structural rules* called "thinning", "contraction" and "interchange" are not required.)

The symbol ' ![\vdash ](https://wikimedia.org/api/rest_v1/media/math/render/svg/a0c0d30cf8cb7dba179e317fcde9583d842e80f6) ' is often referred to as the "[turnstile][22]", "right tack", "tee", "assertion sign" or "assertion symbol". It is often read, suggestively, as "yields", "proves" or "entails".

### Properties\[[edit][23]\]

#### Effects of inserting and removing propositions\[[edit][24]\]

Since every formula in the antecedent (the left side) must be true to conclude the truth of at least one formula in the succedent (the right side), adding formulas to either side results in a weaker sequent, while removing them from either side gives a stronger one. This is one of the symmetry advantages which follows from the use of disjunctive semantics on the right hand side of the assertion symbol, whereas conjunctive semantics is adhered to on the left hand side.

#### Consequences of empty lists of formulas\[[edit][25]\]

In the extreme case where the list of *antecedent* formulas of a sequent is empty, the consequent is unconditional. This differs from the simple unconditional assertion because the number of consequents is arbitrary, not necessarily a single consequent. Thus for example, ' ⊢ *B1*, *B2* ' means that either *B1*, or *B2*, or both must be true. An empty antecedent formula list is equivalent to the "always true" proposition, called the "[verum][26]", denoted "⊤". (See [Tee (symbol)][27].)

In the extreme case where the list of *consequent* formulas of a sequent is empty, the rule is still that at least one term on the right be true, which is clearly [impossible][28]. This is signified by the 'always false' proposition, called the "[falsum][29]", denoted "⊥". Since the consequence is false, at least one of the antecedents must be false. Thus for example, ' *A1*, *A2* ⊢ ' means that at least one of the antecedents *A1* and *A2* must be false.

One sees here again a symmetry because of the disjunctive semantics on the right hand side. If the left side is empty, then one or more right-side propositions must be true. If the right side is empty, then one or more of the left-side propositions must be false.

The doubly extreme case ' ⊢ ', where both the antecedent and consequent lists of formulas are empty is "[not satisfiable][30]".[\[3\]][31] In this case, the meaning of the sequent is effectively ' ⊤ ⊢ ⊥ '. This is equivalent to the sequent ' ⊢ ⊥ ', which clearly cannot be valid.

### Examples\[[edit][32]\]

A sequent of the form ' ⊢ α, β ', for logical formulas α and β, means that either α is true or β is true (or both). But it does not mean that either α is a tautology or β is a tautology. To clarify this, consider the example ' ⊢ B ∨ A, C ∨ ¬A '. This is a valid sequent because either B ∨ A is true or C ∨ ¬A is true. But neither of these expressions is a tautology in isolation. It is the *disjunction* of these two expressions which is a tautology.

Similarly, a sequent of the form ' α, β ⊢ ', for logical formulas α and β, means that either α is false or β is false. But it does not mean that either α is a contradiction or β is a contradiction. To clarify this, consider the example ' B ∧ A, C ∧ ¬A ⊢ '. This is a valid sequent because either B ∧ A is false or C ∧ ¬A is false. But neither of these expressions is a contradiction in isolation. It is the *conjunction* of these two expressions which is a contradiction.

### Rules\[[edit][33]\]

Most proof systems provide ways to deduce one sequent from another. These inference rules are written with a list of sequents above and below a [line][34]. This rule indicates that if everything above the line is true, so is everything under the line.

A typical rule is:

![{\frac  {\Gamma ,\alpha \vdash \Sigma \qquad \Gamma \vdash \alpha }{\Gamma \vdash \Sigma }}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b02ed0d08a2ca06a88bdacf7d359d371766b45b)

This indicates that if we can deduce that ![\Gamma ,\alpha ](https://wikimedia.org/api/rest_v1/media/math/render/svg/0da5b13444fa1a3e9b09c88685e07a8bf568b080) yields ![\Sigma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/9e1f558f53cda207614abdf90162266c70bc5c1e), and that ![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19) yields ![\alpha ](https://wikimedia.org/api/rest_v1/media/math/render/svg/b79333175c8b3f0840bfb4ec41b8072c83ea88d3), then we can also deduce that ![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19) yields ![\Sigma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/9e1f558f53cda207614abdf90162266c70bc5c1e). (See also the full set of [sequent calculus inference rules][35].)

## Interpretation\[[edit][36]\]

### History of the meaning of sequent assertions\[[edit][37]\]

The assertion symbol in sequents originally meant exactly the same as the implication operator. But over time, its meaning has changed to signify provability within a theory rather than semantic truth in all models.

In 1934, Gentzen did not define the assertion symbol ' ⊢ ' in a sequent to signify provability. He defined it to mean exactly the same as the implication operator ' ⇒ '. Using ' → ' instead of ' ⊢ ' and ' ⊃ ' instead of ' ⇒ ', he wrote: "The sequent A1, ..., Aμ → B1, ..., Bν signifies, as regards content, exactly the same as the formula (A1 & ... & Aμ) ⊃ (B1 ∨ ... ∨ Bν)".[\[4\]][38] (Gentzen employed the right-arrow symbol between the antecedents and consequents of sequents. He employed the symbol ' ⊃ ' for the logical implication operator.)

In 1939, [Hilbert][39] and [Bernays][40] stated likewise that a sequent has the same meaning as the corresponding implication formula.[\[5\]][41]

In 1944, [Alonzo Church][42] emphasized that Gentzen's sequent assertions did not signify provability.

"Employment of the deduction theorem as primitive or derived rule must not, however, be confused with the use of *Sequenzen* by Gentzen. For Gentzen's arrow, →, is not comparable to our syntactical notation, ⊢, but belongs to his object language (as is clear from the fact that expressions containing it appear as premisses and conclusions in applications of his rules of inference)."[\[6\]][43]

Numerous publications after this time have stated that the assertion symbol in sequents does signify provability within the theory where the sequents are formulated. [Curry][44] in 1963,[\[7\]][45] [Lemmon][46] in 1965,[\[2\]][47] and Huth and Ryan in 2004[\[8\]][48] all state that the sequent assertion symbol signifies provability. However, [Ben-Ari (2012][49], p. 69) states that the assertion symbol in Gentzen-system sequents, which he denotes as ' ⇒ ', is part of the object language, not the metalanguage.[\[9\]][50]

According to [Prawitz][51] (1965): "The calculi of sequents can be understood as meta-calculi for the deducibility relation in the corresponding systems of natural deduction."[\[10\]][52] And furthermore: "A proof in a calculus of sequents can be looked upon as an instruction on how to construct a corresponding natural deduction."[\[11\]][53] In other words, the assertion symbol is part of the object language for the sequent calculus, which is a kind of meta-calculus, but simultaneously signifies deducibility in an underlying natural deduction system.

### Intuitive meaning\[[edit][54]\]

A sequent is a [formalized][55] statement of [provability][56] that is frequently used when specifying [calculi][57] for [deduction][58]. In the sequent calculus, the name *sequent* is used for the construct, which can be regarded as a specific kind of [judgment][59], characteristic to this deduction system.

The intuitive meaning of the sequent ![\Gamma \vdash \Sigma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1cab875d02dc019d847e8ca0a3e85f3ccfeed781) is that under the assumption of Γ the conclusion of Σ is provable. Classically, the formulae on the left of the turnstile can be interpreted [conjunctively][60] while the formulae on the right can be considered as a [disjunction][61]. This means that, when all formulae in Γ hold, then at least one formula in Σ also has to be true. If the succedent is empty, this is interpreted as falsity, i.e. ![\Gamma \vdash ](https://wikimedia.org/api/rest_v1/media/math/render/svg/159c29b68185b46f2059ebc52ffa8c75c9f8e026) means that Γ proves falsity and is thus inconsistent. On the other hand an empty antecedent is assumed to be true, i.e., ![\vdash \Sigma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/afd1f971f32bd2614d290192fb45057750227a7c) means that Σ follows without any assumptions, i.e., it is always true (as a disjunction). A sequent of this form, with Γ empty, is known as a [logical assertion][62].

Of course, other intuitive explanations are possible, which are classically equivalent. For example, ![\Gamma \vdash \Sigma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1cab875d02dc019d847e8ca0a3e85f3ccfeed781) can be read as asserting that it cannot be the case that every formula in Γ is true and every formula in Σ is false (this is related to the double-negation interpretations of classical [intuitionistic logic][63], such as [Glivenko's theorem][64]).

In any case, these intuitive readings are only pedagogical. Since formal proofs in proof theory are purely [syntactic][65], the [meaning][66] of (the derivation of) a sequent is only given by the properties of the calculus that provides the actual [rules of inference][67].

Barring any contradictions in the technically precise definition above we can describe sequents in their introductory logical form. ![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19) represents a set of assumptions that we begin our logical process with, for example "Socrates is a man" and "All men are mortal". The ![\Sigma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/9e1f558f53cda207614abdf90162266c70bc5c1e) represents a logical conclusion that follows under these premises. For example "Socrates is mortal" follows from a reasonable formalization of the above points and we could expect to see it on the ![\Sigma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/9e1f558f53cda207614abdf90162266c70bc5c1e) side of the *turnstile*. In this sense, ![\vdash ](https://wikimedia.org/api/rest_v1/media/math/render/svg/a0c0d30cf8cb7dba179e317fcde9583d842e80f6) means the process of reasoning, or "therefore" in English.

## Variations\[[edit][68]\]

The general notion of sequent introduced here can be specialized in various ways. A sequent is said to be an __intuitionistic sequent__ if there is at most one formula in the succedent (although multi-succedent calculi for intuitionistic logic are also possible). More precisely, the restriction of the general sequent calculus to single-succedent-formula sequents, *with the same inference rules* as for general sequents, constitutes an intuitionistic sequent calculus. (This restricted sequent calculus is denoted LJ.)

Similarly, one can obtain calculi for [dual-intuitionistic logic][69] (a type of [paraconsistent logic][70]) by requiring that sequents be singular in the antecedent.

In many cases, sequents are also assumed to consist of [multisets][71] or [sets][72] instead of sequences. Thus one disregards the order or even the numbers of occurrences of the formulae. For classical [propositional logic][73] this does not yield a problem, since the conclusions that one can draw from a collection of premises do not depend on these data. In [substructural logic][74], however, this may become quite important.

[Natural deduction][75] systems use single-consequence conditional assertions, but they typically do not use the same sets of inference rules as Gentzen introduced in 1934. In particular, [tabular natural deduction][76] systems, which are very convenient for practical theorem-proving in propositional calculus and predicate calculus, were applied by [Suppes (1957)][77] and [Lemmon (1965)][78] for teaching introductory logic in textbooks.

## Etymology\[[edit][79]\]

Historically, sequents have been introduced by [Gerhard Gentzen][80] in order to specify his famous [sequent calculus][81].[\[12\]][82] In his German publication he used the word "Sequenz". However, in English, the word "[sequence][83]" is already used as a translation to the German "Folge" and appears quite frequently in mathematics. The term "sequent" then has been created in search for an alternative translation of the German expression.

Kleene[\[13\]][84] makes the following comment on the translation into English: "Gentzen says 'Sequenz', which we translate as 'sequent', because we have already used 'sequence' for any succession of objects, where the German is 'Folge'."

## See also\[[edit][85]\]

-   [Gerhard Gentzen][86]
-   [Intuitionistic logic][87]
-   [Natural deduction][88]
-   [Sequent calculus][89]

## Notes\[[edit][90]\]

1.  __[^][91]__ The disjunctive semantics for the right side of a sequent is stated and explained by [Curry 1977][92], pp. 189–190, [Kleene 2002][93], pp. 290, 297, [Kleene 2009][94], p. 441, [Hilbert & Bernays 1970][95], p. 385, [Smullyan 1995][96], pp. 104–105, [Takeuti 2013][97], p. 9, and [Gentzen 1934][98], p. 180.
2.  ^ [Jump up to: *__a__*][99] [*__b__*][100] [Lemmon 1965][101], p. 12, wrote: "Thus a sequent is an argument-frame containing a set of assumptions and a conclusion which is claimed to follow from them. \[...\] The propositions to the left of '⊢' become assumptions of the argument, and the proposition to the right becomes a conclusion validly drawn from those assumptions."
3.  __[^][102]__ [Smullyan 1995][103], p. 105.
4.  __[^][104]__ [Gentzen 1934][105], p. 180.
    
    2.4. Die Sequenz A1, ..., Aμ → B1, ..., Bν bedeutet inhaltlich genau dasselbe wie die Formel
    
    (A1 & ... & Aμ) ⊃ (B1 ∨ ... ∨ Bν).
    
5.  __[^][106]__ [Hilbert & Bernays 1970][107], p. 385.
    
    Für die inhaltliche Deutung ist eine Sequenz
    
    A1, ..., Ar → B1, ..., Bs,
    
    worin die Anzahlen r und s von 0 verschieden sind, gleichbedeutend mit der Implikation
    
    (A1 & ... & Ar) → (B1 ∨ ... ∨ Bs)
    
6.  __[^][108]__ [Church 1996][109], p. 165.
7.  __[^][110]__ [Curry 1977][111], p. 184
8.  __[^][112]__ [Huth & Ryan (2004][113], p. 5)
9.  __[^][114]__ [Ben-Ari 2012][115], p. 69, defines sequents to have the form *U* ⇒ *V* for (possibly non-empty) sets of formulas *U* and *V*. Then he writes:
    
    "Intuitively, a sequent represents 'provable from' in the sense that the formulas in *U* are assumptions for the set of formulas *V* that are to be proved. The symbol ⇒ is similar to the symbol ⊢ in Hilbert systems, except that ⇒ is part of the object language of the deductive system being formalized, while ⊢ is a metalanguage notation used to reason about deductive systems."
    
10.  __[^][116]__ [Prawitz 2006][117], p. 90.
11.  __[^][118]__ See [Prawitz 2006][119], p. 91, for this and further details of interpretation.
12.  __[^][120]__ [Gentzen 1934][121], [Gentzen 1935][122].
13.  __[^][123]__ [Kleene 2002][124], p. 441

## References\[[edit][125]\]

-   [Ben-Ari, Mordechai][126] (2012) \[1993\]. *Mathematical logic for computer science*. London: Springer. [ISBN][127] [978-1-4471-4128-0][128].
-   [Church, Alonzo][129] (1996) \[1944\]. *Introduction to mathematical logic*. Princeton, New Jersey: Princeton University Press. [ISBN][130] [978-0-691-02906-1][131].
-   [Curry, Haskell Brooks][132] (1977) \[1963\]. *Foundations of mathematical logic*. New York: Dover Publications Inc. [ISBN][133] [978-0-486-63462-3][134].
-   [Gentzen, Gerhard][135] (1934). ["Untersuchungen über das logische Schließen. I"][136]. *Mathematische Zeitschrift*. __39__ (2): 176–210. [doi][137]:[10.1007/bf01201353][138].
-   [Gentzen, Gerhard][139] (1935). ["Untersuchungen über das logische Schließen. II"][140]. *Mathematische Zeitschrift*. __39__ (3): 405–431. [doi][141]:[10.1007/bf01201363][142].
-   [Hilbert, David][143]; [Bernays, Paul][144] (1970) \[1939\]. *Grundlagen der Mathematik II* (Second ed.). Berlin, New York: Springer-Verlag. [ISBN][145] [978-3-642-86897-9][146].
-   Huth, Michael; Ryan, Mark (2004). *Logic in Computer Science* (Second ed.). Cambridge, United Kingdom: Cambridge University Press. [ISBN][147] [978-0-521-54310-1][148].
-   [Kleene, Stephen Cole][149] (2009) \[1952\]. *Introduction to metamathematics*. Ishi Press International. [ISBN][150] [978-0-923891-57-2][151].
-   [Kleene, Stephen Cole][152] (2002) \[1967\]. *Mathematical logic*. Mineola, New York: Dover Publications. [ISBN][153] [978-0-486-42533-7][154].
-   [Lemmon, Edward John][155] (1965). *Beginning logic*. Thomas Nelson. [ISBN][156] [0-17-712040-1][157].
-   [Prawitz, Dag][158] (2006) \[1965\]. *Natural deduction: A proof-theoretical study*. Mineola, New York: Dover Publications. [ISBN][159] [978-0-486-44655-4][160].
-   [Smullyan, Raymond Merrill][161] (1995) \[1968\]. *First-order logic*. New York: Dover Publications. [ISBN][162] [978-0-486-68370-6][163].
-   [Suppes, Patrick Colonel][164] (1999) \[1957\]. *Introduction to logic*. Mineola, New York: Dover Publications. [ISBN][165] [978-0-486-40687-9][166].
-   [Takeuti, Gaisi][167] (2013) \[1975\]. *Proof theory* (Second ed.). Mineola, New York: Dover Publications. [ISBN][168] [978-0-486-49073-1][169].

## External links\[[edit][170]\]

-   ["Sequent (in logic)"][171], *[Encyclopedia of Mathematics][172]*, [EMS Press][173], 2001 \[1994\]

[1]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[2]: https://en.wikipedia.org/wiki/Well-formed_formula "Well-formed formula"
[3]: https://en.wikipedia.org/wiki/Antecedent_(logic) "Antecedent (logic)"
[4]: https://en.wikipedia.org/wiki/Consequent "Consequent"
[5]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[6]: https://en.wikipedia.org/w/index.php?title=Sequent&action=edit&section=1 "Edit section: Introduction"
[7]: https://en.wikipedia.org/w/index.php?title=Sequent&action=edit&section=2 "Edit section: The form and semantics of sequents"
[8]: https://en.wikipedia.org/wiki/Judgment_(mathematical_logic) "Judgment (mathematical logic)"
[9]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[10]: https://en.wikipedia.org/wiki/Sequent#cite_note-1
[11]: https://en.wikipedia.org/wiki/Rule_of_inference "Rule of inference"
[12]: https://en.wikipedia.org/wiki/Sequent#CITEREFGentzen1934
[13]: https://en.wikipedia.org/wiki/Sequent#CITEREFLemmon1965
[14]: https://en.wikipedia.org/wiki/Sequent#cite_note-Lemmon1965p12-2
[15]: https://en.wikipedia.org/wiki/Sequent#CITEREFHuthRyan2004
[16]: https://en.wikipedia.org/w/index.php?title=Sequent&action=edit&section=3 "Edit section: Syntax details"
[17]: https://en.wikipedia.org/wiki/Sequence "Sequence"
[18]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[19]: https://en.wikipedia.org/wiki/Sequent_calculus#Inference_rules "Sequent calculus"
[20]: https://en.wikipedia.org/wiki/Permutation "Permutation"
[21]: https://en.wikipedia.org/wiki/Sequent#CITEREFSmullyan1995
[22]: https://en.wikipedia.org/wiki/Turnstile_(symbol) "Turnstile (symbol)"
[23]: https://en.wikipedia.org/w/index.php?title=Sequent&action=edit&section=4 "Edit section: Properties"
[24]: https://en.wikipedia.org/w/index.php?title=Sequent&action=edit&section=5 "Edit section: Effects of inserting and removing propositions"
[25]: https://en.wikipedia.org/w/index.php?title=Sequent&action=edit&section=6 "Edit section: Consequences of empty lists of formulas"
[26]: https://en.wikipedia.org/wiki/Tautology_(logic) "Tautology (logic)"
[27]: https://en.wikipedia.org/wiki/Tee_(symbol) "Tee (symbol)"
[28]: https://en.wikipedia.org/wiki/Contradiction "Contradiction"
[29]: https://en.wikipedia.org/wiki/False_(logic) "False (logic)"
[30]: https://en.wikipedia.org/wiki/Interpretation_(logic)#Non-empty_domain_requirement "Interpretation (logic)"
[31]: https://en.wikipedia.org/wiki/Sequent#cite_note-3
[32]: https://en.wikipedia.org/w/index.php?title=Sequent&action=edit&section=7 "Edit section: Examples"
[33]: https://en.wikipedia.org/w/index.php?title=Sequent&action=edit&section=8 "Edit section: Rules"
[34]: https://en.wikipedia.org/wiki/Coplanarity "Coplanarity"
[35]: https://en.wikipedia.org/wiki/Sequent_calculus#Inference_rules "Sequent calculus"
[36]: https://en.wikipedia.org/w/index.php?title=Sequent&action=edit&section=9 "Edit section: Interpretation"
[37]: https://en.wikipedia.org/w/index.php?title=Sequent&action=edit&section=10 "Edit section: History of the meaning of sequent assertions"
[38]: https://en.wikipedia.org/wiki/Sequent#cite_note-4
[39]: https://en.wikipedia.org/wiki/David_Hilbert "David Hilbert"
[40]: https://en.wikipedia.org/wiki/Paul_Bernays "Paul Bernays"
[41]: https://en.wikipedia.org/wiki/Sequent#cite_note-5
[42]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[43]: https://en.wikipedia.org/wiki/Sequent#cite_note-6
[44]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[45]: https://en.wikipedia.org/wiki/Sequent#cite_note-7
[46]: https://en.wikipedia.org/wiki/John_Lemmon "John Lemmon"
[47]: https://en.wikipedia.org/wiki/Sequent#cite_note-Lemmon1965p12-2
[48]: https://en.wikipedia.org/wiki/Sequent#cite_note-8
[49]: https://en.wikipedia.org/wiki/Sequent#CITEREFBen-Ari2012
[50]: https://en.wikipedia.org/wiki/Sequent#cite_note-9
[51]: https://en.wikipedia.org/wiki/Dag_Prawitz "Dag Prawitz"
[52]: https://en.wikipedia.org/wiki/Sequent#cite_note-10
[53]: https://en.wikipedia.org/wiki/Sequent#cite_note-11
[54]: https://en.wikipedia.org/w/index.php?title=Sequent&action=edit&section=11 "Edit section: Intuitive meaning"
[55]: https://en.wikipedia.org/wiki/Formalism_(mathematics) "Formalism (mathematics)"
[56]: https://en.wikipedia.org/wiki/Proof_theory "Proof theory"
[57]: https://en.wikipedia.org/wiki/Proof_calculus "Proof calculus"
[58]: https://en.wikipedia.org/wiki/Deductive_reasoning "Deductive reasoning"
[59]: https://en.wikipedia.org/wiki/Judgment_(mathematical_logic) "Judgment (mathematical logic)"
[60]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[61]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[62]: https://en.wikipedia.org/wiki/Logical_assertion "Logical assertion"
[63]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[64]: https://en.wikipedia.org/wiki/Glivenko%27s_translation "Glivenko's translation"
[65]: https://en.wikipedia.org/wiki/Syntax "Syntax"
[66]: https://en.wikipedia.org/wiki/Semantics "Semantics"
[67]: https://en.wikipedia.org/wiki/Rule_of_inference "Rule of inference"
[68]: https://en.wikipedia.org/w/index.php?title=Sequent&action=edit&section=12 "Edit section: Variations"
[69]: https://en.wikipedia.org/wiki/Dual-intuitionistic_logic "Dual-intuitionistic logic"
[70]: https://en.wikipedia.org/wiki/Paraconsistent_logic "Paraconsistent logic"
[71]: https://en.wikipedia.org/wiki/Multiset "Multiset"
[72]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[73]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[74]: https://en.wikipedia.org/wiki/Substructural_logic "Substructural logic"
[75]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[76]: https://en.wikipedia.org/wiki/System_L "System L"
[77]: https://en.wikipedia.org/wiki/Sequent#CITEREFSuppes1957
[78]: https://en.wikipedia.org/wiki/Sequent#CITEREFLemmon1965
[79]: https://en.wikipedia.org/w/index.php?title=Sequent&action=edit&section=13 "Edit section: Etymology"
[80]: https://en.wikipedia.org/wiki/Gerhard_Gentzen "Gerhard Gentzen"
[81]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[82]: https://en.wikipedia.org/wiki/Sequent#cite_note-12
[83]: https://en.wikipedia.org/wiki/Sequence "Sequence"
[84]: https://en.wikipedia.org/wiki/Sequent#cite_note-13
[85]: https://en.wikipedia.org/w/index.php?title=Sequent&action=edit&section=14 "Edit section: See also"
[86]: https://en.wikipedia.org/wiki/Gerhard_Gentzen "Gerhard Gentzen"
[87]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[88]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[89]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[90]: https://en.wikipedia.org/w/index.php?title=Sequent&action=edit&section=15 "Edit section: Notes"
[91]: https://en.wikipedia.org/wiki/Sequent#cite_ref-1 "Jump up"
[92]: https://en.wikipedia.org/wiki/Sequent#CITEREFCurry1977
[93]: https://en.wikipedia.org/wiki/Sequent#CITEREFKleene2002
[94]: https://en.wikipedia.org/wiki/Sequent#CITEREFKleene2009
[95]: https://en.wikipedia.org/wiki/Sequent#CITEREFHilbertBernays1970
[96]: https://en.wikipedia.org/wiki/Sequent#CITEREFSmullyan1995
[97]: https://en.wikipedia.org/wiki/Sequent#CITEREFTakeuti2013
[98]: https://en.wikipedia.org/wiki/Sequent#CITEREFGentzen1934
[99]: https://en.wikipedia.org/wiki/Sequent#cite_ref-Lemmon1965p12_2-0
[100]: https://en.wikipedia.org/wiki/Sequent#cite_ref-Lemmon1965p12_2-1
[101]: https://en.wikipedia.org/wiki/Sequent#CITEREFLemmon1965
[102]: https://en.wikipedia.org/wiki/Sequent#cite_ref-3 "Jump up"
[103]: https://en.wikipedia.org/wiki/Sequent#CITEREFSmullyan1995
[104]: https://en.wikipedia.org/wiki/Sequent#cite_ref-4 "Jump up"
[105]: https://en.wikipedia.org/wiki/Sequent#CITEREFGentzen1934
[106]: https://en.wikipedia.org/wiki/Sequent#cite_ref-5 "Jump up"
[107]: https://en.wikipedia.org/wiki/Sequent#CITEREFHilbertBernays1970
[108]: https://en.wikipedia.org/wiki/Sequent#cite_ref-6 "Jump up"
[109]: https://en.wikipedia.org/wiki/Sequent#CITEREFChurch1996
[110]: https://en.wikipedia.org/wiki/Sequent#cite_ref-7 "Jump up"
[111]: https://en.wikipedia.org/wiki/Sequent#CITEREFCurry1977
[112]: https://en.wikipedia.org/wiki/Sequent#cite_ref-8 "Jump up"
[113]: https://en.wikipedia.org/wiki/Sequent#CITEREFHuthRyan2004
[114]: https://en.wikipedia.org/wiki/Sequent#cite_ref-9 "Jump up"
[115]: https://en.wikipedia.org/wiki/Sequent#CITEREFBen-Ari2012
[116]: https://en.wikipedia.org/wiki/Sequent#cite_ref-10 "Jump up"
[117]: https://en.wikipedia.org/wiki/Sequent#CITEREFPrawitz2006
[118]: https://en.wikipedia.org/wiki/Sequent#cite_ref-11 "Jump up"
[119]: https://en.wikipedia.org/wiki/Sequent#CITEREFPrawitz2006
[120]: https://en.wikipedia.org/wiki/Sequent#cite_ref-12 "Jump up"
[121]: https://en.wikipedia.org/wiki/Sequent#CITEREFGentzen1934
[122]: https://en.wikipedia.org/wiki/Sequent#CITEREFGentzen1935
[123]: https://en.wikipedia.org/wiki/Sequent#cite_ref-13 "Jump up"
[124]: https://en.wikipedia.org/wiki/Sequent#CITEREFKleene2002
[125]: https://en.wikipedia.org/w/index.php?title=Sequent&action=edit&section=16 "Edit section: References"
[126]: https://en.wikipedia.org/wiki/Mordechai_Ben-Ari "Mordechai Ben-Ari"
[127]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[128]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-4471-4128-0 "Special:BookSources/978-1-4471-4128-0"
[129]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[130]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[131]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-691-02906-1 "Special:BookSources/978-0-691-02906-1"
[132]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[133]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[134]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-486-63462-3 "Special:BookSources/978-0-486-63462-3"
[135]: https://en.wikipedia.org/wiki/Gerhard_Gentzen "Gerhard Gentzen"
[136]: http://gdz.sub.uni-goettingen.de/dms/resolveppn/?PPN=GDZPPN002375508
[137]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[138]: https://doi.org/10.1007%2Fbf01201353
[139]: https://en.wikipedia.org/wiki/Gerhard_Gentzen "Gerhard Gentzen"
[140]: http://gdz.sub.uni-goettingen.de/dms/resolveppn/?PPN=GDZPPN002375605
[141]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[142]: https://doi.org/10.1007%2Fbf01201363
[143]: https://en.wikipedia.org/wiki/David_Hilbert "David Hilbert"
[144]: https://en.wikipedia.org/wiki/Paul_Bernays "Paul Bernays"
[145]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[146]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-642-86897-9 "Special:BookSources/978-3-642-86897-9"
[147]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[148]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-54310-1 "Special:BookSources/978-0-521-54310-1"
[149]: https://en.wikipedia.org/wiki/Stephen_Cole_Kleene "Stephen Cole Kleene"
[150]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[151]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-923891-57-2 "Special:BookSources/978-0-923891-57-2"
[152]: https://en.wikipedia.org/wiki/Stephen_Cole_Kleene "Stephen Cole Kleene"
[153]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[154]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-486-42533-7 "Special:BookSources/978-0-486-42533-7"
[155]: https://en.wikipedia.org/wiki/John_Lemmon "John Lemmon"
[156]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[157]: https://en.wikipedia.org/wiki/Special:BookSources/0-17-712040-1 "Special:BookSources/0-17-712040-1"
[158]: https://en.wikipedia.org/wiki/Dag_Prawitz "Dag Prawitz"
[159]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[160]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-486-44655-4 "Special:BookSources/978-0-486-44655-4"
[161]: https://en.wikipedia.org/wiki/Raymond_Smullyan "Raymond Smullyan"
[162]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[163]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-486-68370-6 "Special:BookSources/978-0-486-68370-6"
[164]: https://en.wikipedia.org/wiki/Patrick_Suppes "Patrick Suppes"
[165]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[166]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-486-40687-9 "Special:BookSources/978-0-486-40687-9"
[167]: https://en.wikipedia.org/wiki/Gaisi_Takeuti "Gaisi Takeuti"
[168]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[169]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-486-49073-1 "Special:BookSources/978-0-486-49073-1"
[170]: https://en.wikipedia.org/w/index.php?title=Sequent&action=edit&section=17 "Edit section: External links"
[171]: https://www.encyclopediaofmath.org/index.php?title=Sequent_(in_logic)
[172]: https://en.wikipedia.org/wiki/Encyclopedia_of_Mathematics "Encyclopedia of Mathematics"
[173]: https://en.wikipedia.org/wiki/European_Mathematical_Society "European Mathematical Society"
