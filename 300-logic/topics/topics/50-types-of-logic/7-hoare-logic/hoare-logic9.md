---
downloaded:       2021-12-18
page-url:         https://en.wikipedia.org/wiki/Hoare_logic
page-title:       Hoare logic - Wikipedia
article-title:    Hoare logic - Wikipedia
---
# Hoare logic - Wikipedia

Hoare logic (also known as Floyd–Hoare logic or Hoare rules) is a formal system with a set of logical rules for reasoning rigorously about the correctness of computer programs. It was proposed in 1969 by the British computer scientist and logician Tony Hoare, and subsequently refined by Hoare and other researchers.[1] The original ideas were seeded by the work of Robert W. Floyd, who had published a similar system[2] for flowcharts.
__Hoare logic__ (also known as __Floyd–Hoare logic__ or __Hoare rules__) is a [formal system][1] with a set of logical rules for reasoning rigorously about the [correctness of computer programs][2]. It was proposed in 1969 by the British computer scientist and [logician][3] [Tony Hoare][4], and subsequently refined by Hoare and other researchers.[\[1\]][5] The original ideas were seeded by the work of [Robert W. Floyd][6], who had published a similar system[\[2\]][7] for [flowcharts][8].

## Hoare triple\[[edit][9]\]

The central feature of __Hoare logic__ is the __Hoare triple__. A triple describes how the execution of a piece of code changes the state of the computation. A Hoare triple is of the form

![{\displaystyle \{P\}C\{Q\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3da5d7e7b85eecd5053c056fe61fe29ad1f00b07)

where ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) and ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) are *[assertions][10]* and ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029) is a *command*.[\[note 1\]][11] ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) is named the *[precondition][12]* and ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) the *[postcondition][13]*: when the precondition is met, executing the command establishes the postcondition. Assertions are formulae in [predicate logic][14].

Hoare logic provides [axioms][15] and [inference rules][16] for all the constructs of a simple [imperative programming language][17]. In addition to the rules for the simple language in Hoare's original paper, rules for other language constructs have been developed since then by Hoare and many other researchers. There are rules for [concurrency][18], [procedures][19], [jumps][20], and [pointers][21].

## Partial and total correctness\[[edit][22]\]

Using standard Hoare logic, only [partial correctness][23] can be proven, while termination needs to be proved separately. Thus the intuitive reading of a Hoare triple is: Whenever ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) holds of the state before the execution of ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029), then ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) will hold afterwards, or ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029) does not terminate. In the latter case, there is no "after", so ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) can be any statement at all. Indeed, one can choose ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) to be false to express that ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029) does not terminate.

[Total correctness][24] can also be proven with an extended version of the While rule.[\[3\]][25]

In his 1969 paper, Hoare used a narrower notion of termination which also entailed absence of any run-time errors: "Failure to terminate may be due to an infinite loop; or it may be due to violation of an implementation-defined limit, for example, the range of numeric operands, the size of storage, or an operating system time limit."[\[4\]][26]

## Rules\[[edit][27]\]

### Empty statement axiom schema\[[edit][28]\]

The [empty statement][29] rule asserts that the skip statement does not change the state of the program, thus whatever holds true before skip also holds true afterwards.[\[note 2\]][30]

![{\displaystyle {\dfrac {}{\{P\}{\texttt {skip}}\{P\}}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d7e402d6886f7271c973ed52c8ef948638d89eb5)

### Assignment axiom schema\[[edit][31]\]

The assignment axiom states that, after the assignment, any predicate that was previously true for the right-hand side of the assignment now holds for the variable. Formally, let P be an assertion in which the variable x is [free][32]. Then:

![{\displaystyle {\dfrac {}{\{P[E/x]\}x:=E\{P\}}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/16ac1d07161fe9219a6e72a122f9f915a519daba)

where ![{\displaystyle P[E/x]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9d576149efe7352c851830716d13f5fb3ac90c70) denotes the assertion P in which each [free occurrence][33] of x has been [replaced][34] by the expression E.

The assignment axiom scheme means that the truth of ![{\displaystyle P[E/x]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9d576149efe7352c851830716d13f5fb3ac90c70) is equivalent to the after-assignment truth of P. Thus were ![{\displaystyle P[E/x]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9d576149efe7352c851830716d13f5fb3ac90c70) true prior to the assignment, by the assignment axiom, then P would be true subsequent to which. Conversely, were ![{\displaystyle P[E/x]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9d576149efe7352c851830716d13f5fb3ac90c70) false (i.e. ![{\displaystyle \neg P[E/x]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/677825f33140e3b5c1c8af679e7573f8ea501511) true) prior to the assignment statement, P must then be false afterwards.

Examples of valid triples include:

All preconditions that are not modified by the expression can be carried over to the postcondition. In the first example, assigning ![{\displaystyle y:=x+1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bf6b3932244420a1f918ded4a02d2889782fec66) does not change the fact that ![{\displaystyle x+1=43}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0cb5aeba23e8e36546e0d7d6b300318be8226c16), so both statements may appear in the postcondition. Formally, this result is obtained by applying the axiom schema with P being (![{\displaystyle y=43}](https://wikimedia.org/api/rest_v1/media/math/render/svg/669259b7fc4b896d56d77c259edc5cc75249bf86) and ![{\displaystyle x+1=43}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0cb5aeba23e8e36546e0d7d6b300318be8226c16)), which yields ![{\displaystyle P[(x+1)/y]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1d535a919c1f3a24999d463cd922eb33ec5850b8) being (![{\displaystyle x+1=43}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0cb5aeba23e8e36546e0d7d6b300318be8226c16) and ![{\displaystyle x+1=43}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0cb5aeba23e8e36546e0d7d6b300318be8226c16)), which can in turn be simplified to the given precondition ![{\displaystyle x+1=43}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0cb5aeba23e8e36546e0d7d6b300318be8226c16).

The assignment axiom scheme is equivalent to saying that to find the precondition, first take the post-condition and replace all occurrences of the left-hand side of the assignment with the right-hand side of the assignment. Be careful not to try to do this backwards by following this *incorrect* way of thinking: ![{\displaystyle \{P\}x:=E\{P[E/x]\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/793bb14ba4be05f308c66030fc7f9ba08058996c); this rule leads to nonsensical examples like:

![{\displaystyle \{x=5\}x:=3\{3=5\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/beec4b3c6a5a5436d49e1d762e8c3cb966dfb9b1)

Another *incorrect* rule looking tempting at first glance is ![{\displaystyle \{P\}x:=E\{P\wedge x=E\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/df2c2164b2a35b122cf77049e12b6eed95e175f5); it leads to nonsensical examples like:

![{\displaystyle \{x=5\}x:=x+1\{x=5\wedge x=x+1\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/aa6520b8e57387c1d532a226f5c949b3e053fcd5)

While a given postcondition P uniquely determines the precondition ![{\displaystyle P[E/x]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9d576149efe7352c851830716d13f5fb3ac90c70), the converse is not true. For example:

are valid instances of the assignment axiom scheme.

The assignment axiom proposed by Hoare *does not apply* when more than one name may refer to the same stored value. For example,

![{\displaystyle \{y=3\}x:=2\{y=3\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/033c11ea4cab783d5e6947eb7646a9dd82b5a7df)

is wrong if x and y refer to the same variable ([aliasing][35]), although it is a proper instance of the assignment axiom scheme (with both ![{\displaystyle \{P\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/20c57dd41f0955f28302a5a0de67b8d9d1b532c7) and ![{\displaystyle \{P[2/x]\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bee04bfbe9f86bd8c4fb4256c4c552a3b5a19d8f) being ![{\displaystyle \{y=3\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2a9699fcedd315ae84cea324567d8e9a14d4dee3)).

### Rule of composition\[[edit][36]\]

Verifying swap-code  
without auxiliary variables

The three statements below (line 2, 4, 6) exchange the values of the variables a and b, without needing an auxiliary variable. In the verification proof, the initial value of a and b is denoted by the constant A and B, respectively. The proof is best read backwards, starting from line 7; for example, line 5 is obtained from line 7 by replacing a (target expression in line 6) by ![a-b](https://wikimedia.org/api/rest_v1/media/math/render/svg/1b80866c2bf2f1bc1f2e4c97e7937f5663150ea6) (source expression in line 6). Some arithmetical simplifications are used tacitly, viz. ![{\displaystyle a-(a-b)=b}](https://wikimedia.org/api/rest_v1/media/math/render/svg/344dba0970a0b133d4b44427e3ad43128833e562) (line 5→3), and ![{\displaystyle a+b-b=a}](https://wikimedia.org/api/rest_v1/media/math/render/svg/731b3ef2f360fa6218a29a20d11253fcc6ae6430) (line 3→1). 

__Nr__

__Code__

__Assertions__

__1:__      

![{\displaystyle \{a=A\wedge b=B\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d03c776afb231483b196d70e12410aa82537b57f)

__2:__

![{\displaystyle a:=a+b;}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e22c1c63bba569046062887b8f131144600712b3)      

__3:__

![{\displaystyle \{a-b=A\wedge b=B\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6d8976b44cb733819fb8cc5eaffc09c7002e26e5)

__4:__

![{\displaystyle b:=a-b;}](https://wikimedia.org/api/rest_v1/media/math/render/svg/537e24403303509930745d0c6846053f02f46928)

__5:__

![{\displaystyle \{b=A\wedge a-b=B\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0cdc14e24daf48d66f6074ee126fe06a72249b99)

__6:__

![{\displaystyle a:=a-b}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8eb180567e21ce534b28b2aed28befd6fb746bac)

__7:__

![{\displaystyle \{b=A\wedge a=B\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fb551d639d1f15b65675a6f2a80465d1301d4512)

Hoare's rule of composition applies to sequentially executed programs S and T, where S executes prior to T and is written ![{\displaystyle S;T}](https://wikimedia.org/api/rest_v1/media/math/render/svg/dc3a293f3f424bd61d2c8ef653f4a6625117d543) (Q is called the *midcondition*):[\[5\]][37]

![{\displaystyle {\dfrac {\{P\}S\{Q\}\quad ,\quad \{Q\}T\{R\}}{\{P\}S;T\{R\}}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cff270362eecbdfe9d588ac60d6e7d9f11a49379)

For example, consider the following two instances of the assignment axiom:

![{\displaystyle \{x+1=43\}y:=x+1\{y=43\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f36260c44d7a6148c48c7c2cd44c6d1845b93507)

and

![{\displaystyle \{y=43\}z:=y\{z=43\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e5db91e0ad1c17c6ee777fe5d11056150324185a)

By the sequencing rule, one concludes:

![{\displaystyle \{x+1=43\}y:=x+1;z:=y\{z=43\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0399eee73d56ef7148bc346051a301e366fa7fd4)

Another example is shown in the right box.

### Conditional rule\[[edit][38]\]

![{\displaystyle {\dfrac {\{B\wedge P\}S\{Q\}\quad ,\quad \{\neg B\wedge P\}T\{Q\}}{\{P\}{\texttt {if}}\ B\ {\texttt {then}}\ S\ {\texttt {else}}\ T\ {\texttt {endif}}\{Q\}}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7a1c77107b3dd76a5a5b78efb2cb498413475d1a)

The conditional rule states that a postcondition Q common to then and else part is also a postcondition of the whole if...endif statement. In the then and the else part, the unnegated and negated condition B can be added to the precondition P, respectively. The condition, B, must not have side effects. An example is given in the [next section][39].

This rule was not contained in Hoare's original publication.[\[1\]][40] However, since a statement

![{\displaystyle {\texttt {if}}\ B\ {\texttt {then}}\ S\ {\texttt {else}}\ T\ {\texttt {endif}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/46efc4ded195ff3aed55cac982f0ac82c9e11ac8)

has the same effect as a one-time loop construct

![{\displaystyle {\texttt {bool}}\ b:={\texttt {true}};{\texttt {while}}\ B\wedge b\ {\texttt {do}}\ S;b:={\texttt {false}}\ {\texttt {done}};b:={\texttt {true}};{\texttt {while}}\ \neg B\wedge b\ {\texttt {do}}\ T;b:={\texttt {false}}\ {\texttt {done}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2e299fce222d2162b3ab884e0e348142db55face)

the conditional rule can be derived from the other Hoare rules. In a similar way, rules for other derived program constructs, like for loop, do...until loop, switch, break, continue can be reduced by [program transformation][41] to the rules from Hoare's original paper.

### Consequence rule\[[edit][42]\]

![{\displaystyle {\dfrac {P_{1}\rightarrow P_{2}\quad ,\quad \{P_{2}\}S\{Q_{2}\}\quad ,\quad Q_{2}\rightarrow Q_{1}}{\{P_{1}\}S\{Q_{1}\}}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9063db48adbe5ccbf4de910772c90526cc5ebc19)

This rule allows to strengthen the precondition ![P_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/87858df7457aa93caaef5a316db87a7240cc8c29) and/or to weaken the postcondition ![Q_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b86e8bff64d5e62fc8f45a35875e78bc9bef74a9). It is used e.g. to achieve literally identical postconditions for the then and the else part.

For example, a proof of

![{\displaystyle \{0\leq x\leq 15\}{\texttt {if}}\ x<15\ {\texttt {then}}\ x:=x+1\ {\texttt {else}}\ x:=0\ {\texttt {endif}}\{0\leq x\leq 15\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/080232d7d57a65af8eeb88b6c9848d069b72c18f)

needs to apply the conditional rule, which in turn requires to prove

![{\displaystyle \{0\leq x\leq 15\wedge x<15\}x:=x+1\{0\leq x\leq 15\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b428a2a555f09fa00a7215c9df9e3150db3d1895),   or simplified

![{\displaystyle \{0\leq x<15\}x:=x+1\{0\leq x\leq 15\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6495310d7f1a069fac55a9fe9b98aaa783162cc6)

for the then part, and

![{\displaystyle \{0\leq x\leq 15\wedge x\geq 15\}x:=0\{0\leq x\leq 15\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e7a9ab42734a22a864899dd5942736a34c9b8507),   or simplified

![{\displaystyle \{x=15\}x:=0\{0\leq x\leq 15\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8606d0567e4b0594fd1e5bd8a587c8c928e92897)

for the else part.

However, the assignment rule for the then part requires to choose P as ![{\displaystyle 0\leq x\leq 15}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5b90e30a0b0d272f51e6f8b6a11f03336d091f24); rule application hence yields

![{\displaystyle \{0\leq x+1\leq 15\}x:=x+1\{0\leq x\leq 15\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1fc572dc83d205df42d49f0b869e9a9f116e1c0c),   which is logically equivalent to

![{\displaystyle \{-1\leq x<15\}x:=x+1\{0\leq x\leq 15\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/35aefd42aba75a3faf88ad191fabedc2f8c78335).

The consequence rule is needed to strengthen the precondition ![{\displaystyle \{-1\leq x<15\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/02d498fd20ad87d3cc0eb71a29ff843987b2e16e) obtained from the assignment rule to ![{\displaystyle \{0\leq x<15\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d2627621d5f8a0c152cab46fdaa184620cb43ce6) required for the conditional rule.

Similarly, for the else part, the assignment rule yields

![{\displaystyle \{0\leq 0\leq 15\}x:=0\{0\leq x\leq 15\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/50f7b0e604265d89299d16a431f2340ed1d4535d),   or equivalently

![{\displaystyle \{{\texttt {true}}\}x:=0\{0\leq x\leq 15\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/20f88581c9691cb803b0b83aa0f8d842ed663142),

hence the consequence rule has to be applied with ![P_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/398f438d75434e6fbf48dc232c1ad7228a738568) and ![P_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/87858df7457aa93caaef5a316db87a7240cc8c29) being ![{\displaystyle \{x=15\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b38cee6a594ad04e4820a90f55f60486e5162411) and ![{\displaystyle \{{\texttt {true}}\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8c9f09a5cc1cc6c89cfecca997569806ee22c4de), respectively, to strengthen again the precondition. Informally, the effect of the consequence rule is to "forget" that ![{\displaystyle \{x=15\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b38cee6a594ad04e4820a90f55f60486e5162411) is known at the entry of the else part, since the assignment rule used for the else part doesn't need that information.

### While rule\[[edit][43]\]

![{\displaystyle {\dfrac {\{P\wedge B\}S\{P\}}{\{P\}{\texttt {while}}\ B\ {\texttt {do}}\ S\ {\texttt {done}}\{\neg B\wedge P\}}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6cf78b0717fbed4d01126c80582756eac80e1b48)

Here P is the [loop invariant][44], which is to be preserved by the loop body S. After the loop is finished, this invariant P still holds, and moreover ![\neg B](https://wikimedia.org/api/rest_v1/media/math/render/svg/a8cf55d88686624cd054232a7cf1a6b7e6e84210) must have caused the loop to end. As in the conditional rule, B must not have side effects.

For example, a proof of

![{\displaystyle \{x\leq 10\}{\texttt {while}}\ x<10\ {\texttt {do}}\ x:=x+1\ {\texttt {done}}\{\neg x<10\wedge x\leq 10\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/98c8440c3fd7c8810627be10f220825382b15161)

by the while rule requires to prove

![{\displaystyle \{x\leq 10\wedge x<10\}x:=x+1\{x\leq 10\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/950a576ce1158bdcd5639e52e22ea450618a81eb),   or simplified

![{\displaystyle \{x<10\}x:=x+1\{x\leq 10\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b1e2cce9893d9ec3a015d6dc548b038def72a753),

which is easily obtained by the assignment rule. Finally, the postcondition ![{\displaystyle \{\neg x<10\wedge x\leq 10\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a241bca593bfdf3717b65a5842b7d2c402f3a538) can be simplified to ![{\displaystyle \{x=10\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4c71b4ea2c6e5514cc850988782d8b912d1001db).

For another example, the while rule can be used to formally verify the following strange program to compute the exact square root x of an arbitrary number a—even if x is an integer variable and a is not a square number:

![{\displaystyle \{{\texttt {true}}\}{\texttt {while}}\ x\cdot x\neq a\ {\texttt {do}}\ {\texttt {skip}}\ {\texttt {done}}\{x\cdot x=a\wedge {\texttt {true}}\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/78563a685a2eeb872fafadc5a89991a4c5da1583)

After applying the while rule with P being true, it remains to prove

![{\displaystyle \{{\texttt {true}}\wedge x\cdot x\neq a\}{\texttt {skip}}\{{\texttt {true}}\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/98a2e9b456584b3acf37b0d4256705abfe842186),

which follows from the skip rule and the consequence rule.

In fact, the strange program is *partially* correct: if it happened to terminate, it is certain that x must have contained (by chance) the value of a's square root. In all other cases, it will not terminate; therefore it is not *totally* correct.

### While rule for total correctness\[[edit][45]\]

If the [above ordinary while rule][46] is replaced by the following one, the Hoare calculus can also be used to prove [total correctness][47], i.e. termination[\[note 3\]][48] as well as partial correctness. Commonly, square brackets are used here instead of curly braces to indicate the different notion of program correctness.

![{\displaystyle {\dfrac {<\ {\text{is a well-founded ordering on the set}}\ D\quad ,\quad [P\wedge B\wedge t\in D\wedge t=z]S[P\wedge t\in D\wedge t<z]}{[P\wedge t\in D]{\texttt {while}}\ B\ {\texttt {do}}\ S\ {\texttt {done}}[\neg B\wedge P\wedge t\in D]}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/dff5385c94f3007450fc765612501f2366278f6d)

In this rule, in addition to maintaining the loop invariant, one also proves [termination][49] by way of an expression t, called the [loop variant][50], whose value strictly decreases with respect to a [well-founded relation][51] < on some domain set D during each iteration. Since < is well-founded, a strictly decreasing [chain][52] of members of D can have only finite length, so t cannot keep decreasing forever. (For example, the usual order < is well-founded on positive [integers][53] ![\mathbb {N} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/fdf9a96b565ea202d0f4322e9195613fb26a9bed), but neither on the integers ![\mathbb {Z} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/449494a083e0a1fda2b61c62b2f09b6bee4633dc) nor on [positive real numbers][54] ![\mathbb {R} ^{+}](https://wikimedia.org/api/rest_v1/media/math/render/svg/97dc5e850d079061c24290bac160c8d3b62ee139); all these sets are meant in the mathematical, not in the computing sense, they are all infinite in particular.)

Given the loop invariant P, the condition B must imply that t is not a [minimal element][55] of D, for otherwise the body S could not decrease t any further, i.e. the premise of the rule would be false. (This is one of various notations for total correctness.) [\[note 4\]][56]

Resuming the first example of the [previous section][57], for a total-correctness proof of

![{\displaystyle [x\leq 10]{\texttt {while}}\ x<10\ {\texttt {do}}\ x:=x+1\ {\texttt {done}}[\neg x<10\wedge x\leq 10]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/dffcd669b78df846600d40932e28a5b1531f5179)

the while rule for total correctness can be applied with e.g. D being the non-negative integers with the usual order, and the expression t being ![{\displaystyle 10-x}](https://wikimedia.org/api/rest_v1/media/math/render/svg/288d7b589aa8f1b76dc13eb52c099e615401f93c), which then in turn requires to prove

![{\displaystyle [x\leq 10\wedge x<10\wedge 10-x\geq 0\wedge 10-x=z]x:=x+1[x\leq 10\wedge 10-x\geq 0\wedge 10-x<z]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/567d76225110acf1a7ef11264132a900ea6dc76e)

Informally speaking, we have to prove that the distance ![{\displaystyle 10-x}](https://wikimedia.org/api/rest_v1/media/math/render/svg/288d7b589aa8f1b76dc13eb52c099e615401f93c) decreases in every loop cycle, while it always remains non-negative; this process can go on only for a finite number of cycles.

The previous proof goal can be simplified to

![{\displaystyle [x<10\wedge 10-x=z]x:=x+1[x\leq 10\wedge 10-x<z]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/52714e53239c1933bd33d17b833c97d25c8ed6f0),

which can be proven as follows:

![{\displaystyle [x+1\leq 10\wedge 10-x-1<z]x:=x+1[x\leq 10\wedge 10-x<z]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/acabea9ebc3457ee6b2a61327ec9b945cec9376f) is obtained by the assignment rule, and

![{\displaystyle [x+1\leq 10\wedge 10-x-1<z]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/09e8b051085c69ce4884d729a324a7ab007b4f9b) can be strengthened to ![{\displaystyle [x<10\wedge 10-x=z]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab1608be258c3c1494f79df957c95ec384cbc133) by the consequence rule.

For the second example of the [previous section][58], of course no expression t can be found that is decreased by the empty loop body, hence termination cannot be proved.

## See also\[[edit][59]\]

-   [Assertion (computing)][60]
-   [Communicating sequential processes][61]
-   [Design by contract][62]
-   [Denotational semantics][63]
-   [Dynamic logic][64]
-   [Edsger W. Dijkstra][65]
-   [Loop invariant][66]
-   [Predicate transformer semantics][67]
-   [Program verification][68]
-   [Refinement calculus][69]
-   [Separation logic][70]
-   [Sequent calculus][71]
-   [Static code analysis][72]

## Notes\[[edit][73]\]

## References\[[edit][74]\]

## Further reading\[[edit][75]\]

-   Robert D. Tennent. *[Specifying Software][76]* (a textbook that includes an introduction to Hoare logic, written in 2002) [ISBN][77] [0-521-00401-2][78]

## External links\[[edit][79]\]

-   [KeY-Hoare][80] is a semi-automatic verification system built on top of the [KeY][81] theorem prover. It features a Hoare calculus for a simple while language.
-   [j-Algo-modul Hoare calculus][82] — A visualisation of the Hoare calculus in the algorithm visualisation program j-Algo

[1]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[2]: https://en.wikipedia.org/wiki/Correctness_of_computer_programs "Correctness of computer programs"
[3]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[4]: https://en.wikipedia.org/wiki/Tony_Hoare "Tony Hoare"
[5]: https://en.wikipedia.org/wiki/Hoare_logic#cite_note-hoare-1
[6]: https://en.wikipedia.org/wiki/Robert_W._Floyd "Robert W. Floyd"
[7]: https://en.wikipedia.org/wiki/Hoare_logic#cite_note-2
[8]: https://en.wikipedia.org/wiki/Flowchart "Flowchart"
[9]: https://en.wikipedia.org/w/index.php?title=Hoare_logic&action=edit&section=1 "Edit section: Hoare triple"
[10]: https://en.wikipedia.org/wiki/Assertion_(computing) "Assertion (computing)"
[11]: https://en.wikipedia.org/wiki/Hoare_logic#cite_note-3
[12]: https://en.wikipedia.org/wiki/Precondition "Precondition"
[13]: https://en.wikipedia.org/wiki/Postcondition "Postcondition"
[14]: https://en.wikipedia.org/wiki/Predicate_logic "Predicate logic"
[15]: https://en.wikipedia.org/wiki/Axiom "Axiom"
[16]: https://en.wikipedia.org/wiki/Inference_rule "Inference rule"
[17]: https://en.wikipedia.org/wiki/Imperative_programming "Imperative programming"
[18]: https://en.wikipedia.org/wiki/Concurrency_(computer_science) "Concurrency (computer science)"
[19]: https://en.wikipedia.org/wiki/Procedure_(computer_science) "Procedure (computer science)"
[20]: https://en.wikipedia.org/wiki/Jump_(computer_science) "Jump (computer science)"
[21]: https://en.wikipedia.org/wiki/Pointer_(computer_programming) "Pointer (computer programming)"
[22]: https://en.wikipedia.org/w/index.php?title=Hoare_logic&action=edit&section=2 "Edit section: Partial and total correctness"
[23]: https://en.wikipedia.org/wiki/Partial_correctness "Partial correctness"
[24]: https://en.wikipedia.org/wiki/Total_correctness "Total correctness"
[25]: https://en.wikipedia.org/wiki/Hoare_logic#cite_note-Reynolds.2009-4
[26]: https://en.wikipedia.org/wiki/Hoare_logic#cite_note-5
[27]: https://en.wikipedia.org/w/index.php?title=Hoare_logic&action=edit&section=3 "Edit section: Rules"
[28]: https://en.wikipedia.org/w/index.php?title=Hoare_logic&action=edit&section=4 "Edit section: Empty statement axiom schema"
[29]: https://en.wikipedia.org/wiki/NOP_(code) "NOP (code)"
[30]: https://en.wikipedia.org/wiki/Hoare_logic#cite_note-6
[31]: https://en.wikipedia.org/w/index.php?title=Hoare_logic&action=edit&section=5 "Edit section: Assignment axiom schema"
[32]: https://en.wikipedia.org/wiki/Free_variables_and_bound_variables "Free variables and bound variables"
[33]: https://en.wikipedia.org/wiki/Free_variables_and_bound_variables "Free variables and bound variables"
[34]: https://en.wikipedia.org/wiki/Substitution_(logic) "Substitution (logic)"
[35]: https://en.wikipedia.org/wiki/Aliasing_(computing) "Aliasing (computing)"
[36]: https://en.wikipedia.org/w/index.php?title=Hoare_logic&action=edit&section=6 "Edit section: Rule of composition"
[37]: https://en.wikipedia.org/wiki/Hoare_logic#cite_note-7
[38]: https://en.wikipedia.org/w/index.php?title=Hoare_logic&action=edit&section=7 "Edit section: Conditional rule"
[39]: https://en.wikipedia.org/wiki/Hoare_logic#Consequence_rule
[40]: https://en.wikipedia.org/wiki/Hoare_logic#cite_note-hoare-1
[41]: https://en.wikipedia.org/wiki/Program_transformation "Program transformation"
[42]: https://en.wikipedia.org/w/index.php?title=Hoare_logic&action=edit&section=8 "Edit section: Consequence rule"
[43]: https://en.wikipedia.org/w/index.php?title=Hoare_logic&action=edit&section=9 "Edit section: While rule"
[44]: https://en.wikipedia.org/wiki/Loop_invariant "Loop invariant"
[45]: https://en.wikipedia.org/w/index.php?title=Hoare_logic&action=edit&section=10 "Edit section: While rule for total correctness"
[46]: https://en.wikipedia.org/wiki/Hoare_logic#While_rule
[47]: https://en.wikipedia.org/wiki/Total_correctness "Total correctness"
[48]: https://en.wikipedia.org/wiki/Hoare_logic#cite_note-8
[49]: https://en.wikipedia.org/wiki/Termination_proof "Termination proof"
[50]: https://en.wikipedia.org/wiki/Loop_variant "Loop variant"
[51]: https://en.wikipedia.org/wiki/Well-founded_relation "Well-founded relation"
[52]: https://en.wikipedia.org/wiki/Chain_(order_theory) "Chain (order theory)"
[53]: https://en.wikipedia.org/wiki/Integer "Integer"
[54]: https://en.wikipedia.org/wiki/Positive_real_numbers "Positive real numbers"
[55]: https://en.wikipedia.org/wiki/Minimal_element "Minimal element"
[56]: https://en.wikipedia.org/wiki/Hoare_logic#cite_note-9
[57]: https://en.wikipedia.org/wiki/Hoare_logic#While_rule
[58]: https://en.wikipedia.org/wiki/Hoare_logic#While_rule
[59]: https://en.wikipedia.org/w/index.php?title=Hoare_logic&action=edit&section=11 "Edit section: See also"
[60]: https://en.wikipedia.org/wiki/Assertion_(computing) "Assertion (computing)"
[61]: https://en.wikipedia.org/wiki/Communicating_sequential_processes "Communicating sequential processes"
[62]: https://en.wikipedia.org/wiki/Design_by_contract "Design by contract"
[63]: https://en.wikipedia.org/wiki/Denotational_semantics "Denotational semantics"
[64]: https://en.wikipedia.org/wiki/Dynamic_logic_(modal_logic) "Dynamic logic (modal logic)"
[65]: https://en.wikipedia.org/wiki/Edsger_W._Dijkstra "Edsger W. Dijkstra"
[66]: https://en.wikipedia.org/wiki/Loop_invariant "Loop invariant"
[67]: https://en.wikipedia.org/wiki/Predicate_transformer_semantics "Predicate transformer semantics"
[68]: https://en.wikipedia.org/wiki/Program_verification "Program verification"
[69]: https://en.wikipedia.org/wiki/Refinement_calculus "Refinement calculus"
[70]: https://en.wikipedia.org/wiki/Separation_logic "Separation logic"
[71]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[72]: https://en.wikipedia.org/wiki/Static_code_analysis "Static code analysis"
[73]: https://en.wikipedia.org/w/index.php?title=Hoare_logic&action=edit&section=12 "Edit section: Notes"
[74]: https://en.wikipedia.org/w/index.php?title=Hoare_logic&action=edit&section=13 "Edit section: References"
[75]: https://en.wikipedia.org/w/index.php?title=Hoare_logic&action=edit&section=14 "Edit section: Further reading"
[76]: http://www.cs.queensu.ca/home/specsoft/
[77]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[78]: https://en.wikipedia.org/wiki/Special:BookSources/0-521-00401-2 "Special:BookSources/0-521-00401-2"
[79]: https://en.wikipedia.org/w/index.php?title=Hoare_logic&action=edit&section=15 "Edit section: External links"
[80]: https://web.archive.org/web/20071117054808/http://www.key-project.org/download/hoare/
[81]: https://en.wikipedia.org/wiki/KeY "KeY"
[82]: http://j-algo.binaervarianz.de/index.php?language=en
