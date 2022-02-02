---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Paradoxes_of_material_implication
page-title:       Paradoxes of material implication - Wikipedia
article-title:    Paradoxes of material implication - Wikipedia
---
# Paradoxes of material implication - Wikipedia

The paradoxes of material implication are a group of formulae that are intuitively false but treated as true in systems of logic that interpret the conditional connective  as material conditional. On the material implication interpretation, a conditional formula  is true unless  is true and  is false. If natural language conditionals were understood in the same way, that would mean that the sentence "If the Nazis won World War Two, everybody would be happy" is true. Given that such problematic consequences follow from a seemingly correct assumption about logic, they are called paradoxes. They demonstrate a mismatch between classical logic and robust intuitions about meaning and reasoning.[1]
The __paradoxes of material implication__ are a group of [formulae][1] that are intuitively false but treated as true in systems of [logic][2] that [interpret][3] the conditional [connective][4] ![\rightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/53e574cc3aa5b4bf5f3f5906caf121a378eef08b) as [material conditional][5]. On the material implication interpretation, a conditional formula ![{\displaystyle P\rightarrow Q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/86439ea857adc8eaec93c4d14270b8ba6bd2a6a9) is true unless ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) is true and ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) is false. If [natural language][6] conditionals were understood in the same way, that would mean that the sentence "If the Nazis won World War Two, everybody would be happy" is [true][7]. Given that such problematic consequences follow from a seemingly correct assumption about logic, they are called *[paradoxes][8]*. They demonstrate a mismatch between classical logic and robust intuitions about [meaning][9] and [reasoning][10].[\[1\]][11]

## Paradox of entailment\[[edit][12]\]

As the best known of the paradoxes, and most formally simple, the paradox of [entailment][13] makes the best introduction.

In natural language, an instance of the paradox of entailment arises:

*It is raining*

And

*It is not raining*

Therefore

*George Washington is made of rakes.*

This arises from the [principle of explosion][14], a law of [classical logic][15] stating that inconsistent premises always make an argument valid; that is, inconsistent premises imply any [conclusion][16] at all. This seems paradoxical because although the above is a logically valid argument, it is not [sound][17] (not all of its premises are true).

### Construction\[[edit][18]\]

[Validity][19] is defined in classical logic as follows:

*An [argument][20] (consisting of [premises][21] and a conclusion) is valid [if and only if][22] there is no possible situation in which all the premises are true and the conclusion is false.*

For example a valid argument might run:

*If it is raining, water exists* (1st premise)

*It is raining* (2nd premise)

*Water exists* (Conclusion)

In this example there is no possible situation in which the premises are true while the conclusion is false. Since there is no [counterexample][23], the argument is valid.

But one could construct an argument in which the premises are [inconsistent][24]. This would satisfy the test for a valid argument since there would be *no possible situation in which all the premises are true* and therefore *no possible situation in which all the premises are true and the conclusion is false*.

For example an argument with inconsistent premises might run:

*It is definitely raining* (1st premise; true)

*It is not raining* (2nd premise; false)

*George Washington is made of rakes* (Conclusion)

As there is no possible situation where both premises could be true, then there is certainly no possible situation in which the premises could be true while the conclusion was false. So the argument is valid whatever the conclusion is; inconsistent premises imply all conclusions.

## Simplification\[[edit][25]\]

The classical paradox formulae are closely tied to the formula,

-   ![(p\land q)\to p](https://wikimedia.org/api/rest_v1/media/math/render/svg/cd390432fdeb73e64dd58573cd20eca8f78dc6e6)

the principle of Simplification, which can be derived from the paradox formulae rather easily (e.g. from (1) by Importation). In addition, there are serious problems with trying to use material implication as representing the English "if ... then ...". For example, the following are valid inferences:

1.  ![(p\to q)\land (r\to s)\ \vdash \ (p\to s)\lor (r\to q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/950f742d774d922eb8e5bf1f342646e63348e894)
2.  ![(p\land q)\to r\ \vdash \ (p\to r)\lor (q\to r)](https://wikimedia.org/api/rest_v1/media/math/render/svg/e0ed9fb098944b826e7fa32e0ec7004f001e06c6)

but mapping these back to English sentences using "if" gives paradoxes. The first might be read "If John is in London then he is in England, and if he is in Paris then he is in France. Therefore, it is either true that (a) if John is in London then he is in France, or (b) that if he is in Paris then he is in England." Using material implication, if John really is in London, then (since he is not in Paris) (b) is true; whereas if he is in Paris, then (a) is true. Since he cannot be in both places, the conclusion that at least one of (a) or (b) is true is valid.

But this does not match how "if ... then ..." is used in natural language: the most likely scenario in which one would say "If John is in London then he is in England" is if one *does not know* where John is, but nonetheless knows that *if* he is in London, he is in England. Under this interpretation, both premises are true, but both clauses of the conclusion are false.

The second example can be read "If both switch A and switch B are closed, then the light is on. Therefore, it is either true that if switch A is closed, the light is on, or that if switch B is closed, the light is on." Here, the most likely natural-language interpretation of the "if ... then ..." statements would be "*whenever* switch A is closed, the light is on", and "*whenever* switch B is closed, the light is on". Again, under this interpretation both clauses of the conclusion may be false (for instance in a series circuit, with a light that only comes on when *both* switches are closed).

## See also\[[edit][26]\]

-   [Correlation does not imply causation][27]
-   [Counterfactuals][28]
-   [False dilemma][29]
-   [Import-Export][30]
-   [List of paradoxes][31]
-   [Modus ponens][32]
-   [The Moon is made of green cheese][33]
-   [Relevance logic][34] arose out of attempts to avoid these paradoxes
-   [Vacuous truth][35]

## References\[[edit][36]\]

-   [Bennett, J.][37] *A Philosophical Guide to Conditionals*. Oxford: Clarendon Press. 2003.
-   *Conditionals*, ed. [Frank Jackson][38]. Oxford: Oxford University Press. 1991.
-   [Etchemendy, J.][39] *The Concept of Logical Consequence*. Cambridge: Harvard University Press. 1990.
-   ["Strict implication calculus"][40], *[Encyclopedia of Mathematics][41]*, [EMS Press][42], 2001 \[1994\]
-   [Sanford, D.][43] *If P, Then Q: Conditionals and the Foundations of Reasoning*. New York: Routledge. 1989.
-   [Priest, G.][44] *An Introduction to Non-Classical Logic*, Cambridge University Press. 2001.

[1]: https://en.wikipedia.org/wiki/Formula "Formula"
[2]: https://en.wikipedia.org/wiki/Mathematical_logic
[3]: https://en.wikipedia.org/wiki/Semantics_of_logic
[4]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[5]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[6]: https://en.wikipedia.org/wiki/Natural_language "Natural language"
[7]: https://en.wikipedia.org/wiki/Vacuous_truth "Vacuous truth"
[8]: https://en.wikipedia.org/wiki/Paradoxes "Paradoxes"
[9]: https://en.wikipedia.org/wiki/Meaning_(philosophy) "Meaning (philosophy)"
[10]: https://en.wikipedia.org/wiki/Reasoning "Reasoning"
[11]: https://en.wikipedia.org/wiki/Paradoxes_of_material_implication#cite_note-1
[12]: https://en.wikipedia.org/w/index.php?title=Paradoxes_of_material_implication&action=edit&section=1 "Edit section: Paradox of entailment"
[13]: https://en.wikipedia.org/wiki/Entailment "Entailment"
[14]: https://en.wikipedia.org/wiki/Principle_of_explosion "Principle of explosion"
[15]: https://en.wikipedia.org/wiki/Classical_logic "Classical logic"
[16]: https://en.wikipedia.org/wiki/Logical_consequence "Logical consequence"
[17]: https://en.wikipedia.org/wiki/Soundness_of_deductive_reasoning "Soundness of deductive reasoning"
[18]: https://en.wikipedia.org/w/index.php?title=Paradoxes_of_material_implication&action=edit&section=2 "Edit section: Construction"
[19]: https://en.wikipedia.org/wiki/Validity_(logic) "Validity (logic)"
[20]: https://en.wikipedia.org/wiki/Logical_argument "Logical argument"
[21]: https://en.wikipedia.org/wiki/Premise "Premise"
[22]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[23]: https://en.wikipedia.org/wiki/Counterexample "Counterexample"
[24]: https://en.wikipedia.org/wiki/Consistent "Consistent"
[25]: https://en.wikipedia.org/w/index.php?title=Paradoxes_of_material_implication&action=edit&section=3 "Edit section: Simplification"
[26]: https://en.wikipedia.org/w/index.php?title=Paradoxes_of_material_implication&action=edit&section=4 "Edit section: See also"
[27]: https://en.wikipedia.org/wiki/Correlation_does_not_imply_causation "Correlation does not imply causation"
[28]: https://en.wikipedia.org/wiki/Counterfactuals "Counterfactuals"
[29]: https://en.wikipedia.org/wiki/False_dilemma "False dilemma"
[30]: https://en.wikipedia.org/wiki/Import-Export_(logic) "Import-Export (logic)"
[31]: https://en.wikipedia.org/wiki/List_of_paradoxes "List of paradoxes"
[32]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[33]: https://en.wikipedia.org/wiki/The_Moon_is_made_of_green_cheese "The Moon is made of green cheese"
[34]: https://en.wikipedia.org/wiki/Relevance_logic "Relevance logic"
[35]: https://en.wikipedia.org/wiki/Vacuous_truth "Vacuous truth"
[36]: https://en.wikipedia.org/w/index.php?title=Paradoxes_of_material_implication&action=edit&section=5 "Edit section: References"
[37]: https://en.wikipedia.org/wiki/Jonathan_Bennett_(philosopher) "Jonathan Bennett (philosopher)"
[38]: https://en.wikipedia.org/wiki/Frank_Jackson_(philosopher) "Frank Jackson (philosopher)"
[39]: https://en.wikipedia.org/wiki/John_Etchemendy "John Etchemendy"
[40]: https://www.encyclopediaofmath.org/index.php?title=Strict_implication_calculus
[41]: https://en.wikipedia.org/wiki/Encyclopedia_of_Mathematics "Encyclopedia of Mathematics"
[42]: https://en.wikipedia.org/wiki/European_Mathematical_Society "European Mathematical Society"
[43]: https://en.wikipedia.org/wiki/David_H._Sanford "David H. Sanford"
[44]: https://en.wikipedia.org/wiki/Graham_Priest "Graham Priest"
