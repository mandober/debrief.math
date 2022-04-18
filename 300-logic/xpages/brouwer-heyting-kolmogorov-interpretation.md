---
downloaded:       2022-01-15
page-url:         https://en.wikipedia.org/wiki/Brouwer%E2%80%93Heyting%E2%80%93Kolmogorov_interpretation
page-title:       Brouwer–Heyting–Kolmogorov interpretation - Wikipedia
article-title:    Brouwer–Heyting–Kolmogorov interpretation - Wikipedia
---
# Brouwer–Heyting–Kolmogorov interpretation - Wikipedia

In mathematical logic, the Brouwer–Heyting–Kolmogorov interpretation, or BHK interpretation, of intuitionistic logic was proposed by L. E. J. Brouwer and Arend Heyting, and independently by Andrey Kolmogorov. It is also sometimes called the realizability interpretation, because of the connection with the realizability theory of Stephen Kleene. It is the standard explanation of intuitionistic logic.[1]
In [mathematical logic][1], the **Brouwer–Heyting–Kolmogorov interpretation**, or **BHK interpretation**, of [intuitionistic logic][2] was proposed by [L. E. J. Brouwer][3] and [Arend Heyting][4], and independently by [Andrey Kolmogorov][5]. It is also sometimes called the **realizability interpretation**, because of the connection with the [realizability][6] theory of [Stephen Kleene][7]. It is the standard explanation of intuitionistic logic.[\[1\]][8]

## The interpretation\[[edit][9]\]

The interpretation states what is intended to be a proof of a given [formula][10]. This is specified by [induction on the structure][11] of that formula:

The interpretation of a primitive proposition is supposed to be known from context. In the context of arithmetic, a proof of the formula  is a computation reducing the two terms to the same numeral.

Kolmogorov followed the same lines but phrased his interpretation in terms of problems and solutions. To assert a formula is to claim to know a solution to the problem represented by that formula. For instance  is the problem of reducing  to ; to solve it requires a method to solve problem  given a solution to problem .

## Examples\[[edit][12]\]

The identity function is a proof of the formula , no matter what *P* is.

The [law of non-contradiction][13]  expands to :

Putting it all together, a proof of  is a function  that converts a pair <*a*, *b*\> – where  is a proof of *P*, and  is a function that converts a proof of *P* into a proof of  – into a proof of . There is a function  that does this, where , proving the law of non-contradiction, no matter what *P* is.

Indeed, the same line of thought provides a proof for  as well, where  is any proposition.

On the other hand, the [law of excluded middle][14]  expands to , and in general has no proof. According to the interpretation, a proof of  is a pair <*a*, *b*\> where *a* is 0 and *b* is a proof of *P*, or *a* is 1 and *b* is a proof of . Thus if neither *P* nor  is provable then neither is .

## What is absurdity?\[[edit][15]\]

It is not, in general, possible for a [logical system][16] to have a formal negation operator such that there is a proof of "not"  exactly when there isn't a proof of ; see [Gödel's incompleteness theorems][17]. The BHK interpretation instead takes "not"  to mean that  leads to absurdity, designated , so that a proof of  is a function converting a proof of  into a proof of absurdity.

A standard example of absurdity is found in dealing with arithmetic. Assume that 0 = 1, and proceed by [mathematical induction][18]: 0 = 0 by the axiom of equality. Now (induction hypothesis), if 0 were equal to a certain [natural number][19] *n*, then 1 would be equal to *n* + 1, ([Peano axiom][20]: **S***m* = **S***n* if and only if *m* = *n*), but since 0 = 1, therefore 0 would also be equal to *n* + 1. By induction, 0 is equal to all numbers, and therefore any two natural numbers become equal.

Therefore, there is a way to go from a proof of 0 = 1 to a proof of any basic arithmetic equality, and thus to a proof of any complex arithmetic proposition. Furthermore, to get this result it was not necessary to invoke the Peano axiom that states that 0 is "not" the successor of any natural number. This makes 0 = 1 suitable as  in [Heyting arithmetic][21] (and the Peano axiom is rewritten 0 = **S***n* → 0 = **S**0). This use of 0 = 1 validates the [principle of explosion][22].

## What is a function?\[[edit][23]\]

The BHK interpretation will depend on the view taken about what constitutes a *function* that converts one proof to another, or that converts an element of a domain to a proof. Different versions of [constructivism][24] will diverge on this point.

Kleene's [realizability][25] theory identifies the functions with the [computable functions][26]. It deals with Heyting arithmetic, where the domain of quantification is the natural numbers and the primitive propositions are of the form *x* = *y*. A proof of *x* = *y* is simply the trivial algorithm if *x* evaluates to the same number that *y* does (which is always decidable for natural numbers), otherwise there is no proof. These are then built up by induction into more complex algorithms.

If one takes [lambda calculus][27] as defining the notion of a function, then the BHK interpretation describes the [correspondence][28] between natural deduction and functions.

## References\[[edit][29]\]

-   [Troelstra, A.][30] (1991). ["History of Constructivism in the Twentieth Century"][31] (PDF).
-   Troelstra, A. (2003). "Constructivism and Proof Theory (draft)". [CiteSeerX][32] [10.1.1.10.6972][33].

[1]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[2]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[3]: https://en.wikipedia.org/wiki/L._E._J._Brouwer "L. E. J. Brouwer"
[4]: https://en.wikipedia.org/wiki/Arend_Heyting "Arend Heyting"
[5]: https://en.wikipedia.org/wiki/Andrey_Kolmogorov "Andrey Kolmogorov"
[6]: https://en.wikipedia.org/wiki/Realizability "Realizability"
[7]: https://en.wikipedia.org/wiki/Stephen_Kleene "Stephen Kleene"
[8]: https://en.wikipedia.org/wiki/Brouwer%E2%80%93Heyting%E2%80%93Kolmogorov_interpretation#cite_note-1
[9]: https://en.wikipedia.org/w/index.php?title=Brouwer%E2%80%93Heyting%E2%80%93Kolmogorov_interpretation&action=edit&section=1 "Edit section: The interpretation"
[10]: https://en.wikipedia.org/wiki/Formula_(mathematical_logic) "Formula (mathematical logic)"
[11]: https://en.wikipedia.org/wiki/Induction_on_the_structure "Induction on the structure"
[12]: https://en.wikipedia.org/w/index.php?title=Brouwer%E2%80%93Heyting%E2%80%93Kolmogorov_interpretation&action=edit&section=2 "Edit section: Examples"
[13]: https://en.wikipedia.org/wiki/Law_of_non-contradiction "Law of non-contradiction"
[14]: https://en.wikipedia.org/wiki/Law_of_excluded_middle
[15]: https://en.wikipedia.org/w/index.php?title=Brouwer%E2%80%93Heyting%E2%80%93Kolmogorov_interpretation&action=edit&section=3 "Edit section: What is absurdity?"
[16]: https://en.wikipedia.org/wiki/Logical_system "Logical system"
[17]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorems
[18]: https://en.wikipedia.org/wiki/Mathematical_induction "Mathematical induction"
[19]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[20]: https://en.wikipedia.org/wiki/Peano_arithmetic "Peano arithmetic"
[21]: https://en.wikipedia.org/wiki/Heyting_arithmetic "Heyting arithmetic"
[22]: https://en.wikipedia.org/wiki/Principle_of_explosion "Principle of explosion"
[23]: https://en.wikipedia.org/w/index.php?title=Brouwer%E2%80%93Heyting%E2%80%93Kolmogorov_interpretation&action=edit&section=4 "Edit section: What is a function?"
[24]: https://en.wikipedia.org/wiki/Constructivism_(mathematics) "Constructivism (mathematics)"
[25]: https://en.wikipedia.org/wiki/Realizability "Realizability"
[26]: https://en.wikipedia.org/wiki/Computable_function
[27]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[28]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence "Curry–Howard correspondence"
[29]: https://en.wikipedia.org/w/index.php?title=Brouwer%E2%80%93Heyting%E2%80%93Kolmogorov_interpretation&action=edit&section=5 "Edit section: References"
[30]: https://en.wikipedia.org/wiki/A._S._Troelstra "A. S. Troelstra"
[31]: http://www.illc.uva.nl/Research/Publications/Reports/ML-1991-05.text.pdf
[32]: https://en.wikipedia.org/wiki/CiteSeerX_(identifier) "CiteSeerX (identifier)"
[33]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.10.6972
