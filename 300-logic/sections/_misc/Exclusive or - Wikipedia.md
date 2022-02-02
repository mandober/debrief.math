---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Exclusive_or
page-title:       Exclusive or - Wikipedia
article-title:    Exclusive or - Wikipedia
---
# Exclusive or - Wikipedia


Exclusive or

XOR

[![Venn diagram of Exclusive or](https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Venn0110.svg/150px-Venn0110.svg.png)][1]

[Truth table][2]

![{\displaystyle (0110)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3b63ef3858fcb11ec9e1cf9a3f0e8f300da58c67)

[Logic gate][3]

[![XOR ANSI.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/XOR_ANSI.svg/70px-XOR_ANSI.svg.png)][4]

Normal forms

[Disjunctive][5]

![{\displaystyle {\overline {x}}\cdot y+x\cdot {\overline {y}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1dbb13548109264bd80e8539ec12239e94acc062)

[Conjunctive][6]

![{\displaystyle ({\overline {x}}+{\overline {y}})\cdot (x+y)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/81f8569d88cefecb443c9ff0a61b9ed5e70da0a8)

[Zhegalkin polynomial][7]

![{\displaystyle x\oplus y}](https://wikimedia.org/api/rest_v1/media/math/render/svg/10fc94462e7622639c0c464161a1f0c8fc057999)

[Post's lattices][8]

0-preserving

yes

1-preserving

no

Monotone

no

Affine

yes

-   [v][9]
-   [t][10]
-   [e][11]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Venn_0110_1001.svg/220px-Venn_0110_1001.svg.png)][12]

__Exclusive or__ or __exclusive disjunction__ is a [logical operation][13] that is true if and only if its arguments differ (one is true, the other is false).[\[1\]][14]

It is [symbolized][15] by the prefix operator __J__[\[2\]][16] and by the [infix][17] operators __XOR__ ( or ), __EOR__, __EXOR__, __⊻__, __⩒__, __⩛__, __⊕__, ![\nleftrightarrow](https://wikimedia.org/api/rest_v1/media/math/render/svg/dce85ed756bc5a6cdf0f62892f57a6a1f96803ac), and __≢__. The [negation][18] of XOR is the [logical biconditional][19], which yields true if and only if the two inputs are the same.

It gains the name "exclusive or" because the meaning of "or" is ambiguous when both [operands][20] are true; the exclusive or operator *excludes* that case. This is sometimes thought of as "one or the other but not both". This could be written as "A or B, but not, A and B".

Since it is associative, it may be considered to be an *n*\-ary operator which is true if and only if an odd number of arguments are true. That is, *a* XOR *b* XOR ... may be treated as XOR(*a*,*b*,...).

## Truth table\[[edit][21]\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Multigrade_operator_XOR.svg/220px-Multigrade_operator_XOR.svg.png)][22]

The [truth table][23] of A XOR B shows that it outputs true whenever the inputs differ:

-   0, false
-   1, true

## Equivalences, elimination, and introduction\[[edit][24]\]

Exclusive disjunction essentially means 'either one, but not both nor none'. In other words, the statement is true [if and only if][25] one is true and the other is false. For example, if two horses are racing, then one of the two will win the race, but not both of them. The exclusive disjunction ![{\displaystyle p\nleftrightarrow q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f42d587b5c154e4ff8b71ce713c005b9aad49eee), also denoted by ![p](https://wikimedia.org/api/rest_v1/media/math/render/svg/81eac1e205430d1f40810df36a0edffdc367af36) __?__ ![q](https://wikimedia.org/api/rest_v1/media/math/render/svg/06809d64fa7c817ffc7e323f85997f783dbdf71d) or ![{\displaystyle \operatorname {J} pq}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4d027da311dcae170a143d0653f00b50df2fc3e7), can be expressed in terms of the [logical conjunction][26] ("logical and", ![\wedge ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1caa4004cb216ef2930bb12fe805a76870caed94)), the [disjunction][27] ("logical or", ![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a)), and the [negation][28] (![\lnot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/099107443792f5fec9bebe39b919a690db7198c1)) as follows:

![{\displaystyle {\begin{matrix}p\nleftrightarrow q&=&(p\lor q)\land \lnot (p\land q)\end{matrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2975eb6d72eb2ad04f71d835c2c022eb45aac1d0)

The exclusive disjunction ![{\displaystyle p\nleftrightarrow q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f42d587b5c154e4ff8b71ce713c005b9aad49eee) can also be expressed in the following way:

![{\displaystyle {\begin{matrix}p\nleftrightarrow q&=&(p\land \lnot q)\lor (\lnot p\land q)\end{matrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/45d33e818b1ed45a9319e81cb768e7919b4c84a6)

This representation of XOR may be found useful when constructing a circuit or network, because it has only one ![\lnot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/099107443792f5fec9bebe39b919a690db7198c1) operation and small number of ![\wedge ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1caa4004cb216ef2930bb12fe805a76870caed94) and ![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a) operations. A proof of this identity is given below:

![{\displaystyle {\begin{matrix}p\nleftrightarrow q&=&(p\land \lnot q)&\lor &(\lnot p\land q)\\[3pt]&=&((p\land \lnot q)\lor \lnot p)&\land &((p\land \lnot q)\lor q)\\[3pt]&=&((p\lor \lnot p)\land (\lnot q\lor \lnot p))&\land &((p\lor q)\land (\lnot q\lor q))\\[3pt]&=&(\lnot p\lor \lnot q)&\land &(p\lor q)\\[3pt]&=&\lnot (p\land q)&\land &(p\lor q)\end{matrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1e0b32f858658f10e29d829f1f86a61b727e7e26)

It is sometimes useful to write ![{\displaystyle p\nleftrightarrow q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f42d587b5c154e4ff8b71ce713c005b9aad49eee) in the following way:

![{\displaystyle {\begin{matrix}p\nleftrightarrow q&=&\lnot ((p\land q)\lor (\lnot p\land \lnot q))\end{matrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ea1375d40a528b9fd69e0dfaa0f947a45900c2bc)

or:

![{\displaystyle {\begin{matrix}p\nleftrightarrow q&=&(p\lor q)\land (\lnot p\lor \lnot q)\end{matrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b89ba504dd9fa6a3d415a21919a7e62ab438dc21)

This equivalence can be established by applying [De Morgan's laws][29] twice to the fourth line of the above proof.

The exclusive or is also equivalent to the negation of a [logical biconditional][30], by the rules of material implication (a [material conditional][31] is equivalent to the disjunction of the negation of its [antecedent][32] and its consequence) and [material equivalence][33].

In summary, we have, in mathematical and in engineering notation:

![{\displaystyle {\begin{matrix}p\nleftrightarrow q&=&(p\land \lnot q)&\lor &(\lnot p\land q)&=&p{\overline {q}}+{\overline {p}}q\\[3pt]&=&(p\lor q)&\land &(\lnot p\lor \lnot q)&=&(p+q)({\overline {p}}+{\overline {q}})\\[3pt]&=&(p\lor q)&\land &\lnot (p\land q)&=&(p+q)({\overline {pq}})\end{matrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1d3871ca4f609dc7d0ee3b21540dd249cf55c749)

## Negation\[[edit][34]\]

The spirit of De Morgan's laws can be applied, we have:

![{\displaystyle \lnot (p\nleftrightarrow q)=\lnot p\nleftrightarrow q=p\nleftrightarrow \lnot q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/932664646cf43a20d4081bbedc99b12545caed35)

## Relation to modern algebra\[[edit][35]\]

Although the [operators][36] ![\wedge ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1caa4004cb216ef2930bb12fe805a76870caed94) ([conjunction][37]) and ![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a) ([disjunction][38]) are very useful in logic systems, they fail a more generalizable structure in the following way:

The systems ![(\{T, F\}, \wedge)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b934dddbe05f344fdc7ad09e6c48040a2ed98743) and ![(\{T, F\}, \lor)](https://wikimedia.org/api/rest_v1/media/math/render/svg/22b2cd44bc42ef5617916d4ea70e42daa662f494) are [monoids][39], but neither is a [group][40]. This unfortunately prevents the combination of these two systems into larger structures, such as a [mathematical ring][41].

However, the system using exclusive or ![(\{T, F\}, \oplus)](https://wikimedia.org/api/rest_v1/media/math/render/svg/c2e0ed6eb05cef736fc9ae20ab8bba028fd5b425) *is* an [abelian group][42]. The combination of operators ![\wedge ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1caa4004cb216ef2930bb12fe805a76870caed94) and ![\oplus ](https://wikimedia.org/api/rest_v1/media/math/render/svg/8b16e2bdaefee9eed86d866e6eba3ac47c710f60) over elements ![\{T, F\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/42e794e3d3c71ade40aa94383ff0da56ac72b9cc) produce the well-known [field][43] [![F_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0fd17e0779153d765b40ebef91533489b87b2e37)][44]. This field can represent any logic obtainable with the system ![(\land, \lor)](https://wikimedia.org/api/rest_v1/media/math/render/svg/cce12e9cbe1e10df747c4f19962e18833a8cda39) and has the added benefit of the arsenal of algebraic analysis tools for fields.

More specifically, if one associates ![F](https://wikimedia.org/api/rest_v1/media/math/render/svg/545fd099af8541605f7ee55f08225526be88ce57) with 0 and ![T](https://wikimedia.org/api/rest_v1/media/math/render/svg/ec7200acd984a1d3a3d7dc455e262fbe54f7f6e0) with 1, one can interpret the logical "AND" operation as multiplication on ![F_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0fd17e0779153d765b40ebef91533489b87b2e37) and the "XOR" operation as addition on ![F_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0fd17e0779153d765b40ebef91533489b87b2e37):

![{\displaystyle {\begin{matrix}r=p\land q&\Leftrightarrow &r=p\cdot q{\pmod {2}}\\[3pt]r=p\oplus q&\Leftrightarrow &r=p+q{\pmod {2}}\\\end{matrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ff7811b12106fb2efca43f94e8ea67a96e0f9068)

Using this basis to describe a boolean system is referred to as [algebraic normal form][45].

## Exclusive "or" in natural language\[[edit][46]\]

Disjunction is often understood exclusively in [natural languages][47]. In English, the disjunctive word "or" is often understood exclusively, particularly when used with the particle "either". The English example below would normally be understood in conversation as implying that Mary is not both a singer and a poet.[\[3\]][48][\[4\]][49]

1\. Mary is a singer or a poet.

However, disjunction can also be understood inclusively, even in combination with "either". For instance, the first example below shows that "either" can be [felicitously][50] used in combination with an outright statement that both disjuncts are true. The second example shows that the exclusive inference vanishes away under [downward entailing][51] contexts. If disjunction were understood as exclusive in this example, it would leave open the possibility that some people ate both rice and beans.[\[3\]][52]

2\. Mary is either a singer or a poet or both.

3\. Nobody ate either rice or beans.

Examples such as the above have motivated analyses of the exclusivity inference as [pragmatic][53] [conversational implicatures][54] calculated on the basis of an inclusive [semantics][55]. Implicatures are typically [cancellable][56] and do not arise in downward entailing contexts if their calculation depends on the [Maxim of Quantity][57]. However, some researchers have treated exclusivity as a bona fide semantic [entailment][58] and proposed nonclassical logics which would validate it.[\[3\]][59]

This behavior of English "or" is also found in other languages. However, many languages have disjunctive constructions which are robustly exclusive such as French *soit... soit*.[\[3\]][60]

## Alternative symbols\[[edit][61]\]

The symbol used for exclusive disjunction varies from one field of application to the next, and even depends on the properties being emphasized in a given context of discussion. In addition to the abbreviation "XOR", any of the following symbols may also be seen:

-   __+__, a plus sign, which has the advantage that all of the ordinary algebraic properties of mathematical [rings][62] and [fields][63] can be used without further ado; but the plus sign is also used for inclusive disjunction in some notation systems; note that exclusive disjunction corresponds to [addition][64] [modulo][65] 2, which has the following addition table, clearly [isomorphic][66] to the one above:

-   __![\oplus ](https://wikimedia.org/api/rest_v1/media/math/render/svg/8b16e2bdaefee9eed86d866e6eba3ac47c710f60)__, a modified plus sign; this symbol is also used in mathematics for the *[direct sum][67]* of algebraic structures
-   __J__, as in J*pq*
-   An inclusive disjunction symbol (![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a)) that is modified in some way, such as
-   __^__, the [caret][68], used in several [programming languages][69], such as [C][70], [C++][71], [C#][72], [D][73], [Java][74], [Perl][75], [Ruby][76], [PHP][77] and [Python][78], denoting the [bitwise][79] XOR operator; not used outside of programming contexts because it is too easily confused with other uses of the caret
-   [![X-or.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/X-or.svg/24px-X-or.svg.png)][80], sometimes written as
    -   __\><__
    -   __\>-<__
-   __\=1__, in IEC symbology

## Properties\[[edit][81]\]

[Commutativity][82]: yes

[Associativity][83]: yes

![~A](https://wikimedia.org/api/rest_v1/media/math/render/svg/17327d088840ce291c8db59b592489ef8e6e94bd)

![~~~\oplus~~~](https://wikimedia.org/api/rest_v1/media/math/render/svg/4f07ca1a23ec64b131075da4ebb6f162f1460094)

![(B\oplus C)](https://wikimedia.org/api/rest_v1/media/math/render/svg/f8d4800638f9d7524cd268e8e9443f12bf67afac)

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

![(A \oplus B)](https://wikimedia.org/api/rest_v1/media/math/render/svg/966575de8d90ba0483c7eb54bd43ec27f7404e50)

![~~~\oplus~~~](https://wikimedia.org/api/rest_v1/media/math/render/svg/4f07ca1a23ec64b131075da4ebb6f162f1460094)

![~C](https://wikimedia.org/api/rest_v1/media/math/render/svg/35f52ed2496dc4077efa433abb4685684a158d7e)

[![Venn 0101 0101.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Venn_0101_0101.svg/50px-Venn_0101_0101.svg.png)][84]

![~~~\oplus~~~](https://wikimedia.org/api/rest_v1/media/math/render/svg/4f07ca1a23ec64b131075da4ebb6f162f1460094)

[![Venn 0011 1100.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Venn_0011_1100.svg/50px-Venn_0011_1100.svg.png)][85]

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

[![Venn 0110 1001.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Venn_0110_1001.svg/50px-Venn_0110_1001.svg.png)][86]

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

[![Venn 0110 0110.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Venn_0110_0110.svg/50px-Venn_0110_0110.svg.png)][87]

![~~~\oplus~~~](https://wikimedia.org/api/rest_v1/media/math/render/svg/4f07ca1a23ec64b131075da4ebb6f162f1460094)

[![Venn 0000 1111.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Venn_0000_1111.svg/50px-Venn_0000_1111.svg.png)][88]

[Distributivity][89]:

The exclusive or doesn't distribute over any binary function (not even itself), but [logical conjunction distributes over exclusive or][90]. ![{\displaystyle C\land (A\oplus B)=(C\land A)\oplus (C\land B)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7e7515efafcfd282a75a9e10f44b8723d5ea0955) (Conjunction and exclusive or form the multiplication and addition operations of a [field][91] [GF(2)][92], and as in any field they obey the distributive law.)

[Idempotency][93]: no

![~A~](https://wikimedia.org/api/rest_v1/media/math/render/svg/00229fc56bafa7e9b522aedb3bed5dca455bc561)

![~\oplus~](https://wikimedia.org/api/rest_v1/media/math/render/svg/c767eb37cbb7ba0cb1dd95c05efe9daf890806a2)

![~A~](https://wikimedia.org/api/rest_v1/media/math/render/svg/00229fc56bafa7e9b522aedb3bed5dca455bc561)

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

![~0~](https://wikimedia.org/api/rest_v1/media/math/render/svg/b6d7a0026db5c6cb729f05a18071b31816c11cb4)

    ![\nLeftrightarrow](https://wikimedia.org/api/rest_v1/media/math/render/svg/aeebe3d2aa323d1bd18a7c3ba7ff3179f7931471)    

![~A~](https://wikimedia.org/api/rest_v1/media/math/render/svg/00229fc56bafa7e9b522aedb3bed5dca455bc561)

[![Venn01.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Venn01.svg/36px-Venn01.svg.png)][94]

![~\oplus~](https://wikimedia.org/api/rest_v1/media/math/render/svg/c767eb37cbb7ba0cb1dd95c05efe9daf890806a2)

[![Venn01.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Venn01.svg/36px-Venn01.svg.png)][95]

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

[![Venn00.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Venn00.svg/36px-Venn00.svg.png)][96]

    ![\nLeftrightarrow](https://wikimedia.org/api/rest_v1/media/math/render/svg/aeebe3d2aa323d1bd18a7c3ba7ff3179f7931471)    

[![Venn01.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Venn01.svg/36px-Venn01.svg.png)][97]

[Monotonicity][98]: no

![A\rightarrow B](https://wikimedia.org/api/rest_v1/media/math/render/svg/23efef033def56a67de7ded823f14626de26d174)

    ![\nRightarrow](https://wikimedia.org/api/rest_v1/media/math/render/svg/3e05a42e88f019861cf404b6f982d8f729a4c4ab)    

![(A \oplus C)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b5dafae2dad55444ab6ea1a036b65ca4dd88d3c0)

![\rightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/53e574cc3aa5b4bf5f3f5906caf121a378eef08b)

![(B\oplus C)](https://wikimedia.org/api/rest_v1/media/math/render/svg/f8d4800638f9d7524cd268e8e9443f12bf67afac)

[![Venn 1011 1011.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Venn_1011_1011.svg/50px-Venn_1011_1011.svg.png)][99]

    ![\nRightarrow](https://wikimedia.org/api/rest_v1/media/math/render/svg/3e05a42e88f019861cf404b6f982d8f729a4c4ab)    

[![Venn 1011 1101.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Venn_1011_1101.svg/50px-Venn_1011_1101.svg.png)][100]

    ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)    

[![Venn 0101 1010.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Venn_0101_1010.svg/50px-Venn_0101_1010.svg.png)][101]

![\rightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/53e574cc3aa5b4bf5f3f5906caf121a378eef08b)

[![Venn 0011 1100.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Venn_0011_1100.svg/50px-Venn_0011_1100.svg.png)][102]

Truth-preserving: no

When all inputs are true, the output is not true.

Falsehood-preserving: yes

When all inputs are false, the output is false.

[Walsh spectrum][103]: (2,0,0,−2)

Non-[linearity][104]: 0

The function is linear.

If using [binary][105] values for true (1) and false (0), then *exclusive or* works exactly like [addition][106] [modulo][107] 2.

## Computer science\[[edit][108]\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/XOR_ANSI_Labelled.svg/114px-XOR_ANSI_Labelled.svg.png)][109]

Traditional symbolic representation of an XOR [logic gate][110]

### Bitwise operation\[[edit][111]\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Z2%5E4%3B_Cayley_table%3B_binary.svg/250px-Z2%5E4%3B_Cayley_table%3B_binary.svg.png)][112]

Exclusive disjunction is often used for bitwise operations. Examples:

-   1 XOR 1 = 0
-   1 XOR 0 = 1
-   0 XOR 1 = 1
-   0 XOR 0 = 0
-   11102 XOR 10012 = 01112 (this is equivalent to addition without [carry][113])

As noted above, since exclusive disjunction is identical to addition modulo 2, the bitwise exclusive disjunction of two *n*\-bit strings is identical to the standard vector of addition in the [vector space][114] ![(\Z/2\Z)^n](https://wikimedia.org/api/rest_v1/media/math/render/svg/5686cb9b950687c6d056088cb2314829751e9ac9).

In computer science, exclusive disjunction has several uses:

-   It tells whether two bits are unequal.
-   It is an optional bit-flipper (the deciding input chooses whether to invert the data input).
-   It tells whether there is an [odd][115] number of 1 bits (![A \oplus B \oplus C \oplus D \oplus E](https://wikimedia.org/api/rest_v1/media/math/render/svg/535f2ba0a85d234e262cf865cb6332fca094d431) is true [if and only if][116] an odd number of the variables are true).

In logical circuits, a simple [adder][117] can be made with an [XOR gate][118] to add the numbers, and a series of AND, OR and NOT gates to create the carry output.

On some computer architectures, it is more efficient to store a zero in a register by XOR-ing the register with itself (bits XOR-ed with themselves are always zero) instead of loading and storing the value zero.

In simple threshold-activated [neural networks][119], modeling the XOR function requires a second layer because XOR is not a [linearly separable][120] function.

Exclusive-or is sometimes used as a simple mixing function in [cryptography][121], for example, with [one-time pad][122] or [Feistel network][123] systems.\[*[citation needed][124]*\]

Exclusive-or is also heavily used in block ciphers such as AES (Rijndael) or Serpent and in block cipher implementation (CBC, CFB, OFB or CTR).

Similarly, XOR can be used in generating [entropy pools][125] for [hardware random number generators][126]. The XOR operation preserves randomness, meaning that a random bit XORed with a non-random bit will result in a random bit. Multiple sources of potentially random data can be combined using XOR, and the unpredictability of the output is guaranteed to be at least as good as the best individual source.[\[5\]][127]

XOR is used in [RAID][128] 3–6 for creating parity information. For example, RAID can "back up" bytes 100111002 and 011011002 from two (or more) hard drives by XORing the just mentioned bytes, resulting in (111100002) and writing it to another drive. Under this method, if any one of the three hard drives are lost, the lost byte can be re-created by XORing bytes from the remaining drives. For instance, if the drive containing 011011002 is lost, 100111002 and 111100002 can be XORed to recover the lost byte.[\[6\]][129]

XOR is also used to detect an overflow in the result of a signed binary arithmetic operation. If the leftmost retained bit of the result is not the same as the infinite number of digits to the left, then that means overflow occurred. XORing those two bits will give a "1" if there is an overflow.

XOR can be used to swap two numeric variables in computers, using the [XOR swap algorithm][130]; however this is regarded as more of a curiosity and not encouraged in practice.

[XOR linked lists][131] leverage XOR properties in order to save space to represent [doubly linked list][132] data structures.

In [computer graphics][133], XOR-based drawing methods are often used to manage such items as [bounding boxes][134] and [cursors][135] on systems without [alpha channels][136] or overlay planes.

## Encodings\[[edit][137]\]

It is also called "not left-right arrow" (\\nleftrightarrow) in Latex-based markdown (![\nleftrightarrow](https://wikimedia.org/api/rest_v1/media/math/render/svg/dce85ed756bc5a6cdf0f62892f57a6a1f96803ac)). Apart from the ASCII codes, the operator is encoded at U+22BB ⊻ XOR (HTML `&#8891;` __·__ `&veebar;`) and U+2295 ⊕ CIRCLED PLUS (HTML `&#8853;` __·__ `&CirclePlus;, &oplus;`), both in block [mathematical operators][138].

## See also\[[edit][139]\]

## Notes\[[edit][140]\]

1.  __[^][141]__ Germundsson, Roger; Weisstein, Eric. ["XOR"][142]. *[MathWorld][143]*. [Wolfram Research][144]. Retrieved 17 June 2015.
2.  __[^][145]__ Craig, Edward, ed. (1998), [*Routledge Encyclopedia of Philosophy*][146], __10__, Taylor & Francis, p. 496, [ISBN][147] [9780415073103][148]
3.  ^ [Jump up to: *__a__*][149] [*__b__*][150] [*__c__*][151] [*__d__*][152] Aloni, Maria (2016), ["Disjunction"][153], in Zalta, Edward N. (ed.), *The Stanford Encyclopedia of Philosophy* (Winter 2016 ed.), Metaphysics Research Lab, Stanford University, retrieved 2020-09-03
4.  __[^][154]__ Jennings quotes numerous authors saying that the word "or" has an exclusive sense. See Chapter 3, "The First Myth of 'Or'":  
    Jennings, R. E. (1994). *The Genealogy of Disjunction*. New York: Oxford University Press.
5.  __[^][155]__ Davies, Robert B (28 February 2002). ["Exclusive OR (XOR) and hardware random number generators"][156] (PDF). Retrieved 28 August 2013.
6.  __[^][157]__ Nobel, Rickard (26 July 2011). ["How RAID 5 actually works"][158]. Retrieved 23 March 2017.

## External links\[[edit][159]\]

-   [An example of XOR being used in cryptography][160]
-   [All About XOR][161]
-   [Proofs of XOR properties and applications of XOR, CS103: Mathematical Foundations of Computing, Stanford University][162]

[1]: https://en.wikipedia.org/wiki/File:Venn0110.svg "Venn diagram of Exclusive or"
[2]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[3]: https://en.wikipedia.org/wiki/Logic_gate "Logic gate"
[4]: https://en.wikipedia.org/wiki/File:XOR_ANSI.svg
[5]: https://en.wikipedia.org/wiki/Disjunctive_normal_form "Disjunctive normal form"
[6]: https://en.wikipedia.org/wiki/Conjunctive_normal_form "Conjunctive normal form"
[7]: https://en.wikipedia.org/wiki/Zhegalkin_polynomial "Zhegalkin polynomial"
[8]: https://en.wikipedia.org/wiki/Post%27s_lattice "Post's lattice"
[9]: https://en.wikipedia.org/wiki/Template:Infobox_logical_connective "Template:Infobox logical connective"
[10]: https://en.wikipedia.org/wiki/Template_talk:Infobox_logical_connective "Template talk:Infobox logical connective"
[11]: https://en.wikipedia.org/w/index.php?title=Template:Infobox_logical_connective&action=edit
[12]: https://en.wikipedia.org/wiki/File:Venn_0110_1001.svg
[13]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[14]: https://en.wikipedia.org/wiki/Exclusive_or#cite_note-wolfram-1
[15]: https://en.wikipedia.org/wiki/Table_of_logic_symbols "Table of logic symbols"
[16]: https://en.wikipedia.org/wiki/Exclusive_or#cite_note-2
[17]: https://en.wikipedia.org/wiki/Infix "Infix"
[18]: https://en.wikipedia.org/wiki/Negation "Negation"
[19]: https://en.wikipedia.org/wiki/Logical_biconditional "Logical biconditional"
[20]: https://en.wikipedia.org/wiki/Operand "Operand"
[21]: https://en.wikipedia.org/w/index.php?title=Exclusive_or&action=edit&section=1 "Edit section: Truth table"
[22]: https://en.wikipedia.org/wiki/File:Multigrade_operator_XOR.svg
[23]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[24]: https://en.wikipedia.org/w/index.php?title=Exclusive_or&action=edit&section=2 "Edit section: Equivalences, elimination, and introduction"
[25]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[26]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[27]: https://en.wikipedia.org/wiki/Disjunction "Disjunction"
[28]: https://en.wikipedia.org/wiki/Negation "Negation"
[29]: https://en.wikipedia.org/wiki/De_Morgan%27s_laws "De Morgan's laws"
[30]: https://en.wikipedia.org/wiki/Logical_biconditional "Logical biconditional"
[31]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[32]: https://en.wikipedia.org/wiki/Antecedent_(logic) "Antecedent (logic)"
[33]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[34]: https://en.wikipedia.org/w/index.php?title=Exclusive_or&action=edit&section=3 "Edit section: Negation"
[35]: https://en.wikipedia.org/w/index.php?title=Exclusive_or&action=edit&section=4 "Edit section: Relation to modern algebra"
[36]: https://en.wikipedia.org/wiki/Operation_(mathematics) "Operation (mathematics)"
[37]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[38]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[39]: https://en.wikipedia.org/wiki/Monoid "Monoid"
[40]: https://en.wikipedia.org/wiki/Group_(mathematics) "Group (mathematics)"
[41]: https://en.wikipedia.org/wiki/Ring_(mathematics) "Ring (mathematics)"
[42]: https://en.wikipedia.org/wiki/Abelian_group "Abelian group"
[43]: https://en.wikipedia.org/wiki/Field_(mathematics) "Field (mathematics)"
[44]: https://en.wikipedia.org/wiki/GF(2) "GF(2)"
[45]: https://en.wikipedia.org/wiki/Algebraic_normal_form "Algebraic normal form"
[46]: https://en.wikipedia.org/w/index.php?title=Exclusive_or&action=edit&section=5 "Edit section: Exclusive "or" in natural language"
[47]: https://en.wikipedia.org/wiki/Natural_language "Natural language"
[48]: https://en.wikipedia.org/wiki/Exclusive_or#cite_note-alonisep-3
[49]: https://en.wikipedia.org/wiki/Exclusive_or#cite_note-4
[50]: https://en.wikipedia.org/wiki/Felicity_(pragmatics) "Felicity (pragmatics)"
[51]: https://en.wikipedia.org/wiki/Downward_entailing "Downward entailing"
[52]: https://en.wikipedia.org/wiki/Exclusive_or#cite_note-alonisep-3
[53]: https://en.wikipedia.org/wiki/Pragmatics "Pragmatics"
[54]: https://en.wikipedia.org/wiki/Conversational_implicature "Conversational implicature"
[55]: https://en.wikipedia.org/wiki/Formal_semantics_(linguistics) "Formal semantics (linguistics)"
[56]: https://en.wikipedia.org/wiki/Cancellable_(linguistics) "Cancellable (linguistics)"
[57]: https://en.wikipedia.org/wiki/Cooperative_principle#Maxim_of_quantity "Cooperative principle"
[58]: https://en.wikipedia.org/wiki/Entailment "Entailment"
[59]: https://en.wikipedia.org/wiki/Exclusive_or#cite_note-alonisep-3
[60]: https://en.wikipedia.org/wiki/Exclusive_or#cite_note-alonisep-3
[61]: https://en.wikipedia.org/w/index.php?title=Exclusive_or&action=edit&section=6 "Edit section: Alternative symbols"
[62]: https://en.wikipedia.org/wiki/Ring_(mathematics) "Ring (mathematics)"
[63]: https://en.wikipedia.org/wiki/Field_(mathematics) "Field (mathematics)"
[64]: https://en.wikipedia.org/wiki/Addition "Addition"
[65]: https://en.wikipedia.org/wiki/Modular_arithmetic "Modular arithmetic"
[66]: https://en.wikipedia.org/wiki/Isomorphism "Isomorphism"
[67]: https://en.wikipedia.org/wiki/Direct_sum_of_modules "Direct sum of modules"
[68]: https://en.wikipedia.org/wiki/Caret "Caret"
[69]: https://en.wikipedia.org/wiki/Programming_language "Programming language"
[70]: https://en.wikipedia.org/wiki/C_(programming_language) "C (programming language)"
[71]: https://en.wikipedia.org/wiki/C%2B%2B "C++"
[72]: https://en.wikipedia.org/wiki/C_Sharp_(programming_language) "C Sharp (programming language)"
[73]: https://en.wikipedia.org/wiki/D_(programming_language) "D (programming language)"
[74]: https://en.wikipedia.org/wiki/Java_(programming_language) "Java (programming language)"
[75]: https://en.wikipedia.org/wiki/Perl "Perl"
[76]: https://en.wikipedia.org/wiki/Ruby_(programming_language) "Ruby (programming language)"
[77]: https://en.wikipedia.org/wiki/PHP "PHP"
[78]: https://en.wikipedia.org/wiki/Python_(programming_language) "Python (programming language)"
[79]: https://en.wikipedia.org/wiki/Bitwise_operation "Bitwise operation"
[80]: https://en.wikipedia.org/wiki/File:X-or.svg
[81]: https://en.wikipedia.org/w/index.php?title=Exclusive_or&action=edit&section=7 "Edit section: Properties"
[82]: https://en.wikipedia.org/wiki/Commutative_property "Commutative property"
[83]: https://en.wikipedia.org/wiki/Associative_property "Associative property"
[84]: https://en.wikipedia.org/wiki/File:Venn_0101_0101.svg
[85]: https://en.wikipedia.org/wiki/File:Venn_0011_1100.svg
[86]: https://en.wikipedia.org/wiki/File:Venn_0110_1001.svg
[87]: https://en.wikipedia.org/wiki/File:Venn_0110_0110.svg
[88]: https://en.wikipedia.org/wiki/File:Venn_0000_1111.svg
[89]: https://en.wikipedia.org/wiki/Distributive_property "Distributive property"
[90]: https://en.wikipedia.org/wiki/Logical_conjunction#Properties "Logical conjunction"
[91]: https://en.wikipedia.org/wiki/Field_(mathematics) "Field (mathematics)"
[92]: https://en.wikipedia.org/wiki/GF(2) "GF(2)"
[93]: https://en.wikipedia.org/wiki/Idempotence "Idempotence"
[94]: https://en.wikipedia.org/wiki/File:Venn01.svg
[95]: https://en.wikipedia.org/wiki/File:Venn01.svg
[96]: https://en.wikipedia.org/wiki/File:Venn00.svg
[97]: https://en.wikipedia.org/wiki/File:Venn01.svg
[98]: https://en.wikipedia.org/wiki/Monotone_boolean_function "Monotone boolean function"
[99]: https://en.wikipedia.org/wiki/File:Venn_1011_1011.svg
[100]: https://en.wikipedia.org/wiki/File:Venn_1011_1101.svg
[101]: https://en.wikipedia.org/wiki/File:Venn_0101_1010.svg
[102]: https://en.wikipedia.org/wiki/File:Venn_0011_1100.svg
[103]: https://en.wikipedia.org/wiki/Hadamard_transform "Hadamard transform"
[104]: https://en.wikipedia.org/wiki/Linear#Boolean_functions "Linear"
[105]: https://en.wikipedia.org/wiki/Binary_numeral_system "Binary numeral system"
[106]: https://en.wikipedia.org/wiki/Addition "Addition"
[107]: https://en.wikipedia.org/wiki/Modular_arithmetic "Modular arithmetic"
[108]: https://en.wikipedia.org/w/index.php?title=Exclusive_or&action=edit&section=8 "Edit section: Computer science"
[109]: https://en.wikipedia.org/wiki/File:XOR_ANSI_Labelled.svg
[110]: https://en.wikipedia.org/wiki/Logic_gate "Logic gate"
[111]: https://en.wikipedia.org/w/index.php?title=Exclusive_or&action=edit&section=9 "Edit section: Bitwise operation"
[112]: https://en.wikipedia.org/wiki/File:Z2%5E4;_Cayley_table;_binary.svg
[113]: https://en.wikipedia.org/wiki/Carry_(arithmetic) "Carry (arithmetic)"
[114]: https://en.wikipedia.org/wiki/Vector_space "Vector space"
[115]: https://en.wikipedia.org/wiki/Parity_(mathematics) "Parity (mathematics)"
[116]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[117]: https://en.wikipedia.org/wiki/Adder_(electronics) "Adder (electronics)"
[118]: https://en.wikipedia.org/wiki/XOR_gate "XOR gate"
[119]: https://en.wikipedia.org/wiki/Neural_network "Neural network"
[120]: https://en.wikipedia.org/wiki/Linear_separability "Linear separability"
[121]: https://en.wikipedia.org/wiki/Cryptography "Cryptography"
[122]: https://en.wikipedia.org/wiki/One-time_pad "One-time pad"
[123]: https://en.wikipedia.org/wiki/Feistel_cipher "Feistel cipher"
[124]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[125]: https://en.wikipedia.org/wiki/Entropy_pool "Entropy pool"
[126]: https://en.wikipedia.org/wiki/Hardware_random_number_generator "Hardware random number generator"
[127]: https://en.wikipedia.org/wiki/Exclusive_or#cite_note-5
[128]: https://en.wikipedia.org/wiki/RAID "RAID"
[129]: https://en.wikipedia.org/wiki/Exclusive_or#cite_note-6
[130]: https://en.wikipedia.org/wiki/XOR_swap_algorithm "XOR swap algorithm"
[131]: https://en.wikipedia.org/wiki/XOR_linked_list "XOR linked list"
[132]: https://en.wikipedia.org/wiki/Doubly_linked_list "Doubly linked list"
[133]: https://en.wikipedia.org/wiki/Computer_graphics "Computer graphics"
[134]: https://en.wikipedia.org/wiki/Bounding_volume "Bounding volume"
[135]: https://en.wikipedia.org/wiki/Cursor_(computers) "Cursor (computers)"
[136]: https://en.wikipedia.org/wiki/Alpha_compositing "Alpha compositing"
[137]: https://en.wikipedia.org/w/index.php?title=Exclusive_or&action=edit&section=10 "Edit section: Encodings"
[138]: https://en.wikipedia.org/wiki/Mathematical_operators_and_symbols_in_Unicode#Mathematical_Operators "Mathematical operators and symbols in Unicode"
[139]: https://en.wikipedia.org/w/index.php?title=Exclusive_or&action=edit&section=11 "Edit section: See also"
[140]: https://en.wikipedia.org/w/index.php?title=Exclusive_or&action=edit&section=12 "Edit section: Notes"
[141]: https://en.wikipedia.org/wiki/Exclusive_or#cite_ref-wolfram_1-0 "Jump up"
[142]: http://mathworld.wolfram.com/XOR.html
[143]: https://en.wikipedia.org/wiki/MathWorld "MathWorld"
[144]: https://en.wikipedia.org/wiki/Wolfram_Research "Wolfram Research"
[145]: https://en.wikipedia.org/wiki/Exclusive_or#cite_ref-2 "Jump up"
[146]: https://books.google.com/books?id=HP9O6OM4iOgC&pg=PA496
[147]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[148]: https://en.wikipedia.org/wiki/Special:BookSources/9780415073103 "Special:BookSources/9780415073103"
[149]: https://en.wikipedia.org/wiki/Exclusive_or#cite_ref-alonisep_3-0
[150]: https://en.wikipedia.org/wiki/Exclusive_or#cite_ref-alonisep_3-1
[151]: https://en.wikipedia.org/wiki/Exclusive_or#cite_ref-alonisep_3-2
[152]: https://en.wikipedia.org/wiki/Exclusive_or#cite_ref-alonisep_3-3
[153]: https://plato.stanford.edu/archives/win2016/entries/disjunction/
[154]: https://en.wikipedia.org/wiki/Exclusive_or#cite_ref-4 "Jump up"
[155]: https://en.wikipedia.org/wiki/Exclusive_or#cite_ref-5 "Jump up"
[156]: http://www.robertnz.net/pdf/xor2.pdf
[157]: https://en.wikipedia.org/wiki/Exclusive_or#cite_ref-6 "Jump up"
[158]: http://rickardnobel.se/how-raid5-works
[159]: https://en.wikipedia.org/w/index.php?title=Exclusive_or&action=edit&section=13 "Edit section: External links"
[160]: http://www.codeplex.com/rexor
[161]: https://accu.org/index.php/journals/1915
[162]: https://web.stanford.edu/class/archive/cs/cs103/cs103.1142/lectures/01/Small01.pdf
