---
downloaded:       2021-12-18
page-url:         https://en.wikipedia.org/wiki/Anti-unification_(computer_science)
page-title:       Anti-unification (computer science) - Wikipedia
article-title:    Anti-unification (computer science) - Wikipedia
---
# Anti-unification (computer science) - Wikipedia

Anti-unification is the process of constructing a generalization common to two given symbolic expressions. As in unification, several frameworks are distinguished depending on which expressions (also called terms) are allowed, and which expressions are considered equal. If variables representing functions are allowed in an expression, the process is called "higher-order anti-unification", otherwise "first-order anti-unification". If the generalization is required to have an instance literally equal to each input expression, the process is called "syntactical anti-unification", otherwise "E-anti-unification", or "anti-unification modulo theory".
__Anti-unification__ is the process of constructing a generalization common to two given symbolic expressions. As in [unification][1], several frameworks are distinguished depending on which expressions (also called terms) are allowed, and which expressions are considered equal. If variables representing functions are allowed in an expression, the process is called "higher-order anti-unification", otherwise "first-order anti-unification". If the generalization is required to have an instance literally equal to each input expression, the process is called "syntactical anti-unification", otherwise "E-anti-unification", or "anti-unification modulo theory".

An anti-unification algorithm should compute for given expressions a complete, and minimal generalization set, that is, a set covering all generalizations, and containing no redundant members, respectively. Depending on the framework, a complete and minimal generalization set may have one, finitely many, or possibly infinitely many members, or may not exist at all;[\[note 1\]][2] it cannot be empty, since a trivial generalization exists in any case. For first-order syntactical anti-unification, [Gordon Plotkin][3][\[1\]][4][\[2\]][5] gave an algorithm that computes a complete and minimal singleton generalization set containing the so-called "least general generalization" (lgg).

Anti-unification should not be confused with [dis-unification][6]. The latter means the process of solving systems of [inequations][7], that is of finding values for the variables such that all given inequations are satisfied.[\[note 2\]][8] This task is quite different from finding generalizations.

## Prerequisites\[[edit][9]\]

Formally, an anti-unification approach presupposes

-   An infinite set *V* of *variables*. For higher-order anti-unification, it is convenient to choose *V* disjoint from the set of [lambda-term bound variables][10].
-   A set *T* of *terms* such that *V* ⊆ *T*. For first-order and higher-order anti-unification, *T* is usually the set of [first-order terms][11] (terms built from variable and function symbols) and [lambda terms][12] (terms containing some higher-order variables), respectively.
-   An *[equivalence relation][13]* ![\equiv ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4c5c34250859b6f6d2a77b4e8a2ceaa90638076d) on ![T](https://wikimedia.org/api/rest_v1/media/math/render/svg/ec7200acd984a1d3a3d7dc455e262fbe54f7f6e0), indicating which terms are considered equal. For higher-order anti-unification, usually ![t\equiv u](https://wikimedia.org/api/rest_v1/media/math/render/svg/13b41424ae092c81e6021b651064ebc983ba5c99) if ![t](https://wikimedia.org/api/rest_v1/media/math/render/svg/65658b7b223af9e1acc877d848888ecdb4466560) and ![u](https://wikimedia.org/api/rest_v1/media/math/render/svg/c3e6bb763d22c20916ed4f0bb6bd49d7470cffd8) are [alpha equivalent][14]. For first-order E-anti-unification, ![\equiv ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4c5c34250859b6f6d2a77b4e8a2ceaa90638076d) reflects the background knowledge about certain function symbols; for example, if ![\oplus ](https://wikimedia.org/api/rest_v1/media/math/render/svg/8b16e2bdaefee9eed86d866e6eba3ac47c710f60) is considered commutative, ![t\equiv u](https://wikimedia.org/api/rest_v1/media/math/render/svg/13b41424ae092c81e6021b651064ebc983ba5c99) if ![u](https://wikimedia.org/api/rest_v1/media/math/render/svg/c3e6bb763d22c20916ed4f0bb6bd49d7470cffd8) results from ![t](https://wikimedia.org/api/rest_v1/media/math/render/svg/65658b7b223af9e1acc877d848888ecdb4466560) by swapping the arguments of ![\oplus ](https://wikimedia.org/api/rest_v1/media/math/render/svg/8b16e2bdaefee9eed86d866e6eba3ac47c710f60) at some (possibly all) occurrences.[\[note 3\]][15] If there is no background knowledge at all, then only literally, or syntactically, identical terms are considered equal.

### First-order term\[[edit][16]\]

Given a set ![V](https://wikimedia.org/api/rest_v1/media/math/render/svg/af0f6064540e84211d0ffe4dac72098adfa52845) of variable symbols, a set ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029) of constant symbols and sets ![F_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/76cdf519c21deec43f984815e57e15d2dd3575d7) of ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b)\-ary function symbols, also called operator symbols, for each natural number ![n\geq 1](https://wikimedia.org/api/rest_v1/media/math/render/svg/d8ce9ce38d06f6bf5a3fe063118c09c2b6202bfe), the set of (unsorted first-order) terms ![T](https://wikimedia.org/api/rest_v1/media/math/render/svg/ec7200acd984a1d3a3d7dc455e262fbe54f7f6e0) is [recursively defined][17] to be the smallest set with the following properties:[\[3\]][18]

-   every variable symbol is a term: *V* ⊆ *T*,
-   every constant symbol is a term: *C* ⊆ *T*,
-   from every *n* terms *t*1,...,*tn*, and every *n*\-ary function symbol *f* ∈ *Fn*, a larger term ![f(t_{1},\ldots ,t_{n})](https://wikimedia.org/api/rest_v1/media/math/render/svg/2892d8ec6fd36bcc541776402bc29ffabc6c957a) can be built.

For example, if *x* ∈ *V* is a variable symbol, 1 ∈ *C* is a constant symbol, and add ∈ *F*2 is a binary function symbol, then *x* ∈ *T*, 1 ∈ *T*, and (hence) add(*x*,1) ∈ *T* by the first, second, and third term building rule, respectively. The latter term is usually written as *x*+1, using [Infix notation][19] and the more common operator symbol + for convenience.

### Higher-order term\[[edit][20]\]

### Substitution\[[edit][21]\]

A *substitution* is a mapping ![\sigma :V\longrightarrow T](https://wikimedia.org/api/rest_v1/media/math/render/svg/02a0cab4a0b3f608bf4be9e513a99b699eb04edd) from variables to terms; the notation ![\{x_{1}\mapsto t_{1},\ldots ,x_{k}\mapsto t_{k}\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/72ef2d2946d1acd1cabde2d797749f2693114b32) refers to a substitution mapping each variable ![x_{i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e87000dd6142b81d041896a30fe58f0c3acb2158) to the term ![t_{i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8b61e3d4d909be4a19c9a554a301684232f59e5a), for ![i=1,\ldots ,k](https://wikimedia.org/api/rest_v1/media/math/render/svg/f2dd4cb0548150c5ac4440b8a1e3b4f6218bdfd1), and every other variable to itself. Applying that substitution to a term t is written in postfix notation as ![t\{x_{1}\mapsto t_{1},\ldots ,x_{k}\mapsto t_{k}\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3cd82be4ace5c173bdb08fe864dbb01e9966eb36); it means to (simultaneously) replace every occurrence of each variable ![x_{i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e87000dd6142b81d041896a30fe58f0c3acb2158) in the term t by ![t_{i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8b61e3d4d909be4a19c9a554a301684232f59e5a). The result tσ of applying a substitution σ to a term t is called an *instance* of that term t. As a first-order example, applying the substitution ![\{x\mapsto h(a,y),z\mapsto b\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/71694e7baae9949ed86d78ab6fc9cd621872db64) to the term

*f*(

*x*

, *a*, *g*(

z

), *y*)

yields

*f*(

*h*(*a*,*y*)

, *a*, *g*(

b

), *y*)

.

### Generalization, specialization\[[edit][22]\]

If a term ![t](https://wikimedia.org/api/rest_v1/media/math/render/svg/65658b7b223af9e1acc877d848888ecdb4466560) has an instance equivalent to a term ![u](https://wikimedia.org/api/rest_v1/media/math/render/svg/c3e6bb763d22c20916ed4f0bb6bd49d7470cffd8), that is, if ![t\sigma \equiv u](https://wikimedia.org/api/rest_v1/media/math/render/svg/09a1d01ed42de8ea928b8ccca90243bcece51e76) for some substitution ![\sigma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/59f59b7c3e6fdb1d0365a494b81fb9a696138c36), then ![t](https://wikimedia.org/api/rest_v1/media/math/render/svg/65658b7b223af9e1acc877d848888ecdb4466560) is called *more general* than ![u](https://wikimedia.org/api/rest_v1/media/math/render/svg/c3e6bb763d22c20916ed4f0bb6bd49d7470cffd8), and ![u](https://wikimedia.org/api/rest_v1/media/math/render/svg/c3e6bb763d22c20916ed4f0bb6bd49d7470cffd8) is called *more special* than, or *subsumed* by, ![t](https://wikimedia.org/api/rest_v1/media/math/render/svg/65658b7b223af9e1acc877d848888ecdb4466560). For example, ![x\oplus a](https://wikimedia.org/api/rest_v1/media/math/render/svg/58ea53609921f47f5f8dcc6e276e44d73a70be79) is more general than ![a\oplus b](https://wikimedia.org/api/rest_v1/media/math/render/svg/dae14b07fb59ea003d756dcb6a5d74943821d9cb) if ![\oplus ](https://wikimedia.org/api/rest_v1/media/math/render/svg/8b16e2bdaefee9eed86d866e6eba3ac47c710f60) is [commutative][23], since then ![(x\oplus a)\{x\mapsto b\}=b\oplus a\equiv a\oplus b](https://wikimedia.org/api/rest_v1/media/math/render/svg/78649a1fe6715b0cf595422a1a0384317ae9fbf9).

If ![\equiv ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4c5c34250859b6f6d2a77b4e8a2ceaa90638076d) is literal (syntactic) identity of terms, a term may be both more general and more special than another one only if both terms differ just in their variable names, not in their syntactic structure; such terms are called *variants*, or *renamings* of each other. For example, ![f(x_{1},a,g(z_{1}),y_{1})](https://wikimedia.org/api/rest_v1/media/math/render/svg/b938f507f5c1e55663934fc0ef5885db1702f005) is a variant of ![f(x_{2},a,g(z_{2}),y_{2})](https://wikimedia.org/api/rest_v1/media/math/render/svg/4e55d7587c0400f7eb6549bff98117e7eab1c350), since ![{\displaystyle f(x_{1},a,g(z_{1}),y_{1})\{x_{1}\mapsto x_{2},y_{1}\mapsto y_{2},z_{1}\mapsto z_{2}\}=f(x_{2},a,g(z_{2}),y_{2})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a512ad2aaa0f8a0b6c74c605fcf36de9e3f0aae5) and ![{\displaystyle f(x_{2},a,g(z_{2}),y_{2})\{x_{2}\mapsto x_{1},y_{2}\mapsto y_{1},z_{2}\mapsto z_{1}\}=f(x_{1},a,g(z_{1}),y_{1})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4bb7809ea4f3307b8133fba4ec16a41cdb8fc8cb). However, ![f(x_{1},a,g(z_{1}),y_{1})](https://wikimedia.org/api/rest_v1/media/math/render/svg/b938f507f5c1e55663934fc0ef5885db1702f005) is *not* a variant of ![f(x_{2},a,g(x_{2}),x_{2})](https://wikimedia.org/api/rest_v1/media/math/render/svg/6bc6c263bbd488ce01c084bd61afc41026a3912b), since no substitution can transform the latter term into the former one, although ![\{x_{1}\mapsto x_{2},z_{1}\mapsto x_{2},y_{1}\mapsto x_{2}\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5e369ef8e2aa53f57c3984c34749ba3752d1d94a) achieves the reverse direction. The latter term is hence properly more special than the former one.

A substitution ![\sigma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/59f59b7c3e6fdb1d0365a494b81fb9a696138c36) is *more special* than, or *subsumed* by, a substitution ![\tau ](https://wikimedia.org/api/rest_v1/media/math/render/svg/38a7dcde9730ef0853809fefc18d88771f95206c) if ![x\sigma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/3fb182a1cfde7ed66a26d9196610501b31fba91d) is more special than ![x\tau ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d18b8ae5305a8f2dbb20adef46a81b1ed0a77d7d) for each variable ![x](https://wikimedia.org/api/rest_v1/media/math/render/svg/87f9e315fd7e2ba406057a97300593c4802b53e4). For example, ![\{x\mapsto f(u),y\mapsto f(f(u))\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/154e1007604b7663a08aa0e34cad1045192432e2) is more special than ![\{x\mapsto z,y\mapsto f(z)\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2223c64696f1c29578c6434814c35b6fd0e22d93), since ![f(u)](https://wikimedia.org/api/rest_v1/media/math/render/svg/32b282ccf3cf0f2b0b601e8629d61612d4951098) and ![f(f(u))](https://wikimedia.org/api/rest_v1/media/math/render/svg/c4cafd85da17526edce54c90b55880536d2288b6) is more special than ![z](https://wikimedia.org/api/rest_v1/media/math/render/svg/bf368e72c009decd9b6686ee84a375632e11de98) and ![f(z)](https://wikimedia.org/api/rest_v1/media/math/render/svg/d8dd568d570b390c337c0a911f0a1c5c214e8240), respectively.

### Anti-unification problem, generalization set\[[edit][24]\]

An *anti-unification problem* is a pair ![\langle t_{1},t_{2}\rangle ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ca76a061835e1c02f0ea5eb1c88149e01a132885) of terms. A term ![t](https://wikimedia.org/api/rest_v1/media/math/render/svg/65658b7b223af9e1acc877d848888ecdb4466560) is a common *generalization*, or *anti-unifier*, of ![t_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cb0768c0bd659f2f84fb5ef9f4b74f336123d915) and ![t_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/749fee708b41e7079eabd50d61c8bf3e965db16f) if ![t\sigma _{1}\equiv t_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4e747ddb9b7e38475974b089529ff4d4ba322ff4) and ![t\sigma _{2}\equiv t_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6a994fd71ee215c86772b123e073190e33889330) for some substitutions ![\sigma _{1},\sigma _{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/539e0b957a8c901cb8c1e593fe8c6ccd8799b368). For a given anti-unification problem, a set ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2) of anti-unifiers is called *complete* if each generalization subsumes some term ![t\in S](https://wikimedia.org/api/rest_v1/media/math/render/svg/c4e4de5cbd0086a33eceb5150ae9c19a73dde4be); the set ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2) is called *minimal* if none of its members subsumes another one.

## First-order syntactical anti-unification\[[edit][25]\]

The framework of first-order syntactical anti-unification is based on ![T](https://wikimedia.org/api/rest_v1/media/math/render/svg/ec7200acd984a1d3a3d7dc455e262fbe54f7f6e0) being the set of *first-order terms* (over some given set ![V](https://wikimedia.org/api/rest_v1/media/math/render/svg/af0f6064540e84211d0ffe4dac72098adfa52845) of variables, ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029) of constants and ![F_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/76cdf519c21deec43f984815e57e15d2dd3575d7) of ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b)\-ary function symbols) and on ![\equiv ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4c5c34250859b6f6d2a77b4e8a2ceaa90638076d) being *syntactic equality*. In this framework, each anti-unification problem ![\langle t_{1},t_{2}\rangle ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ca76a061835e1c02f0ea5eb1c88149e01a132885) has a complete, and obviously minimal, [singleton][26] solution set ![\{t\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1ffebb1afafd60e02fa5499ca38720bf7cb1933b). Its member ![t](https://wikimedia.org/api/rest_v1/media/math/render/svg/65658b7b223af9e1acc877d848888ecdb4466560) is called the *least general generalization (lgg)* of the problem, it has an instance syntactically equal to ![t_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cb0768c0bd659f2f84fb5ef9f4b74f336123d915) and another one syntactically equal to ![t_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/749fee708b41e7079eabd50d61c8bf3e965db16f). Any common generalization of ![t_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cb0768c0bd659f2f84fb5ef9f4b74f336123d915) and ![t_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/749fee708b41e7079eabd50d61c8bf3e965db16f) subsumes ![t](https://wikimedia.org/api/rest_v1/media/math/render/svg/65658b7b223af9e1acc877d848888ecdb4466560). The lgg is unique up to variants: if ![S_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5bf84e7fd4fb8259a9b37f956afdf83ee2a020f9) and ![S_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1143e284d5f25cef778ab482edf6617a523ddd9f) are both complete and minimal solution sets of the same syntactical anti-unification problem, then ![S_{1}=\{s_{1}\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/29ae48c6dc8b705fe2466d5e8e44a806d468fbe9) and ![S_{2}=\{s_{2}\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c601d81a373ce0b3044ad469c861c701016c1996) for some terms ![s_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/eb8baad278d51283e0ef3c99898d583cf2c8a8fd) and ![s_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d4b9a7acc0ae8f54da4b7f4eef2c777d44faecd4), that are [renamings][27] of each other.

Plotkin[\[1\]][28][\[2\]][29] has given an algorithm to compute the lgg of two given terms. It presupposes an [injective mapping][30] ![\phi :T\times T\longrightarrow V](https://wikimedia.org/api/rest_v1/media/math/render/svg/b2f56bb2c3dfc962f5280ed7cbffc05fb8f75f19), that is, a mapping assigning each pair ![s,t](https://wikimedia.org/api/rest_v1/media/math/render/svg/b6ce81dd4a9013d5a5502724585368c58ace5971) of terms an own variable ![\phi (s,t)](https://wikimedia.org/api/rest_v1/media/math/render/svg/c7685caedbee6c5d77df20f75513b3d23d63ec75), such that no two pairs share the same variable. [\[note 4\]][31] The algorithm consists of two rules:

For example, ![(0*0)\sqcup (4*4)\rightsquigarrow (0\sqcup 4)*(0\sqcup 4)\rightsquigarrow \phi (0,4)*\phi (0,4)\rightsquigarrow x*x](https://wikimedia.org/api/rest_v1/media/math/render/svg/1df4290d474f95dc6238296c9ba499ce6bc5098a); this least general generalization reflects the common property of both inputs of being square numbers.

Plotkin used his algorithm to compute the "[relative least general generalization (rlgg)][32]" of two clause sets in first-order logic, which was the basis of the [Golem][33] approach to [inductive logic programming][34].

## First-order anti-unification modulo theory\[[edit][35]\]

[![[icon]](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Wiki_letter_w_cropped.svg/44px-Wiki_letter_w_cropped.svg.png)][36]

This section __needs expansion__ with: explain main results from papers below, relate their approaches to each other. You can help by [adding to it][37]. *(June 2020)*

-   Jacobsen, Erik (Jun 1991), [*Unification and Anti-Unification*][38] (PDF), Technical Report
-   Østvold, Bjarte M. (Apr 2004), [*A Functional Reconstruction of Anti-Unification*][39] (PDF), NR Note, DART/04/04, Norwegian Computing Center
-   Boytcheva, Svetla; Markov, Zdravko (2002). ["An Algorithm for Inducing Least Generalization Under Relative Implication"][40] (PDF).
-   Kutsia, Temur; Levy, Jordi; Villaret, Mateu (2014). ["Anti-Unification for Unranked Terms and Hedges"][41] (PDF). *Journal of Automated Reasoning*. __52__ (2): 155–190. [doi][42]:[10.1007/s10817-013-9285-6][43]. [Software.][44]

### Equational theories\[[edit][45]\]

-   One associative and commutative operation: Pottier, Loic (Feb 1989), [*Algorithms des completion et generalisation en logic du premier ordre*][46]; Pottier, Loic (1989), *Generalisation de termes en theorie equationelle – Cas associatif-commutatif*, INRIA Report, __1056__, INRIA
-   Commutative theories: [Baader, Franz][47] (1991). ["Unification, Weak Unification, Upper Bound, Lower Bound, and Generalization Problems"][48]. *Proc. 4th Conf. on Rewriting Techniques and Applications (RTA)*. LNCS. __488__. Springer. pp. 86–91.
-   Free monoids: Biere, A. (1993), [*Normalisierung, Unifikation und Antiunifikation in Freien Monoiden*][49] (PDF), Univ. Karlsruhe, Germany
-   Regular congruence classes: Heinz, Birgit (Dec 1995), *Anti-Unifikation modulo Gleichungstheorie und deren Anwendung zur Lemmagenerierung*, GMD Berichte, __261__, TU Berlin, [ISBN][50] [978-3-486-23873-0][51]; Burghardt, Jochen (2005). "E-Generalization Using Grammars". *Artificial Intelligence*. __165__ (1): 1–35. [arXiv][52]:[1403.8118][53]. [doi][54]:[10.1016/j.artint.2005.01.008][55].
-   A-, C-, AC-, ACU-theories with ordered sorts: Alpuente, Maria; Escobar, Santiago; Espert, Javier; Meseguer, Jose (2014). ["A modular order-sorted equational generalization algorithm"][56] (PDF). *Information and Computation*. __235__: 98–136. [doi][57]:[10.1016/j.ic.2014.01.006][58]. [hdl][59]:[2142/25871][60].
-   Purely idempontent theories: Cerna, David; Kutsia, Temur (2019). ["Idempotent Anti-Unification"][61]. *ACM Transactions in Computational Logic*. __21__ (2). [hdl][62]:[10.1145/3359060][63].

### First-order sorted anti-unification\[[edit][64]\]

-   Taxonomic sorts: Frisch, Alan M.; Page, David (1990). "Generalisation with Taxonomic Information". *AAAI*: 755–761.; Frisch, Alan M.; Page Jr., C. David (1991). ["Generalizing Atoms in Constraint Logic"][65]. *Proc. Conf. on Knowledge Representation*.; Frisch, A.M.; Page, C.D. (1995). ["Building Theories into Instantiation"][66]. In Mellish, C.S. (ed.). *Proc. 14th IJCAI*. Morgan Kaufmann. pp. 1210–1216.
-   Feature terms: Plaza, E. (1995). "Cases as Terms: A Feature Term Approach to the Structured Representation of Cases". *Proc. 1st International Conference on Case-Based Reasoning (ICCBR)*. LNCS. __1010__. Springer. pp. 265–276. [ISSN][67] [0302-9743][68].
-   Idestam-Almquist, Peter (Jun 1993). ["Generalization under Implication by Recursive Anti-Unification"][69]. *Proc. 10th Conf. on Machine Learning*. Morgan Kaufmann. pp. 151–158.
-   Fischer, Cornelia (May 1994), [*PAntUDE – An Anti-Unification Algorithm for Expressing Refined Generalizations*][70] (PDF), Research Report, TM-94-04, DFKI
-   A-, C-, AC-, ACU-theories with ordered sorts: [see above][71]

### Nominal anti-unification\[[edit][72]\]

-   Baumgartner, Alexander; Kutsia, Temur; Levy, Jordi; Villaret, Mateu (Jun 2013). [Nominal Anti-Unification][73]. Proc. RTA 2015. Vol. 36 of LIPIcs. Schloss Dagstuhl, 57-73. [Software.][74]

### Applications\[[edit][75]\]

-   Program analysis: Bulychev, Peter; Minea, Marius (2008). ["Duplicate Code Detection Using Anti-Unification"][76]. ; Bulychev, Peter E.; Kostylev, Egor V.; Zakharov, Vladimir A. (2009). "Anti-Unification Algorithms and their Applications in Program Analysis".
-   Code factoring: Cottrell, Rylan (Sep 2008), [*Semi-automating Small-Scale Source Code Reuse via Structural Correspondence*][77] (PDF), Univ. Calgary
-   Induction proving: Heinz, Birgit (1994), *Lemma Discovery by Anti-Unification of Regular Sorts*, Technical Report, 94–21, TU Berlin
-   Information Extraction: Thomas, Bernd (1999). ["Anti-Unification Based Learning of T-Wrappers for Information Extraction"][78] (PDF). *AAAI Technical Report*. WS-99-11: 15–20.
-   Case-based reasoning: Armengol, Eva; Plaza, Enric (2005). ["Using Symbolic Descriptions to Explain Similarity on CBR"][79] (PDF).
-   Program synthesis: The idea of generalizing terms with respect to an equational theory can be traced back to Manna and Waldinger (1978, 1980) who desired to apply it in program synthesis. In section "Generalization", they suggest (on p. 119 of the 1980 article) to generalize *reverse*(*l*) and *reverse*(*tail*(*l*))<>\[*head*(*l*)\] to obtain *reverse(l')<>m'* . This generalization is only possible if the background equation *u*<>\[\]=*u* is considered.

[Zohar Manna][80]; [Richard Waldinger][81] (Dec 1978). [A Deductive Approach to Program Synthesis][82] (PDF) (Technical Note). [SRI International][83]. — preprint of the 1980 article

Zohar Manna and Richard Waldinger (Jan 1980). "A Deductive Approach to Program Synthesis". *[ACM Transactions on Programming Languages and Systems][84]*. __2__: 90–121. [doi][85]:[10.1145/357084.357090][86].

-   Natural language processing: Amiridze, Nino; Kutsia, Temur (2018). ["Anti-Unification and Natural Language Processing"][87]. *Fifth Workshop on Natural Language and Computer Science, NLCS'18*. EasyChair Report No. 203.

## Higher-order anti-unification\[[edit][88]\]

[![[icon]](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Wiki_letter_w_cropped.svg/20px-Wiki_letter_w_cropped.svg.png)][89]

This section __needs expansion__ with: (as above). You can help by [adding to it][90]. *(June 2020)*

-   Calculus of constructions: [Pfenning, Frank][91] (Jul 1991). ["Unification and Anti-Unification in the Calculus of Constructions"][92] (PDF). *Proc. 6th LICS*. Springer. pp. 74–85.
-   Simply-typed lambda calculus (Input: Terms in the eta-long beta-normal form. Output: higher-order patterns): Baumgartner, Alexander; Kutsia, Temur; Levy, Jordi; Villaret, Mateu (Jun 2013). [A Variant of Higher-Order Anti-Unification][93]. Proc. RTA 2013. Vol. 21 of LIPIcs. Schloss Dagstuhl, 113-127. [Software.][94]
-   Simply-typed lambda calculus (Input: Terms in the eta-long beta-normal form. Output: Various fragments of the simply-typed lambda calculus including patterns): Cerna, David; Kutsia, Temur (June 2019). ["A Generic Framework for Higher-Order Generalizations"][95] (PDF). *4th International Conference on Formal Structures for Computation and Deduction, FSCD, June 24–30, 2019, Dortmund, Germany*. Schloss Dagstuhl - Leibniz-Zentrum für Informatik. pp. 74–85.
-   Restricted Higher-Order Substitutions: Wagner, Ulrich (Apr 2002), *Combinatorically Restricted Higher Order Anti-Unification*, TU Berlin; Schmidt, Martin (Sep 2010), [*Restricted Higher-Order Anti-Unification for Heuristic-Driven Theory Projection*][96] (PDF), PICS-Report, 31–2010, Univ. Osnabrück, Germany, [ISSN][97] [1610-5389][98]

## Notes\[[edit][99]\]

## References\[[edit][100]\]

1.  ^ [*__a__*][101] [*__b__*][102] Plotkin, Gordon D. (1970). Meltzer, B.; Michie, D. (eds.). "A Note on Inductive Generalization". *Machine Intelligence*. __5__: 153–163.
2.  ^ [*__a__*][103] [*__b__*][104] Plotkin, Gordon D. (1971). Meltzer, B.; Michie, D. (eds.). "A Further Note on Inductive Generalization". *Machine Intelligence*. __6__: 101–124.
3.  __[^][105]__ C.C. Chang; H. Jerome Keisler (1977). A. Heyting; H.J. Keisler; A. Mostowski; A. Robinson; P. Suppes (eds.). *Model Theory*. Studies in Logic and the Foundation of Mathematics. __73__. North Holland.; here: Sect.1.3

[1]: https://en.wikipedia.org/wiki/Unification_(computer_science) "Unification (computer science)"
[2]: https://en.wikipedia.org/wiki/Anti-unification_(computer_science)#cite_note-1
[3]: https://en.wikipedia.org/wiki/Gordon_Plotkin "Gordon Plotkin"
[4]: https://en.wikipedia.org/wiki/Anti-unification_(computer_science)#cite_note-Plotkin.1970-2
[5]: https://en.wikipedia.org/wiki/Anti-unification_(computer_science)#cite_note-Plotkin.1971-3
[6]: https://en.wikipedia.org/wiki/Dis-unification_(computer_science) "Dis-unification (computer science)"
[7]: https://en.wikipedia.org/wiki/Inequation "Inequation"
[8]: https://en.wikipedia.org/wiki/Anti-unification_(computer_science)#cite_note-4
[9]: https://en.wikipedia.org/w/index.php?title=Anti-unification_(computer_science)&action=edit&section=1 "Edit section: Prerequisites"
[10]: https://en.wikipedia.org/wiki/Lambda_term#Lambda_terms "Lambda term"
[11]: https://en.wikipedia.org/wiki/Term_(logic) "Term (logic)"
[12]: https://en.wikipedia.org/wiki/Lambda_term#Lambda_terms "Lambda term"
[13]: https://en.wikipedia.org/wiki/Equivalence_relation "Equivalence relation"
[14]: https://en.wikipedia.org/wiki/Lambda_calculus#Alpha_equivalence "Lambda calculus"
[15]: https://en.wikipedia.org/wiki/Anti-unification_(computer_science)#cite_note-5
[16]: https://en.wikipedia.org/w/index.php?title=Anti-unification_(computer_science)&action=edit&section=2 "Edit section: First-order term"
[17]: https://en.wikipedia.org/wiki/Recursive_definition "Recursive definition"
[18]: https://en.wikipedia.org/wiki/Anti-unification_(computer_science)#cite_note-6
[19]: https://en.wikipedia.org/wiki/Infix_notation "Infix notation"
[20]: https://en.wikipedia.org/w/index.php?title=Anti-unification_(computer_science)&action=edit&section=3 "Edit section: Higher-order term"
[21]: https://en.wikipedia.org/w/index.php?title=Anti-unification_(computer_science)&action=edit&section=4 "Edit section: Substitution"
[22]: https://en.wikipedia.org/w/index.php?title=Anti-unification_(computer_science)&action=edit&section=5 "Edit section: Generalization, specialization"
[23]: https://en.wikipedia.org/wiki/Commutative_property "Commutative property"
[24]: https://en.wikipedia.org/w/index.php?title=Anti-unification_(computer_science)&action=edit&section=6 "Edit section: Anti-unification problem, generalization set"
[25]: https://en.wikipedia.org/w/index.php?title=Anti-unification_(computer_science)&action=edit&section=7 "Edit section: First-order syntactical anti-unification"
[26]: https://en.wikipedia.org/wiki/Singleton_(mathematics) "Singleton (mathematics)"
[27]: https://en.wikipedia.org/wiki/Term_(logic)#Structural_equality "Term (logic)"
[28]: https://en.wikipedia.org/wiki/Anti-unification_(computer_science)#cite_note-Plotkin.1970-2
[29]: https://en.wikipedia.org/wiki/Anti-unification_(computer_science)#cite_note-Plotkin.1971-3
[30]: https://en.wikipedia.org/wiki/Injective_mapping "Injective mapping"
[31]: https://en.wikipedia.org/wiki/Anti-unification_(computer_science)#cite_note-7
[32]: https://en.wikipedia.org/wiki/Inductive_logic_programming#Example "Inductive logic programming"
[33]: https://en.wikipedia.org/wiki/Golem_(ILP) "Golem (ILP)"
[34]: https://en.wikipedia.org/wiki/Inductive_logic_programming "Inductive logic programming"
[35]: https://en.wikipedia.org/w/index.php?title=Anti-unification_(computer_science)&action=edit&section=8 "Edit section: First-order anti-unification modulo theory"
[36]: https://en.wikipedia.org/wiki/File:Wiki_letter_w_cropped.svg
[37]: https://en.wikipedia.org/w/index.php?title=Anti-unification_(computer_science)&action=edit&section=
[38]: http://erikjacobsen.com/pdf/unification.pdf
[39]: https://www.nr.no/directdownload/3913/_stvold_-_A_functional_reconstruction_of_anti-unification.pdf
[40]: https://www.aaai.org/Papers/FLAIRS/2002/FLAIRS02-064.pdf
[41]: https://link.springer.com/content/pdf/10.1007%2Fs10817-013-9285-6.pdf
[42]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[43]: https://doi.org/10.1007%2Fs10817-013-9285-6
[44]: http://www.risc.jku.at/projects/stout/software/antiunify.php
[45]: https://en.wikipedia.org/w/index.php?title=Anti-unification_(computer_science)&action=edit&section=9 "Edit section: Equational theories"
[46]: https://www.theses.fr/1989NICE4261
[47]: https://en.wikipedia.org/wiki/Franz_Baader "Franz Baader"
[48]: https://link.springer.com/chapter/10.1007/3-540-53904-2_88
[49]: http://fmv.jku.at/papers/Biere-Diploma-Thesis-1993.pdf
[50]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[51]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-486-23873-0 "Special:BookSources/978-3-486-23873-0"
[52]: https://en.wikipedia.org/wiki/ArXiv_(identifier) "ArXiv (identifier)"
[53]: https://arxiv.org/abs/1403.8118
[54]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[55]: https://doi.org/10.1016%2Fj.artint.2005.01.008
[56]: https://www.ideals.illinois.edu/bitstream/handle/2142/25871/journal.pdf
[57]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[58]: https://doi.org/10.1016%2Fj.ic.2014.01.006
[59]: https://en.wikipedia.org/wiki/Hdl_(identifier) "Hdl (identifier)"
[60]: https://hdl.handle.net/2142%2F25871
[61]: https://dl.acm.org/doi/10.1145/3359060
[62]: https://en.wikipedia.org/wiki/Hdl_(identifier) "Hdl (identifier)"
[63]: https://hdl.handle.net/10.1145%2F3359060
[64]: https://en.wikipedia.org/w/index.php?title=Anti-unification_(computer_science)&action=edit&section=10 "Edit section: First-order sorted anti-unification"
[65]: https://books.google.com/books?hl=en&lr=&id=1wwZAQAAIAAJ&oi=fnd&pg=PA429&dq=%22Generalizing+Atoms+in+Constraint+Logic%22&ots=Vs6DfM8rxa&sig=fcAUokDGamLxF_nrQFFLu5qOsIY
[66]: https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.32.1610&rep=rep1&type=pdf
[67]: https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)"
[68]: https://www.worldcat.org/issn/0302-9743
[69]: https://books.google.com/books?hl=en&lr=&id=TrqjBQAAQBAJ&oi=fnd&pg=PA151&dq=%22Generalization+under+Implication+by+Recursive+Anti-Unification%22&ots=v3ReQQ2WSm&sig=0qnv0YCluHqv5wG5X37_tAFqj7M
[70]: https://publikationen.sulb.uni-saarland.de/bitstream/20.500.11880/25109/1/TM_94_04.pdf
[71]: https://en.wikipedia.org/wiki/Anti-unification_(computer_science)#Equational_theories
[72]: https://en.wikipedia.org/w/index.php?title=Anti-unification_(computer_science)&action=edit&section=11 "Edit section: Nominal anti-unification"
[73]: http://drops.dagstuhl.de/opus/volltexte/2015/5189/pdf/9.pdf
[74]: http://www.risc.jku.at/projects/stout/software/nau.php
[75]: https://en.wikipedia.org/w/index.php?title=Anti-unification_(computer_science)&action=edit&section=12 "Edit section: Applications"
[76]: https://cyberleninka.ru/article/n/14517244
[77]: https://pages.cpsc.ucalgary.ca/~denzinge/papers/fse08.pdf
[78]: https://www.aaai.org/Papers/Workshops/1999/WS-99-11/WS99-11-003.pdf
[79]: https://www.researchgate.net/profile/Enric_Plaza/publication/221045334_Using_symbolic_descriptions_to_explain_similarity_on_CBR/links/00463528e1a118df1d000000/Using-symbolic-descriptions-to-explain-similarity-on-CBR.pdf
[80]: https://en.wikipedia.org/wiki/Zohar_Manna "Zohar Manna"
[81]: https://en.wikipedia.org/wiki/Richard_Waldinger "Richard Waldinger"
[82]: http://www.sri.com/sites/default/files/uploads/publications/pdf/725.pdf
[83]: https://en.wikipedia.org/wiki/SRI_International "SRI International"
[84]: https://en.wikipedia.org/wiki/ACM_Transactions_on_Programming_Languages_and_Systems "ACM Transactions on Programming Languages and Systems"
[85]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[86]: https://doi.org/10.1145%2F357084.357090
[87]: https://doi.org/10.29007/fkrh
[88]: https://en.wikipedia.org/w/index.php?title=Anti-unification_(computer_science)&action=edit&section=13 "Edit section: Higher-order anti-unification"
[89]: https://en.wikipedia.org/wiki/File:Wiki_letter_w_cropped.svg
[90]: https://en.wikipedia.org/w/index.php?title=Anti-unification_(computer_science)&action=edit&section=
[91]: https://en.wikipedia.org/wiki/Frank_Pfenning "Frank Pfenning"
[92]: https://www.cs.cmu.edu/~fp/papers/lics91.pdf
[93]: http://drops.dagstuhl.de/opus/volltexte/2013/4057/pdf/10.pdf
[94]: http://www.risc.jku.at/projects/stout/software/hoau.php
[95]: https://drops.dagstuhl.de/opus/volltexte/2019/10517/pdf/LIPIcs-FSCD-2019-10.pdf
[96]: http://ikw.uni-osnabrueck.de/de/system/files/31-2010.pdf
[97]: https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)"
[98]: https://www.worldcat.org/issn/1610-5389
[99]: https://en.wikipedia.org/w/index.php?title=Anti-unification_(computer_science)&action=edit&section=14 "Edit section: Notes"
[100]: https://en.wikipedia.org/w/index.php?title=Anti-unification_(computer_science)&action=edit&section=15 "Edit section: References"
[101]: https://en.wikipedia.org/wiki/Anti-unification_(computer_science)#cite_ref-Plotkin.1970_2-0
[102]: https://en.wikipedia.org/wiki/Anti-unification_(computer_science)#cite_ref-Plotkin.1970_2-1
[103]: https://en.wikipedia.org/wiki/Anti-unification_(computer_science)#cite_ref-Plotkin.1971_3-0
[104]: https://en.wikipedia.org/wiki/Anti-unification_(computer_science)#cite_ref-Plotkin.1971_3-1
[105]: https://en.wikipedia.org/wiki/Anti-unification_(computer_science)#cite_ref-6
