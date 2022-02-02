---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Truth_function
page-title:       Truth function - Wikipedia
article-title:    Truth function - Wikipedia
---
# Truth function - Wikipedia

In logic, a truth function[1] is a function that accepts truth values as input and produces a unique truth value as output. In other words: The input and output of a truth function are all truth values; a truth function will always output exactly one truth value; and inputting the same truth value(s) will always output the same truth value. The typical example is in propositional logic, wherein a compound statement is constructed using individual statements connected by logical connectives; if the truth value of the compound statement is entirely determined by the truth value(s) of the constituent statement(s), the compound statement is called a truth function, and any logical connectives used are said to be truth functional.[2]
In [logic][1], a __truth function__[\[1\]][2] is a [function][3] that accepts [truth values][4] as input and produces a unique truth value as output. In other words: The input and output of a truth function are all truth values; a truth function will always output exactly one truth value; and inputting the same truth value(s) will always output the same truth value. The typical example is in [propositional logic][5], wherein a compound statement is constructed using individual statements connected by [logical connectives][6]; if the truth value of the compound statement is entirely determined by the truth value(s) of the constituent statement(s), the compound statement is called a __truth function__, and any logical connectives used are said to be __truth functional__.[\[2\]][7]

[Classical propositional logic][8] is a truth-functional logic,[\[3\]][9] in that every statement has exactly one truth value which is either true or false, and every logical connective is truth functional (with a correspondent [truth table][10]), thus every compound statement is a truth function.[\[4\]][11] On the other hand, [modal logic][12] is non-truth-functional.

## Overview\[[edit][13]\]

A [logical connective][14] is truth-functional if the truth-value of a compound sentence is a function of the truth-value of its sub-sentences. A class of connectives is truth-functional if each of its members is. For example, the connective "*and*" is truth-functional since a sentence like "*Apples are fruits and carrots are vegetables*" is true *[if, and only if][15]* each of its sub-sentences "*apples are fruits*" and "*carrots are vegetables*" is true, and it is false otherwise. Some connectives of a natural language, such as English, are not truth-functional.

Connectives of the form "x *believes that* ..." are typical examples of connectives that are not truth-functional. If e.g. Mary mistakenly believes that Al Gore was President of the USA on April 20, 2000, but she does not believe that the moon is made of green cheese, then the sentence

"*Mary believes that Al Gore was President of the USA on April 20, 2000*"

is true while

"*Mary believes that the moon is made of green cheese*"

is false. In both cases, each component sentence (i.e. "*Al Gore was president of the USA on April 20, 2000*" and "*the moon is made of green cheese*") is false, but each compound sentence formed by prefixing the phrase "*Mary believes that*" differs in truth-value. That is, the truth-value of a sentence of the form "*Mary believes that...*" is not determined solely by the truth-value of its component sentence, and hence the (unary) [connective][16] (or simply *operator* since it is unary) is non-truth-functional.

The class of [classical logic][17] connectives (e.g. [&][18], [→][19]) used in the construction of formulas is truth-functional. Their values for various truth-values as argument are usually given by [truth tables][20]. [Truth-functional propositional calculus][21] is a [formal system][22] whose formulae may be interpreted as either true or false.

## Table of binary truth functions\[[edit][23]\]

In two-valued logic, there are sixteen possible truth functions, also called [Boolean functions][24], of two inputs *P* and *Q*. Any of these functions corresponds to a truth table of a certain [logical connective][25] in classical logic, including several [degenerate][26] cases such as a function not depending on one or both of its arguments. Truth and falsehood are denoted as 1 and 0, respectively, in the following truth tables for sake of brevity.

[Contradiction][27]/[False][28]

Notation

Equivalent  
formulas

Truth table

Venn diagram

![\bot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/f282c7bc331cc3bfcf1c57f1452cc23c022f58de)  
"bottom"

*P* ∧ ¬*P*  
O*pq*

 

__Q__

0

1

__P__

0  

 0 

 0 

1  

 0 

 0 

[![Venn0000.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Venn0000.svg/100px-Venn0000.svg.png)][29]

[Tautology][30]/[True][31]

Notation

Equivalent  
formulas

Truth table

Venn diagram

![\top ](https://wikimedia.org/api/rest_v1/media/math/render/svg/cf12e436fef2365e76fcb1034a51179d8328bb33)  
"top"

*P* ∨ ¬*P*  
V*pq*

 

__Q__

0

1

__P__

0  

 1 

 1 

1  

 1 

 1 

[![Venn1111.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Venn1111.svg/100px-Venn1111.svg.png)][32]

[Proposition *P*][33]

Notation

Equivalent  
formulas

Truth table

Venn diagram

*P*

*p*  
I*pq*

 

__Q__

0

1

__P__

0  

 0 

 0 

1  

 1 

 1 

[![Venn0101.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Venn0101.svg/100px-Venn0101.svg.png)][34]

[Negation of *P*][35]

Notation

Equivalent  
formulas

Truth table

Venn diagram

¬*P*  
~*P*

N*p*  
F*pq*

 

__Q__

0

1

__P__

0  

 1 

 1 

1  

 0 

 0 

[![Venn1010.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Venn1010.svg/100px-Venn1010.svg.png)][36]

[Proposition *Q*][37]

Notation

Equivalent  
formulas

Truth table

Venn diagram

*Q*

*q*  
H*pq*

 

__Q__

0

1

__P__

0  

 0 

 1 

1  

 0 

 1 

[![Venn0011.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Venn0011.svg/100px-Venn0011.svg.png)][38]

[Negation of *Q*][39]

Notation

Equivalent  
formulas

Truth table

Venn diagram

¬*Q*  
~*Q*

N*q*  
G*pq*

 

__Q__

0

1

__P__

0  

 1 

 0 

1  

 1 

 0 

[![Venn1100.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Venn1100.svg/100px-Venn1100.svg.png)][40]

[Conjunction][41]

Notation

Equivalent  
formulas

Truth table

Venn diagram

*P* ∧ *Q*  
*P* & *Q*  
*P* __·__ *Q*  
*P* AND *Q*

*P* ↛¬*Q*  
¬*P* ↚ *Q*  
¬*P* ↓ ¬*Q*  
K*pq*

 

__Q__

0

1

__P__

0  

 0 

 0 

1  

 0 

 1 

[![Venn0001.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Venn0001.svg/100px-Venn0001.svg.png)][42]

[Alternative denial][43]

Notation

Equivalent  
formulas

Truth table

Venn diagram

*P* ↑ *Q*  
*P* | *Q*  
*P* NAND *Q*

*P* → ¬*Q*  
¬*P* ← *Q*  
¬*P* ∨ ¬*Q*  
D*pq*

 

__Q__

0

1

__P__

0  

 1 

 1 

1  

 1 

 0 

[![Venn1110.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Venn1110.svg/100px-Venn1110.svg.png)][44]

[Disjunction][45]

Notation

Equivalent  
formulas

Truth table

Venn diagram

*P* ∨ *Q*  
*P* OR *Q*

*P* ← ¬*Q*  
¬*P* → *Q*  
¬*P* ↑ ¬*Q*  
¬(¬*P* ∧ ¬*Q*)  
A*pq*

 

__Q__

0

1

__P__

0  

 0 

 1 

1  

 1 

 1 

[![Venn0111.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Venn0111.svg/100px-Venn0111.svg.png)][46]

[Joint denial][47]

Notation

Equivalent  
formulas

Truth table

Venn diagram

*P* ↓ *Q*  
*P* NOR *Q*

*P* ↚ ¬*Q*  
¬*P* ↛ *Q*  
¬*P* ∧ ¬*Q*  
X*pq*

 

__Q__

0

1

__P__

0  

 1 

 0 

1  

 0 

 0 

[![Venn1000.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Venn1000.svg/100px-Venn1000.svg.png)][48]

[Material nonimplication][49]

Notation

Equivalent  
formulas

Truth table

Venn diagram

*P* ↛ *Q*  
*P* ![\not \supset ](https://wikimedia.org/api/rest_v1/media/math/render/svg/0066ef658b08a8a21cf267a4e5bec61bc03fcb73) *Q*  
*P* ![>](https://wikimedia.org/api/rest_v1/media/math/render/svg/1b27b77ab4e3293ea9ce65cef60fea655c398423) *Q*

*P* ∧ ¬*Q*  
¬*P* ↓ *Q*  
¬*P* ↚ ¬*Q*  
L*pq*

 

__Q__

0

1

__P__

0  

 0 

 0 

1  

 1 

 0 

[![Venn0100.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Venn0100.svg/100px-Venn0100.svg.png)][50]

[Material implication][51]

Notation

Equivalent  
formulas

Truth table

Venn diagram

*P* → *Q*  
*P* ⊃ *Q*  
*P* ![\leq ](https://wikimedia.org/api/rest_v1/media/math/render/svg/440568a09c3bfdf0e1278bfa79eb137c04e94035) *Q*

*P* ↑ ¬*Q*  
¬*P* ∨ *Q*  
¬*P* ← ¬*Q*  
C*pq*

 

__Q__

0

1

__P__

0  

 1 

 1 

1  

 0 

 1 

[![Venn1011.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Venn1011.svg/100px-Venn1011.svg.png)][52]

[Converse nonimplication][53]

Notation

Equivalent  
formulas

Truth table

Venn diagram

*P* ↚ *Q*  
*P* ![\not \subset ](https://wikimedia.org/api/rest_v1/media/math/render/svg/5b8e16e392d3856efb6355f906bf3d7b35f7f2ec) *Q*  
*P* ![<](https://wikimedia.org/api/rest_v1/media/math/render/svg/33737c89a17785dacc8638b4d66db3d5c8670de1) *Q*

*P* ↓ ¬*Q*  
¬*P* ∧ *Q*  
¬*P* ↛ ¬*Q*  
M*pq*

 

__Q__

0

1

__P__

0  

 0 

 1 

1  

 0 

 0 

[![Venn0010.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Venn0010.svg/100px-Venn0010.svg.png)][54]

[Converse implication][55]

Notation

Equivalent  
formulas

Truth table

Venn diagram

*P* ← *Q*  
*P* ⊂ *Q*  
*P* ![\geq ](https://wikimedia.org/api/rest_v1/media/math/render/svg/bcef7c0e95bb77a35fd1a874ca91f425215f3c26) *Q*

*P* ∨ ¬*Q*  
¬*P* ↑ *Q*  
¬*P* → ¬*Q*  
B*pq*

 

__Q__

0

1

__P__

0  

 1 

 0 

1  

 1 

 1 

[![Venn1101.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Venn1101.svg/100px-Venn1101.svg.png)][56]

[Exclusive disjunction][57]

Notation

Equivalent  
formulas

Truth table

Venn diagram

*P* ↮ *Q*  
*P* ≢ *Q*  
*P* ⨁ *Q*  
*P* XOR *Q*

*P* ![\leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/046b918c43e05caf6624fe9b676c69ec9cd6b892) ¬*Q*  
¬*P* ![\leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/046b918c43e05caf6624fe9b676c69ec9cd6b892) *Q*  
¬*P* ↮ ¬*Q*  
J*pq*

 

__Q__

0

1

__P__

0  

 0 

 1 

1  

 1 

 0 

[![Venn0110.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Venn0110.svg/100px-Venn0110.svg.png)][58]

[Biconditional][59]

Notation

Equivalent  
formulas

Truth table

Venn diagram

*P* ![\leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/046b918c43e05caf6624fe9b676c69ec9cd6b892) *Q*  
*P* ≡ *Q*  
*P* XNOR *Q*  
*P* IFF *Q*

*P* ↮ ¬*Q*  
¬*P* ↮ *Q*  
¬*P* ![\leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/046b918c43e05caf6624fe9b676c69ec9cd6b892) ¬*Q*  
E*pq*

 

__Q__

0

1

__P__

0  

 1 

 0 

1  

 0 

 1 

[![Venn1001.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Venn1001.svg/100px-Venn1001.svg.png)][60]

## Functional completeness\[[edit][61]\]

Because a function may be expressed as a [composition][62], a truth-functional logical calculus does not need to have dedicated symbols for all of the above-mentioned functions to be [functionally complete][63]. This is expressed in a [propositional calculus][64] as [logical equivalence][65] of certain compound statements. For example, classical logic has ¬*P* ∨ *Q* equivalent to *P* → *Q*. The conditional operator "→" is therefore not necessary for a classical-based [logical system][66] if "¬" (not) and "∨" (or) are already in use.

A [minimal][67] set of operators that can express every statement expressible in the [propositional calculus][68] is called a *minimal functionally complete set*. A minimally complete set of operators is achieved by NAND alone {↑} and NOR alone {↓}.

The following are the minimal functionally complete sets of operators whose arities do not exceed 2:[\[5\]][69]

One element

{↑}, {↓}.

Two elements

![{\displaystyle \{\vee ,\neg \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e2e9c0ba8d7e6d25eb7b7c42514a8e5455533aa0), ![{\displaystyle \{\wedge ,\neg \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cea2d696984c094e742f17b4a0980812c34c5311), ![{\displaystyle \{\to ,\neg \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ce75e2f3daac9cec837fe974c6afd887701b5a64), ![{\displaystyle \{\gets ,\neg \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8e85dd5c575acd2855f93a08b102eabb6a2c2086), ![{\displaystyle \{\to ,\bot \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/55ebcc40157f1c4fb9352bcda77afdcfe135b11b), ![{\displaystyle \{\gets ,\bot \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7fcc3d747c0f79a70db6878511e5008e48df1c95), ![{\displaystyle \{\to ,\nleftrightarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b2d41b0afc20bb0ee130b470c495068a8771adb4), ![{\displaystyle \{\gets ,\nleftrightarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/25a8500d440a083dec2165e932ec595f2bd2190a), ![{\displaystyle \{\to ,\nrightarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ead9c6cca0d49e461ddc6772d82b6d6d367b4d61), ![{\displaystyle \{\to ,\nleftarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/daab405ca48bd7c7e387d635272447b59dd88a0b), ![{\displaystyle \{\gets ,\nrightarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5983419b30c5273441d0dc24b634b8206fe1c678), ![{\displaystyle \{\gets ,\nleftarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/54bb952bacbeef29cd08883ae5eb3619f32b103a), ![{\displaystyle \{\nrightarrow ,\neg \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b20fab34e5fb82fefa38d5066ad53924c3bce448), ![{\displaystyle \{\nleftarrow ,\neg \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/43288ebe50fa63d70ef9157560434678ca37ba48), ![{\displaystyle \{\nrightarrow ,\top \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ed8a953e72b9d747fc5b8ce20875c0851ec5029f), ![{\displaystyle \{\nleftarrow ,\top \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5206ca5d7c500efe3089b24d9808cde1dd705db7), ![{\displaystyle \{\nrightarrow ,\leftrightarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/653c466be112e74751723a7139883dc2d5e7d4a6), ![{\displaystyle \{\nleftarrow ,\leftrightarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e8bc42ae74459b1c57a928407c5921e33cb8e597).

Three elements

![{\displaystyle \{\lor ,\leftrightarrow ,\bot \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/18c4d581f0cfe84e08c450cc07d3f2fb33fb1842), ![{\displaystyle \{\lor ,\leftrightarrow ,\nleftrightarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/634408661bb912f434b14ec6561f21d74b2af415), ![{\displaystyle \{\lor ,\nleftrightarrow ,\top \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/acf8252f4312b6a20a7f0f2ca495aed3f7cb861e), ![{\displaystyle \{\land ,\leftrightarrow ,\bot \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7b45580e38a2f5365ddb6aa6c736d061dd71b601), ![{\displaystyle \{\land ,\leftrightarrow ,\nleftrightarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d83f94b1b629f429470d329fc4c35af42068f797), ![{\displaystyle \{\land ,\nleftrightarrow ,\top \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e0b7dfe68db84b36a082a02fe126099bba736ee1).

## Algebraic properties\[[edit][70]\]

Some truth functions possess properties which may be expressed in the theorems containing the corresponding connective. Some of those properties that a binary truth function (or a corresponding logical connective) may have are:

A set of truth functions is [functionally complete][71] if and only if for each of the following five properties it contains at least one member lacking it:

-   __[monotonic][72]__: If *f*(*a*1, ..., *a**n*) ≤ *f*(*b*1, ..., *b**n*) for all *a*1, ..., *a**n*, *b*1, ..., *b**n* ∈ {0,1} such that *a*1 ≤ *b*1, *a*2 ≤ *b*2, ..., *a**n* ≤ *b**n*. E.g., ![{\displaystyle \vee ,\wedge ,\top ,\bot }](https://wikimedia.org/api/rest_v1/media/math/render/svg/f22868c57609ee445a551d9b03f8bcccf96e8a20).
-   __[affine][73]__: For each variable, changing its value either always or never changes the truth-value of the operation, for all fixed values of all other variables. E.g., ![{\displaystyle \neg ,\leftrightarrow }](https://wikimedia.org/api/rest_v1/media/math/render/svg/1382b6d3098dcd67af1e32e0d3650df790dd143b), ![{\displaystyle \not \leftrightarrow ,\top ,\bot }](https://wikimedia.org/api/rest_v1/media/math/render/svg/6a22685ebfb2bf3c97320e36655d68569b9902d7).
-   __self dual__: To read the truth-value assignments for the operation from top to bottom on its [truth table][74] is the same as taking the complement of reading it from bottom to top; in other words, *f*(¬*a*1, ..., ¬*a**n*) = ¬*f*(*a*1, ..., *a**n*). E.g., ![\neg ](https://wikimedia.org/api/rest_v1/media/math/render/svg/fa78fd02085d39aa58c9e47a6d4033ce41e02fad).
-   __truth-preserving__: The interpretation under which all variables are assigned a [truth value][75] of 'true' produces a truth value of 'true' as a result of these operations. E.g., ![{\displaystyle \vee ,\wedge ,\top ,\rightarrow ,\leftrightarrow ,\subset }](https://wikimedia.org/api/rest_v1/media/math/render/svg/077ada9bd6ec2f8f34440122c0bdc581d58c0233). (see [validity][76])
-   __falsehood-preserving__: The interpretation under which all variables are assigned a [truth value][77] of 'false' produces a truth value of 'false' as a result of these operations. E.g., ![{\displaystyle \vee ,\wedge ,\nleftrightarrow ,\bot ,\not \subset ,\not \supset }](https://wikimedia.org/api/rest_v1/media/math/render/svg/247e74742fe888019ee2d76b364455ee5eef4e1c). (see [validity][78])

### Arity\[[edit][79]\]

A concrete function may be also referred to as an *operator*. In two-valued logic there are 2 nullary operators (constants), 4 [unary operators][80], 16 [binary operators][81], 256 [ternary operators][82], and ![2^{2^{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6bcc9417763ad5d68870290ddaa2ca025ffdaf85) *n*\-ary operators. In three-valued logic there are 3 nullary operators (constants), 27 [unary operators][83], 19683 [binary operators][84], 7625597484987 [ternary operators][85], and ![3^{{3^{n}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/641a0ab44979ad409ea6e1be48d05f9737d4e608) *n*\-ary operators. In *k*\-valued logic, there are *k* nullary operators, ![k^{k}](https://wikimedia.org/api/rest_v1/media/math/render/svg/aa520f246f8b05a6601e4f9124291b7ad0377430) unary operators, ![k^{{k^{2}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d34db5696cf95851dbffb931f917bd7edf24474e) binary operators, ![k^{{k^{3}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8bd9055b7a9c09965be884940bf5c6fba3bdd92d) ternary operators, and ![k^{{k^{n}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f3b4929030615507dd3b1e775235bbc35577a0c8) *n*\-ary operators. An *n*\-ary operator in *k*\-valued logic is a function from ![{\mathbb  {Z}}_{k}^{n}\to {\mathbb  {Z}}_{k}](https://wikimedia.org/api/rest_v1/media/math/render/svg/67d915c0073e44027f4f4b0b56b889f52e98e5e8). Therefore, the number of such operators is ![|{\mathbb  {Z}}_{k}|^{{|{\mathbb  {Z}}_{k}^{n}|}}=k^{{k^{n}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/331e89fe21416be320a708e77913eba63b5d2431), which is how the above numbers were derived.

However, some of the operators of a particular arity are actually degenerate forms that perform a lower-arity operation on some of the inputs and ignores the rest of the inputs. Out of the 256 ternary boolean operators cited above, ![{\binom  {3}{2}}\cdot 16-{\binom  {3}{1}}\cdot 4+{\binom  {3}{0}}\cdot 2](https://wikimedia.org/api/rest_v1/media/math/render/svg/cfe26ddcd09c3478d647546092406206d8f187aa) of them are such degenerate forms of binary or lower-arity operators, using the [inclusion–exclusion principle][86]. The ternary operator ![f(x,y,z)=\lnot x](https://wikimedia.org/api/rest_v1/media/math/render/svg/96f94cf3696916d61559a828579183ed86837114) is one such operator which is actually a unary operator applied to one input, and ignoring the other two inputs.

["Not"][87] is a [unary operator][88], it takes a single term (¬*P*). The rest are [binary operators][89], taking two terms to make a compound statement (*P* ∧ *Q*, *P* ∨ *Q*, *P* → *Q*, *P* ↔ *Q*).

The set of logical operators Ω may be [partitioned][90] into disjoint subsets as follows:

![\Omega =\Omega _{0}\cup \Omega _{1}\cup \ldots \cup \Omega _{j}\cup \ldots \cup \Omega _{m}\,.](https://wikimedia.org/api/rest_v1/media/math/render/svg/4502acaaee0228abe10eadb73c8cfab31c17b203)

In this partition, ![\Omega _{j}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a8484eda05a8236c53d99ab2ee1b3911f1bb1a42) is the set of operator symbols of *[arity][91]* j.

In the more familiar propositional calculi, ![\Omega ](https://wikimedia.org/api/rest_v1/media/math/render/svg/24b0d5ca6f381068d756f6337c08e0af9d1eeb6f) is typically partitioned as follows:

nullary operators: ![{\displaystyle \Omega _{0}=\{\bot ,\top \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ad48b1de4653037c27381d974835e6fc6bf6d9fd)

unary operators: ![{\displaystyle \Omega _{1}=\{\lnot \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/139de4662ac57ca82751b81197a38a1513480099)

binary operators: ![{\displaystyle \Omega _{2}\supset \{\land ,\lor ,\rightarrow ,\leftrightarrow \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fba8c29bd48dbd66c24df92e1f60260a8e093b89)

## Principle of compositionality\[[edit][92]\]

Instead of using [truth tables][93], logical connective symbols can be interpreted by means of an interpretation function and a functionally complete set of truth-functions (Gamut 1991), as detailed by the [principle of compositionality][94] of meaning. Let *I* be an interpretation function, let *Φ*, *Ψ* be any two sentences and let the truth function *f*nand be defined as:

-   *f*nand(T,T) = F; *f*nand(T,F) = *f*nand(F,T) = *f*nand(F,F) = T

Then, for convenience, *f*not, *f*or *f*and and so on are defined by means of *f*nand:

-   *f*not(*x*) = *f*nand(*x*,*x*)
-   *f*or(*x*,*y*) = *f*nand(*f*not(*x*), *f*not(*y*))
-   *f*and(*x*,*y*) = *f*not(*f*nand(*x*,*y*))

or, alternatively *f*not, *f*or *f*and and so on are defined directly:

-   *f*not(T) = F; *f*not(F) = T;
-   *f*or(T,T) = *f*or(T,F) = *f*or(F,T) = T; *f*or(F,F) = F
-   *f*and(T,T) = T; *f*and(T,F) = *f*and(F,T) = *f*and(F,F) = F

Then

etc.

Thus if *S* is a sentence that is a string of symbols consisting of logical symbols *v*1...*v**n* representing logical connectives, and non-logical symbols *c*1...*c**n*, then if and only if *I*(*v*1)...*I*(*v**n*) have been provided interpreting *v*1 to *v**n* by means of *f*nand (or any other set of functional complete truth-functions) then the truth-value of ![{\displaystyle I(s)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/da1a9dae52e10e7e1849311c7ff978d421eeefc6) is determined entirely by the truth-values of *c*1...*c**n*, i.e. of *I*(*c*1)...*I*(*c**n*). In other words, as expected and required, *S* is true or false only under an interpretation of all its non-logical symbols.

## Computer science\[[edit][95]\]

Logical operators are implemented as [logic gates][96] in [digital circuits][97]. Practically all digital circuits (the major exception is [DRAM][98]) are built up from [NAND][99], [NOR][100], [NOT][101], and [transmission gates][102]. NAND and NOR gates with 3 or more inputs rather than the usual 2 inputs are fairly common, although they are logically equivalent to a cascade of 2-input gates. All other operators are implemented by breaking them down into a logically equivalent combination of 2 or more of the above logic gates.

The "logical equivalence" of "NAND alone", "NOR alone", and "NOT and AND" is similar to [Turing equivalence][103].

The fact that all truth functions can be expressed with NOR alone is demonstrated by the [Apollo guidance computer][104].

## See also\[[edit][105]\]

## Notes\[[edit][106]\]

## References\[[edit][107]\]

-   *This article incorporates material from TruthFunction on [PlanetMath][108], which is licensed under the [Creative Commons Attribution/Share-Alike License][109].*

## Further reading\[[edit][110]\]

-   [Józef Maria Bocheński][111] (1959), *A Précis of Mathematical Logic*, translated from the French and German versions by Otto Bird, Dordrecht, South Holland: D. Reidel.
-   [Alonzo Church][112] (1944), *Introduction to Mathematical Logic*, Princeton, NJ: Princeton University Press. See the Introduction for a history of the truth function concept.

[1]: https://en.wikipedia.org/wiki/Logic "Logic"
[2]: https://en.wikipedia.org/wiki/Truth_function#cite_note-1
[3]: https://en.wikipedia.org/wiki/Function_(mathematics) "Function (mathematics)"
[4]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[5]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[6]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[7]: https://en.wikipedia.org/wiki/Truth_function#cite_note-2
[8]: https://en.wikipedia.org/wiki/Classical_logic "Classical logic"
[9]: https://en.wikipedia.org/wiki/Truth_function#cite_note-3
[10]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[11]: https://en.wikipedia.org/wiki/Truth_function#cite_note-4
[12]: https://en.wikipedia.org/wiki/Modal_logic "Modal logic"
[13]: https://en.wikipedia.org/w/index.php?title=Truth_function&action=edit&section=1 "Edit section: Overview"
[14]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[15]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[16]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[17]: https://en.wikipedia.org/wiki/Classical_logic "Classical logic"
[18]: https://en.wikipedia.org/wiki/And_(logic) "And (logic)"
[19]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[20]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[21]: https://en.wikipedia.org/wiki/Truth-functional_propositional_calculus "Truth-functional propositional calculus"
[22]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[23]: https://en.wikipedia.org/w/index.php?title=Truth_function&action=edit&section=2 "Edit section: Table of binary truth functions"
[24]: https://en.wikipedia.org/wiki/Boolean_function "Boolean function"
[25]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[26]: https://en.wikipedia.org/wiki/Degeneracy_(mathematics) "Degeneracy (mathematics)"
[27]: https://en.wikipedia.org/wiki/Contradiction "Contradiction"
[28]: https://en.wikipedia.org/wiki/False_(logic) "False (logic)"
[29]: https://en.wikipedia.org/wiki/File:Venn0000.svg
[30]: https://en.wikipedia.org/wiki/Tautology_(logic) "Tautology (logic)"
[31]: https://en.wikipedia.org/wiki/True_(logic) "True (logic)"
[32]: https://en.wikipedia.org/wiki/File:Venn1111.svg
[33]: https://en.wikipedia.org/wiki/Proposition "Proposition"
[34]: https://en.wikipedia.org/wiki/File:Venn0101.svg
[35]: https://en.wikipedia.org/wiki/Negation "Negation"
[36]: https://en.wikipedia.org/wiki/File:Venn1010.svg
[37]: https://en.wikipedia.org/wiki/Proposition "Proposition"
[38]: https://en.wikipedia.org/wiki/File:Venn0011.svg
[39]: https://en.wikipedia.org/wiki/Negation "Negation"
[40]: https://en.wikipedia.org/wiki/File:Venn1100.svg
[41]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[42]: https://en.wikipedia.org/wiki/File:Venn0001.svg
[43]: https://en.wikipedia.org/wiki/Sheffer_stroke "Sheffer stroke"
[44]: https://en.wikipedia.org/wiki/File:Venn1110.svg
[45]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[46]: https://en.wikipedia.org/wiki/File:Venn0111.svg
[47]: https://en.wikipedia.org/wiki/Logical_NOR "Logical NOR"
[48]: https://en.wikipedia.org/wiki/File:Venn1000.svg
[49]: https://en.wikipedia.org/wiki/Material_nonimplication "Material nonimplication"
[50]: https://en.wikipedia.org/wiki/File:Venn0100.svg
[51]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[52]: https://en.wikipedia.org/wiki/File:Venn1011.svg
[53]: https://en.wikipedia.org/wiki/Converse_nonimplication "Converse nonimplication"
[54]: https://en.wikipedia.org/wiki/File:Venn0010.svg
[55]: https://en.wikipedia.org/wiki/Converse_implication "Converse implication"
[56]: https://en.wikipedia.org/wiki/File:Venn1101.svg
[57]: https://en.wikipedia.org/wiki/Exclusive_or "Exclusive or"
[58]: https://en.wikipedia.org/wiki/File:Venn0110.svg
[59]: https://en.wikipedia.org/wiki/Logical_biconditional "Logical biconditional"
[60]: https://en.wikipedia.org/wiki/File:Venn1001.svg
[61]: https://en.wikipedia.org/w/index.php?title=Truth_function&action=edit&section=3 "Edit section: Functional completeness"
[62]: https://en.wikipedia.org/wiki/Composition_of_functions "Composition of functions"
[63]: https://en.wikipedia.org/wiki/Functional_completeness "Functional completeness"
[64]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[65]: https://en.wikipedia.org/wiki/Logical_equivalence "Logical equivalence"
[66]: https://en.wikipedia.org/wiki/Logical_system "Logical system"
[67]: https://en.wikipedia.org/wiki/Minimal_element "Minimal element"
[68]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[69]: https://en.wikipedia.org/wiki/Truth_function#cite_note-Wernick-5
[70]: https://en.wikipedia.org/w/index.php?title=Truth_function&action=edit&section=4 "Edit section: Algebraic properties"
[71]: https://en.wikipedia.org/wiki/Functional_completeness "Functional completeness"
[72]: https://en.wikipedia.org/wiki/Monotonic "Monotonic"
[73]: https://en.wikipedia.org/wiki/Affine_transformation "Affine transformation"
[74]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[75]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[76]: https://en.wikipedia.org/wiki/Validity_(logic) "Validity (logic)"
[77]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[78]: https://en.wikipedia.org/wiki/Validity_(logic) "Validity (logic)"
[79]: https://en.wikipedia.org/w/index.php?title=Truth_function&action=edit&section=5 "Edit section: Arity"
[80]: https://en.wikipedia.org/wiki/Unary_operation "Unary operation"
[81]: https://en.wikipedia.org/wiki/Binary_operation "Binary operation"
[82]: https://en.wikipedia.org/wiki/Ternary_operation "Ternary operation"
[83]: https://en.wikipedia.org/wiki/Unary_operation "Unary operation"
[84]: https://en.wikipedia.org/wiki/Binary_operation "Binary operation"
[85]: https://en.wikipedia.org/wiki/Ternary_operation "Ternary operation"
[86]: https://en.wikipedia.org/wiki/Inclusion%E2%80%93exclusion_principle "Inclusion–exclusion principle"
[87]: https://en.wikipedia.org/wiki/Negation "Negation"
[88]: https://en.wikipedia.org/wiki/Unary_operation "Unary operation"
[89]: https://en.wikipedia.org/wiki/Binary_operation "Binary operation"
[90]: https://en.wikipedia.org/wiki/Partition_of_a_set "Partition of a set"
[91]: https://en.wikipedia.org/wiki/Arity "Arity"
[92]: https://en.wikipedia.org/w/index.php?title=Truth_function&action=edit&section=6 "Edit section: Principle of compositionality"
[93]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[94]: https://en.wikipedia.org/wiki/Principle_of_compositionality "Principle of compositionality"
[95]: https://en.wikipedia.org/w/index.php?title=Truth_function&action=edit&section=7 "Edit section: Computer science"
[96]: https://en.wikipedia.org/wiki/Logic_gate "Logic gate"
[97]: https://en.wikipedia.org/wiki/Digital_circuit "Digital circuit"
[98]: https://en.wikipedia.org/wiki/DRAM "DRAM"
[99]: https://en.wikipedia.org/wiki/Logical_nand "Logical nand"
[100]: https://en.wikipedia.org/wiki/Logical_nor "Logical nor"
[101]: https://en.wikipedia.org/wiki/Negation "Negation"
[102]: https://en.wikipedia.org/wiki/Logic_gate "Logic gate"
[103]: https://en.wikipedia.org/wiki/Turing_equivalence_(theory_of_computation) "Turing equivalence (theory of computation)"
[104]: https://en.wikipedia.org/wiki/Apollo_guidance_computer "Apollo guidance computer"
[105]: https://en.wikipedia.org/w/index.php?title=Truth_function&action=edit&section=8 "Edit section: See also"
[106]: https://en.wikipedia.org/w/index.php?title=Truth_function&action=edit&section=9 "Edit section: Notes"
[107]: https://en.wikipedia.org/w/index.php?title=Truth_function&action=edit&section=10 "Edit section: References"
[108]: https://en.wikipedia.org/wiki/PlanetMath "PlanetMath"
[109]: https://en.wikipedia.org/wiki/Wikipedia:CC-BY-SA "Wikipedia:CC-BY-SA"
[110]: https://en.wikipedia.org/w/index.php?title=Truth_function&action=edit&section=11 "Edit section: Further reading"
[111]: https://en.wikipedia.org/wiki/J%C3%B3zef_Maria_Boche%C5%84ski "Józef Maria Bocheński"
[112]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
