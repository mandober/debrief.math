---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Many-valued_logic
page-title:       Many-valued logic - Wikipedia
article-title:    Many-valued logic - Wikipedia
---
# Many-valued logic - Wikipedia

In logic, a many-valued logic (also multi- or multiple-valued logic) is a propositional calculus in which there are more than two truth values. Traditionally, in Aristotle's logical calculus, there were only two possible values (i.e., "true" and "false") for any proposition. Classical two-valued logic may be extended to n-valued logic for n greater than 2. Those most popular in the literature are three-valued (e.g., Łukasiewicz's and Kleene's, which accept the values "true", "false", and "unknown"), four-valued, nine-valued, the finite-valued (finitely-many valued) with more than three values, and the infinite-valued (infinitely-many-valued), such as fuzzy logic and probability logic.
In [logic][1], a __many-valued logic__ (also __multi-__ or __multiple-valued logic__) is a [propositional calculus][2] in which there are more than two [truth values][3]. Traditionally, in [Aristotle][4]'s [logical calculus][5], there were only two possible values (i.e., "true" and "false") for any [proposition][6]. Classical [two-valued logic][7] may be extended to __*n*\-valued logic__ for *n* greater than 2. Those most popular in the literature are [three-valued][8] (e.g., [Łukasiewicz's][9] and [Kleene's][10], which accept the values "true", "false", and "unknown"), [four-valued][11], [nine-valued][12], the [finite-valued][13] (finitely-many valued) with more than three values, and the [infinite-valued][14] (infinitely-many-valued), such as [fuzzy logic][15] and [probability logic][16].

## History\[[edit][17]\]

The first known classical logician who did not fully accept the [law of excluded middle][18] was [Aristotle][19] (who, ironically, is also generally considered to be the first classical logician and the "father of logic"[\[1\]][20]). Aristotle admitted that his laws did not all apply to future events (*De Interpretatione*, *ch. IX*), but he didn't create a system of multi-valued logic to explain this isolated remark. Until the coming of the 20th century, later logicians followed [Aristotelian logic][21], which includes or assumes the [law of the excluded middle][22].

The 20th century brought back the idea of multi-valued logic. The Polish logician and philosopher [Jan Łukasiewicz][23] began to create systems of many-valued logic in 1920, using a third value, "possible", to deal with Aristotle's [paradox of the sea battle][24]. Meanwhile, the American mathematician, [Emil L. Post][25] (1921), also introduced the formulation of additional truth degrees with *n* ≥ 2, where *n* are the truth values. Later, Jan Łukasiewicz and [Alfred Tarski][26] together formulated a logic on *n* truth values where *n* ≥ 2. In 1932, [Hans Reichenbach][27] formulated a logic of many truth values where *n*→∞. [Kurt Gödel][28] in 1932 showed that [intuitionistic logic][29] is not a [finitely-many valued logic][30], and defined a system of [Gödel logics][31] intermediate between [classical][32] and intuitionistic logic; such logics are known as [intermediate logics][33].

## Examples\[[edit][34]\]

### Kleene (strong) *K*3 and Priest logic *P*3\[[edit][35]\]

[Kleene][36]'s "(strong) logic of indeterminacy" *K*3 (sometimes ![K_{3}^{S}](https://wikimedia.org/api/rest_v1/media/math/render/svg/85b66b44725c524cfb2b494126df28a041165b9d)) and [Priest][37]'s "logic of paradox" add a third "undefined" or "indeterminate" truth value I. The truth functions for [negation][38] (¬), [conjunction][39] (∧), [disjunction][40] (∨), [implication][41] (→*K*), and [biconditional][42] (↔*K*) are given by:[\[2\]][43]

¬

 

T

F

I

I

F

T

∧

T

I

F

T

T

I

F

I

I

I

F

F

F

F

F

∨

T

I

F

T

T

T

T

I

T

I

I

F

T

I

F

→*K*

T

I

F

T

T

I

F

I

T

I

I

F

T

T

T

↔*K*

T

I

F

T

T

I

F

I

I

I

I

F

F

I

T

The difference between the two logics lies in how [tautologies][44] are defined. In *K*3 only T is a *designated truth value*, while in *P*3 both T and I are (a logical formula is considered a tautology if it evaluates to a designated truth value). In Kleene's logic I can be interpreted as being "underdetermined", being neither true nor false, while in Priest's logic I can be interpreted as being "overdetermined", being both true and false. *K*3 does not have any tautologies, while *P*3 has the same tautologies as classical two-valued logic.[\[3\]][45]

### Bochvar's internal three-valued logic\[[edit][46]\]

Another logic is Dmitry Bochvar's "internal" three-valued logic ![B_{3}^{I}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4faa7de61ff5f3c7468a579c5362aaf33e263ffb), also called Kleene's weak three-valued logic. Except for negation and biconditional, its truth tables are all different from the above.[\[4\]][47]

∧+

T

I

F

T

T

I

F

I

I

I

I

F

F

I

F

∨+

T

I

F

T

T

I

T

I

I

I

I

F

T

I

F

→+

T

I

F

T

T

I

F

I

I

I

I

F

T

I

T

The intermediate truth value in Bochvar's "internal" logic can be described as "contagious" because it propagates in a formula regardless of the value of any other variable.[\[4\]][48]

### Belnap logic (*B*4)\[[edit][49]\]

[Belnap][50]'s logic *B*4 combines *K*3 and *P*3. The overdetermined truth value is here denoted as *B* and the underdetermined truth value as *N*.

*f*¬

 

T

F

B

B

N

N

F

T

*f*∧

T

B

N

F

T

T

B

N

F

B

B

B

F

F

N

N

F

N

F

F

F

F

F

F

*f*∨

T

B

N

F

T

T

T

T

T

B

T

B

T

B

N

T

T

N

N

F

T

B

N

F

### Gödel logics *Gk* and *G*∞\[[edit][51]\]

In 1932 [Gödel][52] defined[\[5\]][53] a family ![G_{k}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4d8034a8094aa6549db10b01a1e8f73bb57ac39f) of many-valued logics, with finitely many truth values ![{\displaystyle 0,{\tfrac {1}{k-1}},{\tfrac {2}{k-1}},\ldots ,{\tfrac {k-2}{k-1}},1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c22b214c58267ec95349530532c182262dbd1ea3), for example ![G_{3}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d68b13104a6f81e902fca48f10a1531b3e592938) has the truth values ![0,{\tfrac {1}{2}},1](https://wikimedia.org/api/rest_v1/media/math/render/svg/6aa92c1cda1558ff2e1a1d0a131db3f8cc29c8c8) and ![G_{4}](https://wikimedia.org/api/rest_v1/media/math/render/svg/149de5cbc9bd78a60484b9c011a9020531255118) has ![0,{\tfrac {1}{3}},{\tfrac {2}{3}},1](https://wikimedia.org/api/rest_v1/media/math/render/svg/ba4147e60a70d08c783a5523f1b0cf127c72ac24). In a similar manner he defined a logic with infinitely many truth values, ![G_{\infty }](https://wikimedia.org/api/rest_v1/media/math/render/svg/2d2172a40ff62352f108303eb3ce37d7ecc5909f), in which the truth values are all the [real numbers][54] in the interval ![[0,1]](https://wikimedia.org/api/rest_v1/media/math/render/svg/738f7d23bb2d9642bab520020873cccbef49768d). The designated truth value in these logics is 1.

The conjunction ![\wedge ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1caa4004cb216ef2930bb12fe805a76870caed94) and the disjunction ![\vee ](https://wikimedia.org/api/rest_v1/media/math/render/svg/7b76220c6805c9b465d6efbc7686c624f49f3023) are defined respectively as the [minimum][55] and [maximum][56] of the operands:

![{\displaystyle {\begin{aligned}u\wedge v&:=\min\{u,v\}\\u\vee v&:=\max\{u,v\}\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e692de2a1886344a954b270c0d6a86921061d003)

Negation ![\neg _{G}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab1cafd2a50331027feb4bf55cf81e68e6f531f3) and implication ![\xrightarrow[G]{}](https://wikimedia.org/api/rest_v1/media/math/render/svg/22501998f5f47d87375c66727b3a00f4d0abdb5d) are defined as follows:

![{\displaystyle {\begin{aligned}\neg _{G}u&={\begin{cases}1,&{\text{if }}u=0\\0,&{\text{if }}u>0\end{cases}}\\u{\xrightarrow[{G}]{}}v&={\begin{cases}1,&{\text{if }}u\leq v\\v,&{\text{if }}u>v\end{cases}}\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e37286bcdef3cc6a2c4c201b65a2c7360845c248)

Gödel logics are completely axiomatisable, that is to say it is possible to define a logical calculus in which all tautologies are provable.

### Łukasiewicz logics Lv and *L*∞\[[edit][57]\]

Implication ![{\displaystyle {\xrightarrow[{L}]{}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/75b88e3bbbb30a5adb9924053dc2e661b6a81719) and negation ![{\displaystyle {\underset {L}{\neg }}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0b195b2930decf7bce6e8d2d41b7bcdbc58f7237) were defined by [Jan Łukasiewicz][58] through the following functions:

![{\displaystyle {\begin{aligned}{\underset {L}{\neg }}u&:=1-u\\u{\xrightarrow[{L}]{}}v&:=\min\{1,1-u+v\}\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0ba6b97f4097bcfbd6a6705c07a216f3a0214130)

At first Łukasiewicz used these definitions in 1920 for his three-valued logic ![L_{3}](https://wikimedia.org/api/rest_v1/media/math/render/svg/23c881465e19ffb2fc3c562245e73dc1144cd830), with truth values ![0,{\tfrac {1}{2}},1](https://wikimedia.org/api/rest_v1/media/math/render/svg/6aa92c1cda1558ff2e1a1d0a131db3f8cc29c8c8). In 1922 he developed a logic with infinitely many values ![L_{\infty }](https://wikimedia.org/api/rest_v1/media/math/render/svg/a5ecf05fae003abbd91bc8c749d5a8a807d6efd8), in which the truth values spanned the real numbers in the interval ![[0,1]](https://wikimedia.org/api/rest_v1/media/math/render/svg/738f7d23bb2d9642bab520020873cccbef49768d). In both cases the designated truth value was 1.[\[6\]][59]

By adopting truth values defined in the same way as for Gödel logics ![0,{\tfrac {1}{v-1}},{\tfrac {2}{v-1}},\ldots ,{\tfrac {v-2}{v-1}},1](https://wikimedia.org/api/rest_v1/media/math/render/svg/ed0d3aa7a647a82563b26ec861261738c71bbd62), it is possible to create a finitely-valued family of logics ![L_{v}](https://wikimedia.org/api/rest_v1/media/math/render/svg/67d3252ec5dbd18467fc109498966e5abb43123b), the abovementioned ![L_{\infty }](https://wikimedia.org/api/rest_v1/media/math/render/svg/a5ecf05fae003abbd91bc8c749d5a8a807d6efd8) and the logic ![L_{\aleph _{0}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/646ef62e25c73c1bba432de04854619ccc0c8916), in which the truth values are given by the [rational numbers][60] in the interval ![[0,1]](https://wikimedia.org/api/rest_v1/media/math/render/svg/738f7d23bb2d9642bab520020873cccbef49768d). The set of tautologies in ![L_{\infty }](https://wikimedia.org/api/rest_v1/media/math/render/svg/a5ecf05fae003abbd91bc8c749d5a8a807d6efd8) and ![L_{\aleph _{0}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/646ef62e25c73c1bba432de04854619ccc0c8916) is identical.

### Product logic Π\[[edit][61]\]

In product logic we have truth values in the interval ![[0,1]](https://wikimedia.org/api/rest_v1/media/math/render/svg/738f7d23bb2d9642bab520020873cccbef49768d), a conjunction ![\odot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/e89e009eb8a8839c82aa5c76c15e9f2d67006276) and an implication ![{\displaystyle {\xrightarrow[{\Pi }]{}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0345a0d26c891ac89dfb8a10508ac644e98280be), defined as follows[\[7\]][62]

![{\displaystyle {\begin{aligned}u\odot v&:=uv\\u{\xrightarrow[{\Pi }]{}}v&:={\begin{cases}1,&{\text{if }}u\leq v\\{\frac {v}{u}},&{\text{if }}u>v\end{cases}}\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3c42646b4736485c4b2ad19347fd95747702aafe)

Additionally there is a negative designated value ![{\overline {0}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8956fa930b4fa85d931c5e1c5e95b933150471f0) that denotes the concept of *false*. Through this value it is possible to define a negation ![{\displaystyle {\underset {\Pi }{\neg }}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7925da902b3038fce011902c4f2231598ed5ae6c) and an additional conjunction ![{\displaystyle {\underset {\Pi }{\wedge }}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6e60d5064fbdba999f50331778e6cd1e1287dcb2) as follows:

![{\displaystyle {\begin{aligned}{\underset {\Pi }{\neg }}u&:=u{\xrightarrow[{\Pi }]{}}{\overline {0}}\\u{\underset {\Pi }{\wedge }}v&:=u\odot (u{\xrightarrow[{\Pi }]{}}v)\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/16415bd6cf391d2e0592215fdde1efc19cb8c5ef)

and then ![{\displaystyle u{\underset {\Pi }{\wedge }}v=\min\{u,v\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/45607762e05eefc79ce07d488e1b365b8d2f6928).

### Post logics *Pm*\[[edit][63]\]

In 1921 [Post][64] defined a family of logics ![P_m](https://wikimedia.org/api/rest_v1/media/math/render/svg/2a9fe75b337f415bcdd48e1ecc1eaffef21dab6a) with (as in ![L_{v}](https://wikimedia.org/api/rest_v1/media/math/render/svg/67d3252ec5dbd18467fc109498966e5abb43123b) and ![G_{k}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4d8034a8094aa6549db10b01a1e8f73bb57ac39f)) the truth values ![0,{\tfrac  1{m-1}},{\tfrac  2{m-1}},\ldots ,{\tfrac  {m-2}{m-1}},1](https://wikimedia.org/api/rest_v1/media/math/render/svg/bf19dd519f4f20292f14e51322b1ac45c4e63b9f). Negation ![{\displaystyle {\underset {P}{\neg }}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0b515f5f2f1cf64918c72084018fdd8b05bbf874) and conjunction ![{\displaystyle {\underset {P}{\wedge }}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7f8145cdb2e19b7c65224333510687624b0fe8ee) and disjunction ![{\displaystyle {\underset {P}{\vee }}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/31923c235b91ef9b827f7813b18c4f58e8cc0a71) are defined as follows:

![{\displaystyle {\begin{aligned}{\underset {P}{\neg }}u&:={\begin{cases}1,&{\text{if }}u=0\\u-{\frac {1}{m-1}},&{\text{if }}u\not =0\end{cases}}\\u{\underset {P}{\wedge }}v&:=\min\{u,v\}\\u{\underset {P}{\vee }}v&:=\max\{u,v\}\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/be97fbf8e0cf624fb164762dfda88e460c6ecc0c)

### Rose logics\[[edit][65]\]

In 1951, Alan Rose defined another family of logics for systems whose truth-values form [lattices][66].[\[8\]][67]

## Semantics\[[edit][68]\]

### Matrix semantics (logical matrices)\[[edit][69]\]

See [Logical matrix][70]

## Relation to classical logic\[[edit][71]\]

Logics are usually systems intended to codify rules for preserving some [semantic][72] property of propositions across transformations. In classical [logic][73], this property is "truth." In a valid argument, the truth of the derived proposition is guaranteed if the premises are jointly true, because the application of valid steps preserves the property. However, that property doesn't have to be that of "truth"; instead, it can be some other concept.

Multi-valued logics are intended to preserve the property of designationhood (or being designated). Since there are more than two truth values, rules of inference may be intended to preserve more than just whichever corresponds (in the relevant sense) to truth. For example, in a three-valued logic, sometimes the two greatest truth-values (when they are represented as e.g. positive integers) are designated and the rules of inference preserve these values. Precisely, a valid argument will be such that the value of the premises taken jointly will always be less than or equal to the conclusion.

For example, the preserved property could be *justification*, the foundational concept of [intuitionistic logic][74]. Thus, a proposition is not true or false; instead, it is justified or flawed. A key difference between justification and truth, in this case, is that the [law of excluded middle][75] doesn't hold: a proposition that is not flawed is not necessarily justified; instead, it's only not proven that it's flawed. The key difference is the determinacy of the preserved property: One may prove that *P* is justified, that *P* is flawed, or be unable to prove either. A valid argument preserves justification across transformations, so a proposition derived from justified propositions is still justified. However, there are proofs in classical logic that depend upon the law of excluded middle; since that law is not usable under this scheme, there are propositions that cannot be proven that way.

### Suszko's thesis\[[edit][76]\]

## Functional completeness of many-valued logics\[[edit][77]\]

[Functional completeness][78] is a term used to describe a special property of finite logics and algebras. A logic's set of connectives is said to be *functionally complete* or *adequate* if and only if its set of connectives can be used to construct a formula corresponding to every possible [truth function][79].[\[9\]][80] An adequate algebra is one in which every finite mapping of variables can be expressed by some composition of its operations.[\[10\]][81]

Classical logic: CL = ({0,1}, __¬__, →, ∨, ∧, ↔) is functionally complete, whereas no [Łukasiewicz logic][82] or infinitely many-valued logics has this property.[\[10\]][83][\[11\]][84]

We can define a finitely many-valued logic as being L*n* ({1, 2, ..., *n*} ƒ1, ..., ƒ*m*) where *n* ≥ 2 is a given natural number. [Post][85] (1921) proves that assuming a logic is able to produce a function of any *m*th order model, there is some corresponding combination of connectives in an adequate logic L*n* that can produce a model of order *m+1*.[\[12\]][86]

## Applications\[[edit][87]\]

Known applications of many-valued logic can be roughly classified into two groups.[\[13\]][88] The first group uses many-valued logic to solve binary problems more efficiently. For example, a well-known approach to represent a multiple-output Boolean function is to treat its output part as a single many-valued variable and convert it to a single-output [characteristic function][89] (specifically, the [indicator function][90]). Other applications of many-valued logic include design of [programmable logic arrays][91] (PLAs) with input decoders, optimization of [finite state machines][92], testing, and verification.

The second group targets the design of electronic circuits that employ more than two discrete levels of signals, such as many-valued memories, arithmetic circuits, and [field programmable gate arrays][93] (FPGAs). Many-valued circuits have a number of theoretical advantages over standard binary circuits. For example, the interconnect on and off chip can be reduced if signals in the circuit assume four or more levels rather than only two. In memory design, storing two instead of one bit of information per memory cell doubles the density of the memory in the same [die][94] size. Applications using arithmetic circuits often benefit from using alternatives to binary number systems. For example, [residue][95] and [redundant number systems][96][\[14\]][97] can reduce or eliminate the [ripple-through carries][98] that are involved in normal binary addition or subtraction, resulting in high-speed arithmetic operations. These number systems have a natural implementation using many-valued circuits. However, the practicality of these potential advantages heavily depends on the availability of circuit realizations, which must be compatible or competitive with present-day standard technologies. In addition to aiding in the design of electronic circuits, many-valued logic is used extensively to test circuits for faults and defects. Basically all known [automatic test pattern generation][99] (ATG) algorithms used for digital circuit testing require a simulator that can resolve 5-valued logic (0, 1, x, D, D').[\[15\]][100] The additional values—x, D, and D'—represent (1) unknown/uninitialized, (2) a 0 instead of a 1, and (3) a 1 instead of a 0.

## Research venues\[[edit][101]\]

An [IEEE][102] [International Symposium on Multiple-Valued Logic][103] (ISMVL) has been held annually since 1970. It mostly caters to applications in digital design and verification.[\[16\]][104] There is also a *[Journal of Multiple-Valued Logic and Soft Computing][105]*.[\[17\]][106]

## See also\[[edit][107]\]

Mathematical logic

-   [Degrees of truth][108]
-   [Fuzzy logic][109]
-   [Gödel logic][110]
-   [Jaina seven-valued logic][111]
-   [Kleene logic][112]
-   [Kleene algebra (with involution)][113]
-   [Łukasiewicz logic][114]
-   [MV-algebra][115]
-   [Post logic][116]
-   [Principle of bivalence][117]
-   [A. N. Prior][118]
-   [Relevance logic][119]

Philosophical logic

-   [False dilemma][120]
-   [*Mu*][121]

Digital logic

-   [MVCML][122], multiple-valued current-mode logic
-   [IEEE 1164][123] a nine-valued standard for [VHDL][124]
-   [IEEE 1364][125] a four-valued standard for [Verilog][126]
-   [Three-state logic][127]
-   [Noise-based logic][128]

## References\[[edit][129]\]

1.  __[^][130]__ Hurley, Patrick. *A Concise Introduction to Logic*, 9th edition. (2006).
2.  __[^][131]__ ([Gottwald 2005][132], p. 19)
3.  __[^][133]__ Humberstone, Lloyd (2011). [*The Connectives*][134]. Cambridge, Massachusetts: The MIT Press. pp. [201][135]. [ISBN][136] [978-0-262-01654-4][137].
4.  ^ [Jump up to: *__a__*][138] [*__b__*][139] ([Bergmann 2008][140], p. 80)
5.  __[^][141]__ Gödel, Kurt (1932). "Zum intuitionistischen Aussagenkalkül". *Anzeiger der Akademie der Wissenschaften in Wien* (69): 65f.
6.  __[^][142]__ Kreiser, Lothar; Gottwald, Siegfried; Stelzner, Werner (1990). *Nichtklassische Logik. Eine Einführung*. Berlin: Akademie-Verlag. pp. 41ff–45ff. [ISBN][143] [978-3-05-000274-3][144].
7.  __[^][145]__ Hajek, Petr: *Fuzzy Logic*. In: Edward N. Zalta: *The Stanford Encyclopedia of Philosophy*, Spring 2009. ([\[1\]][146])
8.  __[^][147]__ Rose, Alan (December 1951). "Systems of logic whose truth-values form lattices". *Mathematische Annalen*. __123__: 152–165. [doi][148]:[10.1007/BF02054946][149]. [S2CID][150] [119735870][151].
9.  __[^][152]__ Smith, Nicholas (2012). *Logic: The Laws of Truth*. Princeton University Press. p. 124.
10.  ^ [Jump up to: *__a__*][153] [*__b__*][154] Malinowski, Grzegorz (1993). *Many-Valued Logics*. Clarendon Press. pp. 26–27.
11.  __[^][155]__ Church, Alonzo (1996). [*Introduction to Mathematical Logic*][156]. Princeton University Press. [ISBN][157] [978-0-691-02906-1][158].
12.  __[^][159]__ Post, Emil L. (1921). ["Introduction to a General Theory of Elementary Propositions"][160]. *American Journal of Mathematics*. __43__ (3): 163–185. [doi][161]:[10.2307/2370324][162]. [hdl][163]:[2027/uiuo.ark:/13960/t9j450f7q][164]. [ISSN][165] [0002-9327][166]. [JSTOR][167] [2370324][168].
13.  __[^][169]__ Dubrova, Elena (2002). [Multiple-Valued Logic Synthesis and Optimization][170], in Hassoun S. and Sasao T., editors, *Logic Synthesis and Verification*, Kluwer Academic Publishers, pp. 89-114
14.  __[^][171]__ Meher, Pramod Kumar; Valls, Javier; Juang, Tso-Bing; Sridharan, K.; Maharatna, Koushik (2008-08-22). ["50 Years of CORDIC: Algorithms, Architectures and Applications"][172] (PDF). *IEEE Transactions on Circuits & Systems I: Regular Papers* (published 2009-09-09). __56__ (9): 1893–1907. [doi][173]:[10.1109/TCSI.2009.2025803][174]. [S2CID][175] [5465045][176]. Retrieved 2016-01-03.
15.  __[^][177]__ Abramovici, Miron; Breuer, Melvin A.; Friedman, Arthur D. (1994). [*Digital Systems Testing and Testable Design*][178]. New York: Computer Science Press. p. [183][179]. [ISBN][180] [978-0-7803-1062-9][181].
16.  __[^][182]__ ["IEEE International Symposium on Multiple-Valued Logic (ISMVL)"][183]. *www.informatik.uni-trier.de/~ley*.
17.  __[^][184]__ ["Archived copy"][185]. Archived from [the original][186] on 2014-03-15. Retrieved 2011-08-12.CS1 maint: archived copy as title ([link][187])

## Further reading\[[edit][188]\]

__General__

-   Augusto, Luis M. (2017). *Many-valued logics: A mathematical and computational introduction.* London: College Publications. 340 pages. [ISBN][189] [978-1-84890-250-3][190]. [Webpage][191]
-   [Béziau][192] J.-Y. (1997), What is many-valued logic ? *Proceedings of the 27th International Symposium on Multiple-Valued Logic*, IEEE Computer Society, Los Alamitos, pp. 117–121.
-   Malinowski, Gregorz, (2001), *Many-Valued Logics,* in Goble, Lou, ed., *The Blackwell Guide to Philosophical Logic*. Blackwell.
-   Bergmann, Merrie (2008), *An introduction to many-valued and fuzzy logic: semantics, algebras, and derivation systems*, Cambridge University Press, [ISBN][193] [978-0-521-88128-9][194]
-   Cignoli, R. L. O., [D'Ottaviano, I, M. L.][195], Mundici, D., (2000). *[Algebraic Foundations of Many-valued Reasoning][196]*. Kluwer.
-   Malinowski, Grzegorz (1993). *Many-valued logics*. Clarendon Press. [ISBN][197] [978-0-19-853787-8][198].
-   [S. Gottwald][199], *A Treatise on Many-Valued Logics.* Studies in Logic and Computation, vol. 9, Research Studies Press: Baldock, Hertfordshire, England, 2001.
-   Gottwald, Siegfried (2005). ["Many-Valued Logics"][200] (PDF). Archived from the original on 2016-03-03. CS1 maint: bot: original URL status unknown ([link][201])
-   Miller, D. Michael; Thornton, Mitchell A. (2008). *Multiple valued logic: concepts and representations*. Synthesis lectures on digital circuits and systems. __12__. Morgan & Claypool Publishers. [ISBN][202] [978-1-59829-190-2][203].
-   [Hájek P.][204], (1998), *Metamathematics of fuzzy logic*. Kluwer. (Fuzzy logic understood as many-valued logic [sui generis][205].)

__Specific__

-   [Alexandre Zinoviev][206], *Philosophical Problems of Many-Valued Logic*, D. Reidel Publishing Company, 169p., 1963.
-   Prior A. 1957, *Time and Modality. Oxford University Press*, based on his 1956 [John Locke][207] lectures
-   [Goguen][208] J.A. 1968/69, *The logic of inexact concepts*, Synthese, 19, 325–373.
-   [Chang C.C.][209] and [Keisler H. J.][210] 1966. *Continuous Model Theory*, Princeton, Princeton University Press.
-   Gerla G. 2001, *[Fuzzy logic: Mathematical Tools for Approximate Reasoning][211]*, Kluwer Academic Publishers, Dordrecht.
-   Pavelka J. 1979, *On fuzzy logic I: Many-valued rules of inference*, Zeitschr. f. math. Logik und Grundlagen d. Math., 25, 45–52.
-   Metcalfe, George; Olivetti, Nicola; [Dov M. Gabbay][212] (2008). *Proof Theory for Fuzzy Logics*. Springer. [ISBN][213] [978-1-4020-9408-8][214]. Covers proof theory of many-valued logics as well, in the tradition of Hájek.
-   Hähnle, Reiner (1993). *Automated deduction in multiple-valued logics*. Clarendon Press. [ISBN][215] [978-0-19-853989-6][216].
-   Azevedo, Francisco (2003). *Constraint solving over multi-valued logics: application to digital circuits*. IOS Press. [ISBN][217] [978-1-58603-304-0][218].
-   Bolc, Leonard; Borowik, Piotr (2003). *Many-valued Logics 2: Automated reasoning and practical applications*. Springer. [ISBN][219] [978-3-540-64507-8][220].
-   Stanković, Radomir S.; Astola, Jaakko T.; Moraga, Claudio (2012). *Representation of Multiple-Valued Logic Functions*. Morgan & Claypool Publishers. [doi][221]:[10.2200/S00420ED1V01Y201205DCS037][222]. [ISBN][223] [978-1-60845-942-1][224].
-   Abramovici, Miron; Breuer, Melvin A.; Friedman, Arthur D. (1994). *Digital Systems Testing and Testable Design*. New York: Computer Science Press. [ISBN][225] [978-0-7803-1062-9][226].

## External links\[[edit][227]\]

-   Gottwald, Siegfried (2009). ["Many-Valued Logic"][228]. *[Stanford Encyclopedia of Philosophy][229]*. Metaphysics Research Lab, Stanford University.
-   [Stanford Encyclopedia of Philosophy][230]: "[Truth Values][231]"—by Yaroslav Shramko and Heinrich Wansing.
-   [IEEE Computer Society][232]'s [Technical Committee on Multiple-Valued Logic][233]
-   [Resources for Many-Valued Logic][234] by Reiner Hähnle, [Chalmers University][235]
-   [Many-valued Logics W3 Server][236] (archived)
-   Yaroslav Shramko and Heinrich Wansing (2020). ["Suszko's Thesis"][237]. *[Stanford Encyclopedia of Philosophy][238]*.CS1 maint: uses authors parameter ([link][239])
-   Carlos Caleiro, Walter Carnielli, Marcelo E. Coniglio and João Marcos, [Two's company: "The humbug of many logical values"][240] in Jean-Yves Beziau, ed. (2007). *Logica Universalis: Towards a General Theory of Logic* (2nd ed.). Springer Science & Business Media. pp. 174–194. [ISBN][241] [978-3-7643-8354-1][242].

[1]: https://en.wikipedia.org/wiki/Logic "Logic"
[2]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[3]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[4]: https://en.wikipedia.org/wiki/Aristotle "Aristotle"
[5]: https://en.wikipedia.org/wiki/Term_logic "Term logic"
[6]: https://en.wikipedia.org/wiki/Proposition "Proposition"
[7]: https://en.wikipedia.org/wiki/Two-valued_logic "Two-valued logic"
[8]: https://en.wikipedia.org/wiki/Three-valued_logic "Three-valued logic"
[9]: https://en.wikipedia.org/wiki/Jan_%C5%81ukasiewicz "Jan Łukasiewicz"
[10]: https://en.wikipedia.org/wiki/Stephen_Cole_Kleene "Stephen Cole Kleene"
[11]: https://en.wikipedia.org/wiki/Four-valued_logic "Four-valued logic"
[12]: https://en.wikipedia.org/wiki/Nine-valued_logic "Nine-valued logic"
[13]: https://en.wikipedia.org/wiki/Finite-valued_logic "Finite-valued logic"
[14]: https://en.wikipedia.org/wiki/Infinite-valued_logic "Infinite-valued logic"
[15]: https://en.wikipedia.org/wiki/Fuzzy_logic "Fuzzy logic"
[16]: https://en.wikipedia.org/wiki/Probabilistic_logic "Probabilistic logic"
[17]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=1 "Edit section: History"
[18]: https://en.wikipedia.org/wiki/Law_of_excluded_middle "Law of excluded middle"
[19]: https://en.wikipedia.org/wiki/Aristotle "Aristotle"
[20]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-1
[21]: https://en.wikipedia.org/wiki/Aristotelian_logic "Aristotelian logic"
[22]: https://en.wikipedia.org/wiki/Law_of_excluded_middle "Law of excluded middle"
[23]: https://en.wikipedia.org/wiki/Jan_%C5%81ukasiewicz "Jan Łukasiewicz"
[24]: https://en.wikipedia.org/wiki/Problem_of_future_contingents "Problem of future contingents"
[25]: https://en.wikipedia.org/wiki/Emil_Post "Emil Post"
[26]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[27]: https://en.wikipedia.org/wiki/Hans_Reichenbach "Hans Reichenbach"
[28]: https://en.wikipedia.org/wiki/Kurt_G%C3%B6del "Kurt Gödel"
[29]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[30]: https://en.wikipedia.org/w/index.php?title=Finitely-many_valued_logic&action=edit&redlink=1 "Finitely-many valued logic (page does not exist)"
[31]: https://en.wikipedia.org/wiki/G%C3%B6del_logic "Gödel logic"
[32]: https://en.wikipedia.org/wiki/Classical_logic "Classical logic"
[33]: https://en.wikipedia.org/wiki/Intermediate_logics "Intermediate logics"
[34]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=2 "Edit section: Examples"
[35]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=3 "Edit section: Kleene (strong) K3 and Priest logic P3"
[36]: https://en.wikipedia.org/wiki/Stephen_Cole_Kleene "Stephen Cole Kleene"
[37]: https://en.wikipedia.org/wiki/Graham_Priest "Graham Priest"
[38]: https://en.wikipedia.org/wiki/Negation "Negation"
[39]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[40]: https://en.wikipedia.org/wiki/Disjunction "Disjunction"
[41]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[42]: https://en.wikipedia.org/wiki/Biconditional "Biconditional"
[43]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-2
[44]: https://en.wikipedia.org/wiki/Tautology_(logic) "Tautology (logic)"
[45]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-3
[46]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=4 "Edit section: Bochvar's internal three-valued logic"
[47]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-Bergmann_2008_80-4
[48]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-Bergmann_2008_80-4
[49]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=5 "Edit section: Belnap logic (B4)"
[50]: https://en.wikipedia.org/wiki/Nuel_Belnap "Nuel Belnap"
[51]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=6 "Edit section: Gödel logics Gk and G∞"
[52]: https://en.wikipedia.org/wiki/Kurt_G%C3%B6del "Kurt Gödel"
[53]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-5
[54]: https://en.wikipedia.org/wiki/Real_number "Real number"
[55]: https://en.wikipedia.org/wiki/Minimum "Minimum"
[56]: https://en.wikipedia.org/wiki/Maximum "Maximum"
[57]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=7 "Edit section: Łukasiewicz logics Lv and L∞"
[58]: https://en.wikipedia.org/wiki/Jan_%C5%81ukasiewicz "Jan Łukasiewicz"
[59]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-6
[60]: https://en.wikipedia.org/wiki/Rational_number "Rational number"
[61]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=8 "Edit section: Product logic Π"
[62]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-7
[63]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=9 "Edit section: Post logics Pm"
[64]: https://en.wikipedia.org/wiki/Emil_Leon_Post "Emil Leon Post"
[65]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=10 "Edit section: Rose logics"
[66]: https://en.wikipedia.org/wiki/Lattice_(order_theory) "Lattice (order theory)"
[67]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-8
[68]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=11 "Edit section: Semantics"
[69]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=12 "Edit section: Matrix semantics (logical matrices)"
[70]: https://en.wikipedia.org/wiki/Logical_matrix "Logical matrix"
[71]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=13 "Edit section: Relation to classical logic"
[72]: https://en.wikipedia.org/wiki/Semantic "Semantic"
[73]: https://en.wikipedia.org/wiki/Logic "Logic"
[74]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[75]: https://en.wikipedia.org/wiki/Law_of_excluded_middle "Law of excluded middle"
[76]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=14 "Edit section: Suszko's thesis"
[77]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=15 "Edit section: Functional completeness of many-valued logics"
[78]: https://en.wikipedia.org/wiki/Functional_completeness "Functional completeness"
[79]: https://en.wikipedia.org/wiki/Truth_function "Truth function"
[80]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-9
[81]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-:02-10
[82]: https://en.wikipedia.org/wiki/%C5%81ukasiewicz_logic "Łukasiewicz logic"
[83]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-:02-10
[84]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-11
[85]: https://en.wikipedia.org/wiki/Emil_Leon_Post "Emil Leon Post"
[86]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-12
[87]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=16 "Edit section: Applications"
[88]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-13
[89]: https://en.wikipedia.org/wiki/Characteristic_function "Characteristic function"
[90]: https://en.wikipedia.org/wiki/Indicator_function "Indicator function"
[91]: https://en.wikipedia.org/wiki/Programmable_logic_array "Programmable logic array"
[92]: https://en.wikipedia.org/wiki/Finite_state_machine "Finite state machine"
[93]: https://en.wikipedia.org/wiki/Field_programmable_gate_array "Field programmable gate array"
[94]: https://en.wikipedia.org/wiki/Die_(integrated_circuit) "Die (integrated circuit)"
[95]: https://en.wikipedia.org/wiki/Residue_number_system "Residue number system"
[96]: https://en.wikipedia.org/wiki/Redundant_binary_representation "Redundant binary representation"
[97]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-Meher_2009-14
[98]: https://en.wikipedia.org/wiki/Ripple-carry_adder "Ripple-carry adder"
[99]: https://en.wikipedia.org/wiki/Automatic_test_pattern_generation "Automatic test pattern generation"
[100]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-Abramovici_1994-15
[101]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=17 "Edit section: Research venues"
[102]: https://en.wikipedia.org/wiki/IEEE "IEEE"
[103]: https://en.wikipedia.org/w/index.php?title=International_Symposium_on_Multiple-Valued_Logic&action=edit&redlink=1 "International Symposium on Multiple-Valued Logic (page does not exist)"
[104]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-16
[105]: https://en.wikipedia.org/w/index.php?title=Journal_of_Multiple-Valued_Logic_and_Soft_Computing&action=edit&redlink=1 "Journal of Multiple-Valued Logic and Soft Computing (page does not exist)"
[106]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_note-17
[107]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=18 "Edit section: See also"
[108]: https://en.wikipedia.org/wiki/Degrees_of_truth "Degrees of truth"
[109]: https://en.wikipedia.org/wiki/Fuzzy_logic "Fuzzy logic"
[110]: https://en.wikipedia.org/wiki/G%C3%B6del_logic "Gödel logic"
[111]: https://en.wikipedia.org/wiki/Jaina_seven-valued_logic "Jaina seven-valued logic"
[112]: https://en.wikipedia.org/wiki/Kleene_logic "Kleene logic"
[113]: https://en.wikipedia.org/wiki/Kleene_algebra_(with_involution) "Kleene algebra (with involution)"
[114]: https://en.wikipedia.org/wiki/%C5%81ukasiewicz_logic "Łukasiewicz logic"
[115]: https://en.wikipedia.org/wiki/MV-algebra "MV-algebra"
[116]: https://en.wikipedia.org/wiki/Emil_Leon_Post "Emil Leon Post"
[117]: https://en.wikipedia.org/wiki/Principle_of_bivalence "Principle of bivalence"
[118]: https://en.wikipedia.org/wiki/A._N._Prior "A. N. Prior"
[119]: https://en.wikipedia.org/wiki/Relevance_logic "Relevance logic"
[120]: https://en.wikipedia.org/wiki/False_dilemma "False dilemma"
[121]: https://en.wikipedia.org/wiki/Mu_(negative) "Mu (negative)"
[122]: https://en.wikipedia.org/wiki/MVCML "MVCML"
[123]: https://en.wikipedia.org/wiki/IEEE_1164 "IEEE 1164"
[124]: https://en.wikipedia.org/wiki/VHDL "VHDL"
[125]: https://en.wikipedia.org/wiki/Verilog#Four-valued_logic "Verilog"
[126]: https://en.wikipedia.org/wiki/Verilog "Verilog"
[127]: https://en.wikipedia.org/wiki/Three-state_logic "Three-state logic"
[128]: https://en.wikipedia.org/wiki/Noise-based_logic "Noise-based logic"
[129]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=19 "Edit section: References"
[130]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-1 "Jump up"
[131]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-2 "Jump up"
[132]: https://en.wikipedia.org/wiki/Many-valued_logic#CITEREFGottwald2005
[133]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-3 "Jump up"
[134]: https://archive.org/details/connectives00humb
[135]: https://archive.org/details/connectives00humb/page/n219
[136]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[137]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-262-01654-4 "Special:BookSources/978-0-262-01654-4"
[138]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-Bergmann_2008_80_4-0
[139]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-Bergmann_2008_80_4-1
[140]: https://en.wikipedia.org/wiki/Many-valued_logic#CITEREFBergmann2008
[141]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-5 "Jump up"
[142]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-6 "Jump up"
[143]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[144]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-05-000274-3 "Special:BookSources/978-3-05-000274-3"
[145]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-7 "Jump up"
[146]: http://plato.stanford.edu/archives/spr2009/entries/logic-fuzzy/
[147]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-8 "Jump up"
[148]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[149]: https://doi.org/10.1007%2FBF02054946
[150]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[151]: https://api.semanticscholar.org/CorpusID:119735870
[152]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-9 "Jump up"
[153]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-:02_10-0
[154]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-:02_10-1
[155]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-11 "Jump up"
[156]: https://books.google.com/books?id=JDLQOMKbdScC&pg=PA162
[157]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[158]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-691-02906-1 "Special:BookSources/978-0-691-02906-1"
[159]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-12 "Jump up"
[160]: https://www.jstor.org/stable/2370324
[161]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[162]: https://doi.org/10.2307%2F2370324
[163]: https://en.wikipedia.org/wiki/Hdl_(identifier) "Hdl (identifier)"
[164]: https://hdl.handle.net/2027%2Fuiuo.ark%3A%2F13960%2Ft9j450f7q
[165]: https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)"
[166]: https://www.worldcat.org/issn/0002-9327
[167]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[168]: https://www.jstor.org/stable/2370324
[169]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-13 "Jump up"
[170]: http://dl.acm.org/citation.cfm?id=566849
[171]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-Meher_2009_14-0 "Jump up"
[172]: http://core.ac.uk/download/files/34/1509903.pdf
[173]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[174]: https://doi.org/10.1109%2FTCSI.2009.2025803
[175]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[176]: https://api.semanticscholar.org/CorpusID:5465045
[177]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-Abramovici_1994_15-0 "Jump up"
[178]: https://archive.org/details/digitalsystemste00abra
[179]: https://archive.org/details/digitalsystemste00abra/page/n196
[180]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[181]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-7803-1062-9 "Special:BookSources/978-0-7803-1062-9"
[182]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-16 "Jump up"
[183]: http://www.informatik.uni-trier.de/~ley/db/conf/ismvl/index.html
[184]: https://en.wikipedia.org/wiki/Many-valued_logic#cite_ref-17 "Jump up"
[185]: https://web.archive.org/web/20140315074532/http://www.oldcitypublishing.com/MVLSC/MVLSC.html
[186]: http://www.oldcitypublishing.com/MVLSC/MVLSC.html
[187]: https://en.wikipedia.org/wiki/Category:CS1_maint:_archived_copy_as_title "Category:CS1 maint: archived copy as title"
[188]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=20 "Edit section: Further reading"
[189]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[190]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-84890-250-3 "Special:BookSources/978-1-84890-250-3"
[191]: http://www.collegepublications.co.uk/logic/?00034
[192]: https://en.wikipedia.org/wiki/B%C3%A9ziau "Béziau"
[193]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[194]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-88128-9 "Special:BookSources/978-0-521-88128-9"
[195]: https://en.wikipedia.org/wiki/Itala_D%27Ottaviano "Itala D'Ottaviano"
[196]: https://books.google.com/books?id=VMzrCAAAQBAJ&printsec=frontcover#v=onepage&q&f=false
[197]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[198]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-19-853787-8 "Special:BookSources/978-0-19-853787-8"
[199]: https://en.wikipedia.org/wiki/Siegfried_Gottwald "Siegfried Gottwald"
[200]: https://web.archive.org/web/20160303170255/http://www.uni-leipzig.de/~logik/gottwald/SGforDJ.pdf
[201]: https://en.wikipedia.org/wiki/Category:CS1_maint:_bot:_original_URL_status_unknown "Category:CS1 maint: bot: original URL status unknown"
[202]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[203]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-59829-190-2 "Special:BookSources/978-1-59829-190-2"
[204]: https://en.wikipedia.org/wiki/Petr_H%C3%A1jek "Petr Hájek"
[205]: https://en.wikipedia.org/wiki/Sui_generis "Sui generis"
[206]: https://en.wikipedia.org/wiki/Alexandre_Zinoviev "Alexandre Zinoviev"
[207]: https://en.wikipedia.org/wiki/John_Locke "John Locke"
[208]: https://en.wikipedia.org/wiki/Goguen "Goguen"
[209]: https://en.wikipedia.org/wiki/Chen_Chung_Chang "Chen Chung Chang"
[210]: https://en.wikipedia.org/wiki/H._Jerome_Keisler "H. Jerome Keisler"
[211]: https://books.google.com/books?id=YdToCAAAQBAJ&printsec=frontcover#v=onepage&q&f=false
[212]: https://en.wikipedia.org/wiki/Dov_M._Gabbay "Dov M. Gabbay"
[213]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[214]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-4020-9408-8 "Special:BookSources/978-1-4020-9408-8"
[215]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[216]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-19-853989-6 "Special:BookSources/978-0-19-853989-6"
[217]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[218]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-58603-304-0 "Special:BookSources/978-1-58603-304-0"
[219]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[220]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-64507-8 "Special:BookSources/978-3-540-64507-8"
[221]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[222]: https://doi.org/10.2200%2FS00420ED1V01Y201205DCS037
[223]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[224]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-60845-942-1 "Special:BookSources/978-1-60845-942-1"
[225]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[226]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-7803-1062-9 "Special:BookSources/978-0-7803-1062-9"
[227]: https://en.wikipedia.org/w/index.php?title=Many-valued_logic&action=edit&section=21 "Edit section: External links"
[228]: http://plato.stanford.edu/entries/logic-manyvalued/
[229]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
[230]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
[231]: http://plato.stanford.edu/entries/truth-values/
[232]: https://en.wikipedia.org/wiki/IEEE_Computer_Society "IEEE Computer Society"
[233]: http://www.lcs.info.hiroshima-cu.ac.jp/~s_naga/MVL/
[234]: http://www.cse.chalmers.se/~reiner/mvl-web/
[235]: https://en.wikipedia.org/wiki/Chalmers_University "Chalmers University"
[236]: https://web.archive.org/web/20050211094618/http://www.upmf-grenoble.fr/mvl/
[237]: https://plato.stanford.edu/entries/truth-values/suszko-thesis.html
[238]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
[239]: https://en.wikipedia.org/wiki/Category:CS1_maint:_uses_authors_parameter "Category:CS1 maint: uses authors parameter"
[240]: http://sqig.math.ist.utl.pt/pub/caleiroc/05-cccm-dyadic.pdf
[241]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[242]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-7643-8354-1 "Special:BookSources/978-3-7643-8354-1"
