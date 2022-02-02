---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Logical_conjunction
page-title:       Logical conjunction - Wikipedia
article-title:    Logical conjunction - Wikipedia
---
# Logical conjunction - Wikipedia


Logical conjunction

AND

[![Venn diagram of Logical conjunction](https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Venn0001.svg/150px-Venn0001.svg.png)][1]

Definition

![xy](https://wikimedia.org/api/rest_v1/media/math/render/svg/c72eb345e496513fb8b2fa4aa8c4d89b855f9a01)

[Truth table][2]

![{\displaystyle (0001)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d258a5949a32e496ee093f56ddbaf6043de2a606)

[Logic gate][3]

[![AND ANSI.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/AND_ANSI.svg/70px-AND_ANSI.svg.png)][4]

Normal forms

[Disjunctive][5]

![xy](https://wikimedia.org/api/rest_v1/media/math/render/svg/c72eb345e496513fb8b2fa4aa8c4d89b855f9a01)

[Conjunctive][6]

![xy](https://wikimedia.org/api/rest_v1/media/math/render/svg/c72eb345e496513fb8b2fa4aa8c4d89b855f9a01)

[Zhegalkin polynomial][7]

![xy](https://wikimedia.org/api/rest_v1/media/math/render/svg/c72eb345e496513fb8b2fa4aa8c4d89b855f9a01)

[Post's lattices][8]

0-preserving

yes

1-preserving

yes

Monotone

no

Affine

no

-   [v][9]
-   [t][10]
-   [e][11]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Venn_0000_0001.svg/220px-Venn_0000_0001.svg.png)][12]

In [logic][13], [mathematics][14] and [linguistics][15], And (![\wedge ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1caa4004cb216ef2930bb12fe805a76870caed94)) is the [truth-functional][16] operator of __logical conjunction__; the *and* of a set of operands is true if and only if *all* of its operands are true. The [logical connective][17] that represents this operator is typically written as ![\wedge ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1caa4004cb216ef2930bb12fe805a76870caed94) or ⋅ .[\[1\]][18][\[2\]][19]

![A\land B](https://wikimedia.org/api/rest_v1/media/math/render/svg/74954195333a8593163b93a9688695b8dc74da55) is true if and only if ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is true and ![B](https://wikimedia.org/api/rest_v1/media/math/render/svg/47136aad860d145f75f3eed3022df827cee94d7a) is true.

An operand of a conjunction is a __conjunct__.

Beyond logic, the term "conjunction" also refers to similar concepts in other fields:

-   In [natural language][20], the [denotation][21] of expressions such as [English][22] "and".
-   In [programming languages][23], the [short-circuit and][24] [control structure][25].
-   In [set theory][26], [intersection][27].
-   In [lattice theory][28], logical conjunction ([greatest lower bound][29]).
-   In [predicate logic][30], [universal quantification][31].

## Notation\[[edit][32]\]

__And__ is usually denoted by an infix operator: in mathematics and logic, it is denoted by ![\wedge ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1caa4004cb216ef2930bb12fe805a76870caed94),[\[2\]][33] __&__ or __×__ ; in electronics, __⋅__ ; and in programming languages, __`&`__, __`&&`__, or __`and`__. In [Jan Łukasiewicz][34]'s [prefix notation for logic][35], the operator is __K__, for Polish *koniunkcja*.[\[3\]][36]

## Definition\[[edit][37]\]

__Logical conjunction__ is an [operation][38] on two [logical values][39], typically the values of two [propositions][40], that produces a value of *true* [if and only if][41] both of its operands are true.[\[1\]][42][\[2\]][43]

The conjunctive [identity][44] is true, which is to say that AND-ing an expression with true will never change the value of the expression. In keeping with the concept of [vacuous truth][45], when conjunction is defined as an operator or function of arbitrary [arity][46], the empty conjunction (AND-ing over an empty set of operands) is often defined as having the result true.

### Truth table\[[edit][47]\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Multigrade_operator_AND.svg/250px-Multigrade_operator_AND.svg.png)][48]

The [truth table][49] of ![A\land B](https://wikimedia.org/api/rest_v1/media/math/render/svg/74954195333a8593163b93a9688695b8dc74da55):[\[1\]][50][\[2\]][51]

### Defined by other operators\[[edit][52]\]

In systems where logical conjunction is not a primitive, it may be defined as[\[4\]][53]

![{\displaystyle A\land B=\neg (A\to \neg B)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/173fa875cd41f46afd356d88f54ebc4ec982bed1)

or

![{\displaystyle A\land B=\neg (\neg A\lor \neg B).}](https://wikimedia.org/api/rest_v1/media/math/render/svg/05eb197c28ea0aed77613688b475b36f092c063a)

## Introduction and elimination rules\[[edit][54]\]

As a rule of inference, [conjunction introduction][55] is a classically [valid][56], simple [argument form][57]. The argument form has two premises, *A* and *B*. Intuitively, it permits the inference of their conjunction.

*A*,

*B*.

Therefore, *A* and *B*.

or in [logical operator][58] notation:

![A,](https://wikimedia.org/api/rest_v1/media/math/render/svg/2746026864cc5896e3e52443a1c917be2df9d8ea)

![B](https://wikimedia.org/api/rest_v1/media/math/render/svg/47136aad860d145f75f3eed3022df827cee94d7a)

![{\displaystyle \vdash A\land B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d536ef29846f62a11cb72d74bcfcba2fce901b7f)

Here is an example of an argument that fits the form *[conjunction introduction][59]*:

Bob likes apples.

Bob likes oranges.

Therefore, Bob likes apples and Bob likes oranges.

[Conjunction elimination][60] is another classically [valid][61], simple [argument form][62]. Intuitively, it permits the inference from any conjunction of either element of that conjunction.

*A* and *B*.

Therefore, *A*.

...or alternatively,

*A* and *B*.

Therefore, *B*.

In [logical operator][63] notation:

![{\displaystyle A\land B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/74954195333a8593163b93a9688695b8dc74da55)

![\vdash A](https://wikimedia.org/api/rest_v1/media/math/render/svg/b145d194f0785ff840b76ace797a7e077a18f544)

...or alternatively,

![{\displaystyle A\land B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/74954195333a8593163b93a9688695b8dc74da55)

![\vdash B](https://wikimedia.org/api/rest_v1/media/math/render/svg/aaa02acb341837055be929c605bd7a9edf73b6de)

## Negation\[[edit][64]\]

### Definition\[[edit][65]\]

A conjunction ![A\land B](https://wikimedia.org/api/rest_v1/media/math/render/svg/74954195333a8593163b93a9688695b8dc74da55) is proven false by establishing either ![\neg A](https://wikimedia.org/api/rest_v1/media/math/render/svg/195aae731102b36b14a902a091d04ac5c6a5af49) or ![\neg B](https://wikimedia.org/api/rest_v1/media/math/render/svg/a8cf55d88686624cd054232a7cf1a6b7e6e84210). In terms of the object language, this reads

![{\displaystyle \neg A\to \neg (A\land B)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6411846635732799332fb8b49f66ee081f476bae)

This formula can be seen as a special case of

![{\displaystyle (A\to C)\to ((A\land B)\to C)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6751af7d8bc26b530f7779c5317b128092b8c933)

when ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029) is a false proposition.

### Other proof strategies\[[edit][66]\]

If ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) implies ![\neg B](https://wikimedia.org/api/rest_v1/media/math/render/svg/a8cf55d88686624cd054232a7cf1a6b7e6e84210), then both ![\neg A](https://wikimedia.org/api/rest_v1/media/math/render/svg/195aae731102b36b14a902a091d04ac5c6a5af49) as well as ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) prove the conjunction false:

![{\displaystyle (A\to \neg {}B)\to \neg (A\land B)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d5fe2ddde389bb41067e67cbadc4c62fcab7793c)

In other words, a conjunction can actually be proven false just by knowing about the relation of its conjuncts, and not necessary about their truth values.

This formula can be seen as a special case of

![{\displaystyle (A\to (B\to C))\to ((A\land B)\to C)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/85b1f2e7d1056f3be372e1e896484c1b1ac5fd29)

when ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029) is a false proposition.

Either of the above are constructively valid proofs by contradiction.

## Properties\[[edit][67]\]

__[commutativity][68]: yes__

__[associativity][69]: yes__

![~A](https://wikimedia.org/api/rest_v1/media/math/render/svg/17327d088840ce291c8db59b592489ef8e6e94bd)

![{\displaystyle ~~~\land ~~~}](https://wikimedia.org/api/rest_v1/media/math/render/svg/296d4bd5f22dac2701fa42f57e9c5b65d1dd63f9)

![{\displaystyle (B\land C)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/78cc0188b905ef850ed33a9a4068e49794712b8d)

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

![(A\land B)](https://wikimedia.org/api/rest_v1/media/math/render/svg/ebdcd2d1d13bc1f915aa141415965509a4e2b4f1)

![{\displaystyle ~~~\land ~~~}](https://wikimedia.org/api/rest_v1/media/math/render/svg/296d4bd5f22dac2701fa42f57e9c5b65d1dd63f9)

![~C](https://wikimedia.org/api/rest_v1/media/math/render/svg/35f52ed2496dc4077efa433abb4685684a158d7e)

[![Venn 0101 0101.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Venn_0101_0101.svg/50px-Venn_0101_0101.svg.png)][70]

![{\displaystyle ~~~\land ~~~}](https://wikimedia.org/api/rest_v1/media/math/render/svg/296d4bd5f22dac2701fa42f57e9c5b65d1dd63f9)

[![Venn 0000 0011.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Venn_0000_0011.svg/50px-Venn_0000_0011.svg.png)][71]

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

[![Venn 0000 0001.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Venn_0000_0001.svg/50px-Venn_0000_0001.svg.png)][72]

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

[![Venn 0001 0001.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Venn_0001_0001.svg/50px-Venn_0001_0001.svg.png)][73]

![{\displaystyle ~~~\land ~~~}](https://wikimedia.org/api/rest_v1/media/math/render/svg/296d4bd5f22dac2701fa42f57e9c5b65d1dd63f9)

[![Venn 0000 1111.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Venn_0000_1111.svg/50px-Venn_0000_1111.svg.png)][74]

__[distributivity][75]:__ with various operations, especially with *[or][76]*

![~A](https://wikimedia.org/api/rest_v1/media/math/render/svg/17327d088840ce291c8db59b592489ef8e6e94bd)

![\land ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d6823e5a222eb3ca49672818ac3d13ec607052c4)

![{\displaystyle (B\lor C)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f0c18aad468eb6ae0354f697dd4035fb970946d2)

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

![(A\land B)](https://wikimedia.org/api/rest_v1/media/math/render/svg/ebdcd2d1d13bc1f915aa141415965509a4e2b4f1)

![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a)

![{\displaystyle (A\land C)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/887cc87745fae3b8e066d3d41dce3e430063844e)

[![Venn 0101 0101.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Venn_0101_0101.svg/50px-Venn_0101_0101.svg.png)][77]

![\land ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d6823e5a222eb3ca49672818ac3d13ec607052c4)

[![Venn 0011 1111.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Venn_0011_1111.svg/50px-Venn_0011_1111.svg.png)][78]

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

[![Venn 0001 0101.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Venn_0001_0101.svg/50px-Venn_0001_0101.svg.png)][79]

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

[![Venn 0001 0001.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Venn_0001_0001.svg/50px-Venn_0001_0001.svg.png)][80]

![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a)

[![Venn 0000 0101.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Venn_0000_0101.svg/50px-Venn_0000_0101.svg.png)][81]

showothers

__[idempotency][82]: yes__  

![~A~](https://wikimedia.org/api/rest_v1/media/math/render/svg/00229fc56bafa7e9b522aedb3bed5dca455bc561)

![{\displaystyle ~\land ~}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b78b7e7950527f71b3b15b62d8459c636df43065)

![~A~](https://wikimedia.org/api/rest_v1/media/math/render/svg/00229fc56bafa7e9b522aedb3bed5dca455bc561)

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

![A~](https://wikimedia.org/api/rest_v1/media/math/render/svg/5fc59051ffaf2eaace4f7b01f440b9067b722fb0)

[![Venn01.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Venn01.svg/36px-Venn01.svg.png)][83]

![{\displaystyle ~\land ~}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b78b7e7950527f71b3b15b62d8459c636df43065)

[![Venn01.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Venn01.svg/36px-Venn01.svg.png)][84]

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

[![Venn01.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Venn01.svg/36px-Venn01.svg.png)][85]

__[monotonicity][86]: yes__

![A\rightarrow B](https://wikimedia.org/api/rest_v1/media/math/render/svg/23efef033def56a67de7ded823f14626de26d174)

    ![\Rightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/469b737d167b9b28a74e27c7f5e35b5ea9256100)    

![{\displaystyle (A\land C)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/887cc87745fae3b8e066d3d41dce3e430063844e)

![\rightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/53e574cc3aa5b4bf5f3f5906caf121a378eef08b)

![{\displaystyle (B\land C)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/78cc0188b905ef850ed33a9a4068e49794712b8d)

[![Venn 1011 1011.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Venn_1011_1011.svg/50px-Venn_1011_1011.svg.png)][87]

    ![\Rightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/469b737d167b9b28a74e27c7f5e35b5ea9256100)    

[![Venn 1111 1011.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Venn_1111_1011.svg/50px-Venn_1111_1011.svg.png)][88]

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

[![Venn 0000 0101.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Venn_0000_0101.svg/50px-Venn_0000_0101.svg.png)][89]

![\rightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/53e574cc3aa5b4bf5f3f5906caf121a378eef08b)

[![Venn 0000 0011.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Venn_0000_0011.svg/50px-Venn_0000_0011.svg.png)][90]

__truth-preserving: yes__  
When all inputs are true, the output is true.

__falsehood-preserving: yes__  
When all inputs are false, the output is false.

__[Walsh spectrum][91]: (1,-1,-1,1)__

__Non[linearity][92]: 1__ (the function is [bent][93])

If using [binary][94] values for true (1) and false (0), then *logical conjunction* works exactly like normal arithmetic [multiplication][95].

## Applications in computer engineering\[[edit][96]\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/AND_Gate_diagram.svg/250px-AND_Gate_diagram.svg.png)][97]

In high-level computer programming and [digital electronics][98], logical conjunction is commonly represented by an infix operator, usually as a keyword such as "`AND`", an algebraic multiplication, or the ampersand symbol `&` (sometimes doubled as in `&&`). Many languages also provide [short-circuit][99] control structures corresponding to logical conjunction.

Logical conjunction is often used for bitwise operations, where `0` corresponds to false and `1` to true:

-   `0 AND 0`  =  `0`,
-   `0 AND 1`  =  `0`,
-   `1 AND 0`  =  `0`,
-   `1 AND 1`  =  `1`.

The operation can also be applied to two binary [words][100] viewed as [bitstrings][101] of equal length, by taking the bitwise AND of each pair of bits at corresponding positions. For example:

-   `11000110 AND 10100011`  =  `10000010`.

This can be used to select part of a bitstring using a [bit mask][102]. For example, `1001__1__101 AND 0000__1__000`  =  `0000__1__000` extracts the fifth bit of an 8-bit bitstring.

In [computer networking][103], bit masks are used to derive the network address of a [subnet][104] within an existing network from a given [IP address][105], by ANDing the IP address and the [subnet mask][106].

Logical conjunction "`AND`" is also used in [SQL][107] operations to form [database][108] queries.

The [Curry–Howard correspondence][109] relates logical conjunction to [product types][110].

## Set-theoretic correspondence\[[edit][111]\]

The membership of an element of an [intersection set][112] in [set theory][113] is defined in terms of a logical conjunction: *x* ∈ *A* ∩ *B* if and only if (*x* ∈ *A*) ∧ (*x* ∈ *B*). Through this correspondence, set-theoretic intersection shares several properties with logical conjunction, such as [associativity][114], [commutativity][115] and [idempotence][116].

## Natural language\[[edit][117]\]

As with other notions formalized in mathematical logic, the logical conjunction *and* is related to, but not the same as, the [grammatical conjunction][118] *and* in natural languages.

English "and" has properties not captured by logical conjunction. For example, "and" sometimes implies order having the sense of "then". For example, "They got married and had a child" in common discourse means that the marriage came before the child.

The word "and" can also imply a partition of a thing into parts, as "The American flag is red, white, and blue." Here, it is not meant that the flag is *at once* red, white, and blue, but rather that it has a part of each color.

## See also\[[edit][119]\]

## References\[[edit][120]\]

## External links\[[edit][121]\]

-   ["Conjunction"][122], *[Encyclopedia of Mathematics][123]*, [EMS Press][124], 2001 \[1994\]
-   [Wolfram MathWorld: Conjunction][125]
-   ["Property and truth table of AND propositions"][126]. Archived from [the original][127] on May 6, 2017.

[1]: https://en.wikipedia.org/wiki/File:Venn0001.svg "Venn diagram of Logical conjunction"
[2]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[3]: https://en.wikipedia.org/wiki/Logic_gate "Logic gate"
[4]: https://en.wikipedia.org/wiki/File:AND_ANSI.svg
[5]: https://en.wikipedia.org/wiki/Disjunctive_normal_form "Disjunctive normal form"
[6]: https://en.wikipedia.org/wiki/Conjunctive_normal_form "Conjunctive normal form"
[7]: https://en.wikipedia.org/wiki/Zhegalkin_polynomial "Zhegalkin polynomial"
[8]: https://en.wikipedia.org/wiki/Post%27s_lattice "Post's lattice"
[9]: https://en.wikipedia.org/wiki/Template:Infobox_logical_connective "Template:Infobox logical connective"
[10]: https://en.wikipedia.org/wiki/Template_talk:Infobox_logical_connective "Template talk:Infobox logical connective"
[11]: https://en.wikipedia.org/w/index.php?title=Template:Infobox_logical_connective&action=edit
[12]: https://en.wikipedia.org/wiki/File:Venn_0000_0001.svg
[13]: https://en.wikipedia.org/wiki/Logic "Logic"
[14]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[15]: https://en.wikipedia.org/wiki/Linguistics "Linguistics"
[16]: https://en.wikipedia.org/wiki/Truth_function "Truth function"
[17]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[18]: https://en.wikipedia.org/wiki/Logical_conjunction#cite_note-:1-1
[19]: https://en.wikipedia.org/wiki/Logical_conjunction#cite_note-:2-2
[20]: https://en.wikipedia.org/wiki/Natural_language "Natural language"
[21]: https://en.wikipedia.org/wiki/Denotation "Denotation"
[22]: https://en.wikipedia.org/wiki/English_language "English language"
[23]: https://en.wikipedia.org/wiki/Programming_language "Programming language"
[24]: https://en.wikipedia.org/wiki/Short-circuit_evaluation "Short-circuit evaluation"
[25]: https://en.wikipedia.org/wiki/Control_structure "Control structure"
[26]: https://en.wikipedia.org/wiki/Set_theory "Set theory"
[27]: https://en.wikipedia.org/wiki/Intersection_(set_theory) "Intersection (set theory)"
[28]: https://en.wikipedia.org/wiki/Lattice_(order) "Lattice (order)"
[29]: https://en.wikipedia.org/wiki/Greatest_lower_bound "Greatest lower bound"
[30]: https://en.wikipedia.org/wiki/Predicate_logic "Predicate logic"
[31]: https://en.wikipedia.org/wiki/Universal_quantification "Universal quantification"
[32]: https://en.wikipedia.org/w/index.php?title=Logical_conjunction&action=edit&section=1 "Edit section: Notation"
[33]: https://en.wikipedia.org/wiki/Logical_conjunction#cite_note-:2-2
[34]: https://en.wikipedia.org/wiki/Jan_%C5%81ukasiewicz "Jan Łukasiewicz"
[35]: https://en.wikipedia.org/wiki/Polish_notation#Polish_notation_for_logic "Polish notation"
[36]: https://en.wikipedia.org/wiki/Logical_conjunction#cite_note-3
[37]: https://en.wikipedia.org/w/index.php?title=Logical_conjunction&action=edit&section=2 "Edit section: Definition"
[38]: https://en.wikipedia.org/wiki/Logical_operation "Logical operation"
[39]: https://en.wikipedia.org/wiki/Logical_value "Logical value"
[40]: https://en.wikipedia.org/wiki/Proposition "Proposition"
[41]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[42]: https://en.wikipedia.org/wiki/Logical_conjunction#cite_note-:1-1
[43]: https://en.wikipedia.org/wiki/Logical_conjunction#cite_note-:2-2
[44]: https://en.wikipedia.org/wiki/Identity_element "Identity element"
[45]: https://en.wikipedia.org/wiki/Vacuous_truth "Vacuous truth"
[46]: https://en.wikipedia.org/wiki/Arity "Arity"
[47]: https://en.wikipedia.org/w/index.php?title=Logical_conjunction&action=edit&section=3 "Edit section: Truth table"
[48]: https://en.wikipedia.org/wiki/File:Multigrade_operator_AND.svg
[49]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[50]: https://en.wikipedia.org/wiki/Logical_conjunction#cite_note-:1-1
[51]: https://en.wikipedia.org/wiki/Logical_conjunction#cite_note-:2-2
[52]: https://en.wikipedia.org/w/index.php?title=Logical_conjunction&action=edit&section=4 "Edit section: Defined by other operators"
[53]: https://en.wikipedia.org/wiki/Logical_conjunction#cite_note-4
[54]: https://en.wikipedia.org/w/index.php?title=Logical_conjunction&action=edit&section=5 "Edit section: Introduction and elimination rules"
[55]: https://en.wikipedia.org/wiki/Conjunction_introduction "Conjunction introduction"
[56]: https://en.wikipedia.org/wiki/Validity_(logic) "Validity (logic)"
[57]: https://en.wikipedia.org/wiki/Argument_form "Argument form"
[58]: https://en.wikipedia.org/wiki/Logical_operator "Logical operator"
[59]: https://en.wikipedia.org/wiki/Conjunction_introduction "Conjunction introduction"
[60]: https://en.wikipedia.org/wiki/Conjunction_elimination "Conjunction elimination"
[61]: https://en.wikipedia.org/wiki/Validity_(logic) "Validity (logic)"
[62]: https://en.wikipedia.org/wiki/Argument_form "Argument form"
[63]: https://en.wikipedia.org/wiki/Logical_operator "Logical operator"
[64]: https://en.wikipedia.org/w/index.php?title=Logical_conjunction&action=edit&section=6 "Edit section: Negation"
[65]: https://en.wikipedia.org/w/index.php?title=Logical_conjunction&action=edit&section=7 "Edit section: Definition"
[66]: https://en.wikipedia.org/w/index.php?title=Logical_conjunction&action=edit&section=8 "Edit section: Other proof strategies"
[67]: https://en.wikipedia.org/w/index.php?title=Logical_conjunction&action=edit&section=9 "Edit section: Properties"
[68]: https://en.wikipedia.org/wiki/Commuting_probability "Commuting probability"
[69]: https://en.wikipedia.org/wiki/Associativity "Associativity"
[70]: https://en.wikipedia.org/wiki/File:Venn_0101_0101.svg
[71]: https://en.wikipedia.org/wiki/File:Venn_0000_0011.svg
[72]: https://en.wikipedia.org/wiki/File:Venn_0000_0001.svg
[73]: https://en.wikipedia.org/wiki/File:Venn_0001_0001.svg
[74]: https://en.wikipedia.org/wiki/File:Venn_0000_1111.svg
[75]: https://en.wikipedia.org/wiki/Distributivity "Distributivity"
[76]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[77]: https://en.wikipedia.org/wiki/File:Venn_0101_0101.svg
[78]: https://en.wikipedia.org/wiki/File:Venn_0011_1111.svg
[79]: https://en.wikipedia.org/wiki/File:Venn_0001_0101.svg
[80]: https://en.wikipedia.org/wiki/File:Venn_0001_0001.svg
[81]: https://en.wikipedia.org/wiki/File:Venn_0000_0101.svg
[82]: https://en.wikipedia.org/wiki/Idempotency "Idempotency"
[83]: https://en.wikipedia.org/wiki/File:Venn01.svg
[84]: https://en.wikipedia.org/wiki/File:Venn01.svg
[85]: https://en.wikipedia.org/wiki/File:Venn01.svg
[86]: https://en.wikipedia.org/wiki/Monotonic_function#Boolean_functions "Monotonic function"
[87]: https://en.wikipedia.org/wiki/File:Venn_1011_1011.svg
[88]: https://en.wikipedia.org/wiki/File:Venn_1111_1011.svg
[89]: https://en.wikipedia.org/wiki/File:Venn_0000_0101.svg
[90]: https://en.wikipedia.org/wiki/File:Venn_0000_0011.svg
[91]: https://en.wikipedia.org/wiki/Hadamard_transform "Hadamard transform"
[92]: https://en.wikipedia.org/wiki/Linear#Boolean_functions "Linear"
[93]: https://en.wikipedia.org/wiki/Bent_function "Bent function"
[94]: https://en.wikipedia.org/wiki/Binary_numeral_system "Binary numeral system"
[95]: https://en.wikipedia.org/wiki/Multiplication "Multiplication"
[96]: https://en.wikipedia.org/w/index.php?title=Logical_conjunction&action=edit&section=10 "Edit section: Applications in computer engineering"
[97]: https://en.wikipedia.org/wiki/File:AND_Gate_diagram.svg
[98]: https://en.wikipedia.org/wiki/Digital_electronics "Digital electronics"
[99]: https://en.wikipedia.org/wiki/Short-circuit_evaluation "Short-circuit evaluation"
[100]: https://en.wikipedia.org/wiki/Words "Words"
[101]: https://en.wikipedia.org/wiki/Bitstring "Bitstring"
[102]: https://en.wikipedia.org/wiki/Mask_(computing) "Mask (computing)"
[103]: https://en.wikipedia.org/wiki/Computer_networking "Computer networking"
[104]: https://en.wikipedia.org/wiki/Subnetwork "Subnetwork"
[105]: https://en.wikipedia.org/wiki/IP_address "IP address"
[106]: https://en.wikipedia.org/wiki/Subnetwork#Binary_subnet_masks "Subnetwork"
[107]: https://en.wikipedia.org/wiki/SQL "SQL"
[108]: https://en.wikipedia.org/wiki/Database "Database"
[109]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence "Curry–Howard correspondence"
[110]: https://en.wikipedia.org/wiki/Product_type "Product type"
[111]: https://en.wikipedia.org/w/index.php?title=Logical_conjunction&action=edit&section=11 "Edit section: Set-theoretic correspondence"
[112]: https://en.wikipedia.org/wiki/Intersection_(set_theory) "Intersection (set theory)"
[113]: https://en.wikipedia.org/wiki/Set_theory "Set theory"
[114]: https://en.wikipedia.org/wiki/Associativity "Associativity"
[115]: https://en.wikipedia.org/wiki/Commutativity "Commutativity"
[116]: https://en.wikipedia.org/wiki/Idempotence "Idempotence"
[117]: https://en.wikipedia.org/w/index.php?title=Logical_conjunction&action=edit&section=12 "Edit section: Natural language"
[118]: https://en.wikipedia.org/wiki/Grammatical_conjunction "Grammatical conjunction"
[119]: https://en.wikipedia.org/w/index.php?title=Logical_conjunction&action=edit&section=13 "Edit section: See also"
[120]: https://en.wikipedia.org/w/index.php?title=Logical_conjunction&action=edit&section=14 "Edit section: References"
[121]: https://en.wikipedia.org/w/index.php?title=Logical_conjunction&action=edit&section=15 "Edit section: External links"
[122]: https://www.encyclopediaofmath.org/index.php?title=Conjunction
[123]: https://en.wikipedia.org/wiki/Encyclopedia_of_Mathematics "Encyclopedia of Mathematics"
[124]: https://en.wikipedia.org/wiki/European_Mathematical_Society "European Mathematical Society"
[125]: http://mathworld.wolfram.com/Conjunction.html
[126]: https://web.archive.org/web/20170506173821/http://www.math.hawaii.edu/~ramsey/Logic/And.html
[127]: http://www.math.hawaii.edu/~ramsey/Logic/And.html
