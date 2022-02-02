---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Logical_biconditional
page-title:       Logical biconditional - Wikipedia
article-title:    Logical biconditional - Wikipedia
---
# Logical biconditional - Wikipedia


[![](https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Venn1001.svg/220px-Venn1001.svg.png)][1]

In [logic][2] and [mathematics][3], the __logical biconditional__, sometimes known as the __material biconditional__, is the [logical connective][4] (![\leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/046b918c43e05caf6624fe9b676c69ec9cd6b892)) used to conjoin two statements P and Q to form the statement "P [if and only if][5] Q", where P is known as the *[antecedent][6]*, and Q the *[consequent][7]*.[\[1\]][8][\[2\]][9] This is often abbreviated as "P iff Q".[\[3\]][10] Other ways of denoting this operator may be seen occasionally, as a double-headed arrow (↔[\[4\]][11] or ⇔[\[5\]][12] may be represented in Unicode in various ways), a prefixed E "E*pq*" (in [Łukasiewicz notation][13] or [Bocheński notation][14]), an equality sign (=), an equivalence sign (≡),[\[3\]][15] or *EQV*. It is logically equivalent to both![{\displaystyle (P\rightarrow Q)\land (Q\rightarrow P)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f32671a03a64d47feee37e84edf78d094ecce0be) and ![{\displaystyle (P\land Q)\lor (\neg P\land \neg Q)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/acba17910384f15b1f928005ea6311ad59028898), and the [XNOR][16] (exclusive nor) [boolean operator][17], which means "both or neither".

Semantically, the only case where a logical biconditional is different from a [material conditional][18] is the case where the hypothesis is false but the conclusion is true. In this case, the result is true for the conditional, but false for the biconditional.[\[1\]][19]

In the conceptual interpretation, *P* = *Q* means "All P's are Q's and all Q's are P's". In other words, the sets P and Q coincide: they are identical. However, this does not mean that P and Q need to have the same meaning (e.g., P could be "equiangular trilateral" and Q could be "equilateral triangle"). When phrased as a sentence, the antecedent is the *subject* and the consequent is the *predicate* of a [universal affirmative][20] proposition (e.g., in the phrase "all men are mortal", "men" is the subject and "mortal" is the predicate).

In the propositional interpretation, ![P \leftrightarrow Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/43e9c3ed4d9717db81fc3794218f377bea4f6eb0) means that P implies Q and Q implies P; in other words, the propositions are [logically equivalent][21], in the sense that both are either jointly true or jointly false. Again, this does not mean that they need to have the same meaning, as P could be "the triangle ABC has two equal sides" and Q could be "the triangle ABC has two equal angles". In general, the antecedent is the *premise*, or the *cause*, and the consequent is the *consequence*. When an implication is translated by a *hypothetical* (or *conditional*) judgment, the antecedent is called the *hypothesis* (or the *condition*) and the consequent is called the *thesis*.

A common way of demonstrating a biconditional of the form ![P \leftrightarrow Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/43e9c3ed4d9717db81fc3794218f377bea4f6eb0) is to demonstrate that ![P\rightarrow Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/86439ea857adc8eaec93c4d14270b8ba6bd2a6a9) and ![Q \rightarrow P](https://wikimedia.org/api/rest_v1/media/math/render/svg/a02fdef5455a1bfa49458c8d9821b1211b1e6e2b) separately (due to its equivalence to the conjunction of the two converse [conditionals][22][\[1\]][23]). Yet another way of demonstrating the same biconditional is by demonstrating that ![P\rightarrow Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/86439ea857adc8eaec93c4d14270b8ba6bd2a6a9) and ![\neg P \rightarrow \neg Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/dddf975e2d6626e24fbb8f41e7a2b16c592adcca).

When both members of the biconditional are propositions, it can be separated into two conditionals, of which one is called a *theorem* and the other its *reciprocal*.\[*[citation needed][24]*\] Thus whenever a theorem and its reciprocal are true, we have a biconditional. A simple theorem gives rise to an implication, whose antecedent is the *hypothesis* and whose consequent is the *thesis* of the theorem.

It is often said that the hypothesis is the *[sufficient condition][25]* of the thesis, and that the thesis is the *[necessary condition][26]* of the hypothesis. That is, it is sufficient that the hypothesis be true for the thesis to be true, while it is necessary that the thesis be true if the hypothesis were true. When a theorem and its reciprocal are true, its hypothesis is said to be the [necessary and sufficient condition][27] of the thesis. That is, the hypothesis is both the cause and the consequence of the thesis at the same time.

## Definition\[[edit][28]\]

[Logical equality][29] (also known as biconditional) is an [operation][30] on two [logical values][31], typically the values of two [propositions][32], that produces a value of *true* if and only if both operands are false or both operands are true.[\[1\]][33]

### Truth table\[[edit][34]\]

The following is truth table for ![P \leftrightarrow Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/43e9c3ed4d9717db81fc3794218f377bea4f6eb0) (also written as ![P \equiv Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/d54858d1e8731eaaef552a52f1431d25b8a8f05d), *P* = *Q*, or __P EQ Q__):

![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a)

![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed)

![{\displaystyle P\leftrightarrow Q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/43e9c3ed4d9717db81fc3794218f377bea4f6eb0)

T

T

T

T

F

F

F

T

F

F

F

T

When more than two statements are involved, combining them with ![\leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/046b918c43e05caf6624fe9b676c69ec9cd6b892) might be ambiguous. For example, the statement

![{\displaystyle x_{1}\leftrightarrow x_{2}\leftrightarrow x_{3}\leftrightarrow \cdots \leftrightarrow x_{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ed7c5f468c31c11cad0ebca97c0caab996229a3c)

may be interpreted as

![{\displaystyle (((x_{1}\leftrightarrow x_{2})\leftrightarrow x_{3})\leftrightarrow \cdots )\leftrightarrow x_{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1e5169b6993f5fcdd297747e3565f850afb1d37f),

or may be interpreted as saying that all *xi* are *jointly true or jointly false*:

![{\displaystyle (x_{1}\land \cdots \land x_{n})\lor (\neg x_{1}\land \cdots \land \neg x_{n})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/33a6687f6655f1609a0370af236e801ea884747c)

As it turns out, these two statements are only the same—when zero or two arguments are involved. In fact, the following truth tables only show the same bit pattern in the line with no argument and in the lines with two arguments:

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Multigrade_operator_XNOR.svg/220px-Multigrade_operator_XNOR.svg.png)][35]

![{\displaystyle ~x_{1}\leftrightarrow \cdots \leftrightarrow x_{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/58c4edb2ff1e1fa91f34cfa184d3a66c7cd9a84e)  
meant as equivalent to  
![{\displaystyle \neg ~(\neg x_{1}\oplus \cdots \oplus \neg x_{n})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/08e04d657c4f822dde5bbbf0972c1d619c0245fe)

The central Venn diagram below,  
and line *(ABC  )* in this matrix  
represent the same operation.

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Multigrade_operator_all_or_nothing.svg/220px-Multigrade_operator_all_or_nothing.svg.png)][36]

![{\displaystyle ~x_{1}\leftrightarrow \cdots \leftrightarrow x_{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/58c4edb2ff1e1fa91f34cfa184d3a66c7cd9a84e)  
meant as shorthand for  
![{\displaystyle (~x_{1}\land \cdots \land x_{n}~)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/55635b8fd03cf4664c9c26e5e23a2564fdf86fe4)  
![{\displaystyle \lor ~(\neg x_{1}\land \cdots \land \neg x_{n})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/551d41e22df1dabe316a2c0169a2c7234b64c535)

The Venn diagram directly below,  
and line *(ABC  )* in this matrix  
represent the same operation.

The left Venn diagram below, and the lines *(AB    )* in these matrices represent the same operation.

### Venn diagrams\[[edit][37]\]

Red areas stand for true (as in [![Venn0001.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Venn0001.svg/40px-Venn0001.svg.png)][38] for *[and][39]*).

## Properties\[[edit][40]\]

__[Commutativity][41]: Yes__

__[Associativity][42]: Yes__

![~A](https://wikimedia.org/api/rest_v1/media/math/render/svg/17327d088840ce291c8db59b592489ef8e6e94bd)

![~~~\leftrightarrow ~~~](https://wikimedia.org/api/rest_v1/media/math/render/svg/baea3f92a48d748936a8f7e89ea640135896686b)

![(B\leftrightarrow C)](https://wikimedia.org/api/rest_v1/media/math/render/svg/47284c8cd91f50f54b76c5d3d7591c4d2848a047)

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

![(A\leftrightarrow B)](https://wikimedia.org/api/rest_v1/media/math/render/svg/377a507f43f614500c9c326f3135fbb062cd5fc5)

![~~~\leftrightarrow ~~~](https://wikimedia.org/api/rest_v1/media/math/render/svg/baea3f92a48d748936a8f7e89ea640135896686b)

![~C](https://wikimedia.org/api/rest_v1/media/math/render/svg/35f52ed2496dc4077efa433abb4685684a158d7e)

[![Venn 0101 0101.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Venn_0101_0101.svg/50px-Venn_0101_0101.svg.png)][43]

![~~~\leftrightarrow ~~~](https://wikimedia.org/api/rest_v1/media/math/render/svg/baea3f92a48d748936a8f7e89ea640135896686b)

[![Venn 1100 0011.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Venn_1100_0011.svg/50px-Venn_1100_0011.svg.png)][44]

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

[![Venn 0110 1001.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Venn_0110_1001.svg/50px-Venn_0110_1001.svg.png)][45]

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

[![Venn 1001 1001.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Venn_1001_1001.svg/50px-Venn_1001_1001.svg.png)][46]

![~~~\leftrightarrow ~~~](https://wikimedia.org/api/rest_v1/media/math/render/svg/baea3f92a48d748936a8f7e89ea640135896686b)

[![Venn 0000 1111.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Venn_0000_1111.svg/50px-Venn_0000_1111.svg.png)][47]

__[Distributivity][48]:__ Biconditional doesn't distribute over any binary function (not even itself), but [logical disjunction distributes][49] over biconditional.

__[idempotency][50]: No__  

![~A~](https://wikimedia.org/api/rest_v1/media/math/render/svg/00229fc56bafa7e9b522aedb3bed5dca455bc561)

![~\leftrightarrow ~](https://wikimedia.org/api/rest_v1/media/math/render/svg/ee3507fd52f15d937cd86ae23b11b30ad61d177e)

![~A~](https://wikimedia.org/api/rest_v1/media/math/render/svg/00229fc56bafa7e9b522aedb3bed5dca455bc561)

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

![~1~](https://wikimedia.org/api/rest_v1/media/math/render/svg/12c70b7208ccc4ef9a41069267824959699f37f0)

    ![\nLeftrightarrow](https://wikimedia.org/api/rest_v1/media/math/render/svg/aeebe3d2aa323d1bd18a7c3ba7ff3179f7931471)    

![~A~](https://wikimedia.org/api/rest_v1/media/math/render/svg/00229fc56bafa7e9b522aedb3bed5dca455bc561)

[![Venn01.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Venn01.svg/36px-Venn01.svg.png)][51]

![~\leftrightarrow ~](https://wikimedia.org/api/rest_v1/media/math/render/svg/ee3507fd52f15d937cd86ae23b11b30ad61d177e)

[![Venn01.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Venn01.svg/36px-Venn01.svg.png)][52]

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

[![Venn11.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Venn11.svg/36px-Venn11.svg.png)][53]

    ![\nLeftrightarrow](https://wikimedia.org/api/rest_v1/media/math/render/svg/aeebe3d2aa323d1bd18a7c3ba7ff3179f7931471)    

[![Venn01.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Venn01.svg/36px-Venn01.svg.png)][54]

__[Monotonicity][55]: No__

![A\rightarrow B](https://wikimedia.org/api/rest_v1/media/math/render/svg/23efef033def56a67de7ded823f14626de26d174)

    ![\nRightarrow](https://wikimedia.org/api/rest_v1/media/math/render/svg/3e05a42e88f019861cf404b6f982d8f729a4c4ab)    

![(A\leftrightarrow C)](https://wikimedia.org/api/rest_v1/media/math/render/svg/7b880edcbd441046d3aa4da7176c8e9a24920df5)

![\rightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/53e574cc3aa5b4bf5f3f5906caf121a378eef08b)

![(B\leftrightarrow C)](https://wikimedia.org/api/rest_v1/media/math/render/svg/47284c8cd91f50f54b76c5d3d7591c4d2848a047)

[![Venn 1011 1011.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Venn_1011_1011.svg/50px-Venn_1011_1011.svg.png)][56]

    ![\nRightarrow](https://wikimedia.org/api/rest_v1/media/math/render/svg/3e05a42e88f019861cf404b6f982d8f729a4c4ab)    

[![Venn 1101 1011.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Venn_1101_1011.svg/50px-Venn_1101_1011.svg.png)][57]

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

[![Venn 1010 0101.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Venn_1010_0101.svg/50px-Venn_1010_0101.svg.png)][58]

![\rightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/53e574cc3aa5b4bf5f3f5906caf121a378eef08b)

[![Venn 1100 0011.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Venn_1100_0011.svg/50px-Venn_1100_0011.svg.png)][59]

__Truth-preserving: Yes__  
When all inputs are true, the output is true.

__Falsehood-preserving: No__  
When all inputs are false, the output is not false.

__[Walsh spectrum][60]: (2,0,0,2)__

__Non[linearity][61]: 0__ (the function is linear)

## Rules of inference\[[edit][62]\]

Like all connectives in first-order logic, the biconditional has rules of inference that govern its use in formal proofs.

### Biconditional introduction\[[edit][63]\]

Biconditional introduction allows one to infer that if B follows from A and A follows from B, then A [if and only if][64] B.

For example, from the statements "if I'm breathing, then I'm alive" and "if I'm alive, then I'm breathing", it can be inferred that "I'm breathing if and only if I'm alive" or equivalently, "I'm alive if and only if I'm breathing." Or more schematically:

 B → A   
 A → B 
 ∴ A ↔ B

 B → A   
 A → B 
 ∴ B ↔ A

### Biconditional elimination\[[edit][65]\]

Biconditional elimination allows one to infer a [conditional][66] from a biconditional: if A ↔ B is true, then one may infer either A → B, or B → A.

For example, if it is true that I'm breathing [if and only if][67] I'm alive, then it's true that *if* I'm breathing, then I'm alive; likewise, it's true that *if* I'm alive, then I'm breathing. Or more schematically:

 A ↔ B 
 ∴ A → B

 A ↔ B 
 ∴ B → A

## Colloquial usage\[[edit][68]\]

One unambiguous way of stating a biconditional in plain English is to adopt the form "*b* if *a* and *a* if *b*"—if the standard form "*a* if and only if *b*" is not used. Slightly more formally, one could also say that "*b* implies *a* and *a* implies *b*", or "*a* is necessary and sufficient for *b*". The plain English "if'" may sometimes be used as a biconditional (especially in the context of a mathematical definition[\[6\]][69]). In which case, one must take into consideration the surrounding context when interpreting these words.

For example, the statement "I'll buy you a new wallet if you need one" may be interpreted as a biconditional, since the speaker doesn't intend a valid outcome to be buying the wallet whether or not the wallet is needed (as in a conditional). However, "it is cloudy if it is raining" is generally not meant as a biconditional, since it can still be cloudy even if it is not raining.

## See also\[[edit][70]\]

-   [If and only if][71]
-   [Logical equivalence][72]
-   [Logical equality][73]
-   [XNOR gate][74]
-   [Biconditional elimination][75]
-   [Biconditional introduction][76]

## References\[[edit][77]\]

## External links\[[edit][78]\]

-   [![](https://upload.wikimedia.org/wikipedia/en/thumb/4/4a/Commons-logo.svg/12px-Commons-logo.svg.png)][79] Media related to [Logical biconditional][80] at Wikimedia Commons

*This article incorporates material from Biconditional on [PlanetMath][81], which is licensed under the [Creative Commons Attribution/Share-Alike License][82].*

[1]: https://en.wikipedia.org/wiki/File:Venn1001.svg
[2]: https://en.wikipedia.org/wiki/Logic "Logic"
[3]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[4]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[5]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[6]: https://en.wikipedia.org/wiki/Antecedent_(logic) "Antecedent (logic)"
[7]: https://en.wikipedia.org/wiki/Consequent "Consequent"
[8]: https://en.wikipedia.org/wiki/Logical_biconditional#cite_note-:1-1
[9]: https://en.wikipedia.org/wiki/Logical_biconditional#cite_note-2
[10]: https://en.wikipedia.org/wiki/Logical_biconditional#cite_note-:2-3
[11]: https://en.wikipedia.org/wiki/Logical_biconditional#cite_note-4
[12]: https://en.wikipedia.org/wiki/Logical_biconditional#cite_note-5
[13]: https://en.wikipedia.org/wiki/Polish_notation#Polish_notation_for_logic "Polish notation"
[14]: https://en.wikipedia.org/wiki/J%C3%B3zef_Maria_Boche%C5%84ski "Józef Maria Bocheński"
[15]: https://en.wikipedia.org/wiki/Logical_biconditional#cite_note-:2-3
[16]: https://en.wikipedia.org/wiki/XNOR_gate "XNOR gate"
[17]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[18]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[19]: https://en.wikipedia.org/wiki/Logical_biconditional#cite_note-:1-1
[20]: https://en.wikipedia.org/wiki/Universal_affirmative "Universal affirmative"
[21]: https://en.wikipedia.org/wiki/Logically_equivalent "Logically equivalent"
[22]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[23]: https://en.wikipedia.org/wiki/Logical_biconditional#cite_note-:1-1
[24]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[25]: https://en.wikipedia.org/wiki/Sufficient_condition "Sufficient condition"
[26]: https://en.wikipedia.org/wiki/Necessary_condition "Necessary condition"
[27]: https://en.wikipedia.org/wiki/Necessary_and_sufficient_condition "Necessary and sufficient condition"
[28]: https://en.wikipedia.org/w/index.php?title=Logical_biconditional&action=edit&section=1 "Edit section: Definition"
[29]: https://en.wikipedia.org/wiki/Logical_equality "Logical equality"
[30]: https://en.wikipedia.org/wiki/Logical_operation "Logical operation"
[31]: https://en.wikipedia.org/wiki/Logical_value "Logical value"
[32]: https://en.wikipedia.org/wiki/Proposition "Proposition"
[33]: https://en.wikipedia.org/wiki/Logical_biconditional#cite_note-:1-1
[34]: https://en.wikipedia.org/w/index.php?title=Logical_biconditional&action=edit&section=2 "Edit section: Truth table"
[35]: https://en.wikipedia.org/wiki/File:Multigrade_operator_XNOR.svg
[36]: https://en.wikipedia.org/wiki/File:Multigrade_operator_all_or_nothing.svg
[37]: https://en.wikipedia.org/w/index.php?title=Logical_biconditional&action=edit&section=3 "Edit section: Venn diagrams"
[38]: https://en.wikipedia.org/wiki/File:Venn0001.svg
[39]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[40]: https://en.wikipedia.org/w/index.php?title=Logical_biconditional&action=edit&section=4 "Edit section: Properties"
[41]: https://en.wikipedia.org/wiki/Commutativity "Commutativity"
[42]: https://en.wikipedia.org/wiki/Associativity "Associativity"
[43]: https://en.wikipedia.org/wiki/File:Venn_0101_0101.svg
[44]: https://en.wikipedia.org/wiki/File:Venn_1100_0011.svg
[45]: https://en.wikipedia.org/wiki/File:Venn_0110_1001.svg
[46]: https://en.wikipedia.org/wiki/File:Venn_1001_1001.svg
[47]: https://en.wikipedia.org/wiki/File:Venn_0000_1111.svg
[48]: https://en.wikipedia.org/wiki/Distributivity "Distributivity"
[49]: https://en.wikipedia.org/wiki/Logical_disjunction#Properties "Logical disjunction"
[50]: https://en.wikipedia.org/wiki/Idempotency "Idempotency"
[51]: https://en.wikipedia.org/wiki/File:Venn01.svg
[52]: https://en.wikipedia.org/wiki/File:Venn01.svg
[53]: https://en.wikipedia.org/wiki/File:Venn11.svg
[54]: https://en.wikipedia.org/wiki/File:Venn01.svg
[55]: https://en.wikipedia.org/wiki/Monotone_boolean_function "Monotone boolean function"
[56]: https://en.wikipedia.org/wiki/File:Venn_1011_1011.svg
[57]: https://en.wikipedia.org/wiki/File:Venn_1101_1011.svg
[58]: https://en.wikipedia.org/wiki/File:Venn_1010_0101.svg
[59]: https://en.wikipedia.org/wiki/File:Venn_1100_0011.svg
[60]: https://en.wikipedia.org/wiki/Hadamard_transform "Hadamard transform"
[61]: https://en.wikipedia.org/wiki/Linear#Boolean_functions "Linear"
[62]: https://en.wikipedia.org/w/index.php?title=Logical_biconditional&action=edit&section=5 "Edit section: Rules of inference"
[63]: https://en.wikipedia.org/w/index.php?title=Logical_biconditional&action=edit&section=6 "Edit section: Biconditional introduction"
[64]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[65]: https://en.wikipedia.org/w/index.php?title=Logical_biconditional&action=edit&section=7 "Edit section: Biconditional elimination"
[66]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[67]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[68]: https://en.wikipedia.org/w/index.php?title=Logical_biconditional&action=edit&section=8 "Edit section: Colloquial usage"
[69]: https://en.wikipedia.org/wiki/Logical_biconditional#cite_note-6
[70]: https://en.wikipedia.org/w/index.php?title=Logical_biconditional&action=edit&section=9 "Edit section: See also"
[71]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[72]: https://en.wikipedia.org/wiki/Logical_equivalence "Logical equivalence"
[73]: https://en.wikipedia.org/wiki/Logical_equality "Logical equality"
[74]: https://en.wikipedia.org/wiki/XNOR_gate "XNOR gate"
[75]: https://en.wikipedia.org/wiki/Biconditional_elimination "Biconditional elimination"
[76]: https://en.wikipedia.org/wiki/Biconditional_introduction "Biconditional introduction"
[77]: https://en.wikipedia.org/w/index.php?title=Logical_biconditional&action=edit&section=10 "Edit section: References"
[78]: https://en.wikipedia.org/w/index.php?title=Logical_biconditional&action=edit&section=11 "Edit section: External links"
[79]: https://en.wikipedia.org/wiki/File:Commons-logo.svg
[80]: https://commons.wikimedia.org/wiki/Category:Logical_biconditional "commons:Category:Logical biconditional"
[81]: https://en.wikipedia.org/wiki/PlanetMath "PlanetMath"
[82]: https://en.wikipedia.org/wiki/Wikipedia:CC-BY-SA "Wikipedia:CC-BY-SA"
