---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Peirce%27s_law
page-title:       Peirce's law - Wikipedia
article-title:    Peirce's law - Wikipedia
---
# Peirce's law - Wikipedia

In logic, Peirce's law is named after the philosopher and logician Charles Sanders Peirce.  It was taken as an axiom in his first axiomatisation of propositional logic.  It can be thought of as the law of excluded middle written in a form that involves only one sort of connective, namely implication.
In [logic][1], __Peirce's law__ is named after the [philosopher][2] and [logician][3] [Charles Sanders Peirce][4]. It was taken as an [axiom][5] in his first axiomatisation of [propositional logic][6]. It can be thought of as the [law of excluded middle][7] written in a form that involves only one sort of connective, namely implication.

In [propositional calculus][8], __Peirce's law__ says that ((*P*→*Q*)→*P*)→*P*. Written out, this means that *P* must be true if there is a proposition *Q* such that the truth of *P* [follows from][9] the truth of "if *P* then *Q*". In particular, when *Q* is taken to be a false formula, the law says that if *P* must be true whenever it implies falsity, [then][10] *P* is true. In this way Peirce's law implies the [law of excluded middle][11].

Peirce's law does not hold in [intuitionistic logic][12] or [intermediate logics][13] and cannot be deduced from the [deduction theorem][14] alone.

Under the [Curry–Howard isomorphism][15], Peirce's law is the type of [continuation][16] operators, e.g. [call/cc][17] in [Scheme][18].[\[1\]][19]

## History\[[edit][20]\]

Here is Peirce's own statement of the law:

A *fifth icon* is required for the principle of [excluded middle][21] and other propositions connected with it. One of the simplest formulae of this kind is:

This is hardly axiomatical. That it is true appears as follows. It can only be false by the final consequent *x* being false while its antecedent (*x* → *y*) → *x* is true. If this is true, either its consequent, *x*, is true, when the whole formula would be true, or its antecedent *x* → *y* is false. But in the last case the antecedent of *x* → *y*, that is *x*, must be true. (Peirce, the *Collected Papers* 3.384).

Peirce goes on to point out an immediate application of the law:

From the formula just given, we at once get:

where the *a* is used in such a sense that (*x* → *y*) → *a* means that from (*x* → *y*) every proposition follows. With that understanding, the formula states the principle of excluded middle, that from the falsity of the denial of *x* follows the truth of *x*. (Peirce, the *Collected Papers* 3.384).

__Warning__: ((*x*→*y*)→*a*)→*x* is *not* a [tautology][22]. However, \[*a*→*x*\]→\[((*x*→*y*)→*a*)→*x*\] is a tautology.

## Other proofs\[[edit][23]\]

Here is a simple proof of Peirce's law assuming double negation ![{\displaystyle (\neg \neg P\iff P)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ce72b55891fbaff391bbe16951a70ca00dd524a9) and deriving the standard disjunction from an implication ![{\displaystyle ((P\rightarrow Q)\Rightarrow (\neg P\vee Q))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/daab1bd95d49ea456c629b5e1e846366c7ae71ff):

![{\displaystyle {\begin{aligned}(p\rightarrow q)\rightarrow p\\\neg (p\rightarrow q)\lor p\\\neg (\neg p\lor q)\lor p\\(p\land \neg q)\lor p\\p\lor p\\p.\\\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8e9eeeeb5b81a4fc349693579e7de23f32fb1c5c)

## Using Peirce's law with the deduction theorem\[[edit][24]\]

Peirce's law allows one to enhance the technique of using the [deduction theorem][25] to prove theorems. Suppose one is given a set of premises Γ and one wants to deduce a proposition *Z* from them. With Peirce's law, one can add (at no cost) additional premises of the form *Z*→*P* to Γ. For example, suppose we are given *P*→*Z* and (*P*→*Q*)→*Z* and we wish to deduce *Z* so that we can use the deduction theorem to conclude that (*P*→*Z*)→(((*P*→*Q*)→*Z*)→*Z*) is a theorem. Then we can add another premise *Z*→*Q*. From that and *P*→*Z*, we get *P*→*Q*. Then we apply modus ponens with (*P*→*Q*)→*Z* as the major premise to get *Z*. Applying the deduction theorem, we get that (*Z*→*Q*)→*Z* follows from the original premises. Then we use Peirce's law in the form ((*Z*→*Q*)→*Z*)→*Z* and modus ponens to derive *Z* from the original premises. Then we can finish off proving the theorem as we originally intended.

-   *P*→*Z*

1\. hypothesis

-   -   (*P*→*Q*)→*Z*

2\. hypothesis

-   -   -   *Z*→*Q*

3\. hypothesis

-   -   -   -   *P*

4\. hypothesis

-   -   -   -   *Z*

5\. modus ponens using steps 4 and 1

-   -   -   -   *Q*

6\. modus ponens using steps 5 and 3

-   -   -   *P*→*Q*

7\. deduction from 4 to 6

-   -   -   *Z*

8\. modus ponens using steps 7 and 2

-   -   (*Z*→*Q*)→*Z*

9\. deduction from 3 to 8

-   -   ((*Z*→*Q*)→*Z*)→*Z*

10\. Peirce's law

-   -   *Z*

11\. modus ponens using steps 9 and 10

-   ((*P*→*Q*)→*Z*)→*Z*

12\. deduction from 2 to 11

(*P*→*Z*)→(((*P*→*Q*)→*Z*)→*Z*)

13\. deduction from 1 to 12 QED

## Completeness of the implicational propositional calculus\[[edit][26]\]

One reason that Peirce's law is important is that it can substitute for the law of excluded middle in the logic which only uses implication. The sentences which can be deduced from the axiom schemas:

-   *P*→(*Q*→*P*)
-   (*P*→(*Q*→*R*))→((*P*→*Q*)→(*P*→*R*))
-   ((*P*→*Q*)→*P*)→*P*
-   from *P* and *P*→*Q* infer *Q*

(where *P*,*Q*,*R* contain only "→" as a connective) are all the [tautologies][27] which use only "→" as a connective.

## See also\[[edit][28]\]

-   [Charles Sanders Peirce bibliography][29]

## Notes\[[edit][30]\]

## Further reading\[[edit][31]\]

-   Peirce, C.S., "On the Algebra of Logic: A Contribution to the Philosophy of Notation", *American Journal of Mathematics* 7, 180–202 (1885). Reprinted, the *Collected Papers of Charles Sanders Peirce* 3.359–403 and the *Writings of Charles S. Peirce: A Chronological Edition* 5, 162–190.
-   Peirce, C.S., *Collected Papers of Charles Sanders Peirce*, Vols. 1–6, [Charles Hartshorne][32] and [Paul Weiss][33] (eds.), Vols. 7–8, [Arthur W. Burks][34] (ed.), Harvard University Press, Cambridge, MA, 1931–1935, 1958.

[1]: https://en.wikipedia.org/wiki/Logic "Logic"
[2]: https://en.wikipedia.org/wiki/Philosopher "Philosopher"
[3]: https://en.wikipedia.org/wiki/Logician "Logician"
[4]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce "Charles Sanders Peirce"
[5]: https://en.wikipedia.org/wiki/Axiom#Mathematics "Axiom"
[6]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[7]: https://en.wikipedia.org/wiki/Law_of_excluded_middle "Law of excluded middle"
[8]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[9]: https://en.wikipedia.org/wiki/Logical_consequence "Logical consequence"
[10]: https://en.wikipedia.org/wiki/Consequentia_mirabilis "Consequentia mirabilis"
[11]: https://en.wikipedia.org/wiki/Law_of_excluded_middle "Law of excluded middle"
[12]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[13]: https://en.wikipedia.org/wiki/Intermediate_logic "Intermediate logic"
[14]: https://en.wikipedia.org/wiki/Deduction_theorem "Deduction theorem"
[15]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_isomorphism "Curry–Howard isomorphism"
[16]: https://en.wikipedia.org/wiki/Continuation "Continuation"
[17]: https://en.wikipedia.org/wiki/Call/cc "Call/cc"
[18]: https://en.wikipedia.org/wiki/Scheme_(programming_language) "Scheme (programming language)"
[19]: https://en.wikipedia.org/wiki/Peirce%27s_law#cite_note-1
[20]: https://en.wikipedia.org/w/index.php?title=Peirce%27s_law&action=edit&section=1 "Edit section: History"
[21]: https://en.wikipedia.org/wiki/Excluded_middle "Excluded middle"
[22]: https://en.wikipedia.org/wiki/Tautology_(logic) "Tautology (logic)"
[23]: https://en.wikipedia.org/w/index.php?title=Peirce%27s_law&action=edit&section=2 "Edit section: Other proofs"
[24]: https://en.wikipedia.org/w/index.php?title=Peirce%27s_law&action=edit&section=3 "Edit section: Using Peirce's law with the deduction theorem"
[25]: https://en.wikipedia.org/wiki/Deduction_theorem "Deduction theorem"
[26]: https://en.wikipedia.org/w/index.php?title=Peirce%27s_law&action=edit&section=4 "Edit section: Completeness of the implicational propositional calculus"
[27]: https://en.wikipedia.org/wiki/Tautology_(logic) "Tautology (logic)"
[28]: https://en.wikipedia.org/w/index.php?title=Peirce%27s_law&action=edit&section=5 "Edit section: See also"
[29]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce_bibliography "Charles Sanders Peirce bibliography"
[30]: https://en.wikipedia.org/w/index.php?title=Peirce%27s_law&action=edit&section=6 "Edit section: Notes"
[31]: https://en.wikipedia.org/w/index.php?title=Peirce%27s_law&action=edit&section=7 "Edit section: Further reading"
[32]: https://en.wikipedia.org/wiki/Charles_Hartshorne "Charles Hartshorne"
[33]: https://en.wikipedia.org/wiki/Paul_Weiss_(philosopher) "Paul Weiss (philosopher)"
[34]: https://en.wikipedia.org/wiki/Arthur_W._Burks "Arthur W. Burks"
