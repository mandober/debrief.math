---
created: 2021-08-25
tags: ["induction", "mathematical properties"]
source: https://en.wikipedia.org/wiki/Mathematical_induction
excerpt: 
---

# Mathematical induction

Mathematical induction 

**Mathematical induction** is a [mathematical proof][5] technique. It is essentially used to prove that a statement _P_(_n_) holds for every [natural number][6] _n_ = 0, 1, 2, 3, . . . ; that is, the overall statement is a sequence of infinitely many cases _P_(0), _P_(1), _P_(2), _P_(3), . . . . Informal metaphors help to explain this technique, such as falling dominoes or climbing a ladder:

> Mathematical induction proves that we can climb as high as we like on a ladder, by proving that we can climb onto the bottom rung (the **basis**) and that from each rung we can climb up to the next one (the **step**).

A **proof by induction** consists of two cases. The first, the **base case** (or **basis**), proves the statement for _n =_ 0 without assuming any knowledge of other cases. The second case, the **induction step**, proves that _if_ the statement holds for any given case _n = k_, _then_ it must also hold for the next case _n_ = _k_ + 1. These two steps establish that the statement holds for every natural number _n_.[\[3\]][7] The base case does not necessarily begin with _n =_ 0, but often with _n =_ 1, and possibly with any fixed natural number _n = N_, establishing the truth of the statement for all natural numbers _n ≥ N_.

The method can be extended to prove statements about more general [well-founded][8] structures, such as [trees][9]; this generalization, known as [structural induction][10], is used in [mathematical logic][11] and [computer science][12]. Mathematical induction in this extended sense is closely related to [recursion][13]. Mathematical induction is an [inference rule][14] used in [formal proofs][15], and in some form is the foundation of all [correctness proofs for computer programs][16].[\[4\]][17]

Although its name may suggest otherwise, mathematical induction should not be confused with [inductive reasoning][18] as used in [philosophy][19] (see [Problem of induction][20]). The mathematical method examines infinitely many cases to prove a general statement, but does so by a finite chain of [deductive reasoning][21] involving the [variable][22] _n_, which can take infinitely many values.[\[5\]][23]

## History\[[edit][24]\]

In 370 BC, [Plato][25]'s [Parmenides][26] may have contained an early example of an implicit inductive proof.[\[6\]][27] An opposite iterated technique, counting _down_ rather than up, is found in the [sorites paradox][28], where it was argued that if 1,000,000 grains of sand formed a heap, and removing one grain from a heap left it a heap, then a single grain of sand (or even no grains) forms a heap.[\[7\]][29]

In India, early implicit proofs by mathematical induction appear in [Bhaskara][30]'s "[cyclic method][31]",[\[8\]][32] and in the _al-Fakhri_ written by [al-Karaji][33] around 1000 AD, who applied it to [arithmetic sequences][34] to prove the [binomial theorem][35] and properties of [Pascal's triangle][36].[\[9\]][37][\[10\]][38]

None of these ancient mathematicians, however, explicitly stated the induction hypothesis. Another similar case (contrary to what Vacca has written, as Freudenthal carefully showed)[\[11\]][39] was that of [Francesco Maurolico][40] in his _Arithmeticorum libri duo_ (1575), who used the technique to prove that the sum of the first _n_ odd integers is _n_2.

The earliest rigorous use of induction was by [Gersonides][41] (1288–1344).[\[12\]][42][\[13\]][43] The first explicit formulation of the principle of induction was given by [Pascal][44] in his _Traité du triangle arithmétique_ (1665). Another Frenchman, [Fermat][45], made ample use of a related principle: indirect proof by [infinite descent][46].

The induction hypothesis was also employed by the Swiss [Jakob Bernoulli][47], and from then on it became well known. The modern formal treatment of the principle came only in the 19th century, with [George Boole][48],[\[14\]][49] [Augustus de Morgan][50], [Charles Sanders Peirce][51],[\[15\]][52][\[16\]][53] [Giuseppe Peano][54], and [Richard Dedekind][55].[\[8\]][56]

## Description\[[edit][57]\]

The simplest and most common form of mathematical induction infers that a statement involving a [natural number][58] n (that is, an integer _n_ ≥ 0 or 1) holds for all values of n. The proof consists of two steps:

1.  The **initial** or **base case**: prove that the statement holds for 0, or 1.
2.  The **induction step**, **inductive step**, or **step case**: prove that for every n, if the statement holds for n, then it holds for _n_ + 1. In other words, assume that the statement holds for some arbitrary natural number n, and prove that the statement holds for _n_ + 1.

The hypothesis in the inductive step, that the statement holds for a particular n, is called the **induction hypothesis** or **inductive hypothesis**. To prove the inductive step, one assumes the induction hypothesis for n and then uses this assumption to prove that the statement holds for _n_ + 1.

Authors who prefer to define natural numbers to begin at 0 use that value in the base case; those who define natural numbers to begin at 1 use that value.

## Examples\[[edit][59]\]

### Sum of consecutive natural numbers\[[edit][60]\]

Mathematical induction can be used to prove the following statement _P_(_n_) for all natural numbers _n_.

![{\displaystyle P(n)\!:\ \ 0+1+2+\cdots +n\,=\,{\frac {n(n+1)}{2}}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/83c7e47a990e74243fa88b1d8e78e367033d32b0)

This states a general formula for the sum of the natural numbers less than or equal to a given number; in fact an infinite sequence of statements: ![{\displaystyle 0={\tfrac {(0)(0+1)}{2}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/20722b1548fdda3b520085dc31c7a800f8596dda), ![{\displaystyle 0+1={\tfrac {(1)(1+1)}{2}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/466ecc3e21f80a9cf48383e7d3674f5f0db32bb6), ![{\displaystyle 0+1+2={\tfrac {(2)(2+1)}{2}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4f75217d762154e21f44d881f396c4558995ddf7), etc.

**Proposition.** For any ![n\in \mathbb {N} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d059936e77a2d707e9ee0a1d9575a1d693ce5d0b), ![{\displaystyle 0+1+2+\cdots +n={\tfrac {n(n+1)}{2}}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9bf0be7dc58fe4f2239432f8c455b43c81fc1915)

**Proof.** Let _P_(_n_) be the statement ![{\displaystyle 0+1+2+\cdots +n={\tfrac {n(n+1)}{2}}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9bf0be7dc58fe4f2239432f8c455b43c81fc1915) We give a proof by induction on _n_.

_Base case:_ Show that the statement holds for the smallest natural number _n_ = 0.

_P_(0) is clearly true: ![{\displaystyle 0={\tfrac {0(0+1)}{2}}\,.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e6362a08a500f5fb6a222d694977f624f1b6a01f)

_Inductive step:_ Show that for any _k ≥_ 0, if _P_(_k_) holds, then _P_(_k_+1) also holds.

Assume the induction hypothesis that for a particular _k_, the single case _n = k_ holds, meaning _P_(_k_) is true:

> ![{\displaystyle 0+1+\cdots +k\ =\ {\frac {k(k{+}1)}{2}}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c64c0657e304a1bdc14427748d9bcb294d8c0720)

It follows that:

![{\displaystyle (0+1+2+\cdots +k)+(k{+}1)\ =\ {\frac {k(k{+}1)}{2}}+(k{+}1).}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3aa25d3ceba82f81f985538a1ddcc1fc53875879)

Algebraically, the right hand side simplifies as:

![{\displaystyle {\begin{aligned}{\frac {k(k{+}1)}{2}}+(k{+}1)&\ =\ {\frac {k(k{+}1)+2(k{+}1)}{2}}\\&\ =\ {\frac {(k{+}1)(k{+}2)}{2}}\\&\ =\ {\frac {(k{+}1)((k{+}1)+1)}{2}}.\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/da766cc8b264c5bdcc3042d89ca849fc7f359aa2)

Equating the extreme left hand and right hand sides, we deduce that:

> ![{\displaystyle 0+1+2+\cdots +k+(k{+}1)\ =\ {\frac {(k{+}1)((k{+}1)+1)}{2}}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ff185422120817432d67fb69ceb13d93eb502b15)

That is, the statement _P_(_k+_1) also holds true, establishing the inductive step.

_Conclusion_: Since both the base case and the inductive step have been proved as true, by mathematical induction the statement _P_(_n_) holds for every natural number _n_. [∎][61]

### A trigonometric inequality\[[edit][62]\]

Induction is often used to prove inequalities. As an example, we prove that ![{\displaystyle |\!\sin nx|\leq n|\!\sin x|}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ec57844d7a066e0f017ff13354d49b0329c367d7) for any real number ![x](https://wikimedia.org/api/rest_v1/media/math/render/svg/87f9e315fd7e2ba406057a97300593c4802b53e4) and natural number ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b).

At first glance, it may appear that a more general version, ![{\displaystyle |\!\sin nx|\leq n\,|\!\sin x|}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fc809c88abf81170bb83541571049a22aae0aa0d) for any _real_ numbers ![{\displaystyle n,x}](https://wikimedia.org/api/rest_v1/media/math/render/svg/09bbd04fc7f01076e6c76a3b09b03cae2e4da159), could be proven without induction; but the case ![{\textstyle n={\frac {1}{2}},\,x=\pi }](https://wikimedia.org/api/rest_v1/media/math/render/svg/41c09e883cbf35f44e0a9956d65d0c196c20e599) shows it may be false for non-integer values of ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b). This suggests we examine the statement specifically for _natural_ values of ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b), and induction is the readiest tool.

**Proposition.** For any ![{\displaystyle x\in \mathbb {R} ,n\in \mathbb {N} }](https://wikimedia.org/api/rest_v1/media/math/render/svg/69cb17ce9d0dbf60b8a29b147750e008f17db8db), ![{\displaystyle |\!\sin nx|\leq n\,|\!\sin x|}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fc809c88abf81170bb83541571049a22aae0aa0d).

**Proof.** Fix an arbitrary real number ![x](https://wikimedia.org/api/rest_v1/media/math/render/svg/87f9e315fd7e2ba406057a97300593c4802b53e4), and let ![P(n)](https://wikimedia.org/api/rest_v1/media/math/render/svg/5e303d2c14cd399b6f52b468c9fd44a542bed422) be the statement ![{\displaystyle |\!\sin nx|\leq n\,|\!\sin x|}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fc809c88abf81170bb83541571049a22aae0aa0d). We induct on ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b).

_Base case:_ The calculation ![{\displaystyle |\!\sin 0x|=0\leq 0=0\,|\!\sin x|}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1d8143b91142c99639f412a3983a948f1b6c8d5d) verifies ![P(0)](https://wikimedia.org/api/rest_v1/media/math/render/svg/60a4af3ee31a3a4e26e7cb20b4a6aed37f6e8a5e).

_Inductive step:_ We show the implication ![{\displaystyle P(k)\implies P(k{+}1)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/11a1e4941e35c1ac03c8811cb49c558879030237) for any natural number ![k](https://wikimedia.org/api/rest_v1/media/math/render/svg/c3c9a2c7b599b37105512c5d570edc034056dd40). Assume the induction hypothesis: for a given value ![{\displaystyle n=k\geq 0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/abf7e80555f327cec9d84de4a190c1fdb73d82ab), the single case ![P(k)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b41614fb84549b21f2c7f2793bbd8a87a2105027) is true. Using the [angle addition formula][63] and the [triangle inequality][64], we deduce:

![{\displaystyle {\begin{array}{rcll}|\sin(k{+}1)x|&=&|\sin kx\,\cos x+\sin x\,\cos kx\,|&{\text{(angle addition)}}\\&\leq &|\!\sin kx\,\cos x|+|\!\sin x\,\cos kx|&{\text{(triangle inequality)}}\\&=&|\!\sin kx|\,|\!\cos x|+|\!\sin x|\,|\!\cos kx|&\\&\leq &|\!\sin kx|+|\!\sin x|&(\,|\!\cos t|\leq 1)\\&\leq &k\,|\!\sin x|+|\!\sin x|&{\text{(induction hypothesis}})\\&\ =\ &(k{+}1)\,|\!\sin x|.&\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5c2cbe6d431b17547e8f67fefff912d8b16fc721)

The inequality between the extreme left hand and right-hand quantities shows that ![{\displaystyle P(k{+}1)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4d4d7a5957f7dcef62ca178bd562816ab5668eab) is true, which completes the inductive step.

_Conclusion_: The proposition ![P(n)](https://wikimedia.org/api/rest_v1/media/math/render/svg/5e303d2c14cd399b6f52b468c9fd44a542bed422) holds for all natural numbers ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b). ∎

## Variants\[[edit][65]\]

In practice, proofs by induction are often structured differently, depending on the exact nature of the property to be proven. All variants of induction are special cases of transfinite induction; see [below][66].

### Induction basis other than 0 or 1\[[edit][67]\]

If one wishes to prove a statement, not for all natural numbers, but only for all numbers n greater than or equal to a certain number b, then the proof by induction consists of the following:

1.  Showing that the statement holds when _n_ = _b_.
2.  Showing that if the statement holds for an arbitrary number _n_ ≥ _b_, then the same statement also holds for _n_ + 1.

This can be used, for example, to show that 2_n_ ≥ _n_ + 5 for _n_ ≥ 3.

In this way, one can prove that some statement _P_(_n_) holds for all _n_ ≥ 1, or even for all _n_ ≥ −5. This form of mathematical induction is actually a special case of the previous form, because if the statement to be proved is _P_(_n_) then proving it with these two rules is equivalent with proving _P_(_n_ + _b_) for all natural numbers n with an induction base case 0.[\[17\]][68]

#### Example: forming dollar amounts by coins\[[edit][69]\]

Assume an infinite supply of 4- and 5-dollar coins. Induction can be used to prove that any whole amount of dollars greater than or equal to 12 can be formed by a combination of such coins. Let _S_(_k_) denote the statement "_k dollars can be formed by a combination of 4- and 5-dollar coins_". The proof that _S_(_k_) is true for all _k_ ≥ 12 can then be achieved by induction on k as follows:

_Base case_: Showing that _S_(_k_) holds for _k_ = 12 is simple: take three 4-dollar coins.

_Induction step_: Given that _S_(_k_) holds for some value of _k_ ≥ 12 (_induction hypothesis_), prove that _S_(_k_ + 1) holds, too:

Assume _S_(_k_) is true for some arbitrary _k_ ≥ 12. If there is a solution for k dollars that includes at least one 4-dollar coin, replace it by a 5-dollar coin to make _k_ + 1 dollars. Otherwise, if only 5-dollar coins are used, k must be a multiple of 5 and so at least 15; but then we can replace three 5-dollar coins by four 4-dollar coins to make _k_ + 1 dollars. In each case, _S_(_k_ + 1) is true.

Therefore, by the principle of induction, _S_(_k_) holds for all _k_ ≥ 12, and the proof is complete.

In this example, although _S_(_k_) also holds for ![{\textstyle k\in \{4,5,8,9,10\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/55e12a526c9c0e242d868ad6cef14a8a79ee74f4), the above proof cannot be modified to replace the minimum amount of 12 dollar to any lower value m. For _m_ = 11, the base case is actually false; for _m_ = 10, the second case in the induction step (replacing three 5- by four 4-dollar coins) will not work; let alone for even lower m.

### Induction on more than one counter\[[edit][70]\]

It is sometimes desirable to prove a statement involving two natural numbers, _n_ and _m_, by iterating the induction process. That is, one proves a base case and an inductive step for _n_, and in each of those proves a base case and an inductive step for _m_. See, for example, the [proof of commutativity][71] accompanying _[addition of natural numbers][72]_. More complicated arguments involving three or more counters are also possible.

### Infinite descent\[[edit][73]\]

The method of infinite descent is a variation of mathematical induction which was used by [Pierre de Fermat][74]. It is used to show that some statement _Q_(_n_) is false for all natural numbers _n_. Its traditional form consists of showing that if _Q_(_n_) is true for some natural number _n_, it also holds for some strictly smaller natural number _m_. Because there are no infinite decreasing sequences of natural numbers, this situation would be impossible, thereby showing (by contradiction) that _Q_(_n_) cannot be true for any _n_.

The validity of this method can be verified from the usual principle of mathematical induction. Using mathematical induction on the statement _P_(_n_) defined as "_Q_(_m_) is false for all natural numbers _m_ less than or equal to _n_", it follows that _P_(_n_) holds for all _n_, which means that _Q_(_n_) is false for every natural number _n_.

### Prefix induction\[[edit][75]\]

The most common form of proof by mathematical induction requires proving in the inductive step that

![\forall k(P(k)\to P(k+1))](https://wikimedia.org/api/rest_v1/media/math/render/svg/9447a77c90ad7ae4cfc04aefe7872db391a40b88)

whereupon the induction principle "automates" _n_ applications of this step in getting from _P_(0) to _P_(_n_). This could be called "predecessor induction" because each step proves something about a number from something about that number's predecessor.

A variant of interest in computational complexity is "prefix induction", in which one proves the following statement in the inductive step:

![\forall k(P(k)\to P(2k)\land P(2k+1))](https://wikimedia.org/api/rest_v1/media/math/render/svg/8f020236302565edd84a4615fc2db6fa56e01303)

or equivalently

![\forall k\left(P\left(\left\lfloor {\frac {k}{2}}\right\rfloor \right)\to P(k)\right)](https://wikimedia.org/api/rest_v1/media/math/render/svg/1585474604659e9232e59e708d6ae2bff5c876e4)

The induction principle then "automates" log _n_ applications of this inference in getting from _P_(0) to _P_(_n_). In fact, it is called "prefix induction" because each step proves something about a number from something about the "prefix" of that number — as formed by truncating the low bit of its binary representation. It can also be viewed as an application of traditional induction on the length of that binary representation.

If traditional predecessor induction is interpreted computationally as an _n_\-step loop, then prefix induction would correspond to a log-_n_\-step loop. Because of that, proofs using prefix induction are "more feasibly constructive" than proofs using predecessor induction.

Predecessor induction can trivially simulate prefix induction on the same statement. Prefix induction can simulate predecessor induction, but only at the cost of making the statement more syntactically complex (adding a bounded [universal quantifier][76]), so the interesting results relating prefix induction to polynomial-time computation depend on excluding unbounded quantifiers entirely, and limiting the alternation of bounded universal and [existential quantifiers][77] allowed in the statement.[\[18\]][78]

One can take the idea a step further: one must prove

![\forall k\left(P\left(\left\lfloor {\sqrt {k}}\right\rfloor \right)\to P(k)\right)](https://wikimedia.org/api/rest_v1/media/math/render/svg/93db7a192290c2b94f9d4f0227e9d6df3e5d99d1)

whereupon the induction principle "automates" log log _n_ applications of this inference in getting from _P_(0) to _P_(_n_). This form of induction has been used, analogously, to study log-time parallel computation.\[_[citation needed][79]_\]

### Complete (strong) induction\[[edit][80]\]

Another variant, called **complete induction**, **course of values induction** or **strong induction** (in contrast to which the basic form of induction is sometimes known as **weak induction**), makes the inductive step easier to prove by using a stronger hypothesis: one proves the statement ![{\displaystyle P(m+1)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a1fb60af65623b68e475ce367bc049778a82d7ac) under the assumption that ![P(n)](https://wikimedia.org/api/rest_v1/media/math/render/svg/5e303d2c14cd399b6f52b468c9fd44a542bed422) holds for _all_ natural numbers ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b) less than ![m+1](https://wikimedia.org/api/rest_v1/media/math/render/svg/c6f7ed29a2b4a62d3b6af05cd91a58ffc6094201); by contrast, the basic form only assumes ![P(m)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b3a233906e02f973dc3ce3d3fc3cacca780e3714). The name "strong induction" does not mean that this method can prove more than "weak induction", but merely refers to the stronger hypothesis used in the inductive step.

In fact, it can be shown that the two methods are actually equivalent, as explained below. In this form of complete induction, one still has to prove the base case, ![P(0)](https://wikimedia.org/api/rest_v1/media/math/render/svg/60a4af3ee31a3a4e26e7cb20b4a6aed37f6e8a5e), and it may even be necessary to prove extra-base cases such as ![P(1)](https://wikimedia.org/api/rest_v1/media/math/render/svg/1fdf0a9cc2b05be736085c7422ebe1d8d019329a) before the general argument applies, as in the example below of the Fibonacci number ![{\displaystyle F_{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/76cdf519c21deec43f984815e57e15d2dd3575d7).

Although the form just described requires one to prove the base case, this is unnecessary if one can prove ![P(m)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b3a233906e02f973dc3ce3d3fc3cacca780e3714) (assuming ![P(n)](https://wikimedia.org/api/rest_v1/media/math/render/svg/5e303d2c14cd399b6f52b468c9fd44a542bed422) for all lower ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b)) for all ![m\geq 0](https://wikimedia.org/api/rest_v1/media/math/render/svg/b0d2d765e4cfd7adfbca9ae0e37e75a2811c0333). This is a special case of [transfinite induction][81] as described below, although it is no longer equivalent to ordinary induction. In this form the base case is subsumed by the case ![m=0](https://wikimedia.org/api/rest_v1/media/math/render/svg/e57f21007575fd03e3be0da20af34d25829cc9a7), where ![P(0)](https://wikimedia.org/api/rest_v1/media/math/render/svg/60a4af3ee31a3a4e26e7cb20b4a6aed37f6e8a5e) is proved with no other ![P(n)](https://wikimedia.org/api/rest_v1/media/math/render/svg/5e303d2c14cd399b6f52b468c9fd44a542bed422) assumed; this case may need to be handled separately, but sometimes the same argument applies for ![m=0](https://wikimedia.org/api/rest_v1/media/math/render/svg/e57f21007575fd03e3be0da20af34d25829cc9a7) and ![m>0](https://wikimedia.org/api/rest_v1/media/math/render/svg/501173910e6da8425b4e9d44a4e8643620bc2464), making the proof simpler and more elegant. In this method, however, it is vital to ensure that the proof of ![P(m)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b3a233906e02f973dc3ce3d3fc3cacca780e3714) does not implicitly assume that ![m>0](https://wikimedia.org/api/rest_v1/media/math/render/svg/501173910e6da8425b4e9d44a4e8643620bc2464), e.g. by saying "choose an arbitrary ![n<m](https://wikimedia.org/api/rest_v1/media/math/render/svg/5cff096773597d7223f9d90162eb2d780dfc18dc)", or by assuming that a set of _m_ elements has an element.

Complete induction is equivalent to ordinary mathematical induction as described above, in the sense that a proof by one method can be transformed into a proof by the other. Suppose there is a proof of ![P(n)](https://wikimedia.org/api/rest_v1/media/math/render/svg/5e303d2c14cd399b6f52b468c9fd44a542bed422) by complete induction. Let ![{\displaystyle Q(n)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/39f1477b71cf9622d2d860e02dbbcffaeac2f13a) mean "![P(m)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b3a233906e02f973dc3ce3d3fc3cacca780e3714) holds for all ![m](https://wikimedia.org/api/rest_v1/media/math/render/svg/0a07d98bb302f3856cbabc47b2b9016692e3f7bc) such that ![{\displaystyle 0\leq m\leq n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/697dd51930c94bcdf31d76ab181a7a20fb3823f5)". Then ![{\displaystyle Q(n)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/39f1477b71cf9622d2d860e02dbbcffaeac2f13a) holds for all ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b) if and only if ![P(n)](https://wikimedia.org/api/rest_v1/media/math/render/svg/5e303d2c14cd399b6f52b468c9fd44a542bed422) holds for all ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b), and our proof of ![P(n)](https://wikimedia.org/api/rest_v1/media/math/render/svg/5e303d2c14cd399b6f52b468c9fd44a542bed422) is easily transformed into a proof of ![{\displaystyle Q(n)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/39f1477b71cf9622d2d860e02dbbcffaeac2f13a) by (ordinary) induction. If, on the other hand, ![P(n)](https://wikimedia.org/api/rest_v1/media/math/render/svg/5e303d2c14cd399b6f52b468c9fd44a542bed422) had been proven by ordinary induction, the proof would already effectively be one by complete induction: ![P(0)](https://wikimedia.org/api/rest_v1/media/math/render/svg/60a4af3ee31a3a4e26e7cb20b4a6aed37f6e8a5e) is proved in the base case, using no assumptions, and ![{\displaystyle P(n+1)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d2846b7cbc67a6e521b30d90ba22d6400eb10c36) is proved in the inductive step, in which one may assume all earlier cases but need only use the case ![P(n)](https://wikimedia.org/api/rest_v1/media/math/render/svg/5e303d2c14cd399b6f52b468c9fd44a542bed422).

#### Example: Fibonacci numbers\[[edit][82]\]

Complete induction is most useful when several instances of the inductive hypothesis are required for each inductive step. For example, complete induction can be used to show that

![F_{n}={\frac {\varphi ^{n}-\psi ^{n}}{\varphi -\psi }}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6e06fe0f5b1ed7b005610e78f60cc4518399c5c9)

where ![F_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/76cdf519c21deec43f984815e57e15d2dd3575d7) is the _n_th [Fibonacci number][83], ![{\textstyle \varphi ={{1+{\sqrt {5}}} \over 2}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fef4a2359a535fb24e5e77ac0e1a7aca0afc5c43) (the [golden ratio][84]) and ![{\textstyle \psi ={{1-{\sqrt {5}}} \over 2}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fd506602e4492f032b3423f98b8ca825f525b371) are the roots of the polynomial ![x^{2}-x-1](https://wikimedia.org/api/rest_v1/media/math/render/svg/8d9a6454bbe84939273de34c70735b86dfcbc88e). By using the fact that ![{\displaystyle F_{n+2}=F_{n+1}+F_{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4181a6c72e594296eba3faa89618e10dbd3e12ed) for each ![{\displaystyle n\in {\mathbb {N}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0e4a87ef40f0665a6dc69d585930c6f18710ed9f), the identity above can be verified by direct calculation for ![{\textstyle F_{n+2}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1ac4075aa37c49541fa8430a14ec6caf7b618bce) if one assumes that it already holds for both ![{\textstyle F_{n+1}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c3f58fd46e131a8f1824d5a4c1160587819b6dd2) and ![{\textstyle F_{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3451cc5f8710d90fe02bb5f2e98848b37d0b8ac8). To complete the proof, the identity must be verified in the two base cases: ![n=0](https://wikimedia.org/api/rest_v1/media/math/render/svg/26819344e55f5e671c76c07c18eb4291fcec85ae) and ![{\textstyle n=1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5300467b7ad341a5e79a0414b0293a43c5c6ddc2).

#### Example: prime factorization\[[edit][85]\]

Another proof by complete induction uses the hypothesis that the statement holds for _all_ smaller ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b) more thoroughly. Consider the statement that "every [natural number][86] greater than 1 is a product of (one or more) [prime numbers][87]", which is the "[existence][88]" part of the [fundamental theorem of arithmetic][89]. For proving the inductive step, the induction hypothesis is that for a given ![n>1](https://wikimedia.org/api/rest_v1/media/math/render/svg/ee74e1cc07e7041edf0fcbd4481f5cd32ad17b64) the statement holds for all smaller ![n>1](https://wikimedia.org/api/rest_v1/media/math/render/svg/ee74e1cc07e7041edf0fcbd4481f5cd32ad17b64). If ![m](https://wikimedia.org/api/rest_v1/media/math/render/svg/0a07d98bb302f3856cbabc47b2b9016692e3f7bc) is prime then it is certainly a product of primes, and if not, then by definition it is a product: ![{\displaystyle m=n_{1}n_{2}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/da77709ff5c4259e722478808dc1e88d9dbf48e4), where neither of the factors is equal to 1; hence neither is equal to ![m](https://wikimedia.org/api/rest_v1/media/math/render/svg/0a07d98bb302f3856cbabc47b2b9016692e3f7bc), and so both are greater than 1 and smaller than ![m](https://wikimedia.org/api/rest_v1/media/math/render/svg/0a07d98bb302f3856cbabc47b2b9016692e3f7bc). The induction hypothesis now applies to ![n_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ee784b70e772f55ede5e6e0bdc929994bff63413) and ![n_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/840e456e3058bc0be28e5cf653b170cdbfcc3be4), so each one is a product of primes. Thus ![m](https://wikimedia.org/api/rest_v1/media/math/render/svg/0a07d98bb302f3856cbabc47b2b9016692e3f7bc) is a product of products of primes, and hence by extension a product of primes itself.

#### Example: dollar amounts revisited\[[edit][90]\]

We shall look to prove the same example as [above][91], this time with _strong induction_. The statement remains the same:

![{\displaystyle S(n):\,\,n\geq 12\to \,\exists \,a,b\in \mathbb {N} .\,\,n=4a+5b}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0a0856688833e3e96864edd8e01bb82ba2180f87)

However, there will be slight differences in the structure and the assumptions of the proof, starting with the extended base case:

**Base case**: Show that ![{\displaystyle S(k)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/04a593db47be6f284bc1330c62f692ff5cd5e749) holds for ![{\displaystyle k=12,13,14,15}](https://wikimedia.org/api/rest_v1/media/math/render/svg/94b46976fc51b9191accdb2d703ec6e7c3058992).

![{\displaystyle {\begin{aligned}4\cdot 3+5\cdot 0=12\\4\cdot 2+5\cdot 1=13\\4\cdot 1+5\cdot 2=14\\4\cdot 0+5\cdot 3=15\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/04a060c64cab7abfe684fab1e9222cfb51276f3d)

The base case holds.

**Induction hypothesis**: Given some ![{\displaystyle j>15}](https://wikimedia.org/api/rest_v1/media/math/render/svg/449821ed8dd9fc2feedf14db7e9def269b6e2597), assume ![{\displaystyle S(m)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/da5ab66b1231fb42c70285826dacad7d55b6bc48) holds for all ![m](https://wikimedia.org/api/rest_v1/media/math/render/svg/0a07d98bb302f3856cbabc47b2b9016692e3f7bc) with ![{\displaystyle 12\leq m<j}](https://wikimedia.org/api/rest_v1/media/math/render/svg/59ed2020caf0cb282baf69756180a2ab1247df0d).

**Inductive step**: Prove that ![{\displaystyle S(j)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5436f5d29dbadbfba26a5b9ab6b685ba2026e0b0) holds.

Choosing ![{\displaystyle m=j-4}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1944a371c7ee101e7defaccf3dcaa96bbdc4634e), and observing that ![{\displaystyle 15<j\to 12\leq j-4<j}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0e4c2a7e4f1971d6764960b15fc303bdca499a75) shows that ![{\displaystyle S(j-4)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d7f6359738ec380534f7ced306cf1f6673c3f70e) holds, by inductive hypothesis. That is, the sum ![{\displaystyle j-4}](https://wikimedia.org/api/rest_v1/media/math/render/svg/66ba0faa63ff486716b00755d001dfa072e7fd5a) can be formed by some combination of ![4](https://wikimedia.org/api/rest_v1/media/math/render/svg/295b4bf1de7cd3500e740e0f4f0635db22d87b42) and ![5](https://wikimedia.org/api/rest_v1/media/math/render/svg/29483407999b8763f0ea335cf715a6a5e809f44b) dollar coins. Then, simply adding a ![4](https://wikimedia.org/api/rest_v1/media/math/render/svg/295b4bf1de7cd3500e740e0f4f0635db22d87b42) dollar coin to that combination yields the sum ![j](https://wikimedia.org/api/rest_v1/media/math/render/svg/2f461e54f5c093e92a55547b9764291390f0b5d0). That is, ![{\displaystyle S(j)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5436f5d29dbadbfba26a5b9ab6b685ba2026e0b0) holds. Q.E.D.

### Forward-backward induction\[[edit][92]\]

Sometimes, it is more convenient to deduce backwards, proving the statement for ![n-1](https://wikimedia.org/api/rest_v1/media/math/render/svg/fbd0b0f32b28f51962943ee9ede4fb34198a2521), given its validity for ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b). However, proving the validity of the statement for no single number suffices to establish the base case; instead, one needs to prove the statement for an infinite subset of the natural numbers. For example, [Augustin Louis Cauchy][93] first used forward (regular) induction to prove the [inequality of arithmetic and geometric means][94] for all powers of 2, and then used backwards induction to show it for all natural numbers.[\[19\]][95][\[20\]][96]

## Example of error in the inductive step\[[edit][97]\]

The inductive step must be proved for all values of _n_. To illustrate this, Joel E. Cohen proposed the following argument, which purports to prove by mathematical induction that [all horses are of the same color][98]:[\[21\]][99]

The base case ![n=1](https://wikimedia.org/api/rest_v1/media/math/render/svg/d9ec7e1edc2e6d98f5aec2a39ae5f1c99d1e1425) is trivial (as any horse is the same color as itself), and the inductive step is correct in all cases ![n>1](https://wikimedia.org/api/rest_v1/media/math/render/svg/ee74e1cc07e7041edf0fcbd4481f5cd32ad17b64). However, the logic of the inductive step is incorrect for ![n=1](https://wikimedia.org/api/rest_v1/media/math/render/svg/d9ec7e1edc2e6d98f5aec2a39ae5f1c99d1e1425), because of the statement that "the two sets overlap" is false (there are only ![{\displaystyle n+1=2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9e5a41ae3cb687d0836e9cb57c42dbc86d97624e) horses prior to either removal and after removal, the sets of one horse each do not overlap).

## Formalization \[[edit][100]\]

In **[second-order logic][101]**, one can write down the "[axiom][102] of induction" as follows:

![{\displaystyle \forall P{\Bigl (}P(0)\land \forall k{\bigl (}P(k)\to P(k+1){\bigr )}\to \forall n{\bigl (}P(n){\bigr )}{\Bigr )}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/93b9f5836d2fad6ddfd37490555d2bf0e4e8d9c4),

where _P_(.) is a variable for predicates involving one natural number and _k_ and _n_ are variables for [natural numbers][103].

In words, the base case _P_(0) and the inductive step (namely, that the induction hypothesis _P_(_k_) implies _P_(_k_ + 1)) together imply that _P_(_n_) for any natural number n. The axiom of induction asserts the validity of inferring that _P_(_n_) holds for any natural number n from the base case and the inductive step.

The first quantifier in the axiom ranges over _predicates_ rather than over individual numbers. This is a second-order quantifier, which means that this axiom is stated in [second-order logic][104]. Axiomatizing arithmetic induction in [first-order logic][105] requires an [axiom schema][106] containing a separate axiom for each possible predicate. The article [Peano axioms][107] contains further discussion of this issue.

The axiom of structural induction for the natural numbers was first formulated by Peano, who used it to specify the natural numbers together with the following four other axioms:

1.  0 is a natural number.
2.  The successor function s of every natural number yields a natural number (_s_(_x_) = _x_ + 1).
3.  The successor function is injective.
4.  0 is not in the [range][108] of s.

In **[first-order][109] [ZFC set theory][110]**, quantification over predicates is not allowed, but one can still express induction by quantification over sets:

![{\displaystyle \forall A{\Bigl (}0\in A\land \forall k\in \mathbb {N} {\bigl (}k\in A\to (k+1)\in A{\bigr )}\to \mathbb {N} \subseteq A{\Bigr )}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4757318e068a3d55ce71fb1205b13ca936b2a392)

A may be read as a set representing a proposition, and containing natural numbers, for which the proposition holds. This is not an axiom, but a theorem, given that natural numbers are defined in the language of ZFC set theory by axioms, analogous to Peano's.

## Transfinite induction\[[edit][111]\]

One variation of the principle of complete induction can be generalized for statements about elements of any [well-founded set][112], that is, a set with an [irreflexive relation][113] < that contains no [infinite descending chains][114]. Every set representing an [ordinal number][115] is well-founded, the set of natural numbers is one of them.

Applied to a well-founded set, transfinite induction can be formulated as a single step. To prove that a statement _P_(_n_) holds for each ordinal number:

1.  Show, for each ordinal number _n_, that if _P_(_m_) holds for all _m_ < _n_, then _P_(_n_) also holds.

This form of induction, when applied to a set of ordinal numbers (which form a [well-ordered][116] and hence well-founded class), is called _[transfinite induction][117]_. It is an important proof technique in [set theory][118], [topology][119] and other fields.

Proofs by transfinite induction typically distinguish three cases:

1.  when _n_ is a minimal element, i.e. there is no element smaller than _n_;
2.  when _n_ has a direct predecessor, i.e. the set of elements which are smaller than _n_ has a largest element;
3.  when _n_ has no direct predecessor, i.e. _n_ is a so-called [limit ordinal][120].

Strictly speaking, it is not necessary in transfinite induction to prove a base case, because it is a [vacuous][121] special case of the proposition that if _P_ is true of all _n_ < _m_, then _P_ is true of _m_. It is vacuously true precisely because there are no values of _n_ < _m_ that could serve as counterexamples. So the special cases are special cases of the general case.

## Relationship to the well-ordering principle\[[edit][122]\]

The principle of mathematical induction is usually stated as an [axiom][123] of the natural numbers; see [Peano axioms][124]. It is strictly stronger than the [well-ordering principle][125] in the context of the other Peano axioms. Suppose the following:

-   The [trichotomy][126] axiom: For any natural numbers _n_ and _m_, _n_ is less than or equal to _m_ if and only if _m_ is not less than _n_.
-   For any natural number _n_, _n_ + 1 is greater than _n_.
-   For any natural number _n_, no natural number is between _n_ and _n_ + 1.
-   No natural number is less than zero.

It can then be proved that induction, given the above-listed axioms, implies the well-ordering principle. The following proof uses complete induction and the first and fourth axioms.

_Proof._ Suppose there exists a non-empty set, _S_, of natural numbers that has no least element. Let _P_(_n_) be the assertion that _n_ is not in _S_. Then _P_(0) is true, for if it were false then 0 is the least element of _S_. Furthermore, let _n_ be a natural number, and suppose _P_(_m_) is true for all natural numbers _m_ less than _n_ + 1. Then if _P_(_n_ + 1) is false _n_ + 1 is in _S_, thus being a minimal element in _S_, a contradiction. Thus _P_(_n_ + 1) is true. Therefore, by the complete induction principle, _P_(_n_) holds for all natural numbers _n_; so _S_ is empty, a contradiction. [Q.E.D.][127]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/OmegaPlusOmega_svg.svg/600px-OmegaPlusOmega_svg.svg.png)][128]

"[Number line][129]" for the set {(0, _n_): _n_ ∈ ℕ} ∪ {(1, _n_): _n_ ∈ ℕ}. Numbers refer to the second component of pairs; the first can be obtained from color or location.

On the other hand, the set {(0, _n_): _n_ ∈ ℕ} ∪ {(1, _n_): _n_ ∈ ℕ}, shown in the picture, is well-ordered[\[22\]][130]:35lf by the [lexicographic order][131]. Moreover, except for the induction axiom, it satisfies all Peano axioms, where Peano's constant 0 is interpreted as the pair (0,0), and Peano's _successor_ function is defined on pairs by _succ_(_x_, _n_) = (_x_, _n_ + 1) for all _x_∈{0,1} and _n_∈ℕ. As an example for the violation of the induction axiom, define the predicate _P_(_x_, _n_) as (_x_, _n_) = (0, 0) or (_x_, _n_) = (_succ_(_y_, _m_)) for some _y_∈{0,1} and _m_∈ℕ. Then the base case _P_(0,0) is trivially true, and so is the step case: if _P_(_x_, _n_), then _P_(_succ_(_x_, _n_)). However, _P_ is not true for all pairs in the set.

Peano's axioms with the induction principle uniquely model the natural numbers. Replacing the induction principle with the well-ordering principle allows for more exotic models that fulfill all the axioms.[\[22\]][132]

It is mistakenly printed in several books[\[22\]][133] and sources that the well-ordering principle is equivalent to the induction axiom. In the context of the other Peano axioms, this is not the case, but in the context of other axioms, they are equivalent;[\[22\]][134] specifically, the well-ordering principle implies the induction axiom in the context of the first two above listed axioms and

-   Every natural number is either 0 or _n_ + 1 for some natural number _n_.

The common mistake in many erroneous proofs is to assume that _n_ − 1 is a unique and well-defined natural number, a property which is not implied by the other Peano axioms.[\[22\]][135]

## See also\[[edit][136]\]

-   [Combinatorial proof][137]
-   [Induction puzzles][138]
-   [Proof by exhaustion][139]
-   [Recursion][140]
-   [Recursion (computer science)][141]
-   [Structural induction][142]
-   [Transfinite induction][143]

## Notes\[[edit][144]\]

1.  **[^][145]** Matt DeVos, [_Mathematical Induction_][146], [Simon Fraser University][147]
2.  **[^][148]** Gerardo con Diaz, _[Mathematical Induction][149] [Archived][150] 2 May 2013 at the [Wayback Machine][151]_, [Harvard University][152]
3.  **[^][153]** ["The Definitive Glossary of Higher Mathematical Jargon — Proof by Induction"][154]. _Math Vault_. 1 August 2019. Retrieved 23 October 2019.
4.  **[^][155]** Anderson, Robert B. (1979). [_Proving Programs Correct_][156]. New York: John Wiley & Sons. p. [1][157]. [ISBN][158] [978-0471033950][159].
5.  **[^][160]** Suber, Peter. ["Mathematical Induction"][161]. Earlham College. Retrieved 26 March 2011.
6.  **[^][162]** [Acerbi 2000][163].
7.  **[^][164]** [Hyde & Raffman 2018][165].
8.  ^ [Jump up to: _**a**_][166] [_**b**_][167] [Cajori (1918)][168], p. 197: 'The process of reasoning called "Mathematical Induction" has had several independent origins. It has been traced back to the Swiss Jakob (James) Bernoulli, the Frenchman B. Pascal and P. Fermat, and the Italian F. Maurolycus. \[...\] By reading a little between the lines one can find traces of mathematical induction still earlier, in the writings of the Hindus and the Greeks, as, for instance, in the "cyclic method" of Bhaskara, and in Euclid's proof that the number of primes is infinite.'
9.  **[^][169]** [Rashed 1994][170], p. 62-84.
10.  **[^][171]** [Mathematical Knowledge and the Interplay of Practices][172] "The earliest implicit proof by mathematical induction was given around 1000 in a work by the Persian mathematician Al-Karaji"
11.  **[^][173]** [Rashed 1994][174], p. 62.
12.  **[^][175]** [Simonson 2000][176].
13.  **[^][177]** [Rabinovitch 1970][178].
14.  **[^][179]** "It is sometimes required to prove a theorem which shall be true whenever a certain quantity _n_ which it involves shall be an integer or whole number and the method of proof is usually of the following kind. _1st_. The theorem is proved to be true when _n_ = 1. _2ndly_. It is proved that if the theorem is true when _n_ is a given whole number, it will be true if _n_ is the next greater integer. Hence the theorem is true universally. . .. This species of argument may be termed a continued _[sorites][180]_" (Boole circa 1849 _Elementary Treatise on Logic not mathematical_ pages 40–41 reprinted in [Grattan-Guinness, Ivor][181] and Bornet, Gérard (1997), _George Boole: Selected Manuscripts on Logic and its Philosophy_, Birkhäuser Verlag, Berlin, [ISBN][182] [3-7643-5456-9][183])
15.  **[^][184]** [Peirce 1881][185].
16.  **[^][186]** [Shields 1997][187].
17.  **[^][188]** Ted Sundstrom, _Mathematical Reasoning_, p. 190, Pearson, 2006, [ISBN][189] [978-0131877184][190]
18.  **[^][191]** Buss, Samuel (1986). _Bounded Arithmetic_. Naples: Bibliopolis.
19.  **[^][192]** ["Forward-Backward Induction | Brilliant Math & Science Wiki"][193]. _brilliant.org_. Retrieved 23 October 2019.
20.  **[^][194]** Cauchy, Augustin-Louis (1821). [_Cours d'analyse de l'École Royale Polytechnique, première partie, Analyse algébrique,_][195] [Archived][196] 14 October 2017 at the [Wayback Machine][197] Paris. The proof of the inequality of arithmetic and geometric means can be found on pages 457ff.
21.  **[^][198]** Cohen, Joel E. (1961), "On the nature of mathematical proof", _Opus_. Reprinted in _A Random Walk in Science_ (R. L. Weber, ed.), Crane, Russak & Co., 1973.
22.  ^ [Jump up to: _**a**_][199] [_**b**_][200] [_**c**_][201] [_**d**_][202] [_**e**_][203] Öhman, Lars–Daniel (6 May 2019). ["Are Induction and Well-Ordering Equivalent?"][204]. _The Mathematical Intelligencer_. **41** (3): 33–40. [doi][205]:[10.1007/s00283-019-09898-4][206].

## References\[[edit][207]\]

### Introduction\[[edit][208]\]

-   [Franklin, J.][209]; Daoud, A. (2011). [_Proof in Mathematics: An Introduction_][210]. Sydney: Kew Books. [ISBN][211] [978-0-646-54509-7][212]. (Ch. 8.)
-   ["Mathematical induction"][213], _[Encyclopedia of Mathematics][214]_, [EMS Press][215], 2001 \[1994\]
-   Hermes, Hans (1973). _Introduction to Mathematical Logic_. Hochschultext. London: Springer. [ISBN][216] [978-3540058199][217]. [ISSN][218] [1431-4657][219].
-   [Knuth, Donald E.][220] (1997). _The Art of Computer Programming, Volume 1: Fundamental Algorithms_ (3rd ed.). Addison-Wesley. [ISBN][221] [978-0-201-89683-1][222]. (Section 1.2.1: Mathematical Induction, pp. 11–21.)
-   [Kolmogorov, Andrey N.][223]; Fomin, Sergei V. (1975). [_Introductory Real Analysis_][224]. Silverman, R. A. (trans., ed.). New York: Dover. [ISBN][225] [978-0-486-61226-3][226]. (Section 3.8: Transfinite induction, pp. 28–29.)

### History\[[edit][227]\]

-   Acerbi, Fabio (August 2000). ["Plato: _Parmenides_ 149a7-c3. A Proof by Complete Induction?"][228]. _[Archive for History of Exact Sciences][229]_. **55** (1): 57–76. [doi][230]:[10.1007/s004070000020][231]. [JSTOR][232] [41134098][233].
-   Bussey, W. H. (1917). "The Origin of Mathematical Induction". _[American Mathematical Monthly][234]_. **24** (5): 199–207. [doi][235]:[10.2307/2974308][236]. [JSTOR][237] [2974308][238].
-   [Cajori, Florian][239] (1918). "Origin of the Name "Mathematical Induction"". _The American Mathematical Monthly_. **25** (5): 197–201. [doi][240]:[10.2307/2972638][241]. [JSTOR][242] [2972638][243].
-   Fowler, D. (1994). "Could the Greeks Have Used Mathematical Induction? Did They Use It?". _Physis_. **XXXI**: 253–265.
-   [Freudenthal, Hans][244] (1953). "Zur Geschichte der vollständigen Induction". _[Archives Internationales d'Histoire des Sciences][245]_. **6**: 17–37.
-   Hyde, Dominic; Raffman, Diana (2018), Zalta, Edward N. (ed.), ["Sorites Paradox"][246], _[The Stanford Encyclopedia of Philosophy][247]_ (Summer 2018 ed.), Metaphysics Research Lab, Stanford University, retrieved 23 October 2019
-   Katz, Victor J. (1998). _History of Mathematics: An Introduction_. [Addison-Wesley][248]. [ISBN][249] [0-321-01618-1][250].
-   [Peirce, Charles Sanders][251] (1881). ["On the Logic of Number"][252]. _[American Journal of Mathematics][253]_. **4** (1–4): 85–95. [doi][254]:[10.2307/2369151][255]. [JSTOR][256] [2369151][257]. [MR][258] [1507856][259]. Reprinted (CP 3.252-88), (W 4:299-309)
-   Rabinovitch, Nachum L. (1970). "Rabbi Levi Ben Gershon and the origins of mathematical induction". _Archive for History of Exact Sciences_. **6** (3): 237–248. [doi][260]:[10.1007/BF00327237][261].
-   Rashed, Roshdi (1972). "L'induction mathématique: al-Karajī, as-Samaw'al". _Archive for History of Exact Sciences_ (in French). **9** (1): 1–21. [doi][262]:[10.1007/BF00348537][263].
-   Rashed, R. (1994), "Mathematical induction: al-Karajī and al-Samawʾal", [_The Development of Arabic Mathematics: Between Arithmetic and Algebra_][264], Boston Studies in the Philosophy of Science, **156**, Springer Science & Business Media, [ISBN][265] [9780792325659][266]
-   Shields, Paul (1997). "Peirce's Axiomatization of Arithmetic". In Houser; et al. (eds.). [_Studies in the Logic of Charles S. Peirce_][267].
-   Simonson, Charles G. (Winter 2000). ["The Mathematics of Levi ben Gershon, the Ralbag"][268] (PDF). _Bekhol Derakhekha Daehu_. Bar-Ilan University Press. **10**: 5–21.
-   Unguru, S. (1991). "Greek Mathematics and Mathematical Induction". _Physis_. **XXVIII**: 273–289.
-   Unguru, S. (1994). "Fowling after Induction". _Physis_. **XXXI**: 267–272.
-   Vacca, G. (1909). ["Maurolycus, the First Discoverer of the Principle of Mathematical Induction"][269]. _[Bulletin of the American Mathematical Society][270]_. **16** (2): 70–73. [doi][271]:[10.1090/S0002-9904-1909-01860-9][272].
-   Yadegari, Mohammad (1978). "The Use of Mathematical Induction by Abū Kāmil Shujā' Ibn Aslam (850-930)". _[Isis][273]_. **69** (2): 259–262. [doi][274]:[10.1086/352009][275]. [JSTOR][276] [230435][277].

[1]: https://en.wikipedia.org/wiki/File:Dominoeffect.png
[2]: https://en.wikipedia.org/wiki/Domino_effect "Domino effect"
[3]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-1
[4]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-2
[5]: https://en.wikipedia.org/wiki/Mathematical_proof "Mathematical proof"
[6]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[7]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-3
[8]: https://en.wikipedia.org/wiki/Well-founded "Well-founded"
[9]: https://en.wikipedia.org/wiki/Tree_(set_theory) "Tree (set theory)"
[10]: https://en.wikipedia.org/wiki/Structural_induction "Structural induction"
[11]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[12]: https://en.wikipedia.org/wiki/Computer_science "Computer science"
[13]: https://en.wikipedia.org/wiki/Recursion "Recursion"
[14]: https://en.wikipedia.org/wiki/Inference_rule "Inference rule"
[15]: https://en.wikipedia.org/wiki/Formal_proof "Formal proof"
[16]: https://en.wikipedia.org/wiki/Formal_verification "Formal verification"
[17]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-4
[18]: https://en.wikipedia.org/wiki/Inductive_reasoning "Inductive reasoning"
[19]: https://en.wikipedia.org/wiki/Philosophy "Philosophy"
[20]: https://en.wikipedia.org/wiki/Problem_of_induction "Problem of induction"
[21]: https://en.wikipedia.org/wiki/Deductive_reasoning "Deductive reasoning"
[22]: https://en.wikipedia.org/wiki/Variable_(mathematics) "Variable (mathematics)"
[23]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-5
[24]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=1 "Edit section: History"
[25]: https://en.wikipedia.org/wiki/Plato "Plato"
[26]: https://en.wikipedia.org/wiki/Parmenides_(dialogue) "Parmenides (dialogue)"
[27]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-FOOTNOTEAcerbi2000-6
[28]: https://en.wikipedia.org/wiki/Sorites_paradox "Sorites paradox"
[29]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-FOOTNOTEHydeRaffman2018-7
[30]: https://en.wikipedia.org/wiki/Bh%C4%81skara_II "Bhāskara II"
[31]: https://en.wikipedia.org/wiki/Chakravala_method "Chakravala method"
[32]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-Induction_Bussey-8
[33]: https://en.wikipedia.org/wiki/Al-Karaji "Al-Karaji"
[34]: https://en.wikipedia.org/wiki/Arithmetic_progression "Arithmetic progression"
[35]: https://en.wikipedia.org/wiki/Binomial_theorem "Binomial theorem"
[36]: https://en.wikipedia.org/wiki/Pascal%27s_triangle "Pascal's triangle"
[37]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-FOOTNOTERashed199462-84-9
[38]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-10
[39]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-FOOTNOTERashed199462-11
[40]: https://en.wikipedia.org/wiki/Francesco_Maurolico "Francesco Maurolico"
[41]: https://en.wikipedia.org/wiki/Gersonides "Gersonides"
[42]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-FOOTNOTESimonson2000-12
[43]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-FOOTNOTERabinovitch1970-13
[44]: https://en.wikipedia.org/wiki/Blaise_Pascal "Blaise Pascal"
[45]: https://en.wikipedia.org/wiki/Pierre_de_Fermat "Pierre de Fermat"
[46]: https://en.wikipedia.org/wiki/Infinite_descent "Infinite descent"
[47]: https://en.wikipedia.org/wiki/Jakob_Bernoulli "Jakob Bernoulli"
[48]: https://en.wikipedia.org/wiki/George_Boole "George Boole"
[49]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-14
[50]: https://en.wikipedia.org/wiki/Augustus_de_Morgan "Augustus de Morgan"
[51]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce "Charles Sanders Peirce"
[52]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-FOOTNOTEPeirce1881-15
[53]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-FOOTNOTEShields1997-16
[54]: https://en.wikipedia.org/wiki/Giuseppe_Peano "Giuseppe Peano"
[55]: https://en.wikipedia.org/wiki/Richard_Dedekind "Richard Dedekind"
[56]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-Induction_Bussey-8
[57]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=2 "Edit section: Description"
[58]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[59]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=3 "Edit section: Examples"
[60]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=4 "Edit section: Sum of consecutive natural numbers"
[61]: https://en.wikipedia.org/wiki/Q.E.D. "Q.E.D."
[62]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=5 "Edit section: A trigonometric inequality"
[63]: https://en.wikipedia.org/wiki/List_of_trigonometric_identities "List of trigonometric identities"
[64]: https://en.wikipedia.org/wiki/Absolute_value#Real_numbers "Absolute value"
[65]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=6 "Edit section: Variants"
[66]: https://en.wikipedia.org/wiki/Mathematical_induction#Transfinite_induction
[67]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=7 "Edit section: Induction basis other than 0 or 1"
[68]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-17
[69]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=8 "Edit section: Example: forming dollar amounts by coins"
[70]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=9 "Edit section: Induction on more than one counter"
[71]: https://en.wikipedia.org/wiki/Proofs_involving_the_addition_of_natural_numbers "Proofs involving the addition of natural numbers"
[72]: https://en.wikipedia.org/wiki/Addition_of_natural_numbers "Addition of natural numbers"
[73]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=10 "Edit section: Infinite descent"
[74]: https://en.wikipedia.org/wiki/Pierre_de_Fermat "Pierre de Fermat"
[75]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=11 "Edit section: Prefix induction"
[76]: https://en.wikipedia.org/wiki/Universal_quantifier "Universal quantifier"
[77]: https://en.wikipedia.org/wiki/Existential_quantifier "Existential quantifier"
[78]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-Buss:BA-18
[79]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[80]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=12 "Edit section: Complete (strong) induction"
[81]: https://en.wikipedia.org/wiki/Mathematical_induction#Transfinite_induction
[82]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=13 "Edit section: Example: Fibonacci numbers"
[83]: https://en.wikipedia.org/wiki/Fibonacci_number "Fibonacci number"
[84]: https://en.wikipedia.org/wiki/Golden_ratio "Golden ratio"
[85]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=14 "Edit section: Example: prime factorization"
[86]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[87]: https://en.wikipedia.org/wiki/Prime_number "Prime number"
[88]: https://en.wikipedia.org/wiki/Fundamental_theorem_of_arithmetic#Existence "Fundamental theorem of arithmetic"
[89]: https://en.wikipedia.org/wiki/Fundamental_theorem_of_arithmetic "Fundamental theorem of arithmetic"
[90]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=15 "Edit section: Example: dollar amounts revisited"
[91]: https://en.wikipedia.org/wiki/Mathematical_induction#Example:_forming_dollar_amounts_by_coins
[92]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=16 "Edit section: Forward-backward induction"
[93]: https://en.wikipedia.org/wiki/Augustin_Louis_Cauchy "Augustin Louis Cauchy"
[94]: https://en.wikipedia.org/wiki/Inequality_of_arithmetic_and_geometric_means#Proof_by_Cauchy_using_forward%E2%80%93backward_induction "Inequality of arithmetic and geometric means"
[95]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-19
[96]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-20
[97]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=17 "Edit section: Example of error in the inductive step"
[98]: https://en.wikipedia.org/wiki/All_horses_are_the_same_color "All horses are the same color"
[99]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-21
[100]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=18 "Edit section: Formalization"
[101]: https://en.wikipedia.org/wiki/Second-order_logic "Second-order logic"
[102]: https://en.wikipedia.org/wiki/Axiom "Axiom"
[103]: https://en.wikipedia.org/wiki/Natural_numbers "Natural numbers"
[104]: https://en.wikipedia.org/wiki/Second-order_logic "Second-order logic"
[105]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[106]: https://en.wikipedia.org/wiki/Axiom_schema "Axiom schema"
[107]: https://en.wikipedia.org/wiki/Peano_axioms "Peano axioms"
[108]: https://en.wikipedia.org/wiki/Range_of_a_function "Range of a function"
[109]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[110]: https://en.wikipedia.org/wiki/ZFC_set_theory "ZFC set theory"
[111]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=19 "Edit section: Transfinite induction"
[112]: https://en.wikipedia.org/wiki/Well-founded_set "Well-founded set"
[113]: https://en.wikipedia.org/wiki/Reflexive_relation "Reflexive relation"
[114]: https://en.wikipedia.org/wiki/Infinite_descending_chain "Infinite descending chain"
[115]: https://en.wikipedia.org/wiki/Ordinal_number "Ordinal number"
[116]: https://en.wikipedia.org/wiki/Well-order "Well-order"
[117]: https://en.wikipedia.org/wiki/Transfinite_induction "Transfinite induction"
[118]: https://en.wikipedia.org/wiki/Set_theory "Set theory"
[119]: https://en.wikipedia.org/wiki/Topology "Topology"
[120]: https://en.wikipedia.org/wiki/Limit_ordinal "Limit ordinal"
[121]: https://en.wikipedia.org/wiki/Vacuous_truth "Vacuous truth"
[122]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=20 "Edit section: Relationship to the well-ordering principle"
[123]: https://en.wikipedia.org/wiki/Axiom "Axiom"
[124]: https://en.wikipedia.org/wiki/Peano_axioms "Peano axioms"
[125]: https://en.wikipedia.org/wiki/Well-ordering_principle "Well-ordering principle"
[126]: https://en.wikipedia.org/wiki/Trichotomy_(mathematics) "Trichotomy (mathematics)"
[127]: https://en.wikipedia.org/wiki/Q.E.D. "Q.E.D."
[128]: https://en.wikipedia.org/wiki/File:OmegaPlusOmega_svg.svg
[129]: https://en.wikipedia.org/wiki/Number_line "Number line"
[130]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-Ohman2019-22
[131]: https://en.wikipedia.org/wiki/Lexicographic_order "Lexicographic order"
[132]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-Ohman2019-22
[133]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-Ohman2019-22
[134]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-Ohman2019-22
[135]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_note-Ohman2019-22
[136]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=21 "Edit section: See also"
[137]: https://en.wikipedia.org/wiki/Combinatorial_proof "Combinatorial proof"
[138]: https://en.wikipedia.org/wiki/Induction_puzzles "Induction puzzles"
[139]: https://en.wikipedia.org/wiki/Proof_by_exhaustion "Proof by exhaustion"
[140]: https://en.wikipedia.org/wiki/Recursion "Recursion"
[141]: https://en.wikipedia.org/wiki/Recursion_(computer_science) "Recursion (computer science)"
[142]: https://en.wikipedia.org/wiki/Structural_induction "Structural induction"
[143]: https://en.wikipedia.org/wiki/Transfinite_induction "Transfinite induction"
[144]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=22 "Edit section: Notes"
[145]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-1 "Jump up"
[146]: https://www.sfu.ca/~mdevos/notes/graph/induction.pdf
[147]: https://en.wikipedia.org/wiki/Simon_Fraser_University "Simon Fraser University"
[148]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-2 "Jump up"
[149]: http://www.math.harvard.edu/archive/23a_fall_05/Handouts/induction.pdf
[150]: https://web.archive.org/web/20130502163438/http://www.math.harvard.edu/archive/23a_fall_05/Handouts/induction.pdf
[151]: https://en.wikipedia.org/wiki/Wayback_Machine "Wayback Machine"
[152]: https://en.wikipedia.org/wiki/Harvard_University "Harvard University"
[153]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-3 "Jump up"
[154]: https://mathvault.ca/math-glossary/#induction
[155]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-4 "Jump up"
[156]: https://archive.org/details/provingprogramsc0000ande
[157]: https://archive.org/details/provingprogramsc0000ande/page/1
[158]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[159]: https://en.wikipedia.org/wiki/Special:BookSources/978-0471033950 "Special:BookSources/978-0471033950"
[160]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-5 "Jump up"
[161]: http://www.earlham.edu/~peters/courses/logsys/math-ind.htm
[162]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-FOOTNOTEAcerbi2000_6-0 "Jump up"
[163]: https://en.wikipedia.org/wiki/Mathematical_induction#CITEREFAcerbi2000
[164]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-FOOTNOTEHydeRaffman2018_7-0 "Jump up"
[165]: https://en.wikipedia.org/wiki/Mathematical_induction#CITEREFHydeRaffman2018
[166]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-Induction_Bussey_8-0
[167]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-Induction_Bussey_8-1
[168]: https://en.wikipedia.org/wiki/Mathematical_induction#CITEREFCajori1918
[169]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-FOOTNOTERashed199462-84_9-0 "Jump up"
[170]: https://en.wikipedia.org/wiki/Mathematical_induction#CITEREFRashed1994
[171]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-10 "Jump up"
[172]: https://books.google.com/books?id=HGMXCgAAQBAJ&pg=PA193
[173]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-FOOTNOTERashed199462_11-0 "Jump up"
[174]: https://en.wikipedia.org/wiki/Mathematical_induction#CITEREFRashed1994
[175]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-FOOTNOTESimonson2000_12-0 "Jump up"
[176]: https://en.wikipedia.org/wiki/Mathematical_induction#CITEREFSimonson2000
[177]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-FOOTNOTERabinovitch1970_13-0 "Jump up"
[178]: https://en.wikipedia.org/wiki/Mathematical_induction#CITEREFRabinovitch1970
[179]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-14 "Jump up"
[180]: https://en.wikipedia.org/wiki/Polysyllogism "Polysyllogism"
[181]: https://en.wikipedia.org/wiki/Ivor_Grattan-Guinness "Ivor Grattan-Guinness"
[182]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[183]: https://en.wikipedia.org/wiki/Special:BookSources/3-7643-5456-9 "Special:BookSources/3-7643-5456-9"
[184]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-FOOTNOTEPeirce1881_15-0 "Jump up"
[185]: https://en.wikipedia.org/wiki/Mathematical_induction#CITEREFPeirce1881
[186]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-FOOTNOTEShields1997_16-0 "Jump up"
[187]: https://en.wikipedia.org/wiki/Mathematical_induction#CITEREFShields1997
[188]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-17 "Jump up"
[189]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[190]: https://en.wikipedia.org/wiki/Special:BookSources/978-0131877184 "Special:BookSources/978-0131877184"
[191]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-Buss:BA_18-0 "Jump up"
[192]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-19 "Jump up"
[193]: https://brilliant.org/wiki/forward-backwards-induction/
[194]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-20 "Jump up"
[195]: http://visualiseur.bnf.fr/Visualiseur?Destination=Gallica&O=NUMM-29058
[196]: https://web.archive.org/web/20171014135801/http://visualiseur.bnf.fr/Visualiseur?Destination=Gallica&O=NUMM-29058
[197]: https://en.wikipedia.org/wiki/Wayback_Machine "Wayback Machine"
[198]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-21 "Jump up"
[199]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-Ohman2019_22-0
[200]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-Ohman2019_22-1
[201]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-Ohman2019_22-2
[202]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-Ohman2019_22-3
[203]: https://en.wikipedia.org/wiki/Mathematical_induction#cite_ref-Ohman2019_22-4
[204]: https://doi.org/10.1007%2Fs00283-019-09898-4
[205]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[206]: https://doi.org/10.1007%2Fs00283-019-09898-4
[207]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=23 "Edit section: References"
[208]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=24 "Edit section: Introduction"
[209]: https://en.wikipedia.org/wiki/James_Franklin_(philosopher) "James Franklin (philosopher)"
[210]: http://www.maths.unsw.edu.au/~jim/proofs.html
[211]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[212]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-646-54509-7 "Special:BookSources/978-0-646-54509-7"
[213]: https://www.encyclopediaofmath.org/index.php?title=Mathematical_induction
[214]: https://en.wikipedia.org/wiki/Encyclopedia_of_Mathematics "Encyclopedia of Mathematics"
[215]: https://en.wikipedia.org/wiki/European_Mathematical_Society "European Mathematical Society"
[216]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[217]: https://en.wikipedia.org/wiki/Special:BookSources/978-3540058199 "Special:BookSources/978-3540058199"
[218]: https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)"
[219]: https://www.worldcat.org/issn/1431-4657
[220]: https://en.wikipedia.org/wiki/Donald_Knuth "Donald Knuth"
[221]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[222]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-201-89683-1 "Special:BookSources/978-0-201-89683-1"
[223]: https://en.wikipedia.org/wiki/Andrey_Kolmogorov "Andrey Kolmogorov"
[224]: https://archive.org/details/introductoryreal00kolm_0
[225]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[226]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-486-61226-3 "Special:BookSources/978-0-486-61226-3"
[227]: https://en.wikipedia.org/w/index.php?title=Mathematical_induction&action=edit&section=25 "Edit section: History"
[228]: https://www.academia.edu/8016024
[229]: https://en.wikipedia.org/wiki/Archive_for_History_of_Exact_Sciences "Archive for History of Exact Sciences"
[230]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[231]: https://doi.org/10.1007%2Fs004070000020
[232]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[233]: https://www.jstor.org/stable/41134098
[234]: https://en.wikipedia.org/wiki/American_Mathematical_Monthly "American Mathematical Monthly"
[235]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[236]: https://doi.org/10.2307%2F2974308
[237]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[238]: https://www.jstor.org/stable/2974308
[239]: https://en.wikipedia.org/wiki/Florian_Cajori "Florian Cajori"
[240]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[241]: https://doi.org/10.2307%2F2972638
[242]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[243]: https://www.jstor.org/stable/2972638
[244]: https://en.wikipedia.org/wiki/Hans_Freudenthal "Hans Freudenthal"
[245]: https://en.wikipedia.org/wiki/Archives_Internationales_d%27Histoire_des_Sciences "Archives Internationales d'Histoire des Sciences"
[246]: https://plato.stanford.edu/archives/sum2018/entries/sorites-paradox/
[247]: https://en.wikipedia.org/wiki/The_Stanford_Encyclopedia_of_Philosophy "The Stanford Encyclopedia of Philosophy"
[248]: https://en.wikipedia.org/wiki/Addison-Wesley "Addison-Wesley"
[249]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[250]: https://en.wikipedia.org/wiki/Special:BookSources/0-321-01618-1 "Special:BookSources/0-321-01618-1"
[251]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce "Charles Sanders Peirce"
[252]: https://books.google.com/books?id=LQgPAAAAIAAJ&jtp=85
[253]: https://en.wikipedia.org/wiki/American_Journal_of_Mathematics "American Journal of Mathematics"
[254]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[255]: https://doi.org/10.2307%2F2369151
[256]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[257]: https://www.jstor.org/stable/2369151
[258]: https://en.wikipedia.org/wiki/MR_(identifier) "MR (identifier)"
[259]: https://www.ams.org/mathscinet-getitem?mr=1507856
[260]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[261]: https://doi.org/10.1007%2FBF00327237
[262]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[263]: https://doi.org/10.1007%2FBF00348537
[264]: https://books.google.com/books?id=vSkClSvU_9AC&pg=PA62
[265]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[266]: https://en.wikipedia.org/wiki/Special:BookSources/9780792325659 "Special:BookSources/9780792325659"
[267]: https://archive.org/details/studiesinlogicof00nath
[268]: http://web.stonehill.edu/compsci/Shai_papers/MathofLevi.pdf
[269]: https://doi.org/10.1090%2FS0002-9904-1909-01860-9
[270]: https://en.wikipedia.org/wiki/Bulletin_of_the_American_Mathematical_Society "Bulletin of the American Mathematical Society"
[271]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[272]: https://doi.org/10.1090%2FS0002-9904-1909-01860-9
[273]: https://en.wikipedia.org/wiki/Isis "Isis"
[274]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[275]: https://doi.org/10.1086%2F352009
[276]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[277]: https://www.jstor.org/stable/230435
