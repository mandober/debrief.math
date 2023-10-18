---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Relevance_logic
page-title:       Relevance logic - Wikipedia
article-title:    Relevance logic - Wikipedia
---
# Relevance logic - Wikipedia

Relevance logic, also called relevant logic, is a kind of non-classical logic requiring the antecedent and consequent of implications to be relevantly related. They may be viewed as a family of substructural or modal logics. It is generally, but not universally, called relevant logic by British and, especially, Australian logicians, and relevance logic by American logicians.
__Relevance logic__, also called __relevant logic__, is a kind of non-[classical logic][1] requiring the [antecedent][2] and [consequent][3] of [implications][4] to be relevantly related. They may be viewed as a family of [substructural][5] or [modal][6] logics. It is generally, but not universally, called *relevant logic* by British and, especially, Australian [logicians][7], and *relevance logic* by American logicians.

Relevance logic aims to capture aspects of implication that are ignored by the "[material implication][8]" operator in classical [truth-functional logic][9], namely the notion of relevance between antecedent and conditional of a true implication. This idea is not new: [C. I. Lewis][10] was led to invent modal logic, and specifically [strict implication][11], on the grounds that classical logic grants [paradoxes of material implication][12] such as the principle that [a falsehood implies any proposition][13].[\[1\]][14][\[2\]][15] Hence "if I'm a donkey, then two and two is four" is true when translated as a material implication, yet it seems intuitively false since a true implication must tie the antecedent and consequent together by some notion of relevance. And whether or not the speaker is a donkey seems in no way relevant to whether two and two is four.

How does relevance logic formally capture a notion of relevance? In terms of a syntactical constraint for a [propositional calculus][16], it is necessary, but not sufficient, that premises and conclusion share [atomic formulae][17] (formulae that do not contain any [logical connectives][18]). In a [predicate calculus][19], relevance requires sharing of variables and constants between premises and conclusion. This can be ensured (along with stronger conditions) by, e.g., placing certain restrictions on the rules of a natural deduction system. In particular, a Fitch-style [natural deduction][20] can be adapted to accommodate relevance by introducing tags at the end of each line of an application of an inference indicating the premises relevant to the conclusion of the inference. [Gentzen][21]\-style [sequent calculi][22] can be modified by removing the weakening rules that allow for the introduction of arbitrary formulae on the right or left side of the [sequents][23].

A notable feature of relevance logics is that they are [paraconsistent logics][24]: the existence of a contradiction will not cause "[explosion][25]". This follows from the fact that a conditional with a contradictory antecedent that does not share any propositional or predicate letters with the consequent cannot be true (or derivable).

## History\[[edit][26]\]

Relevance logic was proposed in 1928 by Soviet philosopher [Ivan E. Orlov][27] (1886 – circa 1936) in his strictly mathematical paper "The Logic of Compatibility of Propositions" published in *Matematicheskii Sbornik*. The basic idea of relevant implication appears in medieval logic, and some pioneering work was done by [Ackermann][28],[\[3\]][29] [Moh][30],[\[4\]][31] and [Church][32][\[5\]][33] in the 1950s. Drawing on them, [Nuel Belnap][34] and [Alan Ross Anderson][35] (with others) wrote the *magnum opus* of the subject, *Entailment: The Logic of Relevance and Necessity* in the 1970s (the second volume being published in the nineties). They focused on both systems of [entailment][36] and systems of relevance, where implications of the former kinds are supposed to be both relevant and necessary.

## Axioms\[[edit][37]\]

The early developments in relevance logic focused on the stronger systems. The development of the Routley–Meyer semantics brought out a range of weaker logics. The weakest of these logics is the relevance logic B. It is axiomatized with the following axioms and rules.

1.  ![A\to A](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fbf720da5a9387e23c628079fbc3e021399c911)
2.  ![{\displaystyle A\land B\to A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/64a91d59f2fceec37cc738365f4d304fba2c071d)
3.  ![{\displaystyle A\land B\to B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8a3aefcd0bec7b2a2e24244ba847893801e928bb)
4.  ![{\displaystyle (A\to B)\land (A\to C)\to (A\to B\land C)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/885703beccb764857eab889230ac2bafb20b1b1c)
5.  ![{\displaystyle A\to A\lor B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/93be7d2a4075cb8ed1f4a64a42f8348888b902ed)
6.  ![{\displaystyle B\to A\lor B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/632f4caf324615cda5b0f415e5129bd9b84735fc)
7.  ![{\displaystyle (A\to C)\land (B\to C)\to (A\lor B\to C)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cece5366dd5f03632737c35c02c06b8a8a81dcfc)
8.  ![{\displaystyle A\land (B\lor C)\to (A\land B)\lor (A\land C)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/33ea67938af49a2f85c9de22fba12f65184c0ef1)
9.  ![{\displaystyle \lnot \lnot A\to A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/739b9fb3fb18027f88c9ad3a637c6057f6f41355)

The rules are the following.

1.  ![{\displaystyle A,A\to B\vdash B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9a3b6c93a3146f565c5595c7b6fd23f8f47da3df)
2.  ![{\displaystyle A,B\vdash A\land B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a09eabaf72b476587320bbb94274e4675c040f57)
3.  ![{\displaystyle A\to B\vdash (C\to A)\to (C\to B)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ce7e1aff361766dc6393963661d0a842b250f493)
4.  ![{\displaystyle A\to B\vdash (B\to C)\to (A\to C)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b178896302597b7d6dc0e8eb34772b4c9d1e51e)
5.  ![{\displaystyle A\to B\vdash \lnot B\to \lnot A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c17ced4af0bcb50f701b8782a284732637102e5b)

Stronger logics can be obtained by adding any of the following axioms.

1.  ![{\displaystyle (A\to B)\to (\lnot B\to \lnot A)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e65b67a220aac1e11c7bdec3d9d117613d53b543)
2.  ![{\displaystyle (A\to B)\land (B\to C)\to (A\to C)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4d1e6306ddbb2e60af642003b95cee45b70546ca)
3.  ![(A\to B)\to ((B\to C)\to (A\to C))](https://wikimedia.org/api/rest_v1/media/math/render/svg/6912bc15ab7ddee7d159c4a755d0286f78238b01)
4.  ![{\displaystyle (A\to B)\to ((C\to A)\to (C\to B))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1f78059e9c400da9e35beb332b61f1b6dde57c01)
5.  ![(A\to (A\to B))\to (A\to B)](https://wikimedia.org/api/rest_v1/media/math/render/svg/0ba6f8bb00ba8f0470c8394c94d4f77f6819e635)
6.  ![{\displaystyle (A\land (A\to B))\to B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a6a3dadb1d2ae20eac1bf6c796a4bc72955fc4fc)
7.  ![{\displaystyle (A\to \lnot A)\to \lnot A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7cb5581d9e944c5850774ac2d124d6c9091d221b)
8.  ![{\displaystyle (A\to (B\to C))\to (B\to (A\to C))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e331da862ec39bde0156e4c6007e374f6bb69722)
9.  ![{\displaystyle A\to ((A\to B)\to B)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b317a983a2950da17d715de10479aac903d6073b)
10.  ![{\displaystyle ((A\to A)\to B)\to B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5a0110cf546b8c356037b2f7da17a44f4e0a24ff)
11.  ![{\displaystyle A\lor \lnot A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/42bc39c90e40298464f5f82377cb9e7ed52e938f)
12.  ![{\displaystyle A\to (A\to A)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fccb72d2692996bc7acb30af7e363a98a69628c9)

There are some notable logics stronger than B that can be obtained by adding axioms to B as follows.

-   For DW, add axiom 1.
-   For DJ, add axioms 1, 2.
-   For TW, add axioms 1, 2, 3, 4.
-   For RW, add axioms 1, 2, 3, 4, 8, 9.
-   For T, add axioms 1, 2, 3, 4, 5, 6, 7, 11.
-   For R, add axioms 1-11.
-   For E, add axioms 1-7, 10, 11, ![{\displaystyle ((A\to A)\land (B\to B)\to C)\to C}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d6e55fb300aba8ab2dddf8bee963a88e4c8a2d79), and ![{\displaystyle \Box A\land \Box B\to \Box (A\land B)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b13c250452da92732fecda46a34292fbf38af583), where ![\Box A](https://wikimedia.org/api/rest_v1/media/math/render/svg/38a5cd9c3308f520a7b3c53b9f828a97b7eb697d) is defined as ![{\displaystyle (A\to A)\to A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1cadf3688c8aba1e56a681629dc1621249f9bce7).
-   For RM, add all the additional axioms.

## Models\[[edit][38]\]

### Routley–Meyer models\[[edit][39]\]

The standard model theory for relevance logics is the Routley-Meyer ternary-relational semantics developed by [Richard Routley][40] and [Robert Meyer][41]. A Routley–Meyer frame F for a propositional language is a quadruple (W,R,\*,0), where W is a non-empty set, R is a ternary relation on W, and \* is a function from W to W, and ![{\displaystyle 0\in W}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5acd8971520bbf0e6ce0345c5f2a87db7fc04ebc). A Routley-Meyer model M is a Routley-Meyer frame F together with a valuation, ![\Vdash ](https://wikimedia.org/api/rest_v1/media/math/render/svg/b36c6f760b79c97e44771611b1e8ef69913ec5c8), that assigns a truth value to each atomic proposition relative to each point ![{\displaystyle a\in W}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e46b6f451e41caa8de47ac4936c70664be5cf126). There are some conditions placed on Routley-Meyer frames. Define ![a\leq b](https://wikimedia.org/api/rest_v1/media/math/render/svg/41558abc50886fdf38817495b243958d7b3dd39b) as ![{\displaystyle R0ab}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0bae3cf55aec5b5694e0b83a431c48f4f173ad6f).

Write ![{\displaystyle M,a\Vdash A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/dd4ab1158176ad4a53a4af8c40ae7437af44e378) and ![{\displaystyle M,a\nVdash A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/db3d5ca7b521024725af96e011995e9fa5fb9d74) to indicate that the formula ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is true, or not true, respectively, at point ![a](https://wikimedia.org/api/rest_v1/media/math/render/svg/ffd2487510aa438433a2579450ab2b3d557e5edc) in ![M](https://wikimedia.org/api/rest_v1/media/math/render/svg/f82cade9898ced02fdd08712e5f0c0151758a0dd). One final condition on Routley-Meyer models is the hereditariness condition.

By an inductive argument, hereditariness can be shown to extend to complex formulas, using the truth conditions below.

The truth conditions for complex formulas are as follows.

A formula ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) holds in a model ![M](https://wikimedia.org/api/rest_v1/media/math/render/svg/f82cade9898ced02fdd08712e5f0c0151758a0dd) just in case ![{\displaystyle M,0\Vdash A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3934ae9576db868d22ed26dbb38f781faefb76ee). A formula ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) holds on a frame ![F](https://wikimedia.org/api/rest_v1/media/math/render/svg/545fd099af8541605f7ee55f08225526be88ce57) iff A holds in every model ![{\displaystyle (F,\Vdash )}](https://wikimedia.org/api/rest_v1/media/math/render/svg/82f6636593dc4e7e5b9cf558ce2423deb7793ad9). A formula ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is valid in a class of frames iff A holds on every frame in that class. The class of all Routley–Meyer frames satisfying the above conditions validates that relevance logic B. One can obtain Routley-Meyer frames for other relevance logics by placing appropriate restrictions on R and on \*. These conditions are easier to state using some standard definitions. Let ![{\displaystyle Rabcd}](https://wikimedia.org/api/rest_v1/media/math/render/svg/81ead6ab003748f71de540c4144ae740b98ba63b) be defined as ![{\displaystyle \exists x(Rabx\land Rxcd)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fae28e92c9685c83a34f64c4f5f1e7400909de47), and let ![{\displaystyle Ra(bc)d}](https://wikimedia.org/api/rest_v1/media/math/render/svg/28f152674bd27174099187ad4196b9c9decf9bd8) be defined as ![{\displaystyle \exists x(Rbcx\land Raxd)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/be4438d68a3146ba42ab2263b6d3b788ed6dde98). Some of the frame conditions and the axioms they validate are the following.

Name

Frame condition

Axiom

Pseudo-modus ponens

![{\displaystyle Raaa}](https://wikimedia.org/api/rest_v1/media/math/render/svg/97cd8775a91125ed88e97403af8f99fbd3cfd8e9)

![{\displaystyle (A\land (A\to B))\to B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a6a3dadb1d2ae20eac1bf6c796a4bc72955fc4fc)

Prefixing

![{\displaystyle Rabcd\Rightarrow Ra(bc)d}](https://wikimedia.org/api/rest_v1/media/math/render/svg/74507e29c39b26a0d9773621005fedb211429e73)

![{\displaystyle (A\to B)\to ((C\to A)\to (C\to B))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1f78059e9c400da9e35beb332b61f1b6dde57c01)

Suffixing

![{\displaystyle Rabcd\Rightarrow Rb(ac)d}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f97f67b499e2dbf553867ae367ad4737e9bc0a69)

![(A\to B)\to ((B\to C)\to (A\to C))](https://wikimedia.org/api/rest_v1/media/math/render/svg/6912bc15ab7ddee7d159c4a755d0286f78238b01)

Contraction

![{\displaystyle Rabc\Rightarrow Rabbc}](https://wikimedia.org/api/rest_v1/media/math/render/svg/53bac3444ca528ac46dd9788a06dc02c6412a516)

![(A\to (A\to B))\to (A\to B)](https://wikimedia.org/api/rest_v1/media/math/render/svg/0ba6f8bb00ba8f0470c8394c94d4f77f6819e635)

Conjunctive syllogism

![{\displaystyle Rabc\Rightarrow Ra(ab)c}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fe6727d34814e3e64f5ba45a44dafec2566f74e5)

![{\displaystyle (A\to B)\land (B\to C)\to (A\to C)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4d1e6306ddbb2e60af642003b95cee45b70546ca)

Assertion

![{\displaystyle Rabc\Rightarrow Rbac}](https://wikimedia.org/api/rest_v1/media/math/render/svg/14488e2997f9733882ed0dcc6386699772e053aa)

![{\displaystyle A\to ((A\to B)\to B)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b317a983a2950da17d715de10479aac903d6073b)

E axiom

![{\displaystyle Ra0a}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a067db60620859141ee17a229267fc40bafbf455)

![{\displaystyle ((A\to A)\to B)\to B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5a0110cf546b8c356037b2f7da17a44f4e0a24ff)

Mingle axiom

![{\displaystyle Rabc\Rightarrow a\leq c}](https://wikimedia.org/api/rest_v1/media/math/render/svg/23be93d634d7f895ca9b454cfd24a8146e3b662d) or ![{\displaystyle b\leq c}](https://wikimedia.org/api/rest_v1/media/math/render/svg/04cbc237b132cef779abc512c9c8e288781a808e)

![{\displaystyle A\to (A\to A)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fccb72d2692996bc7acb30af7e363a98a69628c9)

Reductio

![{\displaystyle Raa^{*}a}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9e9179b5515f8c5634e7bfc8443bc34df568e775)

![{\displaystyle (A\to \lnot A)\to \lnot A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7cb5581d9e944c5850774ac2d124d6c9091d221b)

Contraposition

![{\displaystyle Rabc\Rightarrow Rac^{*}b^{*}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9f08d4cc0e444a7e954ff2fbc533fd38b8829686)

![{\displaystyle (A\to B)\to (\lnot B\to \lnot A)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e65b67a220aac1e11c7bdec3d9d117613d53b543)

Excluded middle

![{\displaystyle 0^{*}\leq 0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c9313cefd76804f72bde3346a87de1cc327ae510)

![{\displaystyle A\lor \lnot A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/42bc39c90e40298464f5f82377cb9e7ed52e938f)

Strict implication weakening

![{\displaystyle 0\leq a}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6ab8fbbd165f734dda26f9384b4c5557c79d0e52)

![{\displaystyle A\to (B\to B)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/05bffa3c9b735969f84b68294b2ef484292aab75)

Weakening

![{\displaystyle Rabc\Rightarrow b\leq c}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3c6d28f5abda1552d14ffc6fc37295db61b429e5)

![A\to (B\to A)](https://wikimedia.org/api/rest_v1/media/math/render/svg/ba8692a5036a11936ef451eadfda6c4039a56249)

The last two conditions validate forms of weakening that relevance logics were originally developed to avoid. They are included to show the flexibility of the Routley–Meyer models.

### Operational models\[[edit][42]\]

#### Urquhart models\[[edit][43]\]

Operational models for negation-free fragments of relevance logics were developed by [Alasdair Urquhart][44] in his PhD thesis and in subsequent work. The intuitive idea behind the operational models is that points in a model are pieces of information, and combining information supporting a conditional with the information supporting its antecedent yields some information that supports the consequent. Since the operational models do not generally interpret negation, this section will consider only languages with a conditional, conjunction, and disjunction.

An operational frame ![F](https://wikimedia.org/api/rest_v1/media/math/render/svg/545fd099af8541605f7ee55f08225526be88ce57) is a triple ![{\displaystyle (K,\cdot ,0)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/970910489b8d68f5b1cfa677e253f0e86e6fca8b), where ![K](https://wikimedia.org/api/rest_v1/media/math/render/svg/2b76fce82a62ed5461908f0dc8f037de4e3686b0) is a non-empty set, ![{\displaystyle 0\in K}](https://wikimedia.org/api/rest_v1/media/math/render/svg/88f6d135a64287ecfe6ac6cd2219e57585c726c1), and ![\cdot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ba2c023bad1bd39ed49080f729cbf26bc448c9ba) is a binary operation on ![K](https://wikimedia.org/api/rest_v1/media/math/render/svg/2b76fce82a62ed5461908f0dc8f037de4e3686b0). Frames have conditions, some of which may be dropped to model different logics. The conditions Urquhart proposed to model the conditional of the relevance logic R are the following.

Under these conditions, the operational frame is a [join-semilattice][45].

An operational model ![M](https://wikimedia.org/api/rest_v1/media/math/render/svg/f82cade9898ced02fdd08712e5f0c0151758a0dd) is a frame ![F](https://wikimedia.org/api/rest_v1/media/math/render/svg/545fd099af8541605f7ee55f08225526be88ce57) with a valuation ![V](https://wikimedia.org/api/rest_v1/media/math/render/svg/af0f6064540e84211d0ffe4dac72098adfa52845) that maps pairs of points and atomic propositions to truth values, T or F. ![V](https://wikimedia.org/api/rest_v1/media/math/render/svg/af0f6064540e84211d0ffe4dac72098adfa52845) can be extended to a valuation ![\Vdash ](https://wikimedia.org/api/rest_v1/media/math/render/svg/b36c6f760b79c97e44771611b1e8ef69913ec5c8) on complex formulas as follows.

A formula ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) holds in a model ![M](https://wikimedia.org/api/rest_v1/media/math/render/svg/f82cade9898ced02fdd08712e5f0c0151758a0dd) iff ![{\displaystyle M,0\Vdash A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3934ae9576db868d22ed26dbb38f781faefb76ee). A formula ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is valid in a class of models ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029) iff it holds in each model ![{\displaystyle M\in C}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1d73c9213abb5275bd5c0127173d4b6bc5804e91).

The conditional fragment of R is sound and complete with respect to the class of semilattice models. The logic with conjunction and disjunction is properly stronger than the conditional, conjunction, disjunction fragment of R. In particular, the formula ![{\displaystyle (A\to (B\lor C))\land (B\to C)\to (A\to C)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fa06c4c24cea39ecba2871308b67c75ed6f40298) is valid for the operational models but it is invalid in R. The logic generated by the operational models for R has a complete axiomatic proof system, due [Kit Fine][46] and to Gerald Charlwood. Charlwood also provided a natural deduction system for the logic, which he proved equivalent to the axiomatic system. Charlwood showed that his natural deduction system is equivalent to a system provided by [Dag Prawitz][47].

The operational semantics can be adapted to model the conditional of E by adding a non-empty set of worlds ![W](https://wikimedia.org/api/rest_v1/media/math/render/svg/54a9c4c547f4d6111f81946cad242b18298d70b7) and an accessibility relation ![\leq ](https://wikimedia.org/api/rest_v1/media/math/render/svg/440568a09c3bfdf0e1278bfa79eb137c04e94035) on ![{\displaystyle W\times W}](https://wikimedia.org/api/rest_v1/media/math/render/svg/12420206b95f400ec3fca122cd6e1fe23f6e8451) to the frames. The accessibility relation is required to be reflexive and transitive, to capture the idea that E's conditional has an S4 necessity. The valuations then map triples of atomic propositions, points, and worlds to truth values. The truth condition for the conditional is changed to the following.

-   ![{\displaystyle M,a,w\Vdash A\to B\iff \forall b,\forall w'\geq w(M,b,w'\Vdash A\Rightarrow M,a\cdot b,w'\Vdash B)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/015f863b4dd40033b6b99405e01b07d94ce45dc3)

The operational semantics can be adapted to model the conditional of T by adding a relation ![\leq ](https://wikimedia.org/api/rest_v1/media/math/render/svg/440568a09c3bfdf0e1278bfa79eb137c04e94035) on ![K\times K](https://wikimedia.org/api/rest_v1/media/math/render/svg/482213ed727088a54983b10499b51dd0e320ba5a). The relation is required to obey the following conditions.

The truth condition for the conditional is changed to the following.

-   ![{\displaystyle M,a\Vdash A\to B\iff \forall b((a\leq b\land M,b\Vdash A)\Rightarrow M,a\cdot b\Vdash B)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e91c57bdb7afb14a45ead1fe12ff67342e93c3a5)

There are two ways to model the contraction-less relevance logics TW and RW with the operational models. The first way is to drop the condition that ![{\displaystyle x\cdot x=x}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2036c5a01da1f20a1d9a581bedb3025fc4464ddd). The second way is to keep the semilattice conditions on frames and add a binary relation, ![J](https://wikimedia.org/api/rest_v1/media/math/render/svg/359e4f407b49910e02c27c2f52e87a36cd74c053), of disjointness to the frame. For these models, the truth conditions for the conditional is changed to the following, with the addition of the ordering in the case of TW.

-   ![{\displaystyle M,a\Vdash A\to B\iff \forall b((Jab\land M,b\Vdash A)\Rightarrow M,a\cdot b\Vdash B)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5f097f8e6f993ca04bf1283c63960b205ac0531a)

#### Humberstone models\[[edit][48]\]

Urquhart showed that the semilattice logic for R is properly stronger than the positive fragment of R. Lloyd Humberstone provided an enrichment of the operational models that permitted a different truth condition for disjunction. The resulting class of models generates exactly the positive fragment of R.

An operational frame ![F](https://wikimedia.org/api/rest_v1/media/math/render/svg/545fd099af8541605f7ee55f08225526be88ce57) is a quadruple ![{\displaystyle (K,\cdot ,+,0)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0a9a407bbdcabccdb6184d2372a11c56bc6b44c3), where ![K](https://wikimedia.org/api/rest_v1/media/math/render/svg/2b76fce82a62ed5461908f0dc8f037de4e3686b0) is a non-empty set, ![{\displaystyle 0\in K}](https://wikimedia.org/api/rest_v1/media/math/render/svg/88f6d135a64287ecfe6ac6cd2219e57585c726c1), and {![\cdot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ba2c023bad1bd39ed49080f729cbf26bc448c9ba), ![+](https://wikimedia.org/api/rest_v1/media/math/render/svg/fe6ef363cd19902d1a7a71fb1c8b21e8ede52406)} are binary operations on ![K](https://wikimedia.org/api/rest_v1/media/math/render/svg/2b76fce82a62ed5461908f0dc8f037de4e3686b0). Let ![a\leq b](https://wikimedia.org/api/rest_v1/media/math/render/svg/41558abc50886fdf38817495b243958d7b3dd39b) be defined as ![{\displaystyle \exists x(a+x=b)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/42287778f653390cc7a212d6a96831db87d1c775). The frame conditions are the following.

An operational model ![M](https://wikimedia.org/api/rest_v1/media/math/render/svg/f82cade9898ced02fdd08712e5f0c0151758a0dd) is a frame ![F](https://wikimedia.org/api/rest_v1/media/math/render/svg/545fd099af8541605f7ee55f08225526be88ce57) with a valuation ![V](https://wikimedia.org/api/rest_v1/media/math/render/svg/af0f6064540e84211d0ffe4dac72098adfa52845) that maps pairs of points and atomic propositions to truth values, T or F. ![V](https://wikimedia.org/api/rest_v1/media/math/render/svg/af0f6064540e84211d0ffe4dac72098adfa52845) can be extended to a valuation ![\Vdash ](https://wikimedia.org/api/rest_v1/media/math/render/svg/b36c6f760b79c97e44771611b1e8ef69913ec5c8) on complex formulas as follows.

A formula ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) holds in a model ![M](https://wikimedia.org/api/rest_v1/media/math/render/svg/f82cade9898ced02fdd08712e5f0c0151758a0dd) iff ![{\displaystyle M,0\Vdash A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3934ae9576db868d22ed26dbb38f781faefb76ee). A formula ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is valid in a class of models ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029) iff it holds in each model ![{\displaystyle M\in C}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1d73c9213abb5275bd5c0127173d4b6bc5804e91).

The positive fragment of R is sound and complete with respect to the class of these models. Humberstone's semantics can be adapted to model different logics by dropping or adding frame conditions as follows.

System

Frame conditions

B

1, 5-9, 14

10.  ![{\displaystyle x\leq x\cdot 0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bb9274164b6f5f2fad32b1d41d20325b9a9eb1f2)
11.  ![{\displaystyle (x\cdot y)\cdot z\leq y\cdot (x\cdot z)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2d224089746bae13a572f5be26d7b2dd7506230e)
12.  ![{\displaystyle (x\cdot y)\cdot z\leq x\cdot (y\cdot z)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9025efdb4f2aee904893a7f9c4047a79b25596b4)
13.  ![{\displaystyle x\cdot y\leq (x\cdot y)\cdot y}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8f17cd8f81ad9ffd4b284d96730b67ed8c93b1c9)
14.  ![{\displaystyle (y+z)\cdot x=y\cdot x+z\cdot x}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ba06fc7810279a6d01fb6d58e1c96415a7164fd1)
15.  ![{\displaystyle x\cdot x=x}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2036c5a01da1f20a1d9a581bedb3025fc4464ddd)

TW

1, 11, 12, 5-9, 14

EW

1, 10, 11, 5-9, 14

RW

1-3, 5-9

T

1, 11, 12, 13, 5-9, 14

E

1, 10, 11, 13, 5-9, 14

R

1-9

RM

1-3, 5-9, 15

### Algebraic models\[[edit][49]\]

Some relevance logics can be given algebraic models, such as the logic R. The algebraic structures for R are [de Morgan monoids][50], which are sextuples ![{\displaystyle (D,\land ,\lor ,\lnot ,\circ ,e)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e61201e5eb44b2f298c9547bb95e1c3372ce83b8) where

The operation ![{\displaystyle x\to y}](https://wikimedia.org/api/rest_v1/media/math/render/svg/43570cdee5baeaebcf546338f77cf67c27a7344f) interpreting the conditional of R is defined as ![{\displaystyle \lnot (x\circ \lnot y)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/47bf6e0fb082d33377ac1f62a0131211af59ecc0). A de Morgan monoid is a [residuated lattice][51], obeying the following residuation condition.

![{\displaystyle x\circ y\leq z\iff x\leq y\to z}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c6a9874f39685fb8c3c594914a0ef10a85a20d57)

An interpretation ![v](https://wikimedia.org/api/rest_v1/media/math/render/svg/e07b00e7fc0847fbd16391c778d65bc25c452597) is a [homomorphism][52] from the propositional language to a de Morgan monoid ![M](https://wikimedia.org/api/rest_v1/media/math/render/svg/f82cade9898ced02fdd08712e5f0c0151758a0dd) such that

Given a de Morgan monoid ![M](https://wikimedia.org/api/rest_v1/media/math/render/svg/f82cade9898ced02fdd08712e5f0c0151758a0dd) and an interpretation ![v](https://wikimedia.org/api/rest_v1/media/math/render/svg/e07b00e7fc0847fbd16391c778d65bc25c452597), one can say that formula ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) holds on ![v](https://wikimedia.org/api/rest_v1/media/math/render/svg/e07b00e7fc0847fbd16391c778d65bc25c452597) just in case ![{\displaystyle e\leq v(A)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/51cf6717f49817bd34eb309fea9949cb7e2dd8ea). A formula ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is valid just in case it holds on all interpretations on all de Morgan monoids. The logic R is sound and complete for de Morgan monoids.

## See also\[[edit][53]\]

-   [Non sequitur (logic)][54]
-   [Relevant type system][55], a [substructural type system][56]

## References\[[edit][57]\]

1.  __[^][58]__ Lewis, C. I. (1912). "Implication and the Algebra of Logic." *[Mind][59]*, __21__(84):522–531.
2.  __[^][60]__ Lewis, C. I. (1917). "The issues concerning material implication." *Journal of Philosophy, Psychology, and Scientific Methods*, __14__:350–356.
3.  __[^][61]__ [Ackermann, W.][62] (1956), "Begründung einer strengen Implikation", *[Journal of Symbolic Logic][63]*, __21__ (2): 113–128, [JSTOR][64] [2268750][65]
4.  __[^][66]__ Moh, Shaw-kwei (1950), "The Deduction Theorems and Two New Logical Systems", *Methodos*, __2__: 56–75 Moh Shaw-Kwei, 1950, "," Methodos 2 56–75.
5.  __[^][67]__ Church, A. (1951), *The Weak Theory of Implication* in *Kontroliertes Denken: Untersuchungen zum Logikkalkül und zur Logik der Einzelwissenschaften*, Kommissions-Verlag Karl Alber, edited by A. Menne, A. Wilhelmy and H. Angsil, pp. 22–37.

## Bibliography\[[edit][68]\]

-   [Alan Ross Anderson][69] and [Nuel Belnap][70], 1975. *Entailment: the logic of relevance and necessity, vol. I*. Princeton University Press. [ISBN][71] [0-691-07192-6][72]
-   \------- and J. M. Dunn, 1992. *Entailment: the logic of relevance and necessity, vol. II*, Princeton University Press.
-   Mares, Edwin, and Meyer, R. K., 2001, "Relevant Logics", in Goble, Lou, ed., *The Blackwell Guide to Philosophical Logic*. Blackwell.
-   Richard Routley, Val Plumwood, Robert K. Meyer, and Ross T. Brady. *Relevant Logics and their Rivals*. Ridgeview, 1982.
-   R. Brady (ed.), *Relevant Logics and their Rivals (Volume II)*, Aldershot: Ashgate, 2003.
-   Urquhart, Alasdair (1972). ["Semantics for relevant logics"][73] (PDF). *Journal of Symbolic Logic*. __37__: 159–169. [doi][74]:[10.2307/2272559][75].
-   Alasdair Urquhart. *[The Semantics of Entailment][76]*. PhD thesis, University of Pittsburgh, 1972.
-   [Katalin Bimbó][77], Relevance logics, in *Philosophy of Logic*, D. Jacquette (ed.), (volume 5 of *Handbook of the Philosophy of Science*, D. Gabbay, P. Thagard, J. Woods (eds.)), Elsevier (North-Holland), 2006, pp. 723–789.
-   J. Michael Dunn and Greg Restall. Relevance logic. In *Handbook of Philosophical Logic*, Volume 6, F. Guenthner and D. Gabbay (eds.), Dordrecht: Kluwer, 2002, pp. 1–136.
-   Stephen Read, *Relevant Logic*, Oxford: Blackwell, 1988.
-   Humberstone, Lloyd (1987). ["Operational semantics for positive R"][78]. *Notre Dame Journal of Formal Logic*. __29__ (1): 61–80. [doi][79]:[10.1305/ndjfl/1093637771][80].

## External links\[[edit][81]\]

-   [Stanford Encyclopaedia of Philosophy][82]: "[Relevance logic][83]" – by Edwin Mares.
-   *[Relevance logic][84]* – by J. Michael Dunn and Greg Restall
-   *[Relevant Logic][85]* – by Stephen Read

[1]: https://en.wikipedia.org/wiki/Classical_logic "Classical logic"
[2]: https://en.wikipedia.org/wiki/Antecedent_(logic) "Antecedent (logic)"
[3]: https://en.wikipedia.org/wiki/Consequent "Consequent"
[4]: https://en.wikipedia.org/wiki/Entailment "Entailment"
[5]: https://en.wikipedia.org/wiki/Substructural_logic "Substructural logic"
[6]: https://en.wikipedia.org/wiki/Modal_logic "Modal logic"
[7]: https://en.wikipedia.org/wiki/Logician "Logician"
[8]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[9]: https://en.wikipedia.org/wiki/Truth-functional_logic "Truth-functional logic"
[10]: https://en.wikipedia.org/wiki/C._I._Lewis "C. I. Lewis"
[11]: https://en.wikipedia.org/wiki/Strict_implication "Strict implication"
[12]: https://en.wikipedia.org/wiki/Paradoxes_of_material_implication "Paradoxes of material implication"
[13]: https://en.wikipedia.org/wiki/Vacuous_truth "Vacuous truth"
[14]: https://en.wikipedia.org/wiki/Relevance_logic#cite_note-1
[15]: https://en.wikipedia.org/wiki/Relevance_logic#cite_note-2
[16]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[17]: https://en.wikipedia.org/wiki/Atomic_formula "Atomic formula"
[18]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[19]: https://en.wikipedia.org/wiki/Predicate_calculus "Predicate calculus"
[20]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[21]: https://en.wikipedia.org/wiki/Gentzen "Gentzen"
[22]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[23]: https://en.wikipedia.org/wiki/Sequent "Sequent"
[24]: https://en.wikipedia.org/wiki/Paraconsistent_logic "Paraconsistent logic"
[25]: https://en.wikipedia.org/wiki/Principle_of_explosion "Principle of explosion"
[26]: https://en.wikipedia.org/w/index.php?title=Relevance_logic&action=edit&section=1 "Edit section: History"
[27]: https://en.wikipedia.org/wiki/Ivan_E._Orlov "Ivan E. Orlov"
[28]: https://en.wikipedia.org/wiki/Wilhelm_Ackermann "Wilhelm Ackermann"
[29]: https://en.wikipedia.org/wiki/Relevance_logic#cite_note-3
[30]: https://en.wikipedia.org/w/index.php?title=Moh_Shaw-Kwei&action=edit&redlink=1 "Moh Shaw-Kwei (page does not exist)"
[31]: https://en.wikipedia.org/wiki/Relevance_logic#cite_note-4
[32]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[33]: https://en.wikipedia.org/wiki/Relevance_logic#cite_note-5
[34]: https://en.wikipedia.org/wiki/Nuel_Belnap "Nuel Belnap"
[35]: https://en.wikipedia.org/wiki/Alan_Ross_Anderson "Alan Ross Anderson"
[36]: https://en.wikipedia.org/wiki/Entailment "Entailment"
[37]: https://en.wikipedia.org/w/index.php?title=Relevance_logic&action=edit&section=2 "Edit section: Axioms"
[38]: https://en.wikipedia.org/w/index.php?title=Relevance_logic&action=edit&section=3 "Edit section: Models"
[39]: https://en.wikipedia.org/w/index.php?title=Relevance_logic&action=edit&section=4 "Edit section: Routley–Meyer models"
[40]: https://en.wikipedia.org/wiki/Richard_Sylvan "Richard Sylvan"
[41]: https://en.wikipedia.org/wiki/Bob_Meyer_(logician) "Bob Meyer (logician)"
[42]: https://en.wikipedia.org/w/index.php?title=Relevance_logic&action=edit&section=5 "Edit section: Operational models"
[43]: https://en.wikipedia.org/w/index.php?title=Relevance_logic&action=edit&section=6 "Edit section: Urquhart models"
[44]: https://en.wikipedia.org/wiki/Alasdair_Urquhart "Alasdair Urquhart"
[45]: https://en.wikipedia.org/wiki/Join-semilattice "Join-semilattice"
[46]: https://en.wikipedia.org/wiki/Kit_Fine "Kit Fine"
[47]: https://en.wikipedia.org/wiki/Dag_Prawitz "Dag Prawitz"
[48]: https://en.wikipedia.org/w/index.php?title=Relevance_logic&action=edit&section=7 "Edit section: Humberstone models"
[49]: https://en.wikipedia.org/w/index.php?title=Relevance_logic&action=edit&section=8 "Edit section: Algebraic models"
[50]: https://en.wikipedia.org/wiki/De_Morgan_algebra "De Morgan algebra"
[51]: https://en.wikipedia.org/wiki/Residuated_lattice "Residuated lattice"
[52]: https://en.wikipedia.org/wiki/Homomorphism "Homomorphism"
[53]: https://en.wikipedia.org/w/index.php?title=Relevance_logic&action=edit&section=9 "Edit section: See also"
[54]: https://en.wikipedia.org/wiki/Non_sequitur_(logic) "Non sequitur (logic)"
[55]: https://en.wikipedia.org/wiki/Relevant_type_system "Relevant type system"
[56]: https://en.wikipedia.org/wiki/Substructural_type_system "Substructural type system"
[57]: https://en.wikipedia.org/w/index.php?title=Relevance_logic&action=edit&section=10 "Edit section: References"
[58]: https://en.wikipedia.org/wiki/Relevance_logic#cite_ref-1
[59]: https://en.wikipedia.org/wiki/Mind_(journal) "Mind (journal)"
[60]: https://en.wikipedia.org/wiki/Relevance_logic#cite_ref-2
[61]: https://en.wikipedia.org/wiki/Relevance_logic#cite_ref-3
[62]: https://en.wikipedia.org/wiki/Wilhelm_Ackermann "Wilhelm Ackermann"
[63]: https://en.wikipedia.org/wiki/Journal_of_Symbolic_Logic "Journal of Symbolic Logic"
[64]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[65]: https://www.jstor.org/stable/2268750
[66]: https://en.wikipedia.org/wiki/Relevance_logic#cite_ref-4
[67]: https://en.wikipedia.org/wiki/Relevance_logic#cite_ref-5
[68]: https://en.wikipedia.org/w/index.php?title=Relevance_logic&action=edit&section=11 "Edit section: Bibliography"
[69]: https://en.wikipedia.org/wiki/Alan_Ross_Anderson "Alan Ross Anderson"
[70]: https://en.wikipedia.org/wiki/Nuel_Belnap "Nuel Belnap"
[71]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[72]: https://en.wikipedia.org/wiki/Special:BookSources/0-691-07192-6 "Special:BookSources/0-691-07192-6"
[73]: https://www.jstor.org/stable/2272559
[74]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[75]: https://doi.org/10.2307%2F2272559
[76]: https://philarchive.org/archive/URQTSO
[77]: https://en.wikipedia.org/wiki/Katalin_Bimb%C3%B3 "Katalin Bimbó"
[78]: https://doi.org/10.1305%2Fndjfl%2F1093637771
[79]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[80]: https://doi.org/10.1305%2Fndjfl%2F1093637771
[81]: https://en.wikipedia.org/w/index.php?title=Relevance_logic&action=edit&section=12 "Edit section: External links"
[82]: https://en.wikipedia.org/wiki/Stanford_Encyclopaedia_of_Philosophy "Stanford Encyclopaedia of Philosophy"
[83]: http://plato.stanford.edu/entries/logic-relevance/
[84]: http://consequently.org/papers/rle.pdf
[85]: https://www.st-andrews.ac.uk/~slr/Relevant_Logic.pdf
