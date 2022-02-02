---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/First-order_logic
page-title:       First-order logic - Wikipedia
article-title:    First-order logic - Wikipedia
---
# First-order logic - Wikipedia

"Predicate logic" redirects here. For logics admitting predicate or function variables, see Higher-order logic.
"Predicate logic" redirects here. For logics admitting predicate or function variables, see [Higher-order logic][1].

__First-order logic__—also known as __predicate logic__, __quantificational logic__, and __first-order predicate calculus__—is a collection of [formal systems][2] used in [mathematics][3], [philosophy][4], [linguistics][5], and [computer science][6]. First-order logic uses [quantified variables][7] over non-logical objects, and allows the use of sentences that contain variables, so that rather than propositions such as "Socrates is a man", one can have expressions in the form "there exists x such that x is Socrates and x is a man", where "there exists*"* is a quantifier, while *x* is a variable.[\[1\]][8] This distinguishes it from [propositional logic][9], which does not use quantifiers or [relations][10];[\[2\]][11] in this sense, propositional logic is the foundation of first-order logic.

A theory about a topic is usually a first-order logic together with a specified [domain of discourse][12] (over which the quantified variables range), finitely many functions from that domain to itself, finitely many [predicates][13] defined on that domain, and a set of axioms believed to hold about them. Sometimes, "theory" is understood in a more formal sense, which is just a set of sentences in first-order logic.

The adjective "first-order" distinguishes first-order logic from [higher-order logic][14], in which there are predicates having predicates or functions as arguments, or in which predicate quantifiers or function quantifiers or both are permitted.[\[3\]][15]: 56  In first-order theories, predicates are often associated with sets. In interpreted higher-order theories, predicates may be interpreted as sets of sets.

There are many [deductive systems][16] for first-order logic which are both [sound][17] (i.e., all provable statements are true in all models) and [complete][18] (i.e. all statements which are true in all models are provable). Although the [logical consequence][19] relation is only [semidecidable][20], much progress has been made in [automated theorem proving][21] in first-order logic. First-order logic also satisfies several [metalogical][22] theorems that make it amenable to analysis in [proof theory][23], such as the [Löwenheim–Skolem theorem][24] and the [compactness theorem][25].

First-order logic is the standard for the formalization of mathematics into [axioms][26], and is studied in the [foundations of mathematics][27]. [Peano arithmetic][28] and [Zermelo–Fraenkel set theory][29] are axiomatizations of [number theory][30] and [set theory][31], respectively, into first-order logic. No first-order theory, however, has the strength to uniquely describe a structure with an infinite domain, such as the [natural numbers][32] or the [real line][33]. Axiom systems that do fully describe these two structures (that is, [categorical][34] axiom systems) can be obtained in stronger logics such as [second-order logic][35].

The foundations of first-order logic were developed independently by [Gottlob Frege][36] and [Charles Sanders Peirce][37].[\[4\]][38] For a history of first-order logic and how it came to dominate formal logic, see José Ferreirós (2001).

## Introduction\[[edit][39]\]

While [propositional logic][40] deals with simple declarative propositions, first-order logic additionally covers [predicates][41] and [quantification][42].

A predicate takes an entity or entities in the [domain of discourse][43] as input while outputs are either [True][44] or [False][45]. Consider the two sentences "Socrates is a philosopher" and "Plato is a philosopher". In [propositional logic][46], these sentences are viewed as being unrelated, and might be denoted, for example, by variables such as *p* and *q*. The predicate "is a philosopher" occurs in both sentences, which have a common structure of "*a* is a philosopher". The variable *a* is instantiated as "Socrates" in the first sentence, and is instantiated as "Plato" in the second sentence. While first-order logic allows for the use of predicates, such as "is a philosopher" in this example, propositional logic does not.[\[5\]][47]

Relationships between predicates can be stated using [logical connectives][48]. Consider, for example, the first-order formula "if *a* is a philosopher, then *a* is a scholar". This formula is a [conditional][49] statement with "*a* is a philosopher" as its hypothesis, and "*a* is a scholar" as its conclusion. The truth of this formula depends on which object is denoted by *a*, and on the interpretations of the predicates "is a philosopher" and "is a scholar".

Quantifiers can be applied to variables in a formula. The variable *a* in the previous formula can be universally quantified, for instance, with the first-order sentence "For every *a*, if *a* is a philosopher, then *a* is a scholar". The [universal quantifier][50] "for every" in this sentence expresses the idea that the claim "if *a* is a philosopher, then *a* is a scholar" holds for *all* choices of *a*.

The *[negation][51]* of the sentence "For every *a*, if *a* is a philosopher, then *a* is a scholar" is logically equivalent to the sentence "There exists *a* such that *a* is a philosopher and *a* is not a scholar". The [existential quantifier][52] "there exists" expresses the idea that the claim "*a* is a philosopher and *a* is not a scholar" holds for *some* choice of *a*.

The predicates "is a philosopher" and "is a scholar" each take a single variable. In general, predicates can take several variables. In the first-order sentence "Socrates is the teacher of Plato", the predicate "is the teacher of" takes two variables.

An interpretation (or model) of a first-order formula specifies what each predicate means, and the entities that can instantiate the variables. These entities form the [domain of discourse][53] or universe, which is usually required to be a nonempty set. For example, in an interpretation with the domain of discourse consisting of all human beings and the predicate "is a philosopher" understood as "was the author of the *[Republic][54]*", the sentence "There exists *a* such that *a* is a philosopher" is seen as being true, as witnessed by Plato.

## Syntax\[[edit][55]\]

There are two key parts of first-order logic. The [syntax][56] determines which finite sequences of symbols are well-formed expressions in first-order logic, while the [semantics][57] determines the meanings behind these expressions.

### Alphabet\[[edit][58]\]

Unlike natural languages, such as English, the language of first-order logic is completely formal, so that it can be mechanically determined whether a given expression is well formed. There are two key types of well-formed expressions: __terms__, which intuitively represent objects, and __formulas__, which intuitively express predicates that can be true or false. The terms and formulas of first-order logic are strings of __symbols__, where all the symbols together form the __alphabet__ of the language. As with all [formal languages][59], the nature of the symbols themselves is outside the scope of formal logic; they are often regarded simply as letters and punctuation symbols.

It is common to divide the symbols of the alphabet into __logical symbols__, which always have the same meaning, and __non-logical symbols__, whose meaning varies by interpretation. For example, the logical symbol ![\land ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d6823e5a222eb3ca49672818ac3d13ec607052c4) always represents "and"; it is never interpreted as "or", which is represented by the logical symbol ![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a). On the other hand, a non-logical predicate symbol such as Phil(*x*) could be interpreted to mean "*x* is a philosopher", "*x* is a man named Philip", or any other unary predicate depending on the interpretation at hand.

#### Logical symbols\[[edit][60]\]

There are several logical symbols in the alphabet, which vary by author but usually include:[\[6\]][61]

-   The [quantifier][62] symbols: [∀][63] for universal quantification, and [∃][64] for existential quantification
-   The [logical connectives][65]: ∧ for [conjunction][66], ∨ for [disjunction][67], → for [implication][68], ↔ for [biconditional][69], ¬ for negation. Occasionally other logical connective symbols are included. Some authors[\[7\]][70] use C*pq*, instead of →, and E*pq*, instead of ↔, especially in contexts where → is used for other purposes. Moreover, the horseshoe ⊃ may replace →; the triple-bar ≡ may replace ↔; a tilde (~), N*p*, or F*p*, may replace ¬; a double bar ![\|](https://wikimedia.org/api/rest_v1/media/math/render/svg/e255cbbb457d7ea0755f9ef09aeaf29995e5d980), ![+](https://wikimedia.org/api/rest_v1/media/math/render/svg/fe6ef363cd19902d1a7a71fb1c8b21e8ede52406) or A*pq* may replace ∨; and ampersand &, K*pq*, or the middle dot, ⋅, may replace ∧, especially if these symbols are not available for technical reasons. (The aforementioned symbols C*pq*, E*pq*, N*p*, A*pq*, and K*pq* are used in [Polish notation][71].)
-   Parentheses, brackets, and other punctuation symbols. The choice of such symbols varies depending on context.
-   An infinite set of __variables__, often denoted by lowercase letters at the end of the alphabet *x*, *y*, *z*, ... . Subscripts are often used to distinguish variables: *x*0, *x*1, *x*2, ... .
-   An __equality symbol__ (sometimes, __identity symbol__) \= (see [§ Equality and its axioms][72] below).

Not all of these symbols are required–only one of the quantifiers, negation and conjunction, variables, brackets and equality suffice. There are numerous minor variations that may define additional logical symbols:

-   In some occasions, the truth constants T, V*pq*, or ⊤, for "true" and F, O*pq*, or ⊥, for "false" are included. Without any such logical operators of valence 0, these two constants can only be expressed using quantifiers.
-   In other occasions, additional logical connectives are included, such as the [Sheffer stroke][73], D*pq* (NAND), and [exclusive or][74], J*pq*.

#### Non-logical symbols\[[edit][75]\]

The [non-logical symbols][76] represent predicates (relations), functions and constants on the domain of discourse. It used to be standard practice to use a fixed, infinite set of non-logical symbols for all purposes. A more recent practice is to use different non-logical symbols according to the application one has in mind. Therefore, it has become necessary to name the set of all non-logical symbols used in a particular application. This choice is made via a __[signature][77]__.[\[8\]][78]

The traditional approach is to have only one, infinite, set of non-logical symbols (one signature) for all applications. Consequently, under the traditional approach there is only one language of first-order logic.[\[9\]][79] This approach is still common, especially in philosophically oriented books.

1.  For every integer *n* ≥ 0, there is a collection of [*n*\-__ary__][80], or *n*\-__place__, __[predicate symbols][81]__. Because they represent [relations][82] between *n* elements, they are also called __relation symbols__. For each arity *n*, we have an infinite supply of them:
    
    *P**n*0, *P**n*1, *P**n*2, *P**n*3, ...
    
2.  For every integer *n* ≥ 0, there are infinitely many *n*\-ary __function symbols__:
    
    *f n*0, *f n*1, *f n*2, *f n*3, ...
    

In contemporary mathematical logic, the signature varies by application. Typical signatures in mathematics are {1, ×} or just {×} for [groups][83], or {0, 1, +, ×, <} for [ordered fields][84]. There are no restrictions on the number of non-logical symbols. The signature can be [empty][85], finite, or infinite, even [uncountable][86]. Uncountable signatures occur for example in modern proofs of the [Löwenheim–Skolem theorem][87].

In this approach, every non-logical symbol is of one of the following types.

1.  A __predicate symbol__ (or __relation symbol__) with some __valence__ (or __arity__, number of arguments) greater than or equal to 0. These are often denoted by uppercase letters such as *P*, *Q* and *R*.
    -   Relations of valence 0 can be identified with [propositional variables][88]. For example, *P*, which can stand for any statement.
    -   For example, *P*(*x*) is a predicate variable of valence 1. One possible interpretation is "*x* is a man".
    -   *Q*(*x*,*y*) is a predicate variable of valence 2. Possible interpretations include "*x* is greater than *y*" and "*x* is the father of *y*".
2.  A __function symbol__, with some valence greater than or equal to 0. These are often denoted by lowercase [roman letters][89] such as *f*, *g* and *h*.
    -   Examples: *f*(*x*) may be interpreted as for "the father of *x*". In [arithmetic][90], it may stand for "-x". In [set theory][91], it may stand for "the [power set][92] of x". In arithmetic, *g*(*x*,*y*) may stand for "*x*+*y*". In set theory, it may stand for "the union of *x* and *y*".
    -   Function symbols of valence 0 are called __constant symbols__, and are often denoted by lowercase letters at the beginning of the alphabet such as *a*, *b* and *c*. The symbol *a* may stand for Socrates. In arithmetic, it may stand for 0. In set theory, such a constant may stand for the [empty set][93].

The traditional approach can be recovered in the modern approach, by simply specifying the "custom" signature to consist of the traditional sequences of non-logical symbols.

### Formation rules\[[edit][94]\]

The [formation rules][95] define the terms and formulas of first-order logic.[\[12\]][96] When terms and formulas are represented as strings of symbols, these rules can be used to write a [formal grammar][97] for terms and formulas. These rules are generally [context-free][98] (each production has a single symbol on the left side), except that the set of symbols may be allowed to be infinite and there may be many start symbols, for example the variables in the case of [terms][99].

#### Terms\[[edit][100]\]

The set of __[terms][101]__ is [inductively defined][102] by the following rules:

1.  __Variables.__ Any variable is a term.
2.  __Functions.__ Any expression *f*(*t*1,...,*t**n*) of *n* arguments (where each argument *t**i* is a term and *f* is a function symbol of valence *n*) is a term. In particular, symbols denoting individual constants are nullary function symbols, and thus are terms.

Only expressions which can be obtained by finitely many applications of rules 1 and 2 are terms. For example, no expression involving a predicate symbol is a term.

#### Formulas\[[edit][103]\]

The set of __[formulas][104]__ (also called __[well-formed formulas][105]__[\[13\]][106] or __WFFs__) is inductively defined by the following rules:

1.  __Predicate symbols.__ If *P* is an *n*\-ary predicate symbol and *t**1*, ..., *t**n* are terms then *P*(*t*1,...,*t*n) is a formula.
2.  __[Equality][107].__ If the equality symbol is considered part of logic, and *t**1* and *t*2 are terms, then *t*1 = *t*2 is a formula.
3.  __Negation.__ If ![\varphi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/33ee699558d09cf9d653f6351f9fda0b2f4aaa3e) is a formula, then ![{\displaystyle \lnot \varphi }](https://wikimedia.org/api/rest_v1/media/math/render/svg/a96766a23a9525c90f64bf05589c735b0d0e5c8d) is a formula.
4.  __Binary connectives.__ If ![\varphi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/33ee699558d09cf9d653f6351f9fda0b2f4aaa3e) and ![\psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/45e5789e5d9c8f7c79744f43ecaaf8ba42a8553a) are formulas, then (![\varphi \rightarrow \psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/724678bd1e82d05bae3d261b9160d514add0de3b)) is a formula. Similar rules apply to other binary logical connectives.
5.  __Quantifiers.__ If ![\varphi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/33ee699558d09cf9d653f6351f9fda0b2f4aaa3e) is a formula and *x* is a variable, then ![\forall x\varphi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/b0e1506f487c2cd18d185142472cd8166c5c9cad) (for all x, ![\varphi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/33ee699558d09cf9d653f6351f9fda0b2f4aaa3e) holds) and ![\exists x\varphi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/6791c38b7c45a74042b5ecfb30e4a96a1cc3ccd7) (there exists x such that ![\varphi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/33ee699558d09cf9d653f6351f9fda0b2f4aaa3e)) are formulas.

Only expressions which can be obtained by finitely many applications of rules 1–5 are formulas. The formulas obtained from the first two rules are said to be __[atomic formulas][108]__.

For example,

![\forall x\forall y(P(f(x))\rightarrow \neg (P(x)\rightarrow Q(f(y),x,z)))](https://wikimedia.org/api/rest_v1/media/math/render/svg/d4a6a4d764e71513445fdfdbd1b7e7678128222a)

is a formula, if *f* is a unary function symbol, *P* a unary predicate symbol, and Q a ternary predicate symbol. On the other hand, ![\forall x\,x\rightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/e5af2bc4ec7612b668ebc51e64bf53a1219d9da5) is not a formula, although it is a string of symbols from the alphabet.

The role of the parentheses in the definition is to ensure that any formula can only be obtained in one way—by following the inductive definition (i.e., there is a unique [parse tree][109] for each formula). This property is known as __unique readability__ of formulas. There are many conventions for where parentheses are used in formulas. For example, some authors use colons or full stops instead of parentheses, or change the places in which parentheses are inserted. Each author's particular definition must be accompanied by a proof of unique readability.

This definition of a formula does not support defining an if-then-else function `ite(c, a, b)`, where "c" is a condition expressed as a formula, that would return "a" if c is true, and "b" if it is false. This is because both predicates and functions can only accept terms as parameters, but the first parameter is a formula. Some languages built on first-order logic, such as SMT-LIB 2.0, add this.[\[14\]][110]

#### Notational conventions\[[edit][111]\]

For convenience, conventions have been developed about the precedence of the logical operators, to avoid the need to write parentheses in some cases. These rules are similar to the [order of operations][112] in arithmetic. A common convention is:

Moreover, extra punctuation not required by the definition may be inserted—to make formulas easier to read. Thus the formula

![{\displaystyle \lnot \forall xP(x)\to \exists x\lnot P(x)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9c385457409fd07d9d1c6a032c7d9a7064782ffe)

might be written as

![(\lnot [\forall xP(x)])\to \exists x[\lnot P(x)].](https://wikimedia.org/api/rest_v1/media/math/render/svg/7b34883b819ec8da58478c3cf001a557826a8bb9)

In some fields, it is common to use infix notation for binary relations and functions, instead of the prefix notation defined above. For example, in arithmetic, one typically writes "2 + 2 = 4" instead of "=(+(2,2),4)". It is common to regard formulas in infix notation as abbreviations for the corresponding formulas in prefix notation, cf. also [term structure vs. representation][113].

The definitions above use infix notation for binary connectives such as ![\to ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1daab843254cfcb23a643070cf93f3badc4fbbbd). A less common convention is [Polish notation][114], in which one writes ![\rightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/53e574cc3aa5b4bf5f3f5906caf121a378eef08b), ![\wedge ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1caa4004cb216ef2930bb12fe805a76870caed94) and so on in front of their arguments rather than between them. This convention is advantageous in that it allows all punctuation symbols to be discarded. As such, Polish notation is compact and elegant, but rarely used in practice because it is hard for humans to read. In Polish notation, the formula

![\forall x\forall y(P(f(x))\rightarrow \neg (P(x)\rightarrow Q(f(y),x,z)))](https://wikimedia.org/api/rest_v1/media/math/render/svg/d4a6a4d764e71513445fdfdbd1b7e7678128222a)

becomes "∀x∀y→Pfx¬→ PxQfyxz".

### Free and bound variables\[[edit][115]\]

In a formula, a variable may occur __free__ or __bound__ (or both). Intuitively, a variable occurrence is free in a formula if it is not quantified:[\[15\]][116] in ∀*y* *P*(*x*, *y*), the sole occurrence of variable *x* is free while that of *y* is bound. The free and bound variable occurrences in a formula are defined inductively as follows.

Atomic formulas

If *φ* is an atomic formula, then *x* occurs free in *φ* if and only if *x* occurs in *φ*. Moreover, there are no bound variables in any atomic formula.

Negation

*x* occurs free in ¬*φ* if and only if *x* occurs free in *φ*. *x* occurs bound in ¬*φ* if and only if *x* occurs bound in *φ*

Binary connectives

*x* occurs free in (*φ* → *ψ*) if and only if *x* occurs free in either *φ* or *ψ*. *x* occurs bound in (*φ* → *ψ*) if and only if *x* occurs bound in either *φ* or *ψ*. The same rule applies to any other binary connective in place of →.

Quantifiers

*x* occurs free in ∀*y* *φ*, if and only if x occurs free in *φ* and *x* is a different symbol from *y*. Also, *x* occurs bound in ∀*y* *φ*, if and only if *x* is *y* or *x* occurs bound in *φ*. The same rule holds with ∃ in place of ∀.

For example, in ∀*x* ∀*y* (*P*(*x*) → *Q*(*x*,*f*(*x*),*z*)), *x* and *y* occur only bound,[\[16\]][117] *z* occurs only free, and *w* is neither because it does not occur in the formula.

Free and bound variables of a formula need not be disjoint sets: in the formula *P*(*x*) → ∀*x* *Q*(*x*), the first occurrence of *x*, as argument of *P*, is free while the second one, as argument of *Q*, is bound.

A formula in first-order logic with no free variable occurrences is called a __first-order [sentence][118]__. These are the formulas that will have well-defined [truth values][119] under an interpretation. For example, whether a formula such as Phil(*x*) is true must depend on what *x* represents. But the sentence ∃*x* Phil(*x*) will be either true or false in a given interpretation.

### Example: ordered abelian groups\[[edit][120]\]

In mathematics, the language of ordered [abelian groups][121] has one constant symbol 0, one unary function symbol −, one binary function symbol +, and one binary relation symbol ≤. Then:

-   The expressions +(*x*, *y*) and +(*x*, +(*y*, −(*z*))) are __terms__. These are usually written as *x* + *y* and *x* + *y* − *z*.
-   The expressions +(*x*, *y*) = 0 and ≤(+(*x*, +(*y*, −(*z*))), +(*x*, *y*)) are __atomic formulas__. These are usually written as *x* + *y* = 0 and *x* + *y* − *z*  ≤  *x* + *y*.
-   The expression ![{\displaystyle (\forall x\forall y\,[\mathop {\leq } (\mathop {+} (x,y),z)\to \forall x\,\forall y\,\mathop {+} (x,y)=0)]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/540d5b5e22885c61946b05841d437c576e4c3b8c) is a __formula__, which is usually written as ![\forall x\forall y(x+y\leq z)\to \forall x\forall y(x+y=0).](https://wikimedia.org/api/rest_v1/media/math/render/svg/ba55c5bd2c832faa57b916b77ca092572e30a22c) This formula has one free variable, *z*.

The axioms for ordered abelian groups can be expressed as a set of sentences in the language. For example, the axiom stating that the group is commutative is usually written ![{\displaystyle (\forall x)(\forall y)[x+y=y+x].}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1649ba2cb0d9003b8558c4449aa8c137d6b4c1e6)

## Semantics\[[edit][122]\]

An [interpretation][123] of a first-order language assigns a denotation to each non-logical symbol in that language. It also determines a [domain of discourse][124] that specifies the range of the quantifiers. The result is that each term is assigned an object that it represents, each predicate is assigned a property of objects, and each sentence is assigned a truth value. In this way, an interpretation provides semantic meaning to the terms, the predicates, and formulas of the language. The study of the interpretations of formal languages is called [formal semantics][125]. What follows is a description of the standard or [Tarskian][126] semantics for first-order logic. (It is also possible to define [game semantics for first-order logic][127], but aside from requiring the [axiom of choice][128], game semantics agree with Tarskian semantics for first-order logic, so game semantics will not be elaborated herein.)

The domain of discourse *D* is a nonempty set of "objects" of some kind. Intuitively, a first-order formula is a statement about these objects; for example, ![\exists xP(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/d4bb6d8a3cf6275a71b7183604aa81e8ba7edb50) states the existence of an object *x* such that the predicate *P* is true where referred to it. The domain of discourse is the set of considered objects. For example, one can take ![D](https://wikimedia.org/api/rest_v1/media/math/render/svg/f34a0c600395e5d4345287e21fb26efd386990e6) to be the set of integer numbers.

The interpretation of a function symbol is a function. For example, if the domain of discourse consists of integers, a function symbol *f* of arity 2 can be interpreted as the function that gives the sum of its arguments. In other words, the symbol *f* is associated with the function ![I(f)](https://wikimedia.org/api/rest_v1/media/math/render/svg/c0bddfdca6273db376b724f34eb07874ea51c723) which, in this interpretation, is addition.

The interpretation of a constant symbol is a function from the one-element set *D*0 to *D*, which can be simply identified with an object in *D*. For example, an interpretation may assign the value ![I(c)=10](https://wikimedia.org/api/rest_v1/media/math/render/svg/d522014bd5f83a0a07be52824c6200c4273765d8) to the constant symbol ![c](https://wikimedia.org/api/rest_v1/media/math/render/svg/86a67b81c2de995bd608d5b2df50cd8cd7d92455).

The interpretation of an *n*\-ary predicate symbol is a set of *n*\-[tuples][129] of elements of the domain of discourse. This means that, given an interpretation, a predicate symbol, and *n* elements of the domain of discourse, one can tell whether the predicate is true of those elements according to the given interpretation. For example, an interpretation *I(P)* of a binary predicate symbol *P* may be the set of pairs of integers such that the first one is less than the second. According to this interpretation, the predicate *P* would be true if its first argument is less than the second.

### First-order structures\[[edit][130]\]

The most common way of specifying an interpretation (especially in mathematics) is to specify a __structure__ (also called a __model__; see below). The structure consists of a nonempty set *D* that forms the domain of discourse and an interpretation I of the non-logical terms of the signature. This interpretation is itself a function:

### Evaluation of truth values\[[edit][131]\]

A formula evaluates to true or false given an interpretation, and a __variable assignment__ μ that associates an element of the domain of discourse with each variable. The reason that a variable assignment is required is to give meanings to formulas with free variables, such as ![y=x](https://wikimedia.org/api/rest_v1/media/math/render/svg/d0abe2e7da593fb7b41d44e87a97fefdd8998b77). The truth value of this formula changes depending on whether *x* and *y* denote the same individual.

First, the variable assignment μ can be extended to all terms of the language, with the result that each term maps to a single element of the domain of discourse. The following rules are used to make this assignment:

1.  __Variables.__ Each variable *x* evaluates to *μ*(*x*)
2.  __Functions.__ Given terms ![t_{1},\ldots ,t_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9d5d47a886224ab3923f286622880208346f172a) that have been evaluated to elements ![d_{1},\ldots ,d_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/af2b00c84940b9421f7f66f4b7df4c59f3871068) of the domain of discourse, and a *n*\-ary function symbol *f*, the term ![f(t_{1},\ldots ,t_{n})](https://wikimedia.org/api/rest_v1/media/math/render/svg/2892d8ec6fd36bcc541776402bc29ffabc6c957a) evaluates to ![(I(f))(d_{1},\ldots ,d_{n})](https://wikimedia.org/api/rest_v1/media/math/render/svg/7dadc7f39271a9fbb9efb3766362a61302526e75).

Next, each formula is assigned a truth value. The inductive definition used to make this assignment is called the [T-schema][132].

1.  __Atomic formulas (1).__ A formula ![P(t_{1},\ldots ,t_{n})](https://wikimedia.org/api/rest_v1/media/math/render/svg/8047e7eba31e7ca038ff5de91f5bdbe4c4471fe5) is associated the value true or false depending on whether ![\langle v_{1},\ldots ,v_{n}\rangle \in I(P)](https://wikimedia.org/api/rest_v1/media/math/render/svg/e4b95dbd6989a034cdb6341a48785172bc69a69a), where ![v_{1},\ldots ,v_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fb40a91abab8b7bfb0e84b074732b2f044fd56ef) are the evaluation of the terms ![t_{1},\ldots ,t_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9d5d47a886224ab3923f286622880208346f172a) and ![I(P)](https://wikimedia.org/api/rest_v1/media/math/render/svg/9e231b8d12f4c73cd408de852d86916ec1e74a14) is the interpretation of ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a), which by assumption is a subset of ![D^{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2303f762ed832af70154f7f9d06a6a7b673c5085).
2.  __Atomic formulas (2).__ A formula ![t_{1}=t_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c0cb13b78f5d03f07090ac4d52b6f29e50a92a2b) is assigned true if ![t_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cb0768c0bd659f2f84fb5ef9f4b74f336123d915) and ![t_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/749fee708b41e7079eabd50d61c8bf3e965db16f) evaluate to the same object of the domain of discourse (see the section on equality below).
3.  __Logical connectives.__ A formula in the form ![\neg \phi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d3977176cb0f5057b3dcc1cfeae7d80dcb9c9ee0), ![\phi \rightarrow \psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/946a10c664357a5652d883712b23531b0266a4c8), etc. is evaluated according to the [truth table][133] for the connective in question, as in propositional logic.
4.  __Existential quantifiers.__ A formula ![\exists x\phi (x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/77ee6a68073294bc6afecd0037a83a1463bdbb13) is true according to *M* and ![\mu ](https://wikimedia.org/api/rest_v1/media/math/render/svg/9fd47b2a39f7a7856952afec1f1db72c67af6161) if there exists an evaluation ![\mu '](https://wikimedia.org/api/rest_v1/media/math/render/svg/53b9ddd6bbc6f1ef9ca40b1c2e6e2c1c8d141aed) of the variables that only differs from ![\mu ](https://wikimedia.org/api/rest_v1/media/math/render/svg/9fd47b2a39f7a7856952afec1f1db72c67af6161) regarding the evaluation of *x* and such that φ is true according to the interpretation *M* and the variable assignment ![\mu '](https://wikimedia.org/api/rest_v1/media/math/render/svg/53b9ddd6bbc6f1ef9ca40b1c2e6e2c1c8d141aed). This formal definition captures the idea that ![\exists x\phi (x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/77ee6a68073294bc6afecd0037a83a1463bdbb13) is true if and only if there is a way to choose a value for *x* such that φ(*x*) is satisfied.
5.  __Universal quantifiers.__ A formula ![\forall x\phi (x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/461ea64f207d1cebb9a09e73641b3a512e75884a) is true according to *M* and ![\mu ](https://wikimedia.org/api/rest_v1/media/math/render/svg/9fd47b2a39f7a7856952afec1f1db72c67af6161) if φ(*x*) is true for every pair composed by the interpretation *M* and some variable assignment ![\mu '](https://wikimedia.org/api/rest_v1/media/math/render/svg/53b9ddd6bbc6f1ef9ca40b1c2e6e2c1c8d141aed) that differs from ![\mu ](https://wikimedia.org/api/rest_v1/media/math/render/svg/9fd47b2a39f7a7856952afec1f1db72c67af6161) only on the value of *x*. This captures the idea that ![\forall x\phi (x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/461ea64f207d1cebb9a09e73641b3a512e75884a) is true if every possible choice of a value for *x* causes φ(*x*) to be true.

If a formula does not contain free variables, and so is a sentence, then the initial variable assignment does not affect its truth value. In other words, a sentence is true according to *M* and ![\mu ](https://wikimedia.org/api/rest_v1/media/math/render/svg/9fd47b2a39f7a7856952afec1f1db72c67af6161) if and only if it is true according to *M* and every other variable assignment ![\mu '](https://wikimedia.org/api/rest_v1/media/math/render/svg/53b9ddd6bbc6f1ef9ca40b1c2e6e2c1c8d141aed).

There is a second common approach to defining truth values that does not rely on variable assignment functions. Instead, given an interpretation *M*, one first adds to the signature a collection of constant symbols, one for each element of the domain of discourse in *M*; say that for each *d* in the domain the constant symbol *c**d* is fixed. The interpretation is extended so that each new constant symbol is assigned to its corresponding element of the domain. One now defines truth for quantified formulas syntactically, as follows:

1.  __Existential quantifiers (alternate).__ A formula ![\exists x\phi (x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/77ee6a68073294bc6afecd0037a83a1463bdbb13) is true according to *M* if there is some *d* in the domain of discourse such that ![\phi (c_{d})](https://wikimedia.org/api/rest_v1/media/math/render/svg/dc7f476efa0ce1c8c3ad9cdc4c13819d1a4704d5) holds. Here ![\phi (c_{d})](https://wikimedia.org/api/rest_v1/media/math/render/svg/dc7f476efa0ce1c8c3ad9cdc4c13819d1a4704d5) is the result of substituting *c**d* for every free occurrence of *x* in φ.
2.  __Universal quantifiers (alternate).__ A formula ![\forall x\phi (x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/461ea64f207d1cebb9a09e73641b3a512e75884a) is true according to *M* if, for every *d* in the domain of discourse, ![\phi (c_{d})](https://wikimedia.org/api/rest_v1/media/math/render/svg/dc7f476efa0ce1c8c3ad9cdc4c13819d1a4704d5) is true according to *M*.

This alternate approach gives exactly the same truth values to all sentences as the approach via variable assignments.

### Validity, satisfiability, and logical consequence\[[edit][134]\]

If a sentence φ evaluates to True under a given interpretation *M*, one says that *M* __satisfies__ φ; this is denoted[\[17\]][135] ![M\vDash \varphi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/5a7949506ed7ff4c4d777669528f4bfca5d70650). A sentence is __satisfiable__ if there is some interpretation under which it is true.

Satisfiability of formulas with free variables is more complicated, because an interpretation on its own does not determine the truth value of such a formula. The most common convention is that a formula with free variables is said to be satisfied by an interpretation if the formula remains true regardless which individuals from the domain of discourse are assigned to its free variables. This has the same effect as saying that a formula is satisfied if and only if its [universal closure][136] is satisfied.

A formula is __logically valid__ (or simply __valid__) if it is true in every interpretation.[\[18\]][137] These formulas play a role similar to [tautologies][138] in propositional logic.

A formula φ is a __logical consequence__ of a formula ψ if every interpretation that makes ψ true also makes φ true. In this case one says that φ is logically implied by ψ.

### Algebraizations\[[edit][139]\]

An alternate approach to the semantics of first-order logic proceeds via [abstract algebra][140]. This approach generalizes the [Lindenbaum–Tarski algebras][141] of propositional logic. There are three ways of eliminating quantified variables from first-order logic that do not involve replacing quantifiers with other variable binding term operators:

-   [Cylindric algebra][142], by [Alfred Tarski][143] and colleagues;
-   [Polyadic algebra][144], by [Paul Halmos][145];
-   [Predicate functor logic][146], mainly due to [Willard Quine][147].

These [algebras][148] are all [lattices][149] that properly extend the [two-element Boolean algebra][150].

Tarski and Givant (1987) showed that the fragment of first-order logic that has no [atomic sentence][151] lying in the scope of more than three quantifiers has the same expressive power as [relation algebra][152].[\[19\]][153]: 32–33  This fragment is of great interest because it suffices for [Peano arithmetic][154] and most [axiomatic set theory][155], including the canonical [ZFC][156]. They also prove that first-order logic with a primitive [ordered pair][157] is equivalent to a relation algebra with two ordered pair [projection functions][158].[\[20\]][159]: 803 

### First-order theories, models, and elementary classes\[[edit][160]\]

A __first-order theory__ of a particular signature is a set of [axioms][161], which are sentences consisting of symbols from that signature. The set of axioms is often finite or [recursively enumerable][162], in which case the theory is called __effective__. Some authors require theories to also include all logical consequences of the axioms. The axioms are considered to hold within the theory and from them other sentences that hold within the theory can be derived.

A first-order structure that satisfies all sentences in a given theory is said to be a __model__ of the theory. An __[elementary class][163]__ is the set of all structures satisfying a particular theory. These classes are a main subject of study in [model theory][164].

Many theories have an __[intended interpretation][165]__, a certain model that is kept in mind when studying the theory. For example, the intended interpretation of [Peano arithmetic][166] consists of the usual [natural numbers][167] with their usual operations. However, the Löwenheim–Skolem theorem shows that most first-order theories will also have other, [nonstandard models][168].

A theory is __[consistent][169]__ if it is not possible to prove a contradiction from the axioms of the theory. A theory is __[complete][170]__ if, for every formula in its signature, either that formula or its negation is a logical consequence of the axioms of the theory. [Gödel's incompleteness theorem][171] shows that effective first-order theories that include a sufficient portion of the theory of the natural numbers can never be both consistent and complete.

For more information on this subject see [List of first-order theories][172] and [Theory (mathematical logic)][173]

### Empty domains\[[edit][174]\]

The definition above requires that the domain of discourse of any interpretation must be nonempty. There are settings, such as [inclusive logic][175], where empty domains are permitted. Moreover, if a class of algebraic structures includes an empty structure (for example, there is an empty [poset][176]), that class can only be an elementary class in first-order logic if empty domains are permitted or the empty structure is removed from the class.

There are several difficulties with empty domains, however:

Thus, when the empty domain is permitted, it must often be treated as a special case. Most authors, however, simply exclude the empty domain by definition.

## Deductive systems\[[edit][177]\]

A __deductive system__ is used to demonstrate, on a purely syntactic basis, that one formula is a logical consequence of another formula. There are many such systems for first-order logic, including [Hilbert-style deductive systems][178], [natural deduction][179], the [sequent calculus][180], the [tableaux method][181], and [resolution][182]. These share the common property that a deduction is a finite syntactic object; the format of this object, and the way it is constructed, vary widely. These finite deductions themselves are often called __derivations__ in proof theory. They are also often called proofs, but are completely formalized unlike natural-language [mathematical proofs][183].

A deductive system is __sound__ if any formula that can be derived in the system is logically valid. Conversely, a deductive system is __complete__ if every logically valid formula is derivable. All of the systems discussed in this article are both sound and complete. They also share the property that it is possible to effectively verify that a purportedly valid deduction is actually a deduction; such deduction systems are called __effective__.

A key property of deductive systems is that they are purely syntactic, so that derivations can be verified without considering any interpretation. Thus a sound argument is correct in every possible interpretation of the language, regardless whether that interpretation is about mathematics, economics, or some other area.

In general, logical consequence in first-order logic is only [semidecidable][184]: if a sentence A logically implies a sentence B then this can be discovered (for example, by searching for a proof until one is found, using some effective, sound, complete proof system). However, if A does not logically imply B, this does not mean that A logically implies the negation of B. There is no effective procedure that, given formulas A and B, always correctly decides whether A logically implies B.

### Rules of inference\[[edit][185]\]

A __[rule of inference][186]__ states that, given a particular formula (or set of formulas) with a certain property as a hypothesis, another specific formula (or set of formulas) can be derived as a conclusion. The rule is sound (or truth-preserving) if it preserves validity in the sense that whenever any interpretation satisfies the hypothesis, that interpretation also satisfies the conclusion.

For example, one common rule of inference is the __rule of substitution__. If *t* is a term and φ is a formula possibly containing the variable *x*, then φ\[*t*/*x*\] is the result of replacing all free instances of *x* by *t* in φ. The substitution rule states that for any φ and any term *t*, one can conclude φ\[*t*/*x*\] from φ provided that no free variable of *t* becomes bound during the substitution process. (If some free variable of *t* becomes bound, then to substitute *t* for *x* it is first necessary to change the bound variables of φ to differ from the free variables of *t*.)

To see why the restriction on bound variables is necessary, consider the logically valid formula φ given by ![\exists x(x=y)](https://wikimedia.org/api/rest_v1/media/math/render/svg/62e82c5f6e8c52c2554bf7aecdca336d4f548c81), in the signature of (0,1,+,×,=) of arithmetic. If *t* is the term "x + 1", the formula φ\[*t*/*y*\] is ![\exists x(x=x+1)](https://wikimedia.org/api/rest_v1/media/math/render/svg/22f1e76ee2d164dc3cb4a5397ea79c64fc687f12), which will be false in many interpretations. The problem is that the free variable *x* of *t* became bound during the substitution. The intended replacement can be obtained by renaming the bound variable *x* of φ to something else, say *z*, so that the formula after substitution is ![\exists z(z=x+1)](https://wikimedia.org/api/rest_v1/media/math/render/svg/2c867642c852d99cc3e22936cbcbb09c223f4306), which is again logically valid.

The substitution rule demonstrates several common aspects of rules of inference. It is entirely syntactical; one can tell whether it was correctly applied without appeal to any interpretation. It has (syntactically defined) limitations on when it can be applied, which must be respected to preserve the correctness of derivations. Moreover, as is often the case, these limitations are necessary because of interactions between free and bound variables that occur during syntactic manipulations of the formulas involved in the inference rule.

### Hilbert-style systems and natural deduction\[[edit][187]\]

A deduction in a Hilbert-style deductive system is a list of formulas, each of which is a __logical axiom__, a hypothesis that has been assumed for the derivation at hand, or follows from previous formulas via a rule of inference. The logical axioms consist of several [axiom schemas][188] of logically valid formulas; these encompass a significant amount of propositional logic. The rules of inference enable the manipulation of quantifiers. Typical Hilbert-style systems have a small number of rules of inference, along with several infinite schemas of logical axioms. It is common to have only [modus ponens][189] and [universal generalization][190] as rules of inference.

Natural deduction systems resemble Hilbert-style systems in that a deduction is a finite list of formulas. However, natural deduction systems have no logical axioms; they compensate by adding additional rules of inference that can be used to manipulate the logical connectives in formulas in the proof.

### Sequent calculus\[[edit][191]\]

The sequent calculus was developed to study the properties of natural deduction systems.[\[21\]][192] Instead of working with one formula at a time, it uses __sequents__, which are expressions of the form

![A_{1},\ldots ,A_{n}\vdash B_{1},\ldots ,B_{k},](https://wikimedia.org/api/rest_v1/media/math/render/svg/e0c5b66a8fed889a35d2ea5ff95f0c604351346d)

where A1, ..., A*n*, B1, ..., B*k* are formulas and the turnstile symbol ![\vdash ](https://wikimedia.org/api/rest_v1/media/math/render/svg/a0c0d30cf8cb7dba179e317fcde9583d842e80f6) is used as punctuation to separate the two halves. Intuitively, a sequent expresses the idea that ![(A_{1}\land \cdots \land A_{n})](https://wikimedia.org/api/rest_v1/media/math/render/svg/246c809b129f34c17ee86d02cd174cbee24ec2b4) implies ![(B_{1}\lor \cdots \lor B_{k})](https://wikimedia.org/api/rest_v1/media/math/render/svg/f5f1cfec4adf640b066dcf67f83d59fef7b3bb60).

### Tableaux method\[[edit][193]\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Prop-tableau-4.svg/150px-Prop-tableau-4.svg.png)][194]

A tableaux proof for the [propositional][195] formula ((a ∨ ¬b) ∧ b) → a.

Unlike the methods just described, the derivations in the tableaux method are not lists of formulas. Instead, a derivation is a tree of formulas. To show that a formula A is provable, the tableaux method attempts to demonstrate that the negation of A is unsatisfiable. The tree of the derivation has ![\lnot A](https://wikimedia.org/api/rest_v1/media/math/render/svg/ca8018a527bd4807dd9df6bc8081664168d160c4) at its root; the tree branches in a way that reflects the structure of the formula. For example, to show that ![C\lor D](https://wikimedia.org/api/rest_v1/media/math/render/svg/c85b67fc743ea47c72219cc96329ea364997c82b) is unsatisfiable requires showing that C and D are each unsatisfiable; this corresponds to a branching point in the tree with parent ![C\lor D](https://wikimedia.org/api/rest_v1/media/math/render/svg/c85b67fc743ea47c72219cc96329ea364997c82b) and children C and D.

### Resolution\[[edit][196]\]

The [resolution rule][197] is a single rule of inference that, together with [unification][198], is sound and complete for first-order logic. As with the tableaux method, a formula is proved by showing that the negation of the formula is unsatisfiable. Resolution is commonly used in automated theorem proving.

The resolution method works only with formulas that are disjunctions of atomic formulas; arbitrary formulas must first be converted to this form through [Skolemization][199]. The resolution rule states that from the hypotheses ![A_{1}\lor \cdots \lor A_{k}\lor C](https://wikimedia.org/api/rest_v1/media/math/render/svg/75e4e10b31889b9846a36b76c73e40ce4eb5a7df) and ![B_{1}\lor \cdots \lor B_{l}\lor \lnot C](https://wikimedia.org/api/rest_v1/media/math/render/svg/1f5893737e8e365afc3b41f742f144daab9e1601), the conclusion ![A_{1}\lor \cdots \lor A_{k}\lor B_{1}\lor \cdots \lor B_{l}](https://wikimedia.org/api/rest_v1/media/math/render/svg/235738bf6a189a6f257d67be6e9a9d7fbae5fa34) can be obtained.

### Provable identities\[[edit][200]\]

Many identities can be proved, which establish equivalences between particular formulas. These identities allow for rearranging formulas by moving quantifiers across other connectives, and are useful for putting formulas in [prenex normal form][201]. Some provable identities include:

![\lnot \forall x\,P(x)\Leftrightarrow \exists x\,\lnot P(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/2445b6488cdb2ec212555fef19195a5a8101a2e6)

![\lnot \exists x\,P(x)\Leftrightarrow \forall x\,\lnot P(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/10470c892b2a67ff18e2b142d5410cea71b8b46a)

![\forall x\,\forall y\,P(x,y)\Leftrightarrow \forall y\,\forall x\,P(x,y)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b2bd10da835e07d3f2df8a14ea462278e5a23409)

![\exists x\,\exists y\,P(x,y)\Leftrightarrow \exists y\,\exists x\,P(x,y)](https://wikimedia.org/api/rest_v1/media/math/render/svg/69bb290a630b035bef7ce6b3ed728e359dde12a0)

![\forall x\,P(x)\land \forall x\,Q(x)\Leftrightarrow \forall x\,(P(x)\land Q(x))](https://wikimedia.org/api/rest_v1/media/math/render/svg/ef585db4d74276c8c4edb8f6c5b747ee0279ce42)

![\exists x\,P(x)\lor \exists x\,Q(x)\Leftrightarrow \exists x\,(P(x)\lor Q(x))](https://wikimedia.org/api/rest_v1/media/math/render/svg/4dd6bea2cbbd88ace8c271ca5469eef8f70e100d)

![P\land \exists x\,Q(x)\Leftrightarrow \exists x\,(P\land Q(x))](https://wikimedia.org/api/rest_v1/media/math/render/svg/f1410d244a43ab2b837b62490e1e70c184f99778) (where ![x](https://wikimedia.org/api/rest_v1/media/math/render/svg/87f9e315fd7e2ba406057a97300593c4802b53e4) must not occur free in ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a))

![P\lor \forall x\,Q(x)\Leftrightarrow \forall x\,(P\lor Q(x))](https://wikimedia.org/api/rest_v1/media/math/render/svg/dcb1eeeec79f4ac93a127c2d1c541058d343194f) (where ![x](https://wikimedia.org/api/rest_v1/media/math/render/svg/87f9e315fd7e2ba406057a97300593c4802b53e4) must not occur free in ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a))

## Equality and its axioms\[[edit][202]\]

There are several different conventions for using equality (or identity) in first-order logic. The most common convention, known as __first-order logic with equality__, includes the equality symbol as a primitive logical symbol which is always interpreted as the real equality relation between members of the domain of discourse, such that the "two" given members are the same member. This approach also adds certain axioms about equality to the deductive system employed. These equality axioms are:[\[22\]][203]: 198–200 

1.  __Reflexivity__. For each variable *x*, *x* = *x*.
2.  __Substitution for functions.__ For all variables *x* and *y*, and any function symbol *f*,
    
    *x* = *y* → *f*(...,*x*,...) = *f*(...,*y*,...).
    
3.  __Substitution for formulas__. For any variables *x* and *y* and any formula φ(*x*), if φ' is obtained by replacing any number of free occurrences of *x* in φ with *y*, such that these remain free occurrences of *y*, then
    
    *x* = *y* → (φ → φ').
    

These are [axiom schemas][204], each of which specifies an infinite set of axioms. The third schema is known as __[Leibniz's law][205]__, "the principle of substitutivity", "the indiscernibility of identicals", or "the replacement property". The second schema, involving the function symbol *f*, is (equivalent to) a special case of the third schema, using the formula

*x* = *y* → (*f*(...,*x*,...) = z → *f*(...,*y*,...) = z).

Many other properties of equality are consequences of the axioms above, for example:

1.  __Symmetry.__ If *x* = *y* then *y* = *x*.[\[23\]][206]
2.  __Transitivity.__ If *x* = *y* and *y* = *z* then *x* = *z*.[\[24\]][207]

### First-order logic without equality\[[edit][208]\]

An alternate approach considers the equality relation to be a non-logical symbol. This convention is known as __first-order logic without equality__. If an equality relation is included in the signature, the axioms of equality must now be added to the theories under consideration, if desired, instead of being considered rules of logic. The main difference between this method and first-order logic with equality is that an interpretation may now interpret two distinct individuals as "equal" (although, by Leibniz's law, these will satisfy exactly the same formulas under any interpretation). That is, the equality relation may now be interpreted by an arbitrary [equivalence relation][209] on the domain of discourse that is [congruent][210] with respect to the functions and relations of the interpretation.

When this second convention is followed, the term __normal model__ is used to refer to an interpretation where no distinct individuals *a* and *b* satisfy *a* = *b*. In first-order logic with equality, only normal models are considered, and so there is no term for a model other than a normal model. When first-order logic without equality is studied, it is necessary to amend the statements of results such as the [Löwenheim–Skolem theorem][211] so that only normal models are considered.

First-order logic without equality is often employed in the context of [second-order arithmetic][212] and other higher-order theories of arithmetic, where the equality relation between sets of natural numbers is usually omitted.

### Defining equality within a theory\[[edit][213]\]

If a theory has a binary formula *A*(*x*,*y*) which satisfies reflexivity and Leibniz's law, the theory is said to have equality, or to be a theory with equality. The theory may not have all instances of the above schemas as axioms, but rather as derivable theorems. For example, in theories with no function symbols and a finite number of relations, it is possible to [define][214] equality in terms of the relations, by defining the two terms *s* and *t* to be equal if any relation is unchanged by changing *s* to *t* in any argument.

Some theories allow other *ad hoc* definitions of equality:

## Metalogical properties\[[edit][215]\]

One motivation for the use of first-order logic, rather than [higher-order logic][216], is that first-order logic has many [metalogical][217] properties that stronger logics do not have. These results concern general properties of first-order logic itself, rather than properties of individual theories. They provide fundamental tools for the construction of models of first-order theories.

### Completeness and undecidability\[[edit][218]\]

[Gödel's completeness theorem][219], proved by [Kurt Gödel][220] in 1929, establishes that there are sound, complete, effective deductive systems for first-order logic, and thus the first-order logical consequence relation is captured by finite provability. Naively, the statement that a formula φ logically implies a formula ψ depends on every model of φ; these models will in general be of arbitrarily large cardinality, and so logical consequence cannot be effectively verified by checking every model. However, it is possible to enumerate all finite derivations and search for a derivation of ψ from φ. If ψ is logically implied by φ, such a derivation will eventually be found. Thus first-order logical consequence is [semidecidable][221]: it is possible to make an effective enumeration of all pairs of sentences (φ,ψ) such that ψ is a logical consequence of φ.

Unlike [propositional logic][222], first-order logic is [undecidable][223] (although semidecidable), provided that the language has at least one predicate of arity at least 2 (other than equality). This means that there is no [decision procedure][224] that determines whether arbitrary formulas are logically valid. This result was established independently by [Alonzo Church][225] and [Alan Turing][226] in 1936 and 1937, respectively, giving a negative answer to the [Entscheidungsproblem][227] posed by [David Hilbert][228] and [Wilhelm Ackermann][229] in 1928. Their proofs demonstrate a connection between the unsolvability of the decision problem for first-order logic and the unsolvability of the [halting problem][230].

There are systems weaker than full first-order logic for which the logical consequence relation is decidable. These include propositional logic and [monadic predicate logic][231], which is first-order logic restricted to unary predicate symbols and no function symbols. Other logics with no function symbols which are decidable are the [guarded fragment][232] of first-order logic, as well as [two-variable logic][233]. The [Bernays–Schönfinkel class][234] of first-order formulas is also decidable. Decidable subsets of first-order logic are also studied in the framework of [description logics][235].

### The Löwenheim–Skolem theorem\[[edit][236]\]

The [Löwenheim–Skolem theorem][237] shows that if a first-order theory of [cardinality][238] λ has an infinite model, then it has models of every infinite cardinality greater than or equal to λ. One of the earliest results in [model theory][239], it implies that it is not possible to characterize [countability][240] or uncountability in a first-order language with a countable signature. That is, there is no first-order formula φ(*x*) such that an arbitrary structure M satisfies φ if and only if the domain of discourse of M is countable (or, in the second case, uncountable).

The Löwenheim–Skolem theorem implies that infinite structures cannot be [categorically][241] axiomatized in first-order logic. For example, there is no first-order theory whose only model is the real line: any first-order theory with an infinite model also has a model of cardinality larger than the continuum. Since the real line is infinite, any theory satisfied by the real line is also satisfied by some [nonstandard models][242]. When the Löwenheim–Skolem theorem is applied to first-order set theories, the nonintuitive consequences are known as [Skolem's paradox][243].

### The compactness theorem\[[edit][244]\]

The [compactness theorem][245] states that a set of first-order sentences has a model if and only if every finite subset of it has a model.[\[25\]][246] This implies that if a formula is a logical consequence of an infinite set of first-order axioms, then it is a logical consequence of some finite number of those axioms. This theorem was proved first by Kurt Gödel as a consequence of the completeness theorem, but many additional proofs have been obtained over time. It is a central tool in model theory, providing a fundamental method for constructing models.

The compactness theorem has a limiting effect on which collections of first-order structures are elementary classes. For example, the compactness theorem implies that any theory that has arbitrarily large finite models has an infinite model. Thus the class of all finite [graphs][247] is not an elementary class (the same holds for many other algebraic structures).

There are also more subtle limitations of first-order logic that are implied by the compactness theorem. For example, in computer science, many situations can be modeled as a [directed graph][248] of states (nodes) and connections (directed edges). Validating such a system may require showing that no "bad" state can be reached from any "good" state. Thus one seeks to determine if the good and bad states are in different [connected components][249] of the graph. However, the compactness theorem can be used to show that connected graphs are not an elementary class in first-order logic, and there is no formula φ(*x*,*y*) of first-order logic, in the [logic of graphs][250], that expresses the idea that there is a path from *x* to *y*. Connectedness can be expressed in [second-order logic][251], however, but not with only existential set quantifiers, as ![\Sigma _{1}^{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/253bf5a8d60183537e1b309e490ed3cd7583f849) also enjoys compactness.

### Lindström's theorem\[[edit][252]\]

[Per Lindström][253] showed that the metalogical properties just discussed actually characterize first-order logic in the sense that no stronger logic can also have those properties (Ebbinghaus and Flum 1994, Chapter XIII). Lindström defined a class of abstract logical systems, and a rigorous definition of the relative strength of a member of this class. He established two theorems for systems of this type:

-   A logical system satisfying Lindström's definition that contains first-order logic and satisfies both the Löwenheim–Skolem theorem and the compactness theorem must be equivalent to first-order logic.
-   A logical system satisfying Lindström's definition that has a semidecidable logical consequence relation and satisfies the Löwenheim–Skolem theorem must be equivalent to first-order logic.

## Limitations\[[edit][254]\]

Although first-order logic is sufficient for formalizing much of mathematics, and is commonly used in computer science and other fields, it has certain limitations. These include limitations on its expressiveness and limitations of the fragments of natural languages that it can describe.

For instance, first-order logic is undecidable, meaning a sound, complete and terminating decision algorithm for provability is impossible. This has led to the study of interesting decidable fragments, such as C2: first-order logic with two variables and the [counting quantifiers][255] ![\exists ^{\geq n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b293d7fba42d6046567fc91a2881105969481d9f) and ![\exists ^{\leq n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/986ab98b497efa97ff4433fb58684d39a38d1f2c).[\[26\]][256]

### Expressiveness\[[edit][257]\]

The [Löwenheim–Skolem theorem][258] shows that if a first-order theory has any infinite model, then it has infinite models of every cardinality. In particular, no first-order theory with an infinite model can be [categorical][259]. Thus there is no first-order theory whose only model has the set of natural numbers as its domain, or whose only model has the set of real numbers as its domain. Many extensions of first-order logic, including infinitary logics and higher-order logics, are more expressive in the sense that they do permit categorical axiomatizations of the natural numbers or real numbers. This expressiveness comes at a metalogical cost, however: by [Lindström's theorem][260], the compactness theorem and the downward Löwenheim–Skolem theorem cannot hold in any logic stronger than first-order.

### Formalizing natural languages\[[edit][261]\]

First-order logic is able to formalize many simple quantifier constructions in natural language, such as "every person who lives in Perth lives in Australia". But there are many more complicated features of natural language that cannot be expressed in (single-sorted) first-order logic. "Any logical system which is appropriate as an instrument for the analysis of natural language needs a much richer structure than first-order predicate logic".[\[27\]][262]

## Restrictions, extensions, and variations\[[edit][263]\]

There are many variations of first-order logic. Some of these are inessential in the sense that they merely change notation without affecting the semantics. Others change the expressive power more significantly, by extending the semantics through additional quantifiers or other new logical symbols. For example, infinitary logics permit formulas of infinite size, and modal logics add symbols for possibility and necessity.

### Restricted languages\[[edit][264]\]

First-order logic can be studied in languages with fewer logical symbols than were described above.

-   Because ![\exists x\phi (x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/77ee6a68073294bc6afecd0037a83a1463bdbb13) can be expressed as ![\neg \forall x\neg \phi (x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/6c183a4dd1d61e88cec07bb7ebb726888927ba2c), and ![\forall x\phi (x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/461ea64f207d1cebb9a09e73641b3a512e75884a) can be expressed as ![\neg \exists x\neg \phi (x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/5dd676a764c918c36674c819d8853f8f610d1429), either of the two quantifiers ![\exists ](https://wikimedia.org/api/rest_v1/media/math/render/svg/77ed842b6b90b2fdd825320cf8e5265fa937b583) and ![\forall ](https://wikimedia.org/api/rest_v1/media/math/render/svg/bfc1a1a9c4c0f8d5df989c98aa2773ed657c5937) can be dropped.
-   Since ![\phi \lor \psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/5092176ead49fad1831b66b924957541ea52f63a) can be expressed as ![\lnot (\lnot \phi \land \lnot \psi )](https://wikimedia.org/api/rest_v1/media/math/render/svg/1cb25fff461d87a6c8ff18376b913aaf415ea351) and ![\phi \land \psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/8df1d0ec9b8a26c36c9190258a221ebf90496329) can be expressed as ![\lnot (\lnot \phi \lor \lnot \psi )](https://wikimedia.org/api/rest_v1/media/math/render/svg/2b2b3721c6fe11d0b21efa6ee165ad0eecc81ed9), either ![\vee ](https://wikimedia.org/api/rest_v1/media/math/render/svg/7b76220c6805c9b465d6efbc7686c624f49f3023) or ![\wedge ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1caa4004cb216ef2930bb12fe805a76870caed94) can be dropped. In other words, it is sufficient to have ![\neg ](https://wikimedia.org/api/rest_v1/media/math/render/svg/fa78fd02085d39aa58c9e47a6d4033ce41e02fad) and ![\vee ](https://wikimedia.org/api/rest_v1/media/math/render/svg/7b76220c6805c9b465d6efbc7686c624f49f3023), or ![\neg ](https://wikimedia.org/api/rest_v1/media/math/render/svg/fa78fd02085d39aa58c9e47a6d4033ce41e02fad) and ![\wedge ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1caa4004cb216ef2930bb12fe805a76870caed94), as the only logical connectives.
-   Similarly, it is sufficient to have only ![\neg ](https://wikimedia.org/api/rest_v1/media/math/render/svg/fa78fd02085d39aa58c9e47a6d4033ce41e02fad) and ![\rightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/53e574cc3aa5b4bf5f3f5906caf121a378eef08b) as logical connectives, or to have only the [Sheffer stroke][265] (NAND) or the [Peirce arrow][266] (NOR) operator.
-   It is possible to entirely avoid function symbols and constant symbols, rewriting them via predicate symbols in an appropriate way. For example, instead of using a constant symbol ![\;0](https://wikimedia.org/api/rest_v1/media/math/render/svg/3b7a32161b5e74e543683393adceb44677651e81) one may use a predicate ![\;0(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/cb98ba5fb42e48fc2126b3a1847a79644d2c178b) (interpreted as ![\;x=0](https://wikimedia.org/api/rest_v1/media/math/render/svg/237f698e76608ec0f62ba2904f45b218d7881d2a) ), and replace every predicate such as ![\;P(0,y)](https://wikimedia.org/api/rest_v1/media/math/render/svg/89653eb1e53e19c703fe9577570f92c9b3b9f049) with ![\forall x\;(0(x)\rightarrow P(x,y))](https://wikimedia.org/api/rest_v1/media/math/render/svg/0ed4dd6166344effd6dc23dacf3895dde8fe4482). A function such as ![f(x_{1},x_{2},...,x_{n})](https://wikimedia.org/api/rest_v1/media/math/render/svg/11fb403b5cadceba7df88994ff2f1f3eb41f1291) will similarly be replaced by a predicate ![F(x_{1},x_{2},...,x_{n},y)](https://wikimedia.org/api/rest_v1/media/math/render/svg/350923289f26b858365e0d26486804c5a213fc0b) interpreted as ![y=f(x_{1},x_{2},...,x_{n})](https://wikimedia.org/api/rest_v1/media/math/render/svg/ca3625499e2a190ed6af5127925b3ce9af297467). This change requires adding additional axioms to the theory at hand, so that interpretations of the predicate symbols used have the correct semantics.[\[28\]][267]

Restrictions such as these are useful as a technique to reduce the number of inference rules or axiom schemas in deductive systems, which leads to shorter proofs of metalogical results. The cost of the restrictions is that it becomes more difficult to express natural-language statements in the formal system at hand, because the logical connectives used in the natural language statements must be replaced by their (longer) definitions in terms of the restricted collection of logical connectives. Similarly, derivations in the limited systems may be longer than derivations in systems that include additional connectives. There is thus a trade-off between the ease of working within the formal system and the ease of proving results about the formal system.

It is also possible to restrict the arities of function symbols and predicate symbols, in sufficiently expressive theories. One can in principle dispense entirely with functions of arity greater than 2 and predicates of arity greater than 1 in theories that include a [pairing function][268]. This is a function of arity 2 that takes pairs of elements of the domain and returns an [ordered pair][269] containing them. It is also sufficient to have two predicate symbols of arity 2 that define projection functions from an ordered pair to its components. In either case it is necessary that the natural axioms for a pairing function and its projections are satisfied.

### Many-sorted logic\[[edit][270]\]

Ordinary first-order interpretations have a single domain of discourse over which all quantifiers range. __Many-sorted first-order logic__ allows variables to have different __sorts__, which have different domains. This is also called __typed first-order logic__, and the sorts called __types__ (as in [data type][271]), but it is not the same as first-order [type theory][272]. Many-sorted first-order logic is often used in the study of [second-order arithmetic][273].[\[29\]][274]

When there are only finitely many sorts in a theory, many-sorted first-order logic can be reduced to single-sorted first-order logic.[\[30\]][275]: 296–299  One introduces into the single-sorted theory a unary predicate symbol for each sort in the many-sorted theory, and adds an axiom saying that these unary predicates partition the domain of discourse. For example, if there are two sorts, one adds predicate symbols ![P_{1}(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/1a8689d6e9403649756406ea0d6e78503af54c12) and ![P_{2}(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/2be299d2941092c7ad1a87f86288b638bf82c343) and the axiom

![\forall x(P_{1}(x)\lor P_{2}(x))\land \lnot \exists x(P_{1}(x)\land P_{2}(x))](https://wikimedia.org/api/rest_v1/media/math/render/svg/87384da927d95e7522da28592b40799ffcb7a372).

Then the elements satisfying ![P_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/398f438d75434e6fbf48dc232c1ad7228a738568) are thought of as elements of the first sort, and elements satisfying ![P_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/87858df7457aa93caaef5a316db87a7240cc8c29) as elements of the second sort. One can quantify over each sort by using the corresponding predicate symbol to limit the range of quantification. For example, to say there is an element of the first sort satisfying formula φ(*x*), one writes

![\exists x(P_{1}(x)\land \phi (x))](https://wikimedia.org/api/rest_v1/media/math/render/svg/9763a42bd2bdda8115ab545c37985fe17504277f).

### Additional quantifiers\[[edit][276]\]

Additional quantifiers can be added to first-order logic.

-   Sometimes it is useful to say that "*P*(*x*) holds for exactly one *x*", which can be expressed as ∃!*x* *P*(*x*). This notation, called [uniqueness quantification][277], may be taken to abbreviate a formula such as ∃*x* (*P*(*x*) ∧∀*y* (*P*(*y*) → (*x* = *y*))).
-   __First-order logic with extra quantifiers__ has new quantifiers *Qx*,..., with meanings such as "there are many *x* such that ...". Also see [branching quantifiers][278] and the [plural quantifiers][279] of [George Boolos][280] and others.
-   __[Bounded quantifiers][281]__ are often used in the study of set theory or arithmetic.

### Infinitary logics\[[edit][282]\]

Infinitary logic allows infinitely long sentences. For example, one may allow a conjunction or disjunction of infinitely many formulas, or quantification over infinitely many variables. Infinitely long sentences arise in areas of mathematics including [topology][283] and [model theory][284].

Infinitary logic generalizes first-order logic to allow formulas of infinite length. The most common way in which formulas can become infinite is through infinite conjunctions and disjunctions. However, it is also possible to admit generalized signatures in which function and relation symbols are allowed to have infinite arities, or in which quantifiers can bind infinitely many variables. Because an infinite formula cannot be represented by a finite string, it is necessary to choose some other representation of formulas; the usual representation in this context is a tree. Thus formulas are, essentially, identified with their parse trees, rather than with the strings being parsed.

The most commonly studied infinitary logics are denoted *L*αβ, where α and β are each either [cardinal numbers][285] or the symbol ∞. In this notation, ordinary first-order logic is *L*ωω. In the logic *L*∞ω, arbitrary conjunctions or disjunctions are allowed when building formulas, and there is an unlimited supply of variables. More generally, the logic that permits conjunctions or disjunctions with less than κ constituents is known as *L*κω. For example, *L*ω1ω permits [countable][286] conjunctions and disjunctions.

The set of free variables in a formula of *L*κω can have any cardinality strictly less than κ, yet only finitely many of them can be in the scope of any quantifier when a formula appears as a subformula of another.[\[31\]][287] In other infinitary logics, a subformula may be in the scope of infinitely many quantifiers. For example, in *L*κ∞, a single universal or existential quantifier may bind arbitrarily many variables simultaneously. Similarly, the logic *L*κλ permits simultaneous quantification over fewer than λ variables, as well as conjunctions and disjunctions of size less than κ.

### Non-classical and modal logics\[[edit][288]\]

-   __[Intuitionistic first-order logic][289]__ uses intuitionistic rather than classical propositional calculus; for example, ¬¬φ need not be equivalent to φ.
-   First-order __[modal logic][290]__ allows one to describe other possible worlds as well as this contingently true world which we inhabit. In some versions, the set of possible worlds varies depending on which possible world one inhabits. Modal logic has extra *modal operators* with meanings which can be characterized informally as, for example "it is necessary that φ" (true in all possible worlds) and "it is possible that φ" (true in some possible world). With standard first-order logic we have a single domain and each predicate is assigned one extension. With first-order modal logic we have a *domain function* that assigns each possible world its own domain, so that each predicate gets an extension only relative to these possible worlds. This allows us to model cases where, for example, Alex is a Philosopher, but might have been a Mathematician, and might not have existed at all. In the first possible world *P*(*a*) is true, in the second *P*(*a*) is false, and in the third possible world there is no *a* in the domain at all.
-   __[First-order fuzzy logics][291]__ are first-order extensions of propositional fuzzy logics rather than classical [propositional calculus][292].

### Fixpoint logic\[[edit][293]\]

__Fixpoint logic__ extends first-order logic by adding the closure under the least fixed points of positive operators.[\[32\]][294]

### Higher-order logics\[[edit][295]\]

The characteristic feature of first-order logic is that individuals can be quantified, but not predicates. Thus

![\exists a({\text{Phil}}(a))](https://wikimedia.org/api/rest_v1/media/math/render/svg/3b65b633f1d7beafe3c55cb20c2c8803850fde37)

is a legal first-order formula, but

![\exists {\text{Phil}}({\text{Phil}}(a))](https://wikimedia.org/api/rest_v1/media/math/render/svg/f3ee7f32afe79bed73734413148d4bdb1ec293e7)

is not, in most formalizations of first-order logic. [Second-order logic][296] extends first-order logic by adding the latter type of quantification. Other [higher-order logics][297] allow quantification over even higher [types][298] than second-order logic permits. These higher types include relations between relations, functions from relations to relations between relations, and other higher-type objects. Thus the "first" in first-order logic describes the type of objects that can be quantified.

Unlike first-order logic, for which only one semantics is studied, there are several possible semantics for second-order logic. The most commonly employed semantics for second-order and higher-order logic is known as __full semantics__. The combination of additional quantifiers and the full semantics for these quantifiers makes higher-order logic stronger than first-order logic. In particular, the (semantic) logical consequence relation for second-order and higher-order logic is not semidecidable; there is no effective deduction system for second-order logic that is sound and complete under full semantics.

Second-order logic with full semantics is more expressive than first-order logic. For example, it is possible to create axiom systems in second-order logic that uniquely characterize the natural numbers and the real line. The cost of this expressiveness is that second-order and higher-order logics have fewer attractive metalogical properties than first-order logic. For example, the Löwenheim–Skolem theorem and compactness theorem of first-order logic become false when generalized to higher-order logics with full semantics.

## Automated theorem proving and formal methods\[[edit][299]\]

[Automated theorem proving][300] refers to the development of computer programs that search and find derivations (formal proofs) of mathematical theorems.[\[33\]][301] Finding derivations is a difficult task because the [search space][302] can be very large; an exhaustive search of every possible derivation is theoretically possible but [computationally infeasible][303] for many systems of interest in mathematics. Thus complicated [heuristic functions][304] are developed to attempt to find a derivation in less time than a blind search.\[*[citation needed][305]*\]

The related area of automated [proof verification][306] uses computer programs to check that human-created proofs are correct. Unlike complicated automated theorem provers, verification systems may be small enough that their correctness can be checked both by hand and through automated software verification. This validation of the proof verifier is needed to give confidence that any derivation labeled as "correct" is actually correct.

Some proof verifiers, such as [Metamath][307], insist on having a complete derivation as input. Others, such as [Mizar][308] and [Isabelle][309], take a well-formatted proof sketch (which may still be very long and detailed) and fill in the missing pieces by doing simple proof searches or applying known decision procedures: the resulting derivation is then verified by a small core "kernel". Many such systems are primarily intended for interactive use by human mathematicians: these are known as [proof assistants][310]. They may also use formal logics that are stronger than first-order logic, such as type theory. Because a full derivation of any nontrivial result in a first-order deductive system will be extremely long for a human to write,[\[34\]][311] results are often formalized as a series of lemmas, for which derivations can be constructed separately.

Automated theorem provers are also used to implement [formal verification][312] in computer science. In this setting, theorem provers are used to verify the correctness of programs and of hardware such as [processors][313] with respect to a [formal specification][314]. Because such analysis is time-consuming and thus expensive, it is usually reserved for projects in which a malfunction would have grave human or financial consequences.

For the problem of [model checking][315], efficient [algorithms][316] are known to [decide][317] whether an input finite structure satisfies a first-order formula, in addition to [computational complexity][318] bounds: see [Model checking § First-order logic][319].

## See also\[[edit][320]\]

## Notes\[[edit][321]\]

1.  __[^][322]__ Hodgson, Dr. J. P. E., ["First Order Logic"][323], [Saint Joseph's University][324], [Philadelphia][325], 1995.
2.  __[^][326]__ [Hughes, G. E.][327], & [Cresswell, M. J.][328], *[A New Introduction to Modal Logic][329]* ([London][330]: [Routledge][331], 1996), [p.161][332].
3.  __[^][333]__ [Mendelson, Elliott][334] (1964). *Introduction to Mathematical Logic*. [Van Nostrand Reinhold][335]. p. [56][336].
4.  __[^][337]__ Eric M. Hammer: Semantics for Existential Graphs, *Journal of Philosophical Logic*, Volume 27, Issue 5 (October 1998), page 489: "Development of first-order logic independently of Frege, anticipating prenex and Skolem normal forms"
5.  __[^][338]__ [Goertzel, B.][339], Geisweiller, N., Coelho, L., Janičić, P., & Pennachin, C., *Real-World Reasoning: Toward Scalable, Uncertain Spatiotemporal, Contextual and Causal Inference* ([Amsterdam][340] & [Paris][341]: [Atlantis Press][342], 2011), [p. 29][343].
6.  __[^][344]__ ["Predicate Logic | Brilliant Math & Science Wiki"][345]. *brilliant.org*. Retrieved 2020-08-20.
7.  __[^][346]__ ["Introduction to Symbolic Logic: Lecture 2"][347]. *cstl-cla.semo.edu*. Retrieved 2021-01-04.
8.  __[^][348]__ The word *language* is sometimes used as a synonym for signature, but this can be confusing because "language" can also refer to the set of formulas.
9.  __[^][349]__ More precisely, there is only one language of each variant of one-sorted first-order logic: with or without equality, with or without functions, with or without propositional variables, ....
10.  __[^][350]__ [Stackexchange][351], section "The parochial way"
11.  __[^][352]__ Eberhard Bergmann and Helga Noll (1977). *Mathematische Logik mit Informatik-Anwendungen*. Heidelberger Taschenbücher, Sammlung Informatik (in German). __187__. Heidelberg: Springer. pp. [300–302][353].
12.  __[^][354]__ [Smullyan, R. M.][355], *First-order Logic* ([New York][356]: [Dover Publications][357], 1968), [p. 5][358].
13.  __[^][359]__ Some authors who use the term "well-formed formula" use "formula" to mean any string of symbols from the alphabet. However, most authors in mathematical logic use "formula" to mean "well-formed formula" and have no term for non-well-formed formulas. In every context, it is only the well-formed formulas that are of interest.
14.  __[^][360]__ Clark Barrett; Aaron Stump; Cesare Tinelli. ["The SMT-LIB Standard: Version 2.0"][361]. *SMT-LIB*. Retrieved 2019-06-15.
15.  __[^][362]__ ["Mathematics | Predicates and Quantifiers | Set 1"][363]. *GeeksforGeeks*. 2015-06-24. Retrieved 2020-08-20.
16.  __[^][364]__ *y* occurs bound by rule 4, although it doesn't appear in any atomic subformula
17.  __[^][365]__ It seems that symbol ![\vDash ](https://wikimedia.org/api/rest_v1/media/math/render/svg/f5e3f06f0c9cc283227ad448b14ee1da16bb0235) was introduced by Kleene, see footnote 30 in Dover's 2002 reprint of his book Mathematical Logic, John Wiley and Sons, 1967.
18.  __[^][366]__ Rogers, R. L., *Mathematical Logic and Formalized Theories: A Survey of Basic Concepts and Results* (Amsterdam/London: [North-Holland Publishing Company][367], 1971), [p. 39][368].
19.  __[^][369]__ [Brink, C.][370], Kahl, W., & [Schmidt, G.][371], eds., *Relational Methods in Computer Science* ([Berlin][372] / [Heidelberg][373]: [Springer][374], 1997), [pp. 32–33][375].
20.  __[^][376]__ Anon., *[Mathematical Reviews][377]* ([Providence][378]: [American Mathematical Society][379], 2006), p. 803.
21.  __[^][380]__ [Shankar, N.][381], Owre, S., [Rushby, J. M.][382], & Stringer-Calvert, D. W. J., [*PVS Prover Guide* 2.4][383] ([Menlo Park][384]: [SRI International][385], November 2001).
22.  __[^][386]__ [Fitting, M.][387], *First-Order Logic and Automated Theorem Proving* (Berlin/Heidelberg: Springer, 1990), [pp. 198–200][388].
23.  __[^][389]__ Use formula substitution with φ being *x*\=*x* and φ' being *y*\=*x*, then use reflexivity.
24.  __[^][390]__ Use formula substitution with φ being *y*\=*z* and φ' being *x*\=*z* to obtain *y*\=*x* → (*y*\=*z* → *x*\=*z*), then use symmetry and [uncurrying][391].
25.  __[^][392]__ Hodel, R. E., *An Introduction to Mathematical Logic* ([Mineola NY][393]: [Dover][394], 1995), [p. 199][395].
26.  __[^][396]__ Horrocks, Ian (2010). ["Description Logic: A Formal Foundation for Languages and Tools"][397] (PDF). Slide 22.
27.  __[^][398]__ [Gamut 1991][399], p. 75.
28.  __[^][400]__ [Left-totality][401] can be expressed by an axiom ![{\displaystyle \forall x_{1},...,x_{n}.\exists y.F(x_{1},...,x_{n},y)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/eeea5490f2ee3245e28fed10e2308775d1df6888); [right-uniqueness][402] by ![{\displaystyle \forall x_{1},...,x_{n},y,y'.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/dbd33ab09fbc953af1a28072214ae7fc93fadd61) ![{\displaystyle F(x_{1},...,x_{n},y)\land F(x_{1},...,x_{n},y')\rightarrow y=y'}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0e4f6c1bc7cd540e443b548a9203987f0256a6f9), provided the equality symbol is admitted. Both also apply to constant replacements (for ![n=0](https://wikimedia.org/api/rest_v1/media/math/render/svg/26819344e55f5e671c76c07c18eb4291fcec85ae)).
29.  __[^][403]__ Uzquiano, Gabriel (October 17, 2018). ["Quantifiers and Quantification"][404]. In [Zalta, Edward N.][405] (ed.). *[Stanford Encyclopedia of Philosophy][406]* (Winter 2018 ed.). See in particular section 3.2, Many-Sorted Quantification.
30.  __[^][407]__ [Enderton, H.][408] *A Mathematical Introduction to Logic*, second edition. [Academic Press][409], 2001, [pp.296–299][410].
31.  __[^][411]__ Some authors only admit formulas with finitely many free variables in *L*κω, and more generally only formulas with < λ free variables in *L*κλ.
32.  __[^][412]__ Bosse, Uwe (1993). "An Ehrenfeucht–Fraïssé game for fixpoint logic and stratified fixpoint logic". In Börger, Egon (ed.). *Computer Science Logic: 6th Workshop, CSL'92, San Miniato, Italy, September 28 - October 2, 1992. Selected Papers*. Lecture Notes in Computer Science. __702__. [Springer-Verlag][413]. pp. 100–114. [ISBN][414] [3-540-56992-8][415]. [Zbl][416] [0808.03024][417].
33.  __[^][418]__ Melvin Fitting (6 December 2012). [*First-Order Logic and Automated Theorem Proving*][419]. Springer Science & Business Media. [ISBN][420] [978-1-4612-2360-3][421].
34.  __[^][422]__ [Avigad][423], *et al.* (2007) discuss the process of formally verifying a proof of the [prime number theorem][424]. The formalized proof required approximately 30,000 lines of input to the Isabelle proof verifier.

## References\[[edit][425]\]

-   [Rautenberg, Wolfgang][426] (2010), *A Concise Introduction to Mathematical Logic* (3rd ed.), [New York, NY][427]: [Springer Science+Business Media][428], [doi][429]:[10.1007/978-1-4419-1221-3][430], [ISBN][431] [978-1-4419-1220-6][432]
-   [Andrews, Peter B.][433] (2002); *[An Introduction to Mathematical Logic and Type Theory: To Truth Through Proof][434]*, 2nd ed., Berlin: Kluwer Academic Publishers. Available from Springer.
-   Avigad, Jeremy; Donnelly, Kevin; Gray, David; and Raff, Paul (2007); "A formally verified proof of the prime number theorem", *ACM Transactions on Computational Logic*, vol. 9 no. 1 [doi][435]:[10.1145/1297658.1297660][436]
-   [Barwise, Jon][437] (1977). ["An Introduction to First-Order Logic"][438]. In Barwise, Jon (ed.). *Handbook of Mathematical Logic*. Studies in Logic and the Foundations of Mathematics. Amsterdam, NL: North-Holland (published 1982). [ISBN][439] [978-0-444-86388-1][440].
-   Monk, J. Donald (1976). [*Mathematical Logic*][441]. New York, NY: Springer New York. [doi][442]:[10.1007/978-1-4684-9452-5][443]. [ISBN][444] [978-1-4684-9454-9][445].
-   Barwise, Jon; and [Etchemendy, John][446] (2000); *Language Proof and Logic*, Stanford, CA: CSLI Publications (Distributed by the University of Chicago Press)
-   [Bocheński, Józef Maria][447] (2007); *A Précis of Mathematical Logic*, Dordrecht, NL: D. Reidel, translated from the French and German editions by Otto Bird
-   Ferreirós, José (2001); [*The Road to Modern Logic — An Interpretation*][448], Bulletin of Symbolic Logic, Volume 7, Issue 4, 2001, pp. 441–484, [doi][449]:[10.2307/2687794][450], [JSTOR][451] [2687794][452]
-   [Gamut, L. T. F.][453] (1991), *Logic, Language, and Meaning, Volume 2: Intensional Logic and Logical Grammar*, Chicago, Illinois: University of Chicago Press, [ISBN][454] [0-226-28088-8][455]
-   [Hilbert, David][456]; and [Ackermann, Wilhelm][457] (1950); *[Principles of Mathematical Logic][458]*, Chelsea (English translation of *Grundzüge der theoretischen Logik*, 1928 German first edition)
-   [Hodges, Wilfrid][459] (2001); "Classical Logic I: First Order Logic", in Goble, Lou (ed.); *The Blackwell Guide to Philosophical Logic*, Blackwell
-   [Ebbinghaus, Heinz-Dieter][460]; Flum, Jörg; and Thomas, Wolfgang (1994); [*Mathematical Logic*][461], [Undergraduate Texts in Mathematics][462], Berlin, DE/New York, NY: [Springer-Verlag][463], Second Edition, [ISBN][464] [978-0-387-94258-2][465]
-   Tarski, Alfred and Givant, Steven (1987); *A Formalization of Set Theory without Variables*. Vol.41 of American Mathematical Society colloquium publications, Providence RI: American Mathematical Society, [ISBN][466] [978-0821810415][467]

## External links\[[edit][468]\]

-   ["Predicate calculus"][469], *[Encyclopedia of Mathematics][470]*, [EMS Press][471], 2001 \[1994\]
-   [Stanford Encyclopedia of Philosophy][472]: Shapiro, Stewart; "[Classical Logic][473]". Covers syntax, model theory, and metatheory for first-order logic in the natural deduction style.
-   Magnus, P. D.; *[forall x: an introduction to formal logic][474]*. Covers formal semantics and proof theory for first-order logic.
-   [Metamath][475]: an ongoing online project to reconstruct mathematics as a huge first-order theory, using first-order logic and the [axiomatic set theory][476] [ZFC][477]. *[Principia Mathematica][478]* modernized.
-   Podnieks, Karl; *[Introduction to mathematical logic][479]*
-   [Cambridge Mathematical Tripos notes][480] (typeset by John Fremlin). These notes cover part of a past [Cambridge Mathematical Tripos][481] course taught to undergraduate students (usually) within their third year. The course is entitled "Logic, Computation and Set Theory" and covers Ordinals and cardinals, Posets and Zorn's Lemma, Propositional logic, Predicate logic, Set theory and Consistency issues related to ZFC and other set theories.
-   [Tree Proof Generator][482] can validate or invalidate formulas of first-order logic through the [semantic tableaux][483] method.

[1]: https://en.wikipedia.org/wiki/Higher-order_logic "Higher-order logic"
[2]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[3]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[4]: https://en.wikipedia.org/wiki/Philosophy "Philosophy"
[5]: https://en.wikipedia.org/wiki/Linguistics "Linguistics"
[6]: https://en.wikipedia.org/wiki/Computer_science "Computer science"
[7]: https://en.wikipedia.org/wiki/Quantification_(logic) "Quantification (logic)"
[8]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-1
[9]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[10]: https://en.wikipedia.org/wiki/Finitary_relation "Finitary relation"
[11]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-2
[12]: https://en.wikipedia.org/wiki/Domain_of_discourse "Domain of discourse"
[13]: https://en.wikipedia.org/wiki/Predicate_(mathematical_logic) "Predicate (mathematical logic)"
[14]: https://en.wikipedia.org/wiki/Higher-order_logic "Higher-order logic"
[15]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-3
[16]: https://en.wikipedia.org/wiki/Deductive_system "Deductive system"
[17]: https://en.wikipedia.org/wiki/Soundness#Logical_systems "Soundness"
[18]: https://en.wikipedia.org/wiki/Completeness_(logic) "Completeness (logic)"
[19]: https://en.wikipedia.org/wiki/Logical_consequence "Logical consequence"
[20]: https://en.wikipedia.org/wiki/Semidecidability "Semidecidability"
[21]: https://en.wikipedia.org/wiki/Automated_theorem_proving "Automated theorem proving"
[22]: https://en.wikipedia.org/wiki/Metalogic "Metalogic"
[23]: https://en.wikipedia.org/wiki/Proof_theory "Proof theory"
[24]: https://en.wikipedia.org/wiki/L%C3%B6wenheim%E2%80%93Skolem_theorem "Löwenheim–Skolem theorem"
[25]: https://en.wikipedia.org/wiki/Compactness_theorem "Compactness theorem"
[26]: https://en.wikipedia.org/wiki/Axiomatic_system "Axiomatic system"
[27]: https://en.wikipedia.org/wiki/Foundations_of_mathematics "Foundations of mathematics"
[28]: https://en.wikipedia.org/wiki/Peano_arithmetic "Peano arithmetic"
[29]: https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory "Zermelo–Fraenkel set theory"
[30]: https://en.wikipedia.org/wiki/Number_theory "Number theory"
[31]: https://en.wikipedia.org/wiki/Set_theory "Set theory"
[32]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[33]: https://en.wikipedia.org/wiki/Real_line "Real line"
[34]: https://en.wikipedia.org/wiki/Categorical_theory "Categorical theory"
[35]: https://en.wikipedia.org/wiki/Second-order_logic "Second-order logic"
[36]: https://en.wikipedia.org/wiki/Gottlob_Frege "Gottlob Frege"
[37]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce "Charles Sanders Peirce"
[38]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-4
[39]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=1 "Edit section: Introduction"
[40]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[41]: https://en.wikipedia.org/wiki/Predicate_(mathematical_logic) "Predicate (mathematical logic)"
[42]: https://en.wikipedia.org/wiki/Quantification_(logic) "Quantification (logic)"
[43]: https://en.wikipedia.org/wiki/Domain_of_discourse "Domain of discourse"
[44]: https://en.wikipedia.org/wiki/True_(logic) "True (logic)"
[45]: https://en.wikipedia.org/wiki/False_(logic) "False (logic)"
[46]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[47]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-5
[48]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[49]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[50]: https://en.wikipedia.org/wiki/Universal_quantifier "Universal quantifier"
[51]: https://en.wikipedia.org/wiki/Negation "Negation"
[52]: https://en.wikipedia.org/wiki/Existential_quantifier "Existential quantifier"
[53]: https://en.wikipedia.org/wiki/Domain_of_discourse "Domain of discourse"
[54]: https://en.wikipedia.org/wiki/Republic_(Plato) "Republic (Plato)"
[55]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=2 "Edit section: Syntax"
[56]: https://en.wikipedia.org/wiki/Syntax "Syntax"
[57]: https://en.wikipedia.org/wiki/Semantics "Semantics"
[58]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=3 "Edit section: Alphabet"
[59]: https://en.wikipedia.org/wiki/Formal_language "Formal language"
[60]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=4 "Edit section: Logical symbols"
[61]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-6
[62]: https://en.wikipedia.org/wiki/Quantifier_(logic) "Quantifier (logic)"
[63]: https://en.wikipedia.org/wiki/Universal_quantification "Universal quantification"
[64]: https://en.wikipedia.org/wiki/Existential_quantification "Existential quantification"
[65]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[66]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[67]: https://en.wikipedia.org/wiki/Disjunction "Disjunction"
[68]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[69]: https://en.wikipedia.org/wiki/Logical_biconditional "Logical biconditional"
[70]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-7
[71]: https://en.wikipedia.org/wiki/Polish_notation "Polish notation"
[72]: https://en.wikipedia.org/wiki/First-order_logic#Equality_and_its_axioms
[73]: https://en.wikipedia.org/wiki/Sheffer_stroke "Sheffer stroke"
[74]: https://en.wikipedia.org/wiki/Exclusive_or "Exclusive or"
[75]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=5 "Edit section: Non-logical symbols"
[76]: https://en.wikipedia.org/wiki/Non-logical_symbols "Non-logical symbols"
[77]: https://en.wikipedia.org/wiki/Signature_(logic) "Signature (logic)"
[78]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-8
[79]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-9
[80]: https://en.wikipedia.org/wiki/Arity "Arity"
[81]: https://en.wikipedia.org/wiki/Predicate_symbol "Predicate symbol"
[82]: https://en.wikipedia.org/wiki/Finitary_relation "Finitary relation"
[83]: https://en.wikipedia.org/wiki/Group_(mathematics) "Group (mathematics)"
[84]: https://en.wikipedia.org/wiki/Ordered_field "Ordered field"
[85]: https://en.wikipedia.org/wiki/Empty_set "Empty set"
[86]: https://en.wikipedia.org/wiki/Uncountable "Uncountable"
[87]: https://en.wikipedia.org/wiki/L%C3%B6wenheim%E2%80%93Skolem_theorem "Löwenheim–Skolem theorem"
[88]: https://en.wikipedia.org/wiki/Propositional_variable "Propositional variable"
[89]: https://en.wikipedia.org/wiki/Latin_script "Latin script"
[90]: https://en.wikipedia.org/wiki/Arithmetic "Arithmetic"
[91]: https://en.wikipedia.org/wiki/Set_theory "Set theory"
[92]: https://en.wikipedia.org/wiki/Power_set "Power set"
[93]: https://en.wikipedia.org/wiki/Empty_set "Empty set"
[94]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=6 "Edit section: Formation rules"
[95]: https://en.wikipedia.org/wiki/Formation_rule "Formation rule"
[96]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-12
[97]: https://en.wikipedia.org/wiki/Formal_grammar "Formal grammar"
[98]: https://en.wikipedia.org/wiki/Context-free_grammar "Context-free grammar"
[99]: https://en.wikipedia.org/wiki/First-order_logic#Terms "First-order logic"
[100]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=7 "Edit section: Terms"
[101]: https://en.wikipedia.org/wiki/Term_(logic) "Term (logic)"
[102]: https://en.wikipedia.org/wiki/Inductive_definition "Inductive definition"
[103]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=8 "Edit section: Formulas"
[104]: https://en.wikipedia.org/wiki/Formula_(mathematical_logic) "Formula (mathematical logic)"
[105]: https://en.wikipedia.org/wiki/Well-formed_formula "Well-formed formula"
[106]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-13
[107]: https://en.wikipedia.org/wiki/Logical_equality "Logical equality"
[108]: https://en.wikipedia.org/wiki/Atomic_formula "Atomic formula"
[109]: https://en.wikipedia.org/wiki/Parse_tree "Parse tree"
[110]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-14
[111]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=9 "Edit section: Notational conventions"
[112]: https://en.wikipedia.org/wiki/Order_of_operations "Order of operations"
[113]: https://en.wikipedia.org/wiki/Term_(logic)#Term_structure_vs._representation "Term (logic)"
[114]: https://en.wikipedia.org/wiki/Polish_notation "Polish notation"
[115]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=10 "Edit section: Free and bound variables"
[116]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-15
[117]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-16
[118]: https://en.wikipedia.org/wiki/Sentence_(mathematical_logic) "Sentence (mathematical logic)"
[119]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[120]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=11 "Edit section: Example: ordered abelian groups"
[121]: https://en.wikipedia.org/wiki/Abelian_groups "Abelian groups"
[122]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=12 "Edit section: Semantics"
[123]: https://en.wikipedia.org/wiki/Interpretation_(logic) "Interpretation (logic)"
[124]: https://en.wikipedia.org/wiki/Domain_of_discourse "Domain of discourse"
[125]: https://en.wikipedia.org/wiki/Formal_semantics_(logic) "Formal semantics (logic)"
[126]: https://en.wikipedia.org/wiki/Truth_definition#Tarski.27s_Theory "Truth definition"
[127]: https://en.wikipedia.org/wiki/Game_semantics#Classical_logic "Game semantics"
[128]: https://en.wikipedia.org/wiki/Axiom_of_choice "Axiom of choice"
[129]: https://en.wikipedia.org/wiki/Tuple "Tuple"
[130]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=13 "Edit section: First-order structures"
[131]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=14 "Edit section: Evaluation of truth values"
[132]: https://en.wikipedia.org/wiki/T-schema "T-schema"
[133]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[134]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=15 "Edit section: Validity, satisfiability, and logical consequence"
[135]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-17
[136]: https://en.wikipedia.org/wiki/Universal_closure "Universal closure"
[137]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-18
[138]: https://en.wikipedia.org/wiki/Tautology_(logic) "Tautology (logic)"
[139]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=16 "Edit section: Algebraizations"
[140]: https://en.wikipedia.org/wiki/Abstract_algebra "Abstract algebra"
[141]: https://en.wikipedia.org/wiki/Lindenbaum%E2%80%93Tarski_algebra "Lindenbaum–Tarski algebra"
[142]: https://en.wikipedia.org/wiki/Cylindric_algebra "Cylindric algebra"
[143]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[144]: https://en.wikipedia.org/wiki/Polyadic_algebra "Polyadic algebra"
[145]: https://en.wikipedia.org/wiki/Paul_Halmos "Paul Halmos"
[146]: https://en.wikipedia.org/wiki/Predicate_functor_logic "Predicate functor logic"
[147]: https://en.wikipedia.org/wiki/Willard_Van_Orman_Quine "Willard Van Orman Quine"
[148]: https://en.wikipedia.org/wiki/Algebra "Algebra"
[149]: https://en.wikipedia.org/wiki/Lattice_(order) "Lattice (order)"
[150]: https://en.wikipedia.org/wiki/Two-element_Boolean_algebra "Two-element Boolean algebra"
[151]: https://en.wikipedia.org/wiki/Atomic_sentence "Atomic sentence"
[152]: https://en.wikipedia.org/wiki/Relation_algebra "Relation algebra"
[153]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-19
[154]: https://en.wikipedia.org/wiki/Peano_arithmetic "Peano arithmetic"
[155]: https://en.wikipedia.org/wiki/Axiomatic_set_theory "Axiomatic set theory"
[156]: https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory "Zermelo–Fraenkel set theory"
[157]: https://en.wikipedia.org/wiki/Ordered_pair "Ordered pair"
[158]: https://en.wikipedia.org/wiki/Projection_function "Projection function"
[159]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-20
[160]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=17 "Edit section: First-order theories, models, and elementary classes"
[161]: https://en.wikipedia.org/wiki/Axiom "Axiom"
[162]: https://en.wikipedia.org/wiki/Recursively_enumerable "Recursively enumerable"
[163]: https://en.wikipedia.org/wiki/Elementary_class "Elementary class"
[164]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[165]: https://en.wikipedia.org/wiki/Intended_interpretation "Intended interpretation"
[166]: https://en.wikipedia.org/wiki/Peano_arithmetic "Peano arithmetic"
[167]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[168]: https://en.wikipedia.org/wiki/Nonstandard_model "Nonstandard model"
[169]: https://en.wikipedia.org/wiki/Consistency "Consistency"
[170]: https://en.wikipedia.org/wiki/Complete_theory "Complete theory"
[171]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorem "Gödel's incompleteness theorem"
[172]: https://en.wikipedia.org/wiki/List_of_first-order_theories "List of first-order theories"
[173]: https://en.wikipedia.org/wiki/Theory_(mathematical_logic) "Theory (mathematical logic)"
[174]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=18 "Edit section: Empty domains"
[175]: https://en.wikipedia.org/wiki/Inclusive_logic "Inclusive logic"
[176]: https://en.wikipedia.org/wiki/Poset "Poset"
[177]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=19 "Edit section: Deductive systems"
[178]: https://en.wikipedia.org/wiki/Hilbert-style_deductive_system "Hilbert-style deductive system"
[179]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[180]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[181]: https://en.wikipedia.org/wiki/Method_of_analytic_tableaux "Method of analytic tableaux"
[182]: https://en.wikipedia.org/wiki/Resolution_(logic) "Resolution (logic)"
[183]: https://en.wikipedia.org/wiki/Mathematical_proofs "Mathematical proofs"
[184]: https://en.wikipedia.org/wiki/Semidecidability "Semidecidability"
[185]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=20 "Edit section: Rules of inference"
[186]: https://en.wikipedia.org/wiki/Rule_of_inference "Rule of inference"
[187]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=21 "Edit section: Hilbert-style systems and natural deduction"
[188]: https://en.wikipedia.org/wiki/Axiom_schema "Axiom schema"
[189]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[190]: https://en.wikipedia.org/wiki/Universal_generalization "Universal generalization"
[191]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=22 "Edit section: Sequent calculus"
[192]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-21
[193]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=23 "Edit section: Tableaux method"
[194]: https://en.wikipedia.org/wiki/File:Prop-tableau-4.svg
[195]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[196]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=24 "Edit section: Resolution"
[197]: https://en.wikipedia.org/wiki/Resolution_(logic) "Resolution (logic)"
[198]: https://en.wikipedia.org/wiki/Unification_(computing)#Definition_of_unification_for_first-order_logic "Unification (computing)"
[199]: https://en.wikipedia.org/wiki/Skolemization "Skolemization"
[200]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=25 "Edit section: Provable identities"
[201]: https://en.wikipedia.org/wiki/Prenex_normal_form "Prenex normal form"
[202]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=26 "Edit section: Equality and its axioms"
[203]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-22
[204]: https://en.wikipedia.org/wiki/Axiom_schema "Axiom schema"
[205]: https://en.wikipedia.org/wiki/Identity_of_indiscernibles#Indiscernibility_of_identicals "Identity of indiscernibles"
[206]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-23
[207]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-24
[208]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=27 "Edit section: First-order logic without equality"
[209]: https://en.wikipedia.org/wiki/Equivalence_relation "Equivalence relation"
[210]: https://en.wikipedia.org/wiki/Congruence_relation "Congruence relation"
[211]: https://en.wikipedia.org/wiki/L%C3%B6wenheim%E2%80%93Skolem_theorem "Löwenheim–Skolem theorem"
[212]: https://en.wikipedia.org/wiki/Second-order_arithmetic "Second-order arithmetic"
[213]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=28 "Edit section: Defining equality within a theory"
[214]: https://en.wikipedia.org/wiki/Definitional_extension "Definitional extension"
[215]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=29 "Edit section: Metalogical properties"
[216]: https://en.wikipedia.org/wiki/Higher-order_logic "Higher-order logic"
[217]: https://en.wikipedia.org/wiki/Metalogic "Metalogic"
[218]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=30 "Edit section: Completeness and undecidability"
[219]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_completeness_theorem "Gödel's completeness theorem"
[220]: https://en.wikipedia.org/wiki/Kurt_G%C3%B6del "Kurt Gödel"
[221]: https://en.wikipedia.org/wiki/Semidecidable "Semidecidable"
[222]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[223]: https://en.wikipedia.org/wiki/Decidability_(logic) "Decidability (logic)"
[224]: https://en.wikipedia.org/wiki/Decision_procedure "Decision procedure"
[225]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[226]: https://en.wikipedia.org/wiki/Alan_Turing "Alan Turing"
[227]: https://en.wikipedia.org/wiki/Entscheidungsproblem "Entscheidungsproblem"
[228]: https://en.wikipedia.org/wiki/David_Hilbert "David Hilbert"
[229]: https://en.wikipedia.org/wiki/Wilhelm_Ackermann "Wilhelm Ackermann"
[230]: https://en.wikipedia.org/wiki/Halting_problem "Halting problem"
[231]: https://en.wikipedia.org/wiki/Monadic_predicate_logic "Monadic predicate logic"
[232]: https://en.wikipedia.org/wiki/Guarded_fragment "Guarded fragment"
[233]: https://en.wikipedia.org/wiki/Two-variable_logic "Two-variable logic"
[234]: https://en.wikipedia.org/wiki/Bernays%E2%80%93Sch%C3%B6nfinkel_class "Bernays–Schönfinkel class"
[235]: https://en.wikipedia.org/wiki/Description_logics "Description logics"
[236]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=31 "Edit section: The Löwenheim–Skolem theorem"
[237]: https://en.wikipedia.org/wiki/L%C3%B6wenheim%E2%80%93Skolem_theorem "Löwenheim–Skolem theorem"
[238]: https://en.wikipedia.org/wiki/Cardinality "Cardinality"
[239]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[240]: https://en.wikipedia.org/wiki/Countable_set "Countable set"
[241]: https://en.wikipedia.org/wiki/Categorical_theory "Categorical theory"
[242]: https://en.wikipedia.org/wiki/Nonstandard_model "Nonstandard model"
[243]: https://en.wikipedia.org/wiki/Skolem%27s_paradox "Skolem's paradox"
[244]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=32 "Edit section: The compactness theorem"
[245]: https://en.wikipedia.org/wiki/Compactness_theorem "Compactness theorem"
[246]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-25
[247]: https://en.wikipedia.org/wiki/Graph_(discrete_mathematics) "Graph (discrete mathematics)"
[248]: https://en.wikipedia.org/wiki/Directed_graph "Directed graph"
[249]: https://en.wikipedia.org/wiki/Connected_component_(graph_theory) "Connected component (graph theory)"
[250]: https://en.wikipedia.org/wiki/Logic_of_graphs "Logic of graphs"
[251]: https://en.wikipedia.org/wiki/Second-order_logic "Second-order logic"
[252]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=33 "Edit section: Lindström's theorem"
[253]: https://en.wikipedia.org/wiki/Per_Lindstr%C3%B6m "Per Lindström"
[254]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=34 "Edit section: Limitations"
[255]: https://en.wikipedia.org/wiki/Counting_quantifiers "Counting quantifiers"
[256]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-26
[257]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=35 "Edit section: Expressiveness"
[258]: https://en.wikipedia.org/wiki/L%C3%B6wenheim%E2%80%93Skolem_theorem "Löwenheim–Skolem theorem"
[259]: https://en.wikipedia.org/wiki/Morley%27s_categoricity_theorem "Morley's categoricity theorem"
[260]: https://en.wikipedia.org/wiki/Lindstr%C3%B6m%27s_theorem "Lindström's theorem"
[261]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=36 "Edit section: Formalizing natural languages"
[262]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-FOOTNOTEGamut199175-27
[263]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=37 "Edit section: Restrictions, extensions, and variations"
[264]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=38 "Edit section: Restricted languages"
[265]: https://en.wikipedia.org/wiki/Sheffer_stroke "Sheffer stroke"
[266]: https://en.wikipedia.org/wiki/Peirce_arrow "Peirce arrow"
[267]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-28
[268]: https://en.wikipedia.org/wiki/Pairing_function "Pairing function"
[269]: https://en.wikipedia.org/wiki/Ordered_pair "Ordered pair"
[270]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=39 "Edit section: Many-sorted logic"
[271]: https://en.wikipedia.org/wiki/Data_type "Data type"
[272]: https://en.wikipedia.org/wiki/Type_theory "Type theory"
[273]: https://en.wikipedia.org/wiki/Second-order_arithmetic "Second-order arithmetic"
[274]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-29
[275]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-30
[276]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=40 "Edit section: Additional quantifiers"
[277]: https://en.wikipedia.org/wiki/Uniqueness_quantification "Uniqueness quantification"
[278]: https://en.wikipedia.org/wiki/Branching_quantifier "Branching quantifier"
[279]: https://en.wikipedia.org/wiki/Plural_quantification "Plural quantification"
[280]: https://en.wikipedia.org/wiki/George_Boolos "George Boolos"
[281]: https://en.wikipedia.org/wiki/Bounded_quantifier "Bounded quantifier"
[282]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=41 "Edit section: Infinitary logics"
[283]: https://en.wikipedia.org/wiki/Topology "Topology"
[284]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[285]: https://en.wikipedia.org/wiki/Cardinal_number "Cardinal number"
[286]: https://en.wikipedia.org/wiki/Countable_set "Countable set"
[287]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-31
[288]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=42 "Edit section: Non-classical and modal logics"
[289]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[290]: https://en.wikipedia.org/wiki/Modal_logic "Modal logic"
[291]: https://en.wikipedia.org/wiki/T-norm_fuzzy_logics "T-norm fuzzy logics"
[292]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[293]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=43 "Edit section: Fixpoint logic"
[294]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-32
[295]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=44 "Edit section: Higher-order logics"
[296]: https://en.wikipedia.org/wiki/Second-order_logic "Second-order logic"
[297]: https://en.wikipedia.org/wiki/Higher-order_logic "Higher-order logic"
[298]: https://en.wikipedia.org/wiki/Type_theory "Type theory"
[299]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=45 "Edit section: Automated theorem proving and formal methods"
[300]: https://en.wikipedia.org/wiki/Automated_theorem_proving "Automated theorem proving"
[301]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-Fitting2012-33
[302]: https://en.wikipedia.org/wiki/Search_algorithm "Search algorithm"
[303]: https://en.wikipedia.org/wiki/Computational_complexity_theory "Computational complexity theory"
[304]: https://en.wikipedia.org/wiki/Heuristic_function "Heuristic function"
[305]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[306]: https://en.wikipedia.org/wiki/Proof_verification "Proof verification"
[307]: https://en.wikipedia.org/wiki/Metamath "Metamath"
[308]: https://en.wikipedia.org/wiki/Mizar_system "Mizar system"
[309]: https://en.wikipedia.org/wiki/Isabelle_(theorem_prover) "Isabelle (theorem prover)"
[310]: https://en.wikipedia.org/wiki/Proof_assistant "Proof assistant"
[311]: https://en.wikipedia.org/wiki/First-order_logic#cite_note-34
[312]: https://en.wikipedia.org/wiki/Formal_verification "Formal verification"
[313]: https://en.wikipedia.org/wiki/CPU "CPU"
[314]: https://en.wikipedia.org/wiki/Formal_specification "Formal specification"
[315]: https://en.wikipedia.org/wiki/Model_checking "Model checking"
[316]: https://en.wikipedia.org/wiki/Algorithm "Algorithm"
[317]: https://en.wikipedia.org/wiki/Decision_problem "Decision problem"
[318]: https://en.wikipedia.org/wiki/Computational_complexity "Computational complexity"
[319]: https://en.wikipedia.org/wiki/Model_checking#First-order_logic "Model checking"
[320]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=46 "Edit section: See also"
[321]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=47 "Edit section: Notes"
[322]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-1 "Jump up"
[323]: http://people.sju.edu/~jhodgson/ugai/1order.html
[324]: https://en.wikipedia.org/wiki/Saint_Joseph%27s_University "Saint Joseph's University"
[325]: https://en.wikipedia.org/wiki/Philadelphia "Philadelphia"
[326]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-2 "Jump up"
[327]: https://en.wikipedia.org/wiki/George_Edward_Hughes "George Edward Hughes"
[328]: https://en.wikipedia.org/wiki/Max_Cresswell "Max Cresswell"
[329]: https://books.google.com/books?id=Dsn1xWNB4MEC&printsec=frontcover#v=onepage&q=%22first-order%20logic%22&f=false
[330]: https://en.wikipedia.org/wiki/London "London"
[331]: https://en.wikipedia.org/wiki/Routledge "Routledge"
[332]: https://books.google.cz/books?id=_CB5wiBeaA4C&pg=PA161#v=onepage&q&f=false
[333]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-3 "Jump up"
[334]: https://en.wikipedia.org/wiki/Elliott_Mendelson "Elliott Mendelson"
[335]: https://en.wikipedia.org/wiki/Wiley_(publisher) "Wiley (publisher)"
[336]: https://books.google.com/books?id=UkP0BwAAQBAJ&lpg=PP1&hl=de&pg=PA56
[337]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-4 "Jump up"
[338]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-5 "Jump up"
[339]: https://en.wikipedia.org/wiki/Ben_Goertzel "Ben Goertzel"
[340]: https://en.wikipedia.org/wiki/Amsterdam "Amsterdam"
[341]: https://en.wikipedia.org/wiki/Paris "Paris"
[342]: https://en.wikipedia.org/wiki/Springer_Science%2BBusiness_Media "Springer Science+Business Media"
[343]: https://books.google.com/books?id=g7UAIhnmJpsC&pg=PA29#v=onepage&q&f=false
[344]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-6 "Jump up"
[345]: https://brilliant.org/wiki/predicate-logic/
[346]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-7 "Jump up"
[347]: http://cstl-cla.semo.edu/hhill/pl120/notes/wffs.html
[348]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-8 "Jump up"
[349]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-9 "Jump up"
[350]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-10 "Jump up"
[351]: https://math.stackexchange.com/q/2616455
[352]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-11 "Jump up"
[353]: https://books.google.com/books?id=I4qfBgAAQBAJ&lpg=PP1&hl=de&pg=PA300
[354]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-12 "Jump up"
[355]: https://en.wikipedia.org/wiki/Raymond_Smullyan "Raymond Smullyan"
[356]: https://en.wikipedia.org/wiki/New_York_City "New York City"
[357]: https://en.wikipedia.org/wiki/Dover_Publications "Dover Publications"
[358]: https://books.google.com/books?id=kgvhQ-oSZiUC&pg=PA5#v=onepage&q&f=false
[359]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-13 "Jump up"
[360]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-14 "Jump up"
[361]: http://smtlib.cs.uiowa.edu/language.shtml
[362]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-15 "Jump up"
[363]: https://www.geeksforgeeks.org/mathematic-logic-predicates-quantifiers/
[364]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-16 "Jump up"
[365]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-17 "Jump up"
[366]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-18 "Jump up"
[367]: https://en.wikipedia.org/wiki/Elsevier#Imprints "Elsevier"
[368]: https://books.google.com/books?id=fJziBQAAQBAJ&pg=PA39
[369]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-19 "Jump up"
[370]: https://en.wikipedia.org/wiki/Chris_Brink "Chris Brink"
[371]: https://en.wikipedia.org/wiki/Gunther_Schmidt "Gunther Schmidt"
[372]: https://en.wikipedia.org/wiki/Berlin "Berlin"
[373]: https://en.wikipedia.org/wiki/Heidelberg "Heidelberg"
[374]: https://en.wikipedia.org/wiki/Springer_Science%2BBusiness_Media "Springer Science+Business Media"
[375]: https://books.google.com/books?id=p0qqCAAAQBAJ&pg=PA32
[376]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-20 "Jump up"
[377]: https://en.wikipedia.org/wiki/Mathematical_Reviews "Mathematical Reviews"
[378]: https://en.wikipedia.org/wiki/Providence,_Rhode_Island "Providence, Rhode Island"
[379]: https://en.wikipedia.org/wiki/American_Mathematical_Society "American Mathematical Society"
[380]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-21 "Jump up"
[381]: https://en.wikipedia.org/wiki/Natarajan_Shankar "Natarajan Shankar"
[382]: https://en.wikipedia.org/wiki/John_Rushby "John Rushby"
[383]: http://pvs.csl.sri.com/doc/pvs-prover-guide.pdf
[384]: https://en.wikipedia.org/wiki/Menlo_Park,_California "Menlo Park, California"
[385]: https://en.wikipedia.org/wiki/SRI_International "SRI International"
[386]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-22 "Jump up"
[387]: https://en.wikipedia.org/wiki/Melvin_Fitting "Melvin Fitting"
[388]: https://books.google.com/books?id=eaXbBwAAQBAJ&pg=PT198
[389]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-23 "Jump up"
[390]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-24 "Jump up"
[391]: https://en.wikipedia.org/wiki/Uncurrying "Uncurrying"
[392]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-25 "Jump up"
[393]: https://en.wikipedia.org/wiki/Mineola,_New_York "Mineola, New York"
[394]: https://en.wikipedia.org/wiki/Dover_Publications "Dover Publications"
[395]: https://books.google.com/books?id=SxRYdzWio84C&pg=PA199
[396]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-26 "Jump up"
[397]: http://www.cs.ox.ac.uk/ian.horrocks/Seminars/download/semtech-tutorial-pt1.pdf
[398]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-FOOTNOTEGamut199175_27-0 "Jump up"
[399]: https://en.wikipedia.org/wiki/First-order_logic#CITEREFGamut1991
[400]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-28 "Jump up"
[401]: https://en.wikipedia.org/wiki/Left-total "Left-total"
[402]: https://en.wikipedia.org/wiki/Right-unique "Right-unique"
[403]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-29 "Jump up"
[404]: https://plato.stanford.edu/entries/quantification/
[405]: https://en.wikipedia.org/wiki/Edward_N._Zalta "Edward N. Zalta"
[406]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
[407]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-30 "Jump up"
[408]: https://en.wikipedia.org/wiki/Herbert_Enderton "Herbert Enderton"
[409]: https://en.wikipedia.org/wiki/Academic_Press "Academic Press"
[410]: https://books.google.com/books?id=dVncCl_EtUkC&pg=PT296
[411]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-31 "Jump up"
[412]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-32 "Jump up"
[413]: https://en.wikipedia.org/wiki/Springer-Verlag "Springer-Verlag"
[414]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[415]: https://en.wikipedia.org/wiki/Special:BookSources/3-540-56992-8 "Special:BookSources/3-540-56992-8"
[416]: https://en.wikipedia.org/wiki/Zbl_(identifier) "Zbl (identifier)"
[417]: https://zbmath.org/?format=complete&q=an:0808.03024
[418]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-Fitting2012_33-0 "Jump up"
[419]: https://books.google.com/books?id=133kBwAAQBAJ
[420]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[421]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-4612-2360-3 "Special:BookSources/978-1-4612-2360-3"
[422]: https://en.wikipedia.org/wiki/First-order_logic#cite_ref-34 "Jump up"
[423]: https://en.wikipedia.org/wiki/Jeremy_Avigad "Jeremy Avigad"
[424]: https://en.wikipedia.org/wiki/Prime_number_theorem "Prime number theorem"
[425]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=48 "Edit section: References"
[426]: https://en.wikipedia.org/wiki/Wolfgang_Rautenberg "Wolfgang Rautenberg"
[427]: https://en.wikipedia.org/wiki/New_York_City "New York City"
[428]: https://en.wikipedia.org/wiki/Springer_Science%2BBusiness_Media "Springer Science+Business Media"
[429]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[430]: https://doi.org/10.1007%2F978-1-4419-1221-3
[431]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[432]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-4419-1220-6 "Special:BookSources/978-1-4419-1220-6"
[433]: https://en.wikipedia.org/wiki/Peter_B._Andrews "Peter B. Andrews"
[434]: https://books.google.com/books?id=nV4zAsWAvT0C&printsec=frontcover#v=onepage&q=%22first-order%20logic%22&f=false
[435]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[436]: https://doi.org/10.1145%2F1297658.1297660
[437]: https://en.wikipedia.org/wiki/Jon_Barwise "Jon Barwise"
[438]: https://books.google.com/books?id=b0Fvrw9tBcMC&pg=PA5
[439]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[440]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-444-86388-1 "Special:BookSources/978-0-444-86388-1"
[441]: https://doi.org/10.1007/978-1-4684-9452-5
[442]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[443]: https://doi.org/10.1007%2F978-1-4684-9452-5
[444]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[445]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-4684-9454-9 "Special:BookSources/978-1-4684-9454-9"
[446]: https://en.wikipedia.org/wiki/John_Etchemendy "John Etchemendy"
[447]: https://en.wikipedia.org/wiki/J%C3%B3zef_Maria_Boche%C5%84ski "Józef Maria Bocheński"
[448]: http://jstor.org/stable/2687794
[449]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[450]: https://doi.org/10.2307%2F2687794
[451]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[452]: https://www.jstor.org/stable/2687794
[453]: https://en.wikipedia.org/wiki/L._T._F._Gamut "L. T. F. Gamut"
[454]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[455]: https://en.wikipedia.org/wiki/Special:BookSources/0-226-28088-8 "Special:BookSources/0-226-28088-8"
[456]: https://en.wikipedia.org/wiki/David_Hilbert "David Hilbert"
[457]: https://en.wikipedia.org/wiki/Wilhelm_Ackermann "Wilhelm Ackermann"
[458]: https://en.wikipedia.org/wiki/Principles_of_Mathematical_Logic "Principles of Mathematical Logic"
[459]: https://en.wikipedia.org/wiki/Wilfrid_Hodges "Wilfrid Hodges"
[460]: https://en.wikipedia.org/wiki/Heinz-Dieter_Ebbinghaus "Heinz-Dieter Ebbinghaus"
[461]: https://books.google.com/books?id=4sbSBwAAQBAJ&printsec=frontcover&hl=iw&source=gbs_ge_summary_r&cad=0#v=onepage&q&f=false%7C
[462]: https://en.wikipedia.org/wiki/Undergraduate_Texts_in_Mathematics "Undergraduate Texts in Mathematics"
[463]: https://en.wikipedia.org/wiki/Springer-Verlag "Springer-Verlag"
[464]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[465]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-387-94258-2 "Special:BookSources/978-0-387-94258-2"
[466]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[467]: https://en.wikipedia.org/wiki/Special:BookSources/978-0821810415 "Special:BookSources/978-0821810415"
[468]: https://en.wikipedia.org/w/index.php?title=First-order_logic&action=edit&section=49 "Edit section: External links"
[469]: https://www.encyclopediaofmath.org/index.php?title=Predicate_calculus
[470]: https://en.wikipedia.org/wiki/Encyclopedia_of_Mathematics "Encyclopedia of Mathematics"
[471]: https://en.wikipedia.org/wiki/European_Mathematical_Society "European Mathematical Society"
[472]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
[473]: http://plato.stanford.edu/entries/logic-classical/
[474]: http://www.fecundity.com/logic/
[475]: http://us.metamath.org/index.html
[476]: https://en.wikipedia.org/wiki/Axiomatic_set_theory "Axiomatic set theory"
[477]: https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory "Zermelo–Fraenkel set theory"
[478]: https://en.wikipedia.org/wiki/Principia_Mathematica "Principia Mathematica"
[479]: http://www.ltn.lv/~podnieks/
[480]: http://john.fremlin.de/schoolwork/logic/index.html
[481]: https://en.wikipedia.org/wiki/Mathematical_Tripos "Mathematical Tripos"
[482]: http://www.umsu.de/logik/trees/
[483]: https://en.wikipedia.org/wiki/Semantic_tableaux "Semantic tableaux"
