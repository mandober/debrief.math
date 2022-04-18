---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Propositional_calculus
page-title:       Propositional calculus - Wikipedia
article-title:    Propositional calculus - Wikipedia
---
# Propositional calculus - Wikipedia

Propositional calculus is a branch of logic.  It is also called propositional logic, statement logic, sentential calculus, sentential logic, or sometimes zeroth-order logic. It deals with propositions (which can be true or false) and relations between propositions, including the construction of arguments based on them. Compound propositions are formed by connecting propositions by logical connectives. Propositions that contain no logical connectives are called atomic propositions.
__Propositional calculus__ is a branch of [logic][1]. It is also called __propositional logic__, __statement logic__, __sentential calculus__, __sentential logic__, or sometimes __[zeroth-order logic][2]__. It deals with [propositions][3] (which can be true or false) and relations between propositions, including the construction of arguments based on them. Compound propositions are formed by connecting propositions by [logical connectives][4]. Propositions that contain no logical connectives are called atomic propositions.

Unlike [first-order logic][5], propositional logic does not deal with non-logical objects, predicates about them, or [quantifiers][6]. However, all the machinery of propositional logic is included in first-order logic and higher-order logics. In this sense, propositional logic is the foundation of first-order logic and higher-order logic.

## Explanation\[[edit][7]\]

Logical connectives are found in natural languages. In English for example, some examples are "and" ([conjunction][8]), "or" ([disjunction][9]), "not" ([negation][10]) and "if" (but only when used to denote [material conditional][11]).

The following is an example of a very simple inference within the scope of propositional logic:

Premise 1: If it's raining then it's cloudy.

Premise 2: It's raining.

Conclusion: It's cloudy.

Both premises and the conclusion are propositions. The premises are taken for granted, and with the application of [modus ponens][12] (an [inference rule][13]), the conclusion follows.

As propositional logic is not concerned with the structure of propositions beyond the point where they can't be decomposed any more by logical connectives, this inference can be restated replacing those *atomic* statements with statement letters, which are interpreted as variables representing statements:

Premise 1: ![P\to Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/d7cad5b2c2991ae1dbded560c5d875fbf49fe8ea)

Premise 2: ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a)

Conclusion: ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed)

The same can be stated succinctly in the following way:

![P\to Q,P\vdash Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/2f6b1bf712367f9c2db9774415f397953dda2fc8)

When P is interpreted as "It's raining" and Q as "it's cloudy" the above symbolic expressions can be seen to correspond exactly with the original expression in natural language. Not only that, but they will also correspond with any other inference of this *form*, which will be valid on the same basis this inference is.

Propositional logic may be studied through a [formal system][14] in which [formulas][15] of a [formal language][16] may be [interpreted][17] to represent [propositions][18]. A [system][19] of [axioms][20] and [inference rules][21] allows certain formulas to be derived. These derived formulas are called [theorems][22] and may be interpreted to be true propositions. A constructed sequence of such formulas is known as a *[derivation][23]* or *proof* and the last formula of the sequence is the theorem. The derivation may be interpreted as proof of the proposition represented by the theorem.

When a formal system is used to represent formal logic, only statement letters (usually capital roman letters such as ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a), ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) and ![R](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b0bfb3769bf24d80e15374dc37b0441e2616e33)) are represented directly. The natural language propositions that arise when they're interpreted are outside the scope of the system, and the relation between the formal system and its interpretation is likewise outside the formal system itself.

In classical __truth-functional propositional logic__, formulas are interpreted as having precisely one of two possible [truth values][24], the truth value of *true* or the truth value of *false*.[\[1\]][25] The [principle of bivalence][26] and the [law of excluded middle][27] are upheld. Truth-functional propositional logic defined as such and systems [isomorphic][28] to it are considered to be __[zeroth-order logic][29]__. However, alternative propositional logics are also possible. For more, see [Other logical calculi][30] below.

## History\[[edit][31]\]

Although propositional logic (which is interchangeable with propositional calculus) had been hinted by earlier philosophers, it was developed into a formal logic ([Stoic logic][32]) by [Chrysippus][33] in the 3rd century BC[\[2\]][34] and expanded by his successor [Stoics][35]. The logic was focused on [propositions][36]. This advancement was different from the traditional [syllogistic logic][37], which was focused on [terms][38]. However, most of the original writings were lost[\[3\]][39] and the propositional logic developed by the Stoics was no longer understood later in antiquity.\[*[citation needed][40]*\] Consequently, the system was essentially reinvented by [Peter Abelard][41] in the 12th century.[\[4\]][42]

Propositional logic was eventually refined using [symbolic logic][43]. The 17th/18th-century mathematician [Gottfried Leibniz][44] has been credited with being the founder of symbolic logic for his work with the [calculus ratiocinator][45]. Although his work was the first of its kind, it was unknown to the larger logical community. Consequently, many of the advances achieved by Leibniz were recreated by logicians like [George Boole][46] and [Augustus De Morgan][47]—completely independent of Leibniz.[\[5\]][48]

Just as propositional logic can be considered an advancement from the earlier syllogistic logic, [Gottlob Frege's][49] [predicate logic][50] can be also considered an advancement from the earlier propositional logic. One author describes predicate logic as combining "the distinctive features of syllogistic logic and propositional logic."[\[6\]][51] Consequently, predicate logic ushered in a new era in logic's history; however, advances in propositional logic were still made after Frege, including [natural deduction][52], [truth trees][53] and [truth tables][54]. Natural deduction was invented by [Gerhard Gentzen][55] and [Jan Łukasiewicz][56]. Truth trees were invented by [Evert Willem Beth][57].[\[7\]][58] The invention of truth tables, however, is of uncertain attribution.

Within works by Frege[\[8\]][59] and [Bertrand Russell][60],[\[9\]][61] are ideas influential to the invention of truth tables. The actual tabular structure (being formatted as a table), itself, is generally credited to either [Ludwig Wittgenstein][62] or [Emil Post][63] (or both, independently).[\[8\]][64] Besides Frege and Russell, others credited with having ideas preceding truth tables include Philo, Boole, [Charles Sanders Peirce][65],[\[10\]][66] and [Ernst Schröder][67]. Others credited with the tabular structure include [Jan Łukasiewicz][68], [Alfred North Whitehead][69], [William Stanley Jevons][70], [John Venn][71], and [Clarence Irving Lewis][72].[\[9\]][73] Ultimately, some have concluded, like John Shosky, that "It is far from clear that any one person should be given the title of 'inventor' of truth-tables.".[\[9\]][74]

## Terminology\[[edit][75]\]

In general terms, a calculus is a [formal system][76] that consists of a set of syntactic expressions (*[well-formed formulas][77]*), a distinguished subset of these expressions (axioms), plus a set of formal rules that define a specific [binary relation][78], intended to be interpreted as [logical equivalence][79], on the space of expressions.

When the formal system is intended to be a [logical system][80], the expressions are meant to be interpreted as statements, and the rules, known to be *inference rules*, are typically intended to be truth-preserving. In this setting, the rules, which may include [axioms][81], can then be used to derive ("infer") formulas representing true statements—from given formulas representing true statements.

The set of axioms may be empty, a nonempty finite set, or a countably infinite set (see [axiom schema][82]). A [formal grammar][83] recursively defines the expressions and well-formed formulas of the [language][84]. In addition a [semantics][85] may be given which defines truth and [valuations][86] (or [interpretations][87]).

The [language][88] of a propositional calculus consists of

1.  a set of primitive symbols, variously referred to as *[atomic formulas][89]*, *placeholders*, *proposition letters*, or *variables*, and
2.  a set of operator symbols, variously interpreted as *[logical operators][90]* or *logical connectives*.

A *[well-formed formula][91]* is any atomic formula, or any formula that can be built up from atomic formulas by means of operator symbols according to the rules of the grammar.

Mathematicians sometimes distinguish between propositional constants, propositional variables, and schemata. Propositional constants represent some particular proposition, while propositional variables range over the set of all atomic propositions. Schemata, however, range over all propositions. It is common to represent propositional constants by A, B, and C, propositional variables by P, Q, and R, and schematic letters are often Greek letters, most often φ, ψ, and χ.

## Basic concepts\[[edit][92]\]

The following outlines a standard propositional calculus. Many different formulations exist which are all more or less equivalent, but differ in the details of:

1.  their language (i.e., the particular collection of primitive symbols and operator symbols),
2.  the set of axioms, or distinguished formulas, and
3.  the set of inference rules.

Any given proposition may be represented with a letter called a 'propositional constant', analogous to representing a number by a letter in mathematics (e.g., *a* = 5). All propositions require exactly one of two truth-values: true or false. For example, let P be the proposition that it is raining outside. This will be true (P) if it is raining outside, and false otherwise (¬*P*).

-   We then define [truth-functional][93] operators, beginning with negation. ¬*P* represents the negation of P, which can be thought of as the denial of P. In the example above, ¬*P* expresses that it is not raining outside, or by a more standard reading: "It is not the case that it is raining outside." When P is true, ¬*P* is false; and when P is false, ¬*P* is true. As a result, ¬ ¬*P* always has the same truth-value as P.
-   Conjunction is a truth-functional connective which forms a proposition out of two simpler propositions, for example, P and Q. The conjunction of P and Q is written *P* ∧ *Q*, and expresses that each are true. We read *P* ∧ *Q* as "P and Q". For any two propositions, there are four possible assignments of truth values:
    1.  P is true and Q is true
    2.  P is true and Q is false
    3.  P is false and Q is true
    4.  P is false and Q is false

The conjunction of P and Q is true in case 1, and is false otherwise. Where P is the proposition that it is raining outside and Q is the proposition that a cold-front is over Kansas, *P* ∧ *Q* is true when it is raining outside *and* there is a cold-front over Kansas. If it is not raining outside, then P ∧ Q is false; and if there is no cold-front over Kansas, then *P* ∧ *Q* is also false.

-   Disjunction resembles conjunction in that it forms a proposition out of two simpler propositions. We write it *P* ∨ *Q*, and it is read "P or Q". It expresses that either P or Q is true. Thus, in the cases listed above, the disjunction of P with Q is true in all cases—except case 4. Using the example above, the disjunction expresses that it is either raining outside, or there is a cold front over Kansas. (Note, this use of disjunction is supposed to resemble the use of the English word "or". However, it is most like the English [inclusive][94] "or", which can be used to express the truth of at least one of two propositions. It is not like the English [exclusive][95] "or", which expresses the truth of exactly one of two propositions. In other words, the exclusive "or" is false when both P and Q are true (case 1). An example of the exclusive or is: You may have a bagel or a pastry, but not both. Often in natural language, given the appropriate context, the addendum "but not both" is omitted—but implied. In mathematics, however, "or" is always inclusive or; if exclusive or is meant it will be specified, possibly by "xor".)
-   Material conditional also joins two simpler propositions, and we write *P* → *Q*, which is read "if P then Q". The proposition to the left of the arrow is called the antecedent, and the proposition to the right is called the consequent. (There is no such designation for conjunction or disjunction, since they are commutative operations.) It expresses that Q is true whenever P is true. Thus *P* → *Q* is true in every case above except case 2, because this is the only case when P is true but Q is not. Using the example, if P then Q expresses that if it is raining outside, then there is a cold-front over Kansas. The material conditional is often confused with physical causation. The material conditional, however, only relates two propositions by their truth-values—which is not the relation of cause and effect. It is contentious in the literature whether the material implication represents logical causation.
-   Biconditional joins two simpler propositions, and we write *P* ↔ *Q*, which is read "P if and only if Q". It expresses that P and Q have the same truth-value, and in cases 1 and 4. 'P is true if and only if Q' is true, and is false otherwise.

It is very helpful to look at the [truth tables][96] for these different operators, as well as the [method of analytic tableaux][97].

### Closure under operations\[[edit][98]\]

Propositional logic is closed under truth-functional connectives. That is to say, for any proposition φ, ¬*φ* is also a proposition. Likewise, for any propositions φ and ψ, *φ* ∧ *ψ* is a proposition, and similarly for disjunction, conditional, and biconditional. This implies that, for instance, *φ* ∧ *ψ* is a proposition, and so it can be conjoined with another proposition. In order to represent this, we need to use parentheses to indicate which proposition is conjoined with which. For instance, *P* ∧ *Q* ∧ *R* is not a well-formed formula, because we do not know if we are conjoining *P* ∧ *Q* with R or if we are conjoining P with *Q* ∧ *R*. Thus we must write either (*P* ∧ *Q*) ∧ *R* to represent the former, or *P* ∧ (*Q* ∧ *R*) to represent the latter. By evaluating the truth conditions, we see that both expressions have the same truth conditions (will be true in the same cases), and moreover that any proposition formed by arbitrary conjunctions will have the same truth conditions, regardless of the location of the parentheses. This means that conjunction is associative, however, one should not assume that parentheses never serve a purpose. For instance, the sentence *P* ∧ (*Q* ∨ *R*) does not have the same truth conditions of (*P* ∧ *Q*) ∨ *R*, so they are different sentences distinguished only by the parentheses. One can verify this by the truth-table method referenced above.

Note: For any arbitrary number of propositional constants, we can form a finite number of cases which list their possible truth-values. A simple way to generate this is by truth-tables, in which one writes P, Q, ..., Z, for any list of k propositional constants—that is to say, any list of propositional constants with k entries. Below this list, one writes 2*k* rows, and below P one fills in the first half of the rows with true (or T) and the second half with false (or F). Below Q one fills in one-quarter of the rows with T, then one-quarter with F, then one-quarter with T and the last quarter with F. The next column alternates between true and false for each eighth of the rows, then sixteenths, and so on, until the last propositional constant varies between T and F for each row. This will give a complete listing of cases or truth-value assignments possible for those propositional constants.

### Argument\[[edit][99]\]

The propositional calculus then defines an *[argument][100]* to be a list of propositions. A valid argument is a list of propositions, the last of which follows from—or is implied by—the rest. All other arguments are invalid. The simplest valid argument is [modus ponens][101], one instance of which is the following list of propositions:

![{\begin{array}{rl}1.&P\to Q\\2.&P\\\hline \therefore &Q\end{array}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2426295bdefbf66f3d3461886a37efc8561ed3b1)

This is a list of three propositions, each line is a proposition, and the last follows from the rest. The first two lines are called premises, and the last line the conclusion. We say that any proposition C follows from any set of propositions ![(P_{1},...,P_{n})](https://wikimedia.org/api/rest_v1/media/math/render/svg/d65a886c08c12a5bad28743275a9533d8b655a90), if C must be true whenever every member of the set ![(P_{1},...,P_{n})](https://wikimedia.org/api/rest_v1/media/math/render/svg/d65a886c08c12a5bad28743275a9533d8b655a90) is true. In the argument above, for any P and Q, whenever *P* → *Q* and P are true, necessarily Q is true. Notice that, when P is true, we cannot consider cases 3 and 4 (from the truth table). When *P* → *Q* is true, we cannot consider case 2. This leaves only case 1, in which Q is also true. Thus Q is implied by the premises.

This generalizes schematically. Thus, where φ and ψ may be any propositions at all,

![{\begin{array}{rl}1.&\varphi \to \psi \\2.&\varphi \\\hline \therefore &\psi \end{array}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ad7d3c7885e4f5ede73b8f660e22c7ba2aee5ec4)

Other argument forms are convenient, but not necessary. Given a complete set of axioms (see below for one such set), modus ponens is sufficient to prove all other argument forms in propositional logic, thus they may be considered to be a derivative. Note, this is not true of the extension of propositional logic to other logics like [first-order logic][102]. First-order logic requires at least one additional rule of inference in order to obtain [completeness][103].

The significance of argument in formal logic is that one may obtain new truths from established truths. In the first example above, given the two premises, the truth of Q is not yet known or stated. After the argument is made, Q is deduced. In this way, we define a deduction system to be a set of all propositions that may be deduced from another set of propositions. For instance, given the set of propositions ![{\displaystyle A=\{P\lor Q,\neg Q\land R,(P\lor Q)\to R\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/adeb42b254daa2e53c646b0bc4ca393d6de03c4e), we can define a deduction system, Γ, which is the set of all propositions which follow from A. [Reiteration][104] is always assumed, so ![{\displaystyle P\lor Q,\neg Q\land R,(P\lor Q)\to R\in \Gamma }](https://wikimedia.org/api/rest_v1/media/math/render/svg/ee7347989e4af68621f3556f71200aa0cfbba0aa). Also, from the first element of A, last element, as well as modus ponens, R is a consequence, and so ![R\in \Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/8352bb57140cb71ecb96b32c3c328b11463dcd35). Because we have not included sufficiently complete axioms, though, nothing else may be deduced. Thus, even though most deduction systems studied in propositional logic are able to deduce ![{\displaystyle (P\lor Q)\leftrightarrow (\neg P\to Q)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3ad862b103437f908a58b008703464bea93a1ef2), this one is too weak to prove such a proposition.

## Generic description of a propositional calculus\[[edit][105]\]

A __propositional calculus__ is a [formal system][106] ![{\mathcal {L}}={\mathcal {L}}\left(\mathrm {A} ,\ \Omega ,\ \mathrm {Z} ,\ \mathrm {I} \right)](https://wikimedia.org/api/rest_v1/media/math/render/svg/3e15506ad1558e11faf181d5719dada2ffa706c4), where:

-   The *alpha set* ![\mathrm {A} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ff6366939c4ebbd4e8494d0dedc54c4b8dd7135a) is a countably infinite set of elements called *proposition symbols* or *[propositional variables][107]*. Syntactically speaking, these are the most basic elements of the formal language ![{\mathcal {L}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9027196ecb178d598958555ea01c43157d83597c), otherwise referred to as *[atomic formulas][108]* or *terminal elements*. In the examples to follow, the elements of ![\mathrm {A} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ff6366939c4ebbd4e8494d0dedc54c4b8dd7135a) are typically the letters p, q, r, and so on.
-   The *omega set* Ω is a finite set of elements called *[operator symbols][109]* or *[logical connectives][110]*. The set Ω is [partitioned][111] into disjoint subsets as follows:
    
    ![{\displaystyle \Omega =\Omega _{0}\cup \Omega _{1}\cup \cdots \cup \Omega _{j}\cup \cdots \cup \Omega _{m}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2eed5bec31837d13b5c7b86ae0dda3d12bba2e85)
    
    In this partition, ![\Omega _{j}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a8484eda05a8236c53d99ab2ee1b3911f1bb1a42) is the set of operator symbols of *[arity][112]* j.
    
    In the more familiar propositional calculi, Ω is typically partitioned as follows:
    
    ![\Omega _{1}=\{\lnot \},](https://wikimedia.org/api/rest_v1/media/math/render/svg/a10c1cdba7209c59d10c8bcb597904f287ffe8e5)
    
    ![\Omega _{2}\subseteq \{\land ,\lor ,\to ,\leftrightarrow \}.](https://wikimedia.org/api/rest_v1/media/math/render/svg/0194ca43d149946a3e509b689d91e2db8b669d8a)
    
    A frequently adopted convention treats the constant [logical values][113] as operators of arity zero, thus:
    
    ![{\displaystyle \Omega _{0}=\{\bot ,\top \}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5581939906d78b0aa2c06e45e6cdbe85c0d4b36b)
    
    Some writers use the [tilde][114] (~), or N, instead of ¬; and some use v instead of ![\vee ](https://wikimedia.org/api/rest_v1/media/math/render/svg/7b76220c6805c9b465d6efbc7686c624f49f3023) as well as the [ampersand][115] (&), the prefixed K, or ![\cdot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ba2c023bad1bd39ed49080f729cbf26bc448c9ba) instead of ![\wedge ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1caa4004cb216ef2930bb12fe805a76870caed94). Notation varies even more for the set of logical values, with symbols like {false, true}, {F, T}, or {0, 1} all being seen in various contexts instead of ![\{\bot ,\top \}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3e83949fab3b4d13316e215d0d4c373de8cd2664).
-   The *zeta set* ![\mathrm {Z} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/faf96082c4b2e79d67626f995ae571403f51b5da) is a finite set of *transformation rules* that are called *[inference rules][116]* when they acquire logical applications.
-   The *iota set* ![\mathrm {I} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/fe7a69180f25bbb4c73e091f97c7c5f9941ed17b) is a countable set of *initial points* that are called *[axioms][117]* when they receive logical interpretations.

The *language* of ![{\mathcal {L}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9027196ecb178d598958555ea01c43157d83597c), also known as its set of *formulas*, *[well-formed formulas][118]*, is [inductively defined][119] by the following rules:

1.  Base: Any element of the alpha set ![\mathrm {A} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ff6366939c4ebbd4e8494d0dedc54c4b8dd7135a) is a formula of ![{\mathcal {L}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9027196ecb178d598958555ea01c43157d83597c).
2.  If ![p_{1},p_{2},\ldots ,p_{j}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f6530a5997aa5cf664e065e8a74dbdb9f4fabda2) are formulas and ![f](https://wikimedia.org/api/rest_v1/media/math/render/svg/132e57acb643253e7810ee9702d9581f159a1c61) is in ![\Omega _{j}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a8484eda05a8236c53d99ab2ee1b3911f1bb1a42), then ![\left(f(p_{1},p_{2},\ldots ,p_{j})\right)](https://wikimedia.org/api/rest_v1/media/math/render/svg/05f0e28134d016b10ff1f781a7e292cc88302140) is a formula.
3.  Closed: Nothing else is a formula of ![{\mathcal {L}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9027196ecb178d598958555ea01c43157d83597c).

Repeated applications of these rules permits the construction of complex formulas. For example:

## Example 1. Simple axiom system\[[edit][120]\]

Let ![{\mathcal {L}}_{1}={\mathcal {L}}(\mathrm {A} ,\Omega ,\mathrm {Z} ,\mathrm {I} )](https://wikimedia.org/api/rest_v1/media/math/render/svg/47c386ef62f20e806febcf268c4ec9a104b238b1), where ![\mathrm {A} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ff6366939c4ebbd4e8494d0dedc54c4b8dd7135a), ![\Omega ](https://wikimedia.org/api/rest_v1/media/math/render/svg/24b0d5ca6f381068d756f6337c08e0af9d1eeb6f), ![\mathrm {Z} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/faf96082c4b2e79d67626f995ae571403f51b5da), ![\mathrm {I} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/fe7a69180f25bbb4c73e091f97c7c5f9941ed17b) are defined as follows:

-   The alpha set ![\mathrm {A} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ff6366939c4ebbd4e8494d0dedc54c4b8dd7135a), is a countably infinite set of symbols, for example:
    
    ![{\displaystyle \mathrm {A} =\{p,q,r,s,t,u,p_{2},\ldots \}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/21fdf3f2541328d7ab4c13e8da29ca38dac18f95)
    
-   Of the three connectives for conjunction, disjunction, and implication (![\wedge ,\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/39290a51b8b8488c4151db4a332f0242cd10d60b), and →), one can be taken as primitive and the other two can be defined in terms of it and negation (¬).[\[11\]][121] All of the logical connectives can be defined in terms of a [sole sufficient operator][122]. The biconditional (↔) can of course be defined in terms of conjunction and implication, with ![a\leftrightarrow b](https://wikimedia.org/api/rest_v1/media/math/render/svg/ba5f67ecaaf372f31c59164df274736205c8278c) defined as ![(a\to b)\land (b\to a)](https://wikimedia.org/api/rest_v1/media/math/render/svg/1741d2435f83e87737d235a5592c213ed9444dd0). Adopting negation and implication as the two primitive operations of a propositional calculus is tantamount to having the omega set ![\Omega =\Omega _{1}\cup \Omega _{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ea62d7043f5caf4662322271d72fb79fb048fcc7) partition as follows:
    
    ![\Omega _{1}=\{\lnot \},](https://wikimedia.org/api/rest_v1/media/math/render/svg/a10c1cdba7209c59d10c8bcb597904f287ffe8e5)
    
    ![\Omega _{2}=\{\to \}.](https://wikimedia.org/api/rest_v1/media/math/render/svg/be1ec38a19c43954cbb90f29d72fa5bfbed4ad98)
    
-   An axiom system proposed by [Jan Łukasiewicz][123], and used as the propositional-calculus part of a [Hilbert system][124], formulates a propositional calculus in this language as follows. The axioms are all [substitution instances][125] of:
-   The rule of inference is [modus ponens][126] (i.e., from p and ![(p\to q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b805a61fbd9b41cd2976ebec792d73a0ebea0e81), infer q). Then ![a\lor b](https://wikimedia.org/api/rest_v1/media/math/render/svg/a07a2a1dfb9a1620c981095b788e4113d2ae2ed5) is defined as ![\neg a\to b](https://wikimedia.org/api/rest_v1/media/math/render/svg/447dda4fb3a38ddd676f07f0340e0177e6f042db), and ![a\land b](https://wikimedia.org/api/rest_v1/media/math/render/svg/ff8a40f76f4fd75aa92b1a78e44fb7f76ab6ed70) is defined as ![\neg (a\to \neg b)](https://wikimedia.org/api/rest_v1/media/math/render/svg/3aa1634a74a762ce76ed9e83cd7d1226c5fc20cb). This system is used in [Metamath][127] [set.mm][128] formal proof database.

## Example 2. Natural deduction system\[[edit][129]\]

Let ![{\mathcal {L}}_{2}={\mathcal {L}}(\mathrm {A} ,\Omega ,\mathrm {Z} ,\mathrm {I} )](https://wikimedia.org/api/rest_v1/media/math/render/svg/735cecc77a6dbc4e9bfe0a867072e0efdc8dd918), where ![\mathrm {A} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ff6366939c4ebbd4e8494d0dedc54c4b8dd7135a), ![\Omega ](https://wikimedia.org/api/rest_v1/media/math/render/svg/24b0d5ca6f381068d756f6337c08e0af9d1eeb6f), ![\mathrm {Z} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/faf96082c4b2e79d67626f995ae571403f51b5da), ![\mathrm {I} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/fe7a69180f25bbb4c73e091f97c7c5f9941ed17b) are defined as follows:

In the following example of a propositional calculus, the transformation rules are intended to be interpreted as the inference rules of a so-called *[natural deduction system][130]*. The particular system presented here has no initial points, which means that its interpretation for logical applications derives its [theorems][131] from an empty axiom set.

Our propositional calculus has eleven inference rules. These rules allow us to derive other true formulas given a set of formulas that are assumed to be true. The first ten simply state that we can infer certain well-formed formulas from other well-formed formulas. The last rule however uses hypothetical reasoning in the sense that in the premise of the rule we temporarily assume an (unproven) hypothesis to be part of the set of inferred formulas to see if we can infer a certain other formula. Since the first ten rules don't do this they are usually described as *non-hypothetical* rules, and the last one as a *hypothetical* rule.

In describing the transformation rules, we may introduce a metalanguage symbol ![\vdash ](https://wikimedia.org/api/rest_v1/media/math/render/svg/a0c0d30cf8cb7dba179e317fcde9583d842e80f6). It is basically a convenient shorthand for saying "infer that". The format is ![\Gamma \vdash \psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/a27a6c9717bd96aeec6ebe23cf9d76a1a3d82971), in which Γ is a (possibly empty) set of formulas called premises, and ψ is a formula called conclusion. The transformation rule ![\Gamma \vdash \psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/a27a6c9717bd96aeec6ebe23cf9d76a1a3d82971) means that if every proposition in Γ is a theorem (or has the same truth value as the axioms), then ψ is also a theorem. Note that considering the following rule [Conjunction introduction][132], we will know whenever Γ has more than one formula, we can always safely reduce it into one formula using conjunction. So for short, from that time on we may represent Γ as one formula instead of a set. Another omission for convenience is when Γ is an empty set, in which case Γ may not appear.

[Negation introduction][133]

From ![(p\to q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b805a61fbd9b41cd2976ebec792d73a0ebea0e81) and ![(p\to \neg q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/72c74d14db648d3eb4c441b8071741aaef126ebd), infer ![\neg p](https://wikimedia.org/api/rest_v1/media/math/render/svg/e2b198c79234d926cbee42c0f271d903ea55dc21).

That is, ![\{(p\to q),(p\to \neg q)\}\vdash \neg p](https://wikimedia.org/api/rest_v1/media/math/render/svg/720d0c37392c616df777c7dde978496d645a2a91).

[Negation elimination][134]

From ![\neg p](https://wikimedia.org/api/rest_v1/media/math/render/svg/e2b198c79234d926cbee42c0f271d903ea55dc21), infer ![(p\to r)](https://wikimedia.org/api/rest_v1/media/math/render/svg/0b70bebff1ed61e4f65a512ea61f2a8849d044d5).

That is, ![\{\neg p\}\vdash (p\to r)](https://wikimedia.org/api/rest_v1/media/math/render/svg/51e7588327b13f33b0e1a9d6d57029624b9b6250).

[Double negation elimination][135]

From ![\neg \neg p](https://wikimedia.org/api/rest_v1/media/math/render/svg/61fb44bd43a9328064cdf2b5d70b91f0843ae54d), infer p.

That is, ![\neg \neg p\vdash p](https://wikimedia.org/api/rest_v1/media/math/render/svg/2a4dc1d21a9ff681325eb6fdc0bc8950a1f3c24f).

[Conjunction introduction][136]

From p and q, infer ![(p\land q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/1c6e5ae2dd581f95af0ba40f3d09b0d7d9f5e497).

That is, ![\{p,q\}\vdash (p\land q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/ffc965c92212f65946c1624275321d5f7769edba).

[Conjunction elimination][137]

From ![(p\land q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/1c6e5ae2dd581f95af0ba40f3d09b0d7d9f5e497), infer p.

From ![(p\land q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/1c6e5ae2dd581f95af0ba40f3d09b0d7d9f5e497), infer q.

That is, ![(p\land q)\vdash p](https://wikimedia.org/api/rest_v1/media/math/render/svg/a0665b0a9606a1ced373dd66abd55e3cc078e3c7) and ![(p\land q)\vdash q](https://wikimedia.org/api/rest_v1/media/math/render/svg/2c10f27d977c39a95211031a47e6401864ed818f).

[Disjunction introduction][138]

From p, infer ![(p\lor q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/60f80b50074862b4c84850b692661ba67f49d40a).

From q, infer ![(p\lor q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/60f80b50074862b4c84850b692661ba67f49d40a).

That is, ![p\vdash (p\lor q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/54768af02f843eaea9e5675bedfca7072011200e) and ![q\vdash (p\lor q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/98e16538ec3d6d314ea8f35aa026b245356a2c07).

[Disjunction elimination][139]

From ![(p\lor q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/60f80b50074862b4c84850b692661ba67f49d40a) and ![(p\to r)](https://wikimedia.org/api/rest_v1/media/math/render/svg/0b70bebff1ed61e4f65a512ea61f2a8849d044d5) and ![(q\to r)](https://wikimedia.org/api/rest_v1/media/math/render/svg/5b915a57512bbcb7bace630a8aa2a3207e84e06e), infer r.

That is, ![\{p\lor q,p\to r,q\to r\}\vdash r](https://wikimedia.org/api/rest_v1/media/math/render/svg/6bc0eb4f08c68e043385a53c668aab1100dfa93d).

[Biconditional introduction][140]

From ![(p\to q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b805a61fbd9b41cd2976ebec792d73a0ebea0e81) and ![(q\to p)](https://wikimedia.org/api/rest_v1/media/math/render/svg/36e5438d9c5ff7177a6db191b9494388a519a01e), infer ![(p\leftrightarrow q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/1d0529d17f35a432e0622afbfd52a6a7a1fb9098).

That is, ![\{p\to q,q\to p\}\vdash (p\leftrightarrow q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/4f600279af526594bd33de4b6b1c564a93486bfd).

[Biconditional elimination][141]

From ![(p\leftrightarrow q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/1d0529d17f35a432e0622afbfd52a6a7a1fb9098), infer ![(p\to q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b805a61fbd9b41cd2976ebec792d73a0ebea0e81).

From ![(p\leftrightarrow q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/1d0529d17f35a432e0622afbfd52a6a7a1fb9098), infer ![(q\to p)](https://wikimedia.org/api/rest_v1/media/math/render/svg/36e5438d9c5ff7177a6db191b9494388a519a01e).

That is, ![(p\leftrightarrow q)\vdash (p\to q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/cbc95b4dfa2bdd93efec984213bca64926988202) and ![(p\leftrightarrow q)\vdash (q\to p)](https://wikimedia.org/api/rest_v1/media/math/render/svg/10ed0fa571fd3a22a1e69d79680587399becf7d1).

[Modus ponens][142] (conditional elimination)

From p and ![(p\to q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b805a61fbd9b41cd2976ebec792d73a0ebea0e81), infer q.

That is, ![\{p,p\to q\}\vdash q](https://wikimedia.org/api/rest_v1/media/math/render/svg/92352e6898d1af1b88dfa4a2cd670e78e0af9bb8).

[Conditional proof][143] (conditional introduction)

From \[accepting p allows a proof of q\], infer ![(p\to q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b805a61fbd9b41cd2976ebec792d73a0ebea0e81).

That is, ![(p\vdash q)\vdash (p\to q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/5a2174ef026b2a4db9a80c8d0c5f535ae8c0e21e).

## Basic and derived argument forms\[[edit][144]\]

Name

Sequent

Description

[Modus Ponens][145]

![((p\to q)\land p)\vdash q](https://wikimedia.org/api/rest_v1/media/math/render/svg/e718ce4ec77f4e099094d7e89bacc112c6754294)

If p then q; p; therefore q

[Modus Tollens][146]

![((p\to q)\land \neg q)\vdash \neg p](https://wikimedia.org/api/rest_v1/media/math/render/svg/e7ae31de8933f036da05b3e54fce242079989424)

If p then q; not q; therefore not p

[Hypothetical Syllogism][147]

![((p\to q)\land (q\to r))\vdash (p\to r)](https://wikimedia.org/api/rest_v1/media/math/render/svg/6419a065bbb8e2b35b636e171a6891e3b3ce541e)

If p then q; if q then r; therefore, if p then r

[Disjunctive Syllogism][148]

![((p\lor q)\land \neg p)\vdash q](https://wikimedia.org/api/rest_v1/media/math/render/svg/b568f7af03c0c71a3f12c5b8dd1a80359e019c65)

Either p or q, or both; not p; therefore, q

[Constructive Dilemma][149]

![((p\to q)\land (r\to s)\land (p\lor r))\vdash (q\lor s)](https://wikimedia.org/api/rest_v1/media/math/render/svg/f10f552191f535c0912419950c4b2d9efc2f5ba2)

If p then q; and if r then s; but p or r; therefore q or s

[Destructive Dilemma][150]

![((p\to q)\land (r\to s)\land (\neg q\lor \neg s))\vdash (\neg p\lor \neg r)](https://wikimedia.org/api/rest_v1/media/math/render/svg/082ed3c4f255aa4af20a4bd7eb4233c8f7a1071b)

If p then q; and if r then s; but not q or not s; therefore not p or not r

Bidirectional Dilemma

![((p\to q)\land (r\to s)\land (p\lor \neg s))\vdash (q\lor \neg r)](https://wikimedia.org/api/rest_v1/media/math/render/svg/4af3f354fe025bd0bb2d0c74d19ea7f218a0f8c0)

If p then q; and if r then s; but p or not s; therefore q or not r

[Simplification][151]

![(p\land q)\vdash p](https://wikimedia.org/api/rest_v1/media/math/render/svg/a0665b0a9606a1ced373dd66abd55e3cc078e3c7)

p and q are true; therefore p is true

[Conjunction][152]

![p,q\vdash (p\land q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/709afc672607de0171c41eb25c5ce256d138e282)

p and q are true separately; therefore they are true conjointly

[Addition][153]

![p\vdash (p\lor q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/54768af02f843eaea9e5675bedfca7072011200e)

p is true; therefore the disjunction (p or q) is true

[Composition][154]

![((p\to q)\land (p\to r))\vdash (p\to (q\land r))](https://wikimedia.org/api/rest_v1/media/math/render/svg/b615022bda1dcf1227a1c08c628aada076144d42)

If p then q; and if p then r; therefore if p is true then q and r are true

[De Morgan's Theorem][155] (1)

![\neg (p\land q)\vdash (\neg p\lor \neg q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b5ba4031d1b54ccbae36739f8e061d7409da4731)

The negation of (p and q) is equiv. to (not p or not q)

[De Morgan's Theorem][156] (2)

![\neg (p\lor q)\vdash (\neg p\land \neg q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/53b11c95b4b53fbf10b0b5da5de9d9b4842aebd9)

The negation of (p or q) is equiv. to (not p and not q)

[Commutation][157] (1)

![(p\lor q)\vdash (q\lor p)](https://wikimedia.org/api/rest_v1/media/math/render/svg/ca93348719e95e47d204c10aa0efd75d14b4cec1)

(p or q) is equiv. to (q or p)

[Commutation][158] (2)

![(p\land q)\vdash (q\land p)](https://wikimedia.org/api/rest_v1/media/math/render/svg/92f08307b3fd630f8b09e3f863af5835f41282d1)

(p and q) is equiv. to (q and p)

[Commutation][159] (3)

![(p\leftrightarrow q)\vdash (q\leftrightarrow p)](https://wikimedia.org/api/rest_v1/media/math/render/svg/589981935ee28fdb99010ab82b7e4d6c54620f21)

(p is equiv. to q) is equiv. to (q is equiv. to p)

[Association][160] (1)

![(p\lor (q\lor r))\vdash ((p\lor q)\lor r)](https://wikimedia.org/api/rest_v1/media/math/render/svg/24af9aee97f5bae3e9d873654bd994da2100ea96)

p or (q or r) is equiv. to (p or q) or r

[Association][161] (2)

![(p\land (q\land r))\vdash ((p\land q)\land r)](https://wikimedia.org/api/rest_v1/media/math/render/svg/f3e01f4bb1e4c2b228ad0865181eb3aa82304f40)

p and (q and r) is equiv. to (p and q) and r

[Distribution][162] (1)

![(p\land (q\lor r))\vdash ((p\land q)\lor (p\land r))](https://wikimedia.org/api/rest_v1/media/math/render/svg/4166fc9632d94252ace796e96e41c4ebd8cc83fb)

p and (q or r) is equiv. to (p and q) or (p and r)

[Distribution][163] (2)

![(p\lor (q\land r))\vdash ((p\lor q)\land (p\lor r))](https://wikimedia.org/api/rest_v1/media/math/render/svg/5d3e9f3e87a4e9ba3db7af4f221b3ecde1ac20df)

p or (q and r) is equiv. to (p or q) and (p or r)

[Double Negation][164]

![p\vdash \neg \neg p](https://wikimedia.org/api/rest_v1/media/math/render/svg/0878ca469a135d36959823281cfc87aa75d6b1eb) and ![\neg \neg p\vdash p](https://wikimedia.org/api/rest_v1/media/math/render/svg/2a4dc1d21a9ff681325eb6fdc0bc8950a1f3c24f)

p is equivalent to the negation of not p

[Transposition][165]

![(p\to q)\vdash (\neg q\to \neg p)](https://wikimedia.org/api/rest_v1/media/math/render/svg/e555816ccbdde01ff5d0a920603827e878238582)

If p then q is equiv. to if not q then not p

[Material Implication][166]

![(p\to q)\vdash (\neg p\lor q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/be71a7c4930ab4e646485d7bc479d0dc666fc4a1)

If p then q is equiv. to not p or q

[Material Equivalence][167] (1)

![(p\leftrightarrow q)\vdash ((p\to q)\land (q\to p))](https://wikimedia.org/api/rest_v1/media/math/render/svg/1df89540f366fd02056dcab93751ff7e05317028)

(p iff q) is equiv. to (if p is true then q is true) and (if q is true then p is true)

[Material Equivalence][168] (2)

![(p\leftrightarrow q)\vdash ((p\land q)\lor (\neg p\land \neg q))](https://wikimedia.org/api/rest_v1/media/math/render/svg/870257b25f89e8b9e2eb7ea3262f6ef7fc95c48b)

(p iff q) is equiv. to either (p and q are true) or (both p and q are false)

[Material Equivalence][169] (3)

![(p\leftrightarrow q)\vdash ((p\lor \neg q)\land (\neg p\lor q))](https://wikimedia.org/api/rest_v1/media/math/render/svg/8641bba33fff164062c71f4e9b6f29951ab130f6)

(p iff q) is equiv to., both (p or not q is true) and (not p or q is true)

[Exportation][170][\[12\]][171]

![((p\land q)\to r)\vdash (p\to (q\to r))](https://wikimedia.org/api/rest_v1/media/math/render/svg/fbb60d0eb18ee7f17a0708421b59fc94be91eb57)

from (if p and q are true then r is true) we can prove (if q is true then r is true, if p is true)

[Importation][172]

![(p\to (q\to r))\vdash ((p\land q)\to r)](https://wikimedia.org/api/rest_v1/media/math/render/svg/3582deb17f8485a5fd69a68f24f57275f2b49141)

If p then (if q then r) is equivalent to if p and q then r

[Tautology][173] (1)

![p\vdash (p\lor p)](https://wikimedia.org/api/rest_v1/media/math/render/svg/fd2e65de3b6b30964d06b6ebb5531559e27a0111)

p is true is equiv. to p is true or p is true

[Tautology][174] (2)

![p\vdash (p\land p)](https://wikimedia.org/api/rest_v1/media/math/render/svg/9321b67f5e270a2ac4968376e585924f709316b4)

p is true is equiv. to p is true and p is true

[Tertium non datur (Law of Excluded Middle)][175]

![\vdash (p\lor \neg p)](https://wikimedia.org/api/rest_v1/media/math/render/svg/34acb6a72aa2d8bd27a9f3e7a2b33c7a30b8b937)

p or not p is true

[Law of Non-Contradiction][176]

![\vdash \neg (p\land \neg p)](https://wikimedia.org/api/rest_v1/media/math/render/svg/f2d7ab87b3558f3091c8e4547f54ddebf36b5d04)

p and not p is false, is a true statement

## Proofs in propositional calculus\[[edit][177]\]

One of the main uses of a propositional calculus, when interpreted for logical applications, is to determine relations of logical equivalence between propositional formulas. These relationships are determined by means of the available transformation rules, sequences of which are called *derivations* or *proofs*.

In the discussion to follow, a proof is presented as a sequence of numbered lines, with each line consisting of a single formula followed by a *reason* or *justification* for introducing that formula. Each premise of the argument, that is, an assumption introduced as an hypothesis of the argument, is listed at the beginning of the sequence and is marked as a "premise" in lieu of other justification. The conclusion is listed on the last line. A proof is complete if every line follows from the previous ones by the correct application of a transformation rule. (For a contrasting approach, see [proof-trees][178]).

### Example of a proof in natural deduction system\[[edit][179]\]

-   To be shown that *A* → *A*.
-   One possible proof of this (which, though valid, happens to contain more steps than are necessary) may be arranged as follows:

Example of a proof

Number

Formula

Reason

1

![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3)

premise

2

![A\lor A](https://wikimedia.org/api/rest_v1/media/math/render/svg/31940c78d50bd53d7a2a8e89351754385ec6daeb)

From (__[1][180]__) by disjunction introduction

3

![(A\lor A)\land A](https://wikimedia.org/api/rest_v1/media/math/render/svg/6e1774dc1f83c8fd656bd1c5bf1d8d4bf4c77354)

From (__[1][181]__) and (__[2][182]__) by conjunction introduction

4

![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3)

From (__[3][183]__) by conjunction elimination

5

![A\vdash A](https://wikimedia.org/api/rest_v1/media/math/render/svg/6627a49a818281679e6699d646d0fd6a2ddd34fe)

Summary of (__[1][184]__) through (__[4][185]__)

6

![\vdash A\to A](https://wikimedia.org/api/rest_v1/media/math/render/svg/a20720173dd81a25520d06a3d798d0eb0689a582)

From (__[5][186]__) by conditional proof

Interpret ![A\vdash A](https://wikimedia.org/api/rest_v1/media/math/render/svg/6627a49a818281679e6699d646d0fd6a2ddd34fe) as "Assuming A, infer A". Read ![\vdash A\to A](https://wikimedia.org/api/rest_v1/media/math/render/svg/a20720173dd81a25520d06a3d798d0eb0689a582) as "Assuming nothing, infer that A implies A", or "It is a tautology that A implies A", or "It is always true that A implies A".

### Example of a proof in a classical propositional calculus system\[[edit][187]\]

We now prove the same theorem ![{\displaystyle A\to A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fbf720da5a9387e23c628079fbc3e021399c911) in the axiomatic system by [Jan Łukasiewicz][188] described above, which is an example of a [classical propositional calculus systems][189], or a [Hilbert-style deductive system][190] for propositional calculus.

The axioms are:

(A1) ![(p\to (q\to p))](https://wikimedia.org/api/rest_v1/media/math/render/svg/3632552e3cdfa38a9bea40d0f1bd11d6cb169b50)

(A2) ![((p\to (q\to r))\to ((p\to q)\to (p\to r)))](https://wikimedia.org/api/rest_v1/media/math/render/svg/18d1accf7604719ee5806d79b62d76d0d0b25ac4)

(A3) ![((\neg p\to \neg q)\to (q\to p))](https://wikimedia.org/api/rest_v1/media/math/render/svg/63322156327eb476688e94e28c2490b1fc9b1702)

And the proof is as follows:

1.  ![{\displaystyle A\to ((B\to A)\to A)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6aa00669c103583ca3f122b828cc438f7325501e)       (instance of (A1))
2.  ![{\displaystyle (A\to ((B\to A)\to A))\to ((A\to (B\to A))\to (A\to A))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a699584bb3b5096e0ff031e20738b2cc6b3a7102)       (instance of (A2))
3.  ![{\displaystyle (A\to (B\to A))\to (A\to A)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/82b16b819f3a2d8c09588b77d0e38ab272148d35)       (from (1) and (2) by [modus ponens][191])
4.  ![{\displaystyle A\to (B\to A)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ba8692a5036a11936ef451eadfda6c4039a56249)       (instance of (A1))
5.  ![{\displaystyle A\to A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fbf720da5a9387e23c628079fbc3e021399c911)       (from (4) and (3) by modus ponens)

## Soundness and completeness of the rules\[[edit][192]\]

The crucial properties of this set of rules are that they are *[sound][193]* and *complete*. Informally this means that the rules are correct and that no other rules are required. These claims can be made more formal as follows. Note that the proofs for the soundness and completeness of the propositional logic are not themselves proofs in propositional logic ; these are theorems in [ZFC][194] used as a [metatheory][195] to prove properties of propositional logic.

We define a *truth assignment* as a [function][196] that maps propositional variables to __true__ or __false__. Informally such a truth assignment can be understood as the description of a possible [state of affairs][197] (or [possible world][198]) where certain statements are true and others are not. The semantics of formulas can then be formalized by defining for which "state of affairs" they are considered to be true, which is what is done by the following definition.

We define when such a truth assignment A satisfies a certain [well-formed formula][199] with the following rules:

-   A satisfies the propositional variable P [if and only if][200] *A*(*P*) = true
-   A satisfies ¬*φ* if and only if A does not satisfy φ
-   A satisfies (*φ* ∧ *ψ*) if and only if A satisfies both φ and ψ
-   A satisfies (*φ* ∨ *ψ*) if and only if A satisfies at least one of either φ or ψ
-   A satisfies (*φ* → *ψ*) if and only if it is not the case that A satisfies φ but not ψ
-   A satisfies (*φ* ↔ *ψ*) if and only if A satisfies both φ and ψ or satisfies neither one of them

With this definition we can now formalize what it means for a formula φ to be implied by a certain set S of formulas. Informally this is true if in all worlds that are possible given the set of formulas S the formula φ also holds. This leads to the following formal definition: We say that a set S of well-formed formulas *semantically entails* (or *implies*) a certain well-formed formula φ if all truth assignments that satisfy all the formulas in S also satisfy φ.

Finally we define *syntactical entailment* such that φ is syntactically entailed by S if and only if we can derive it with the inference rules that were presented above in a finite number of steps. This allows us to formulate exactly what it means for the set of inference rules to be sound and complete:

__Soundness:__ If the set of well-formed formulas S *syntactically* entails the well-formed formula φ then S *semantically* entails φ.

__Completeness:__ If the set of well-formed formulas S *semantically* entails the well-formed formula φ then S *syntactically* entails φ.

For the above set of rules this is indeed the case.

### Sketch of a soundness proof\[[edit][201]\]

(For most [logical systems][202], this is the comparatively "simple" direction of proof)

Notational conventions: Let G be a variable ranging over sets of sentences. Let A, B and C range over sentences. For "G syntactically entails A" we write "G proves A". For "G semantically entails A" we write "G implies A".

We want to show: (*A*)(*G*) (if G proves A, then G implies A).

We note that "G proves A" has an inductive definition, and that gives us the immediate resources for demonstrating claims of the form "If G proves A, then ...". So our proof proceeds by induction.

1.  Basis. Show: If A is a member of G, then G implies A.
2.  Basis. Show: If A is an axiom, then G implies A.
3.  Inductive step (induction on n, the length of the proof):
    
    1.  Assume for arbitrary G and A that if G proves A in n or fewer steps, then G implies A.
    2.  For each possible application of a rule of inference at step *n* + 1, leading to a new theorem B, show that G implies B.
    

Notice that Basis Step II can be omitted for [natural deduction][203] systems because they have no axioms. When used, Step II involves showing that each of the axioms is a (semantic) [logical truth][204].

The Basis steps demonstrate that the simplest provable sentences from G are also implied by G, for any G. (The proof is simple, since the semantic fact that a set implies any of its members, is also trivial.) The Inductive step will systematically cover all the further sentences that might be provable—by considering each case where we might reach a logical conclusion using an inference rule—and shows that if a new sentence is provable, it is also logically implied. (For example, we might have a rule telling us that from "A" we can derive "A or B". In III.a We assume that if A is provable it is implied. We also know that if A is provable then "A or B" is provable. We have to show that then "A or B" too is implied. We do so by appeal to the semantic definition and the assumption we just made. A is provable from G, we assume. So it is also implied by G. So any semantic valuation making all of G true makes A true. But any valuation making A true makes "A or B" true, by the defined semantics for "or". So any valuation which makes all of G true makes "A or B" true. So "A or B" is implied.) Generally, the Inductive step will consist of a lengthy but simple [case-by-case analysis][205] of all the rules of inference, showing that each "preserves" semantic implication.

By the definition of provability, there are no sentences provable other than by being a member of G, an axiom, or following by a rule; so if all of those are semantically implied, the deduction calculus is sound.

### Sketch of completeness proof\[[edit][206]\]

(This is usually the much harder direction of proof.)

We adopt the same notational conventions as above.

We want to show: If G implies A, then G proves A. We proceed by [contraposition][207]: We show instead that if G does __not__ prove A then G does __not__ imply A. If we show that there is a [model][208] where A does not hold despite G being true, then obviously G does not imply A. The idea is to build such a model out of our very assumption that G does not prove A.

1.  G does not prove A. (Assumption)
2.  If G does not prove A, then we can construct an (infinite) __Maximal Set__, *G*∗, which is a superset of G and which also does not prove A.
    
    1.  Place an ordering (with [order type][209] ω) on all the sentences in the language (e.g., shortest first, and equally long ones in extended alphabetical ordering), and number them (*E*1, *E*2, ...)
    2.  Define a series Gn of sets (*G*0, *G*1, ...) inductively:
    3.  Define *G*∗ as the union of all the Gn. (That is, *G*∗ is the set of all the sentences that are in any Gn.)
    4.  It can be easily shown that
        
        1.  *G*∗ contains (is a superset of) G (by (b.i));
        2.  *G*∗ does not prove A (because the proof would contain only finitely many sentences and when the last of them is introduced in some Gn, that Gn would prove A contrary to the definition of Gn); and
        3.  *G*∗ is a Maximal Set with respect to A: If any more sentences whatever were added to *G*∗, it would prove A. (Because if it were possible to add any more sentences, they should have been added when they were encountered during the construction of the Gn, again by definition)
        
    
3.  If *G*∗ is a Maximal Set with respect to A, then it is __truth-like__. This means that it contains C if and only if it does __not__ contain ¬C; If it contains C and contains "If C then B" then it also contains B; and so forth. In order to show this, one has to show the axiomatic system is strong enough for the following:
    
    -   For any formulas C and D, if it proves both C and ¬C, then it proves D. From this it follows, that a Maximal Set with respect to A cannot prove both C and ¬C, as otherwise it would prove A.
    -   For any formulas C and D, if it proves both C→D and ¬C→D, then it proves D. This is used, together with the [deduction theorem][210], to show that for any formula, either it or its negation is in *G*∗: Let B be a formula not in *G*∗; then *G*∗ with the addition of B proves A. Thus from the deduction theorem it follows that *G*∗ proves B→A. But suppose ¬B were also not in *G*∗, then by the same logic *G*∗ also proves ¬B→A; but then *G*∗ proves A, which we have already shown to be false.
    -   For any formulas C and D, if it proves C and D, then it proves C→D.
    -   For any formulas C and D, if it proves C and ¬D, then it proves ¬(C→D).
    -   For any formulas C and D, if it proves ¬C, then it proves C→D.
    
    If additional logical operation (such as conjunction and/or disjunction) are part of the vocabulary as well, then there are additional requirement on the axiomatic system (e.g. that if it proves C and D, it would also prove their conjunction).
4.  If *G*∗ is truth-like there is a *G*∗\-Canonical valuation of the language: one that makes every sentence in *G*∗ true and everything outside *G*∗ false while still obeying the laws of semantic composition in the language. Note that the requirement that it is truth-like is needed to guarantee that the laws of semantic composition in the language will be satisfied by this truth assignment.
5.  A *G*∗\-canonical valuation will make our original set G all true, and make A false.
6.  If there is a valuation on which G are true and A is false, then G does not (semantically) imply A.

Thus every system that has modus ponens as an inference rule, and proves the following theorems (including substitutions thereof) is complete:

-   p → (¬p → q)
-   (p → q) → ((¬p → q) → q)
-   p → (q → (p → q))
-   p → (¬q → ¬(p → q))
-   ¬p → (p → q)
-   p → p
-   p → (q → p)
-   (p → (q → r)) → ((p → q) → (p → r))

The first five are used for the satisfaction of the five conditions in stage III above, and the last three for proving the deduction theorem.

#### Example\[[edit][211]\]

As an example, it can be shown that as any other tautology, the three axioms of the classical propositional calculus system described earlier can be proven in any system that satisfies the above, namely that has modus ponens as an inference rule, and proves the above eight theorems (including substitutions thereof). Out of the eight theorems, the last two are two of the three axioms; the third axiom, ![{\displaystyle (\neg q\to \neg p)\to (p\to q)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5771d4b47825fc4787421458e47b2b7d8963feb4), can be proven as well, as we now show.

For the proof we may use the [hypothetical syllogism theorem][212] (in the form relevant for this axiomatic system), since it only relies on the two axioms that are already in the above set of eight theorems. The proof then is as follows:

1.  ![{\displaystyle q\to (p\to q)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3219fad88dd20559dd9fb9eb6badc01532379ed1)       (instance of the 7th theorem)
2.  ![{\displaystyle (q\to (p\to q))\to ((\neg q\to \neg p)\to (q\to (p\to q)))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d49e8a4afbb991776a30300da91935fad4f16676)       (instance of the 7th theorem)
3.  ![{\displaystyle (\neg q\to \neg p)\to (q\to (p\to q))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/94625fb4207e0bf8bc1afb4b87962b4ad01ebda9)       (from (1) and (2) by modus ponens)
4.  ![{\displaystyle (\neg p\to (p\to q))\to ((\neg q\to \neg p)\to (\neg q\to (p\to q)))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c4e5dc0e293fbde52f578c414ff15f8f472ce2ef)       (instance of the hypothetical syllogism theorem)
5.  ![{\displaystyle (\neg p\to (p\to q))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bde94cc41f20aaad6b4ee0e095b89a939790434e)       (instance of the 5th theorem)
6.  ![{\displaystyle (\neg q\to \neg p)\to (\neg q\to (p\to q))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/365c3f9fb26dabed01d6aad6c82bbf3b26a77bbe)       (from (5) and (4) by modus ponens)
7.  ![{\displaystyle (q\to (p\to q))\to ((\neg q\to (p\to q))\to (p\to q))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/699e82910eeef5ec2f1add6df93c98d5bfcfeb3e)       (instance of the 2nd theorem)
8.  ![{\displaystyle ((q\to (p\to q))\to ((\neg q\to (p\to q))\to (p\to q)))\to ((\neg q\to \neg p)\to ((q\to (p\to q))\to ((\neg q\to (p\to q))\to (p\to q))))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f439a7231fd3245fe9d8f7d0163afe8ea89ae3fc)       (instance of the 7th theorem)
9.  ![{\displaystyle (\neg q\to \neg p)\to ((q\to (p\to q))\to ((\neg q\to (p\to q))\to (p\to q)))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c318b3f6a28c7f22f69b894a29879833efa8051c)       (from (7) and (8) by modus ponens)
10.  ![{\displaystyle ((\neg q\to \neg p)\to ((q\to (p\to q))\to ((\neg q\to (p\to q))\to (p\to q))))\to }](https://wikimedia.org/api/rest_v1/media/math/render/svg/d3923595ee48004b405e790c0eedb55e8944a55a)
    
    ![{\displaystyle (((\neg q\to \neg p)\to (q\to (p\to q)))\to ((\neg q\to \neg p)\to ((\neg q\to (p\to q))\to (p\to q))))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f5a4bb1c4bf4cc9acf4886fef8e5664056ab91e7)       (instance of the 8th theorem)
    
11.  ![{\displaystyle ((\neg q\to \neg p)\to (q\to (p\to q)))\to ((\neg q\to \neg p)\to ((\neg q\to (p\to q))\to (p\to q)))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5b9775cd18db225f9e4907cf06fe006e2801c628)       (from (9) and (10) by modus ponens)
12.  ![{\displaystyle (\neg q\to \neg p)\to ((\neg q\to (p\to q))\to (p\to q))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4d52e2526e76e0671dc91e1b8c1af28ae3f9721e)       (from (3) and (11) by modus ponens)
13.  ![{\displaystyle ((\neg q\to \neg p)\to ((\neg q\to (p\to q))\to (p\to q)))\to (((\neg q\to \neg p)\to (\neg q\to (p\to q)))\to ((\neg q\to \neg p)\to (p\to q)))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/983a5dcecb9522f1aff3d5ad41e523fe10514cdd)       (instance of the 8th theorem)
14.  ![{\displaystyle ((\neg q\to \neg p)\to (\neg q\to (p\to q)))\to ((\neg q\to \neg p)\to (p\to q))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b02a1ce38c941cd373e7eae66dad949f579ae04b)       (from (12) and (13) by modus ponens)
15.  ![{\displaystyle (\neg q\to \neg p)\to (p\to q)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5771d4b47825fc4787421458e47b2b7d8963feb4)       (from (6) and (14) by modus ponens)

#### Verifying completeness for the classical propositional calculus system\[[edit][213]\]

We now verify that the classical propositional calculus system described earlier can indeed prove the required eight theorems mentioned above. We use several lemmas proven [here][214]:

(DN1) ![{\displaystyle \neg \neg p\to p}](https://wikimedia.org/api/rest_v1/media/math/render/svg/79364f11891d1d8022f81a3f8d3e83c0f7499892) - [Double negation][215] (one direction)

(DN2) ![{\displaystyle p\to \neg \neg p}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fb56efba4129a7fd9ef620e17746d3e1c561dac9) - Double negation (another direction)

(HS1) ![{\displaystyle (q\to r)\to ((p\to q)\to (p\to r))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/752f527410aeaefd5bc25c2267dc2047027946d4) - one form of [Hypothetical syllogism][216]

(HS2) ![{\displaystyle (p\to q)\to ((q\to r)\to (p\to r))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b7873ed29e4a1c3a3f6815c77d535544a732c718) - another form of Hypothetical syllogism

(TR1) ![{\displaystyle (p\to q)\to (\neg q\to \neg p)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c060e83841ace7e02fdbb1d649ab60f6e44fe448) - [Transposition][217]

(TR2) ![{\displaystyle (\neg p\to q)\to (\neg q\to p)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c621ba3c82608351663881ead7dfdbf8b606c25f) - another form of transposition.

(L1) ![{\displaystyle p\to ((p\to q)\to q)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/83f3d98c9ede603036d39b606989fcfc72e08f73)

(L3) ![{\displaystyle (\neg p\to p)\to p}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0be8f5fa7ec12bc3dc5f258bc64791eadd3378e6)

We also use the method of the [hypothetical syllogism metatheorem][218] as a shorthand for several proof steps.

### Another outline for a completeness proof\[[edit][219]\]

If a formula is a [tautology][220], then there is a [truth table][221] for it which shows that each valuation yields the value true for the formula. Consider such a valuation. By mathematical induction on the length of the subformulas, show that the truth or falsity of the subformula follows from the truth or falsity (as appropriate for the valuation) of each propositional variable in the subformula. Then combine the lines of the truth table together two at a time by using "(P is true implies S) implies ((P is false implies S) implies S)". Keep repeating this until all dependencies on propositional variables have been eliminated. The result is that we have proved the given tautology. Since every tautology is provable, the logic is complete.

## Interpretation of a truth-functional propositional calculus\[[edit][222]\]

An __interpretation of a truth-functional propositional calculus__ ![{\mathcal {P}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/10d6ec962de5797ba4f161c40e66dca74ae95cc6) is an [assignment][223] to each [propositional symbol][224] of ![{\mathcal {P}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/10d6ec962de5797ba4f161c40e66dca74ae95cc6) of one or the other (but not both) of the [truth values][225] [truth][226] (__T__) and [falsity][227] (__F__), and an assignment to the [connective symbols][228] of ![{\mathcal {P}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/10d6ec962de5797ba4f161c40e66dca74ae95cc6) of their usual truth-functional meanings. An interpretation of a truth-functional propositional calculus may also be expressed in terms of [truth tables][229].[\[13\]][230]

For ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b) distinct propositional symbols there are ![2^{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8226f30650ee4fe4e640c6d2798127e80e9c160d) distinct possible interpretations. For any particular symbol ![a](https://wikimedia.org/api/rest_v1/media/math/render/svg/ffd2487510aa438433a2579450ab2b3d557e5edc), for example, there are ![2^{1}=2](https://wikimedia.org/api/rest_v1/media/math/render/svg/1a8fa6b2a667bd0f236b70179dbf1fbc9a0accb1) possible interpretations:

1.  ![a](https://wikimedia.org/api/rest_v1/media/math/render/svg/ffd2487510aa438433a2579450ab2b3d557e5edc) is assigned __T__, or
2.  ![a](https://wikimedia.org/api/rest_v1/media/math/render/svg/ffd2487510aa438433a2579450ab2b3d557e5edc) is assigned __F__.

For the pair ![a](https://wikimedia.org/api/rest_v1/media/math/render/svg/ffd2487510aa438433a2579450ab2b3d557e5edc), ![b](https://wikimedia.org/api/rest_v1/media/math/render/svg/f11423fbb2e967f986e36804a8ae4271734917c3) there are ![2^{2}=4](https://wikimedia.org/api/rest_v1/media/math/render/svg/544566e539538b9b5d5f9106712550b2c80da685) possible interpretations:

1.  both are assigned __T__,
2.  both are assigned __F__,
3.  ![a](https://wikimedia.org/api/rest_v1/media/math/render/svg/ffd2487510aa438433a2579450ab2b3d557e5edc) is assigned __T__ and ![b](https://wikimedia.org/api/rest_v1/media/math/render/svg/f11423fbb2e967f986e36804a8ae4271734917c3) is assigned __F__, or
4.  ![a](https://wikimedia.org/api/rest_v1/media/math/render/svg/ffd2487510aa438433a2579450ab2b3d557e5edc) is assigned __F__ and ![b](https://wikimedia.org/api/rest_v1/media/math/render/svg/f11423fbb2e967f986e36804a8ae4271734917c3) is assigned __T__.[\[13\]][231]

Since ![{\mathcal {P}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/10d6ec962de5797ba4f161c40e66dca74ae95cc6) has ![\aleph _{0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/721cd7f8c15a2e72ad162bdfa5baea8eef98aab1), that is, [denumerably][232] many propositional symbols, there are ![2^{\aleph _{0}}={\mathfrak {c}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bc50cc3f50a7c94e56a7ad951b84b32bc63a7a1c), and therefore [uncountably many][233] distinct possible interpretations of ![{\mathcal {P}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/10d6ec962de5797ba4f161c40e66dca74ae95cc6).[\[13\]][234]

### Interpretation of a sentence of truth-functional propositional logic\[[edit][235]\]

If φ and ψ are [formulas][236] of ![{\mathcal {P}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/10d6ec962de5797ba4f161c40e66dca74ae95cc6) and ![{\mathcal {I}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0e9730a0ada0426927ff64141eb9f505eca132d4) is an interpretation of ![{\mathcal {P}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/10d6ec962de5797ba4f161c40e66dca74ae95cc6) then the following definitions apply:

Some consequences of these definitions:

## Alternative calculus\[[edit][237]\]

It is possible to define another version of propositional calculus, which defines most of the syntax of the logical operators by means of axioms, and which uses only one inference rule.

### Axioms\[[edit][238]\]

Let φ, χ, and ψ stand for well-formed formulas. (The well-formed formulas themselves would not contain any Greek letters, but only capital Roman letters, connective operators, and parentheses.) Then the axioms are as follows:

Axioms

Name

Axiom Schema

Description

THEN-1

![\phi \to (\chi \to \phi )](https://wikimedia.org/api/rest_v1/media/math/render/svg/cdf4057314dab0db321847fb7dc83a6da7052a2f)

Add hypothesis χ, implication introduction

THEN-2

![(\phi \to (\chi \to \psi ))\to ((\phi \to \chi )\to (\phi \to \psi ))](https://wikimedia.org/api/rest_v1/media/math/render/svg/c7ec9bb31145adaf5c6c700d9f1d1705a879a43c)

Distribute hypothesis ![\phi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/72b1f30316670aee6270a28334bdf4f5072cdde4) over implication

AND-1

![\phi \land \chi \to \phi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/b35ddeed77d309690f145d9e739746d398928b54)

Eliminate conjunction

AND-2

![\phi \land \chi \to \chi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/5a7cb22e60caa0dfc47adca9a0c07846d78bac0b)

 

AND-3

![\phi \to (\chi \to (\phi \land \chi ))](https://wikimedia.org/api/rest_v1/media/math/render/svg/964542155fb82b362c1efaebd8ccbfc0cef3ac4d)

Introduce conjunction

OR-1

![\phi \to \phi \lor \chi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/95ed0f42810a415fd72726bdba62bd8703314d06)

Introduce disjunction

OR-2

![\chi \to \phi \lor \chi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/66c2685417da149fb756ce019d3515263eedc2fc)

 

OR-3

![(\phi \to \psi )\to ((\chi \to \psi )\to (\phi \lor \chi \to \psi ))](https://wikimedia.org/api/rest_v1/media/math/render/svg/5f1b2f882322aee1ee7ceb6475a1985aa3bee135)

Eliminate disjunction

NOT-1

![(\phi \to \chi )\to ((\phi \to \neg \chi )\to \neg \phi )](https://wikimedia.org/api/rest_v1/media/math/render/svg/dc3df9dab10e015fc31e871b89fd2a2298212e90)

Introduce negation

NOT-2

![\phi \to (\neg \phi \to \chi )](https://wikimedia.org/api/rest_v1/media/math/render/svg/8f7f65ad3a1146ede774940a02971863ffa223ca)

Eliminate negation

NOT-3

![\phi \lor \neg \phi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/87dc7b2a3892721a44cce8ce9eaa58e10482b691)

Excluded middle, classical logic

IFF-1

![(\phi \leftrightarrow \chi )\to (\phi \to \chi )](https://wikimedia.org/api/rest_v1/media/math/render/svg/21f7a700da6f817e4a60fb7545f03ca9112eca8e)

Eliminate equivalence

IFF-2

![(\phi \leftrightarrow \chi )\to (\chi \to \phi )](https://wikimedia.org/api/rest_v1/media/math/render/svg/c466b2df133a8a47459d9925b3052f50f8cfab43)

 

IFF-3

![(\phi \to \chi )\to ((\chi \to \phi )\to (\phi \leftrightarrow \chi ))](https://wikimedia.org/api/rest_v1/media/math/render/svg/ff86860151feae70cfebb97d3f04bc5b6e37d470)

Introduce equivalence

-   Axiom __[THEN-2][239]__ may be considered to be a "distributive property of implication with respect to implication."
-   Axioms __[AND-1][240]__ and __[AND-2][241]__ correspond to "conjunction elimination". The relation between __[AND-1][242]__ and __[AND-2][243]__ reflects the commutativity of the conjunction operator.
-   Axiom __[AND-3][244]__ corresponds to "conjunction introduction."
-   Axioms __[OR-1][245]__ and __[OR-2][246]__ correspond to "disjunction introduction." The relation between __[OR-1][247]__ and __[OR-2][248]__ reflects the commutativity of the disjunction operator.
-   Axiom __[NOT-1][249]__ corresponds to "reductio ad absurdum."
-   Axiom __[NOT-2][250]__ says that "anything can be deduced from a contradiction."
-   Axiom __[NOT-3][251]__ is called "[tertium non-datur][252]" ([Latin][253]: "a third is not given") and reflects the semantic valuation of propositional formulas: a formula can have a truth-value of either true or false. There is no third truth-value, at least not in classical logic. [Intuitionistic logicians][254] do not accept the axiom __[NOT-3][255]__.

### Inference rule\[[edit][256]\]

The inference rule is [modus ponens][257]:

![\phi ,\ \phi \to \chi \vdash \chi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1b04d6ec55879b9dc88eeb1458ec4710012bfb2c).

### Meta-inference rule\[[edit][258]\]

Let a demonstration be represented by a sequence, with hypotheses to the left of the [turnstile][259] and the conclusion to the right of the turnstile. Then the [deduction theorem][260] can be stated as follows:

*If the sequence*

![\phi _{1},\ \phi _{2},\ ...,\ \phi _{n},\ \chi \vdash \psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/7e8a7a714483dff834f30bbb5df221cbd1cc9d32)

*has been demonstrated, then it is also possible to demonstrate the sequence*

![\phi _{1},\ \phi _{2},\ ...,\ \phi _{n}\vdash \chi \to \psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/69f6ef39e54630c5619bad4a8f72bc296e9d4c81).

This deduction theorem (DT) is not itself formulated with propositional calculus: it is not a theorem of propositional calculus, but a theorem about propositional calculus. In this sense, it is a [meta-theorem][261], comparable to theorems about the soundness or completeness of propositional calculus.

On the other hand, DT is so useful for simplifying the syntactical proof process that it can be considered and used as another inference rule, accompanying modus ponens. In this sense, DT corresponds to the natural [conditional proof][262] inference rule which is part of the first version of propositional calculus introduced in this article.

The converse of DT is also valid:

*If the sequence*

![\phi _{1},\ \phi _{2},\ ...,\ \phi _{n}\vdash \chi \to \psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/69f6ef39e54630c5619bad4a8f72bc296e9d4c81)

*has been demonstrated, then it is also possible to demonstrate the sequence*

![\phi _{1},\ \phi _{2},\ ...,\ \phi _{n},\ \chi \vdash \psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/7e8a7a714483dff834f30bbb5df221cbd1cc9d32)

in fact, the validity of the converse of DT is almost trivial compared to that of DT:

*If*

![\phi _{1},\ ...,\ \phi _{n}\vdash \chi \to \psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/33e85f6f1ea693428771308be5db483f8af1c27f)

*then*

1: ![\phi _{1},\ ...,\ \phi _{n},\ \chi \vdash \chi \to \psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/c5fa1b49424f807f6d9f855a5af6356772d03faf)

2: ![\phi _{1},\ ...,\ \phi _{n},\ \chi \vdash \chi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/f5694c88dd0ed307b1f2516edcbe500498baa57a)

*and from (1) and (2) can be deduced*

3: ![\phi _{1},\ ...,\ \phi _{n},\ \chi \vdash \psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/8e6e986b2d0ac1fd2b980b03a0a5963e18d93f95)

*by means of modus ponens, Q.E.D.*

The converse of DT has powerful implications: it can be used to convert an axiom into an inference rule. For example, the axiom AND-1,

![\vdash \phi \wedge \chi \to \phi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/259168209a9063fcfcb1e9d086ac2016fd801560)

can be transformed by means of the converse of the deduction theorem into the inference rule

![\phi \wedge \chi \vdash \phi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ce0b21297d5cfd3c915d163fda429af39b0836c3)

which is [conjunction elimination][263], one of the ten inference rules used in the first version (in this article) of the propositional calculus.

### Example of a proof\[[edit][264]\]

The following is an example of a (syntactical) demonstration, involving only axioms __[THEN-1][265]__ and __[THEN-2][266]__:

__Prove:__ ![A\to A](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fbf720da5a9387e23c628079fbc3e021399c911) (Reflexivity of implication).

__Proof:__

1.  ![(A\to ((B\to A)\to A))\to ((A\to (B\to A))\to (A\to A))](https://wikimedia.org/api/rest_v1/media/math/render/svg/a699584bb3b5096e0ff031e20738b2cc6b3a7102)
    
    Axiom __[THEN-2][267]__ with ![\phi =A,\chi =B\to A,\psi =A](https://wikimedia.org/api/rest_v1/media/math/render/svg/adc9df168edf7fe6426b8f6a7babd2dfbc837e15)
    
2.  ![A\to ((B\to A)\to A)](https://wikimedia.org/api/rest_v1/media/math/render/svg/6aa00669c103583ca3f122b828cc438f7325501e)
    
    Axiom __[THEN-1][268]__ with ![\phi =A,\chi =B\to A](https://wikimedia.org/api/rest_v1/media/math/render/svg/4f300858193f4cf9ab286753108c7ab90e40e11e)
    
3.  ![(A\to (B\to A))\to (A\to A)](https://wikimedia.org/api/rest_v1/media/math/render/svg/82b16b819f3a2d8c09588b77d0e38ab272148d35)
    
    From (1) and (2) by modus ponens.
    
4.  ![A\to (B\to A)](https://wikimedia.org/api/rest_v1/media/math/render/svg/ba8692a5036a11936ef451eadfda6c4039a56249)
    
    Axiom __[THEN-1][269]__ with ![\phi =A,\chi =B](https://wikimedia.org/api/rest_v1/media/math/render/svg/b13dde93ca48afaa5cbfe84b187e5469c25f3e76)
    
5.  ![A\to A](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fbf720da5a9387e23c628079fbc3e021399c911)
    
    From (3) and (4) by modus ponens.
    

## Equivalence to equational logics\[[edit][270]\]

The preceding alternative calculus is an example of a [Hilbert-style deduction system][271]. In the case of propositional systems the axioms are terms built with logical connectives and the only inference rule is modus ponens. Equational logic as standardly used informally in high school algebra is a different kind of calculus from Hilbert systems. Its theorems are equations and its inference rules express the properties of equality, namely that it is a congruence on terms that admits substitution.

Classical propositional calculus as described above is equivalent to [Boolean algebra][272], while [intuitionistic propositional calculus][273] is equivalent to [Heyting algebra][274]. The equivalence is shown by translation in each direction of the theorems of the respective systems. Theorems ![\phi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/72b1f30316670aee6270a28334bdf4f5072cdde4) of classical or intuitionistic propositional calculus are translated as equations ![\phi =1](https://wikimedia.org/api/rest_v1/media/math/render/svg/fbeaac176545364b710d70d6cb83b314eb9cc4f3) of Boolean or Heyting algebra respectively. Conversely theorems ![x=y](https://wikimedia.org/api/rest_v1/media/math/render/svg/409a91214d63eabe46ec10ff3cbba689ab687366) of Boolean or Heyting algebra are translated as theorems ![(x\to y)\land (y\to x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/a7607d382dfdb5edd4708e37428927d5507886d4) of classical or intuitionistic calculus respectively, for which ![x\equiv y](https://wikimedia.org/api/rest_v1/media/math/render/svg/344d00ea5455ff5454015cc1f00cf534be450a03) is a standard abbreviation. In the case of Boolean algebra ![x=y](https://wikimedia.org/api/rest_v1/media/math/render/svg/409a91214d63eabe46ec10ff3cbba689ab687366) can also be translated as ![(x\land y)\lor (\neg x\land \neg y)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b9a473643787f3d43daa58723cbe28245f90fffc), but this translation is incorrect intuitionistically.

In both Boolean and Heyting algebra, inequality ![x\leq y](https://wikimedia.org/api/rest_v1/media/math/render/svg/c07a0bc023490be1c08e6c33a9cdc93bec908224) can be used in place of equality. The equality ![x=y](https://wikimedia.org/api/rest_v1/media/math/render/svg/409a91214d63eabe46ec10ff3cbba689ab687366) is expressible as a pair of inequalities ![x\leq y](https://wikimedia.org/api/rest_v1/media/math/render/svg/c07a0bc023490be1c08e6c33a9cdc93bec908224) and ![y\leq x](https://wikimedia.org/api/rest_v1/media/math/render/svg/7de6a6e4f44d9dfcbfaadbdcf388d4b8a6fed109). Conversely the inequality ![x\leq y](https://wikimedia.org/api/rest_v1/media/math/render/svg/c07a0bc023490be1c08e6c33a9cdc93bec908224) is expressible as the equality ![x\land y=x](https://wikimedia.org/api/rest_v1/media/math/render/svg/adfaa089cf83ea4a0a51a015855c9d6115899cac), or as ![x\lor y=y](https://wikimedia.org/api/rest_v1/media/math/render/svg/1861fb8f5462d58180bf88a418f76fd78daca12d). The significance of inequality for Hilbert-style systems is that it corresponds to the latter's deduction or [entailment][275] symbol ![\vdash ](https://wikimedia.org/api/rest_v1/media/math/render/svg/a0c0d30cf8cb7dba179e317fcde9583d842e80f6). An entailment

![\phi _{1},\ \phi _{2},\ \dots ,\ \phi _{n}\vdash \psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/73e99a394f366d6a20d1005e4c2ad23128fb872b)

is translated in the inequality version of the algebraic framework as

![\phi _{1}\ \land \ \phi _{2}\ \land \ \dots \ \land \ \phi _{n}\ \ \leq \ \ \psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/90c728ba536ae9c1e33e019ee99545eb2fe7de52)

Conversely the algebraic inequality ![x\leq y](https://wikimedia.org/api/rest_v1/media/math/render/svg/c07a0bc023490be1c08e6c33a9cdc93bec908224) is translated as the entailment

![x\ \vdash \ y](https://wikimedia.org/api/rest_v1/media/math/render/svg/ec50bc335fedc96c855795c6a1c7f84825f7cf98).

The difference between implication ![x\to y](https://wikimedia.org/api/rest_v1/media/math/render/svg/43570cdee5baeaebcf546338f77cf67c27a7344f) and inequality or [entailment][276] ![x\leq y](https://wikimedia.org/api/rest_v1/media/math/render/svg/c07a0bc023490be1c08e6c33a9cdc93bec908224) or ![x\ \vdash \ y](https://wikimedia.org/api/rest_v1/media/math/render/svg/ec50bc335fedc96c855795c6a1c7f84825f7cf98) is that the former is internal to the logic while the latter is external. Internal implication between two terms is another term of the same kind. Entailment as external implication between two terms expresses a metatruth outside the language of the logic, and is considered part of the [metalanguage][277]. Even when the logic under study is intuitionistic, entailment is ordinarily understood classically as two-valued: either the left side entails, or is less-or-equal to, the right side, or it is not.

Similar but more complex translations to and from algebraic logics are possible for natural deduction systems as described above and for the [sequent calculus][278]. The entailments of the latter can be interpreted as two-valued, but a more insightful interpretation is as a set, the elements of which can be understood as abstract proofs organized as the morphisms of a [category][279]. In this interpretation the cut rule of the sequent calculus corresponds to composition in the category. Boolean and Heyting algebras enter this picture as special categories having at most one morphism per homset, i.e., one proof per entailment, corresponding to the idea that existence of proofs is all that matters: any proof will do and there is no point in distinguishing them.

## Graphical calculi\[[edit][280]\]

It is possible to generalize the definition of a formal language from a set of finite sequences over a finite basis to include many other sets of mathematical structures, so long as they are built up by finitary means from finite materials. What's more, many of these families of formal structures are especially well-suited for use in logic.

For example, there are many families of [graphs][281] that are close enough analogues of formal languages that the concept of a calculus is quite easily and naturally extended to them. Many species of graphs arise as *[parse graphs][282]* in the syntactic analysis of the corresponding families of text structures. The exigencies of practical computation on formal languages frequently demand that text strings be converted into [pointer structure][283] renditions of parse graphs, simply as a matter of checking whether strings are well-formed formulas or not. Once this is done, there are many advantages to be gained from developing the graphical analogue of the calculus on strings. The mapping from strings to parse graphs is called *[parsing][284]* and the inverse mapping from parse graphs to strings is achieved by an operation that is called *[traversing][285]* the graph.

## Other logical calculi\[[edit][286]\]

Propositional calculus is about the simplest kind of logical calculus in current use. It can be extended in several ways. ([Aristotelian "syllogistic" calculus][287], which is largely supplanted in modern logic, is in *some* ways simpler – but in other ways more complex – than propositional calculus.) The most immediate way to develop a more complex logical calculus is to introduce rules that are sensitive to more fine-grained details of the sentences being used.

[First-order logic][288] (a.k.a. first-order predicate logic) results when the "atomic sentences" of propositional logic are broken up into [terms][289], [variables][290], [predicates][291], and [quantifiers][292], all keeping the rules of propositional logic with some new ones introduced. (For example, from "All dogs are mammals" we may infer "If Rover is a dog then Rover is a mammal".) With the tools of first-order logic it is possible to formulate a number of theories, either with explicit axioms or by rules of inference, that can themselves be treated as logical calculi. [Arithmetic][293] is the best known of these; others include [set theory][294] and [mereology][295]. [Second-order logic][296] and other [higher-order logics][297] are formal extensions of first-order logic. Thus, it makes sense to refer to propositional logic as *"zeroth-order logic"*, when comparing it with these logics.

[Modal logic][298] also offers a variety of inferences that cannot be captured in propositional calculus. For example, from "Necessarily p" we may infer that p. From p we may infer "It is possible that p". The translation between modal logics and algebraic logics concerns classical and intuitionistic logics but with the introduction of a unary operator on Boolean or Heyting algebras, different from the Boolean operations, interpreting the possibility modality, and in the case of Heyting algebra a second operator interpreting necessity (for Boolean algebra this is redundant since necessity is the De Morgan dual of possibility). The first operator preserves 0 and disjunction while the second preserves 1 and conjunction.

[Many-valued logics][299] are those allowing sentences to have values other than *true* and *false*. (For example, *neither* and *both* are standard "extra values"; "continuum logic" allows each sentence to have any of an infinite number of "degrees of truth" between *true* and *false*.) These logics often require calculational devices quite distinct from propositional calculus. When the values form a Boolean algebra (which may have more than two or even infinitely many values), many-valued logic reduces to classical logic; many-valued logics are therefore only of independent interest when the values form an algebra that is not Boolean.

## Solvers\[[edit][300]\]

Finding solutions to propositional logic formulas is an [NP-complete][301] problem. However, practical methods exist (e.g., [DPLL algorithm][302], 1962; [Chaff algorithm][303], 2001) that are very fast for many useful cases. Recent work has extended the [SAT solver][304] algorithms to work with propositions containing [arithmetic expressions][305]; these are the [SMT solvers][306].

## See also\[[edit][307]\]

### Higher logical levels\[[edit][308]\]

-   [First-order logic][309]
-   [Second-order propositional logic][310]
-   [Second-order logic][311]
-   [Higher-order logic][312]

### \[[edit][313]\]

## References\[[edit][314]\]

1.  __[^][315]__ ["Propositional Logic | Brilliant Math & Science Wiki"][316]. *brilliant.org*. Retrieved 20 August 2020.
2.  __[^][317]__ Bobzien, Susanne (1 January 2016). Zalta, Edward N. (ed.). [*The Stanford Encyclopedia of Philosophy*][318] – via Stanford Encyclopedia of Philosophy.
3.  __[^][319]__ ["Propositional Logic | Internet Encyclopedia of Philosophy"][320]. Retrieved 20 August 2020.
4.  __[^][321]__ Marenbon, John (2007). [*Medieval philosophy: an historical and philosophical introduction*][322]. Routledge. p. [137][323].
5.  __[^][324]__ Peckhaus, Volker (1 January 2014). Zalta, Edward N. (ed.). [*The Stanford Encyclopedia of Philosophy*][325] – via Stanford Encyclopedia of Philosophy.
6.  __[^][326]__ Hurley, Patrick (2007). *A Concise Introduction to Logic 10th edition*. Wadsworth Publishing. p. 392.
7.  __[^][327]__ Beth, Evert W.; "Semantic entailment and formal derivability", series: Mededlingen van de Koninklijke Nederlandse Akademie van Wetenschappen, Afdeling Letterkunde, Nieuwe Reeks, vol. 18, no. 13, Noord-Hollandsche Uitg. Mij., Amsterdam, 1955, pp. 309–42. Reprinted in Jaakko Intikka (ed.) *The Philosophy of Mathematics*, Oxford University Press, 1969
8.  ^ [*__a__*][328] [*__b__*][329] [Truth in Frege][330]
9.  ^ [*__a__*][331] [*__b__*][332] [*__c__*][333] ["Russell: the Journal of Bertrand Russell Studies"][334].
10.  __[^][335]__ [Anellis, Irving H.][336] (2012). "Peirce's Truth-functional Analysis and the Origin of the Truth Table". *History and Philosophy of Logic*. __33__: 87–97. [doi][337]:[10.1080/01445340.2011.621702][338].
11.  __[^][339]__ Wernick, William (1942) "Complete Sets of Logical Functions," *Transactions of the American Mathematical Society* __51__, pp. 117–132.
12.  __[^][340]__ Toida, Shunichi (2 August 2009). ["Proof of Implications"][341]. *CS381 Discrete Structures/Discrete Mathematics Web Course Material*. Department of Computer Science, [Old Dominion University][342]. Retrieved 10 March 2010.
13.  ^ [*__a__*][343] [*__b__*][344] [*__c__*][345] [*__d__*][346] [*__e__*][347] [*__f__*][348] [*__g__*][349] [*__h__*][350] [*__i__*][351] [*__j__*][352] [*__k__*][353] Hunter, Geoffrey (1971). *Metalogic: An Introduction to the Metatheory of Standard First-Order Logic*. University of California Pres. [ISBN][354] [0-520-02356-0][355].

## Further reading\[[edit][356]\]

-   Brown, Frank Markham (2003), *Boolean Reasoning: The Logic of Boolean Equations*, 1st edition, Kluwer Academic Publishers, Norwell, MA. 2nd edition, Dover Publications, Mineola, NY.
-   [Chang, C.C.][357] and [Keisler, H.J.][358] (1973), *Model Theory*, North-Holland, Amsterdam, Netherlands.
-   Kohavi, Zvi (1978), *Switching and Finite Automata Theory*, 1st edition, McGraw–Hill, 1970. 2nd edition, McGraw–Hill, 1978.
-   [Korfhage, Robert R.][359] (1974), *Discrete Computational Structures*, Academic Press, New York, NY.
-   [Lambek, J.][360] and Scott, P.J. (1986), *Introduction to Higher Order Categorical Logic*, Cambridge University Press, Cambridge, UK.
-   Mendelson, Elliot (1964), *Introduction to Mathematical Logic*, D. Van Nostrand Company.

### \[[edit][361]\]

-   [Hofstadter, Douglas][362] (1979). *[Gödel, Escher, Bach: An Eternal Golden Braid][363]*. [Basic Books][364]. [ISBN][365] [978-0-465-02656-2][366].

## External links\[[edit][367]\]

-   [Klement, Kevin C.][368] (2006), "Propositional Logic", in James Fieser and Bradley Dowden (eds.), *[Internet Encyclopedia of Philosophy][369]*, [Eprint][370].
-   [Formal Predicate Calculus][371], contains a systematic formal development along the lines of [Alternative calculus][372]
-   *[forall x: an introduction to formal logic][373]*, by [P.D. Magnus][374], covers formal semantics and [proof theory][375] for sentential logic.
-   [Chapter 2 / Propositional Logic][376] from [Logic In Action][377]
-   [Propositional sequent calculus prover][378] on Project Nayuki. (*note*: implication can be input in the form !X|Y, and a sequent can be a single formula prefixed with \> and having no commas)
-   [Propositional Logic - A Generative Grammar][379]

[1]: https://en.wikipedia.org/wiki/Logic "Logic"
[2]: https://en.wikipedia.org/wiki/Zeroth-order_logic "Zeroth-order logic"
[3]: https://en.wikipedia.org/wiki/Propositions "Propositions"
[4]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[5]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[6]: https://en.wikipedia.org/wiki/Quantifier_(logic) "Quantifier (logic)"
[7]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=1 "Edit section: Explanation"
[8]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[9]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[10]: https://en.wikipedia.org/wiki/Negation "Negation"
[11]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[12]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[13]: https://en.wikipedia.org/wiki/Inference_rule "Inference rule"
[14]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[15]: https://en.wikipedia.org/wiki/Well-formed_formula "Well-formed formula"
[16]: https://en.wikipedia.org/wiki/Formal_language "Formal language"
[17]: https://en.wikipedia.org/wiki/Interpretation_(logic) "Interpretation (logic)"
[18]: https://en.wikipedia.org/wiki/Propositions "Propositions"
[19]: https://en.wikipedia.org/wiki/Deductive_system "Deductive system"
[20]: https://en.wikipedia.org/wiki/Axiom "Axiom"
[21]: https://en.wikipedia.org/wiki/Rule_of_inference "Rule of inference"
[22]: https://en.wikipedia.org/wiki/Theorem "Theorem"
[23]: https://en.wikipedia.org/wiki/Formal_proof "Formal proof"
[24]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[25]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-1
[26]: https://en.wikipedia.org/wiki/Principle_of_bivalence "Principle of bivalence"
[27]: https://en.wikipedia.org/wiki/Law_of_excluded_middle "Law of excluded middle"
[28]: https://en.wikipedia.org/wiki/Isomorphism "Isomorphism"
[29]: https://en.wikipedia.org/wiki/Zeroth-order_logic "Zeroth-order logic"
[30]: https://en.wikipedia.org/wiki/Propositional_calculus#Alternative_calculus "Propositional calculus"
[31]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=2 "Edit section: History"
[32]: https://en.wikipedia.org/wiki/Stoic_logic "Stoic logic"
[33]: https://en.wikipedia.org/wiki/Chrysippus "Chrysippus"
[34]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-2
[35]: https://en.wikipedia.org/wiki/Stoics "Stoics"
[36]: https://en.wikipedia.org/wiki/Proposition "Proposition"
[37]: https://en.wikipedia.org/wiki/Syllogism "Syllogism"
[38]: https://en.wikipedia.org/wiki/Syllogisms#Terms_in_syllogism "Syllogisms"
[39]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-3
[40]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[41]: https://en.wikipedia.org/wiki/Peter_Abelard "Peter Abelard"
[42]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-4
[43]: https://en.wikipedia.org/wiki/Symbolic_logic "Symbolic logic"
[44]: https://en.wikipedia.org/wiki/Gottfried_Leibniz "Gottfried Leibniz"
[45]: https://en.wikipedia.org/wiki/Calculus_ratiocinator "Calculus ratiocinator"
[46]: https://en.wikipedia.org/wiki/George_Boole "George Boole"
[47]: https://en.wikipedia.org/wiki/Augustus_De_Morgan "Augustus De Morgan"
[48]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-5
[49]: https://en.wikipedia.org/wiki/Gottlob_Frege "Gottlob Frege"
[50]: https://en.wikipedia.org/wiki/Predicate_logic "Predicate logic"
[51]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-6
[52]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[53]: https://en.wikipedia.org/wiki/Method_of_analytic_tableaux "Method of analytic tableaux"
[54]: https://en.wikipedia.org/wiki/Truth-table "Truth-table"
[55]: https://en.wikipedia.org/wiki/Gerhard_Gentzen "Gerhard Gentzen"
[56]: https://en.wikipedia.org/wiki/Jan_%C5%81ukasiewicz "Jan Łukasiewicz"
[57]: https://en.wikipedia.org/wiki/Evert_Willem_Beth "Evert Willem Beth"
[58]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-7
[59]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-Truth_in_Frege-8
[60]: https://en.wikipedia.org/wiki/Bertrand_Russell "Bertrand Russell"
[61]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-Russell_Truth-Tables-9
[62]: https://en.wikipedia.org/wiki/Ludwig_Wittgenstein "Ludwig Wittgenstein"
[63]: https://en.wikipedia.org/wiki/Emil_Post "Emil Post"
[64]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-Truth_in_Frege-8
[65]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce "Charles Sanders Peirce"
[66]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-10
[67]: https://en.wikipedia.org/wiki/Ernst_Schr%C3%B6der_(mathematician) "Ernst Schröder (mathematician)"
[68]: https://en.wikipedia.org/wiki/Jan_%C5%81ukasiewicz "Jan Łukasiewicz"
[69]: https://en.wikipedia.org/wiki/Alfred_North_Whitehead "Alfred North Whitehead"
[70]: https://en.wikipedia.org/wiki/William_Stanley_Jevons "William Stanley Jevons"
[71]: https://en.wikipedia.org/wiki/John_Venn "John Venn"
[72]: https://en.wikipedia.org/wiki/Clarence_Irving_Lewis "Clarence Irving Lewis"
[73]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-Russell_Truth-Tables-9
[74]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-Russell_Truth-Tables-9
[75]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=3 "Edit section: Terminology"
[76]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[77]: https://en.wikipedia.org/wiki/Well-formed_formula "Well-formed formula"
[78]: https://en.wikipedia.org/wiki/Binary_relation "Binary relation"
[79]: https://en.wikipedia.org/wiki/Logical_equivalence "Logical equivalence"
[80]: https://en.wikipedia.org/wiki/Logical_system "Logical system"
[81]: https://en.wikipedia.org/wiki/Axioms "Axioms"
[82]: https://en.wikipedia.org/wiki/Axiom_schema "Axiom schema"
[83]: https://en.wikipedia.org/wiki/Formal_grammar "Formal grammar"
[84]: https://en.wikipedia.org/wiki/Formal_language "Formal language"
[85]: https://en.wikipedia.org/wiki/Semantics "Semantics"
[86]: https://en.wikipedia.org/wiki/Valuation_(logic) "Valuation (logic)"
[87]: https://en.wikipedia.org/wiki/Interpretation_(logic) "Interpretation (logic)"
[88]: https://en.wikipedia.org/wiki/Formal_language "Formal language"
[89]: https://en.wikipedia.org/wiki/Atomic_formula "Atomic formula"
[90]: https://en.wikipedia.org/wiki/Logical_operator "Logical operator"
[91]: https://en.wikipedia.org/wiki/Well-formed_formula "Well-formed formula"
[92]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=4 "Edit section: Basic concepts"
[93]: https://en.wikipedia.org/wiki/Truth-functional "Truth-functional"
[94]: https://en.wikipedia.org/wiki/Inclusive_disjunction "Inclusive disjunction"
[95]: https://en.wikipedia.org/wiki/Exclusive_disjunction "Exclusive disjunction"
[96]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[97]: https://en.wikipedia.org/wiki/Method_of_analytic_tableaux "Method of analytic tableaux"
[98]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=5 "Edit section: Closure under operations"
[99]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=6 "Edit section: Argument"
[100]: https://en.wikipedia.org/wiki/Argument "Argument"
[101]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[102]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[103]: https://en.wikipedia.org/wiki/Completeness_(logic) "Completeness (logic)"
[104]: https://en.wikipedia.org/wiki/Deduction_theorem#Virtual_rules_of_inference "Deduction theorem"
[105]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=7 "Edit section: Generic description of a propositional calculus"
[106]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[107]: https://en.wikipedia.org/wiki/Propositional_variable "Propositional variable"
[108]: https://en.wikipedia.org/wiki/Atomic_formula "Atomic formula"
[109]: https://en.wikipedia.org/wiki/Operation_(mathematics) "Operation (mathematics)"
[110]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[111]: https://en.wikipedia.org/wiki/Partition_of_a_set "Partition of a set"
[112]: https://en.wikipedia.org/wiki/Arity "Arity"
[113]: https://en.wikipedia.org/wiki/Logical_value "Logical value"
[114]: https://en.wikipedia.org/wiki/Tilde "Tilde"
[115]: https://en.wikipedia.org/wiki/Ampersand "Ampersand"
[116]: https://en.wikipedia.org/wiki/Inference_rule "Inference rule"
[117]: https://en.wikipedia.org/wiki/Axiom "Axiom"
[118]: https://en.wikipedia.org/wiki/Well-formed_formula "Well-formed formula"
[119]: https://en.wikipedia.org/wiki/Inductive_definition "Inductive definition"
[120]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=8 "Edit section: Example 1. Simple axiom system"
[121]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-Wernick-11
[122]: https://en.wikipedia.org/wiki/Sole_sufficient_operator "Sole sufficient operator"
[123]: https://en.wikipedia.org/wiki/Jan_%C5%81ukasiewicz "Jan Łukasiewicz"
[124]: https://en.wikipedia.org/wiki/Hilbert_system "Hilbert system"
[125]: https://en.wikipedia.org/wiki/Substitution_instance "Substitution instance"
[126]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[127]: https://en.wikipedia.org/wiki/Metamath "Metamath"
[128]: http://us.metamath.org/mpegif/mmset.html#scaxioms
[129]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=9 "Edit section: Example 2. Natural deduction system"
[130]: https://en.wikipedia.org/wiki/Natural_deduction_system "Natural deduction system"
[131]: https://en.wikipedia.org/wiki/Theorem "Theorem"
[132]: https://en.wikipedia.org/wiki/Conjunction_introduction "Conjunction introduction"
[133]: https://en.wikipedia.org/wiki/Negation_introduction "Negation introduction"
[134]: https://en.wikipedia.org/wiki/Negation_elimination "Negation elimination"
[135]: https://en.wikipedia.org/wiki/Double_negation_elimination "Double negation elimination"
[136]: https://en.wikipedia.org/wiki/Conjunction_introduction "Conjunction introduction"
[137]: https://en.wikipedia.org/wiki/Conjunction_elimination "Conjunction elimination"
[138]: https://en.wikipedia.org/wiki/Disjunction_introduction "Disjunction introduction"
[139]: https://en.wikipedia.org/wiki/Disjunction_elimination "Disjunction elimination"
[140]: https://en.wikipedia.org/wiki/Biconditional_introduction "Biconditional introduction"
[141]: https://en.wikipedia.org/wiki/Biconditional_elimination "Biconditional elimination"
[142]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[143]: https://en.wikipedia.org/wiki/Conditional_proof "Conditional proof"
[144]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=10 "Edit section: Basic and derived argument forms"
[145]: https://en.wikipedia.org/wiki/Modus_Ponens "Modus Ponens"
[146]: https://en.wikipedia.org/wiki/Modus_Tollens "Modus Tollens"
[147]: https://en.wikipedia.org/wiki/Hypothetical_Syllogism "Hypothetical Syllogism"
[148]: https://en.wikipedia.org/wiki/Disjunctive_syllogism "Disjunctive syllogism"
[149]: https://en.wikipedia.org/wiki/Constructive_dilemma "Constructive dilemma"
[150]: https://en.wikipedia.org/wiki/Destructive_dilemma "Destructive dilemma"
[151]: https://en.wikipedia.org/wiki/Conjunction_elimination "Conjunction elimination"
[152]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[153]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[154]: https://en.wikipedia.org/wiki/Distributive_property "Distributive property"
[155]: https://en.wikipedia.org/wiki/De_Morgan%27s_laws "De Morgan's laws"
[156]: https://en.wikipedia.org/wiki/De_Morgan%27s_laws "De Morgan's laws"
[157]: https://en.wikipedia.org/wiki/Commutative_property "Commutative property"
[158]: https://en.wikipedia.org/wiki/Commutative_property "Commutative property"
[159]: https://en.wikipedia.org/wiki/Commutative_property "Commutative property"
[160]: https://en.wikipedia.org/wiki/Associative_property "Associative property"
[161]: https://en.wikipedia.org/wiki/Associative_property "Associative property"
[162]: https://en.wikipedia.org/wiki/Distributive_property "Distributive property"
[163]: https://en.wikipedia.org/wiki/Distributive_property "Distributive property"
[164]: https://en.wikipedia.org/wiki/Double_negation_elimination "Double negation elimination"
[165]: https://en.wikipedia.org/wiki/Transposition_(logic) "Transposition (logic)"
[166]: https://en.wikipedia.org/wiki/Material_implication_(rule_of_inference) "Material implication (rule of inference)"
[167]: https://en.wikipedia.org/wiki/Material_equivalence "Material equivalence"
[168]: https://en.wikipedia.org/wiki/Material_equivalence "Material equivalence"
[169]: https://en.wikipedia.org/wiki/Material_equivalence "Material equivalence"
[170]: https://en.wikipedia.org/wiki/Exportation_(logic) "Exportation (logic)"
[171]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-12
[172]: https://en.wikipedia.org/wiki/Exportation_(logic) "Exportation (logic)"
[173]: https://en.wikipedia.org/wiki/Tautology_(rule_of_inference) "Tautology (rule of inference)"
[174]: https://en.wikipedia.org/wiki/Tautology_(rule_of_inference) "Tautology (rule of inference)"
[175]: https://en.wikipedia.org/wiki/Law_of_excluded_middle "Law of excluded middle"
[176]: https://en.wikipedia.org/wiki/Law_of_noncontradiction "Law of noncontradiction"
[177]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=11 "Edit section: Proofs in propositional calculus"
[178]: https://en.wikipedia.org/wiki/Method_of_analytic_tableaux "Method of analytic tableaux"
[179]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=12 "Edit section: Example of a proof in natural deduction system"
[180]: https://en.wikipedia.org/wiki/Propositional_calculus#math_1
[181]: https://en.wikipedia.org/wiki/Propositional_calculus#math_1
[182]: https://en.wikipedia.org/wiki/Propositional_calculus#math_2
[183]: https://en.wikipedia.org/wiki/Propositional_calculus#math_3
[184]: https://en.wikipedia.org/wiki/Propositional_calculus#math_1
[185]: https://en.wikipedia.org/wiki/Propositional_calculus#math_4
[186]: https://en.wikipedia.org/wiki/Propositional_calculus#math_5
[187]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=13 "Edit section: Example of a proof in a classical propositional calculus system"
[188]: https://en.wikipedia.org/wiki/Jan_%C5%81ukasiewicz "Jan Łukasiewicz"
[189]: https://en.wikipedia.org/wiki/List_of_Hilbert_systems#Classical_propositional_calculus_systems "List of Hilbert systems"
[190]: https://en.wikipedia.org/wiki/Hilbert-style_deductive_system "Hilbert-style deductive system"
[191]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[192]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=14 "Edit section: Soundness and completeness of the rules"
[193]: https://en.wikipedia.org/wiki/Soundness "Soundness"
[194]: https://en.wikipedia.org/wiki/ZFC "ZFC"
[195]: https://en.wikipedia.org/wiki/Metatheory#In_mathematics "Metatheory"
[196]: https://en.wikipedia.org/wiki/Function_(mathematics) "Function (mathematics)"
[197]: https://en.wikipedia.org/wiki/State_of_affairs_(philosophy) "State of affairs (philosophy)"
[198]: https://en.wikipedia.org/wiki/Possible_world "Possible world"
[199]: https://en.wikipedia.org/wiki/Well-formed_formula "Well-formed formula"
[200]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[201]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=15 "Edit section: Sketch of a soundness proof"
[202]: https://en.wikipedia.org/wiki/Logical_system "Logical system"
[203]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[204]: https://en.wikipedia.org/wiki/Logical_truth "Logical truth"
[205]: https://en.wikipedia.org/wiki/Proof_by_cases "Proof by cases"
[206]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=16 "Edit section: Sketch of completeness proof"
[207]: https://en.wikipedia.org/wiki/Contraposition "Contraposition"
[208]: https://en.wikipedia.org/wiki/Mathematical_model "Mathematical model"
[209]: https://en.wikipedia.org/wiki/Order_type "Order type"
[210]: https://en.wikipedia.org/wiki/Deduction_theorem "Deduction theorem"
[211]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=17 "Edit section: Example"
[212]: https://en.wikipedia.org/wiki/Hypothetical_syllogism#Proof_2 "Hypothetical syllogism"
[213]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=18 "Edit section: Verifying completeness for the classical propositional calculus system"
[214]: https://en.wikipedia.org/wiki/Hilbert_system#Some_useful_theorems_and_their_proofs "Hilbert system"
[215]: https://en.wikipedia.org/wiki/Double_negation#In_classical_propositional_calculus_system "Double negation"
[216]: https://en.wikipedia.org/wiki/Hypothetical_syllogism#Alternative_forms "Hypothetical syllogism"
[217]: https://en.wikipedia.org/wiki/Transposition_(logic)#In_classical_propositional_calculus_system "Transposition (logic)"
[218]: https://en.wikipedia.org/wiki/Hypothetical_syllogism#As_a_metatheorem "Hypothetical syllogism"
[219]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=19 "Edit section: Another outline for a completeness proof"
[220]: https://en.wikipedia.org/wiki/Tautology_(logic) "Tautology (logic)"
[221]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[222]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=20 "Edit section: Interpretation of a truth-functional propositional calculus"
[223]: https://en.wikipedia.org/wiki/Assignment_(mathematical_logic) "Assignment (mathematical logic)"
[224]: https://en.wikipedia.org/wiki/Propositional_variable "Propositional variable"
[225]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[226]: https://en.wikipedia.org/wiki/Truth "Truth"
[227]: https://en.wikipedia.org/wiki/False_(logic) "False (logic)"
[228]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[229]: https://en.wikipedia.org/wiki/Truth_tables "Truth tables"
[230]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-metalogic-13
[231]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-metalogic-13
[232]: https://en.wikipedia.org/wiki/Denumerably_infinite "Denumerably infinite"
[233]: https://en.wikipedia.org/wiki/Cardinality_of_the_continuum "Cardinality of the continuum"
[234]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_note-metalogic-13
[235]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=21 "Edit section: Interpretation of a sentence of truth-functional propositional logic"
[236]: https://en.wikipedia.org/wiki/Formula_(mathematical_logic) "Formula (mathematical logic)"
[237]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=22 "Edit section: Alternative calculus"
[238]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=23 "Edit section: Axioms"
[239]: https://en.wikipedia.org/wiki/Propositional_calculus#math_THEN-2
[240]: https://en.wikipedia.org/wiki/Propositional_calculus#math_AND-1
[241]: https://en.wikipedia.org/wiki/Propositional_calculus#math_AND-2
[242]: https://en.wikipedia.org/wiki/Propositional_calculus#math_AND-1
[243]: https://en.wikipedia.org/wiki/Propositional_calculus#math_AND-2
[244]: https://en.wikipedia.org/wiki/Propositional_calculus#math_AND-3
[245]: https://en.wikipedia.org/wiki/Propositional_calculus#math_OR-1
[246]: https://en.wikipedia.org/wiki/Propositional_calculus#math_OR-2
[247]: https://en.wikipedia.org/wiki/Propositional_calculus#math_OR-1
[248]: https://en.wikipedia.org/wiki/Propositional_calculus#math_OR-2
[249]: https://en.wikipedia.org/wiki/Propositional_calculus#math_NOT-1
[250]: https://en.wikipedia.org/wiki/Propositional_calculus#math_NOT-2
[251]: https://en.wikipedia.org/wiki/Propositional_calculus#math_NOT-3
[252]: https://en.wikipedia.org/wiki/Law_of_excluded_middle "Law of excluded middle"
[253]: https://en.wikipedia.org/wiki/Latin "Latin"
[254]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[255]: https://en.wikipedia.org/wiki/Propositional_calculus#math_NOT-3
[256]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=24 "Edit section: Inference rule"
[257]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[258]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=25 "Edit section: Meta-inference rule"
[259]: https://en.wikipedia.org/wiki/Turnstile_(symbol) "Turnstile (symbol)"
[260]: https://en.wikipedia.org/wiki/Deduction_theorem "Deduction theorem"
[261]: https://en.wikipedia.org/wiki/Meta-theorem "Meta-theorem"
[262]: https://en.wikipedia.org/wiki/Conditional_proof "Conditional proof"
[263]: https://en.wikipedia.org/wiki/Conjunction_elimination "Conjunction elimination"
[264]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=26 "Edit section: Example of a proof"
[265]: https://en.wikipedia.org/wiki/Propositional_calculus#math_THEN-1
[266]: https://en.wikipedia.org/wiki/Propositional_calculus#math_THEN-2
[267]: https://en.wikipedia.org/wiki/Propositional_calculus#math_THEN-2
[268]: https://en.wikipedia.org/wiki/Propositional_calculus#math_THEN-1
[269]: https://en.wikipedia.org/wiki/Propositional_calculus#math_THEN-1
[270]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=27 "Edit section: Equivalence to equational logics"
[271]: https://en.wikipedia.org/wiki/Hilbert-style_deduction_system "Hilbert-style deduction system"
[272]: https://en.wikipedia.org/wiki/Boolean_algebra_(logic) "Boolean algebra (logic)"
[273]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[274]: https://en.wikipedia.org/wiki/Heyting_algebra "Heyting algebra"
[275]: https://en.wikipedia.org/wiki/Entailment "Entailment"
[276]: https://en.wikipedia.org/wiki/Entailment "Entailment"
[277]: https://en.wikipedia.org/wiki/Metalanguage "Metalanguage"
[278]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[279]: https://en.wikipedia.org/wiki/Category_(mathematics) "Category (mathematics)"
[280]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=28 "Edit section: Graphical calculi"
[281]: https://en.wikipedia.org/wiki/Graph_(discrete_mathematics) "Graph (discrete mathematics)"
[282]: https://en.wikipedia.org/wiki/Parse_graph "Parse graph"
[283]: https://en.wikipedia.org/wiki/Pointer_structure "Pointer structure"
[284]: https://en.wikipedia.org/wiki/Parsing "Parsing"
[285]: https://en.wikipedia.org/wiki/Graph_traversal "Graph traversal"
[286]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=29 "Edit section: Other logical calculi"
[287]: https://en.wikipedia.org/wiki/Term_logic "Term logic"
[288]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[289]: https://en.wikipedia.org/wiki/Singular_term "Singular term"
[290]: https://en.wikipedia.org/wiki/Variable_(mathematics) "Variable (mathematics)"
[291]: https://en.wikipedia.org/wiki/Predicate_(logic) "Predicate (logic)"
[292]: https://en.wikipedia.org/wiki/Quantifier_(logic) "Quantifier (logic)"
[293]: https://en.wikipedia.org/wiki/Arithmetic "Arithmetic"
[294]: https://en.wikipedia.org/wiki/Set_theory "Set theory"
[295]: https://en.wikipedia.org/wiki/Mereology "Mereology"
[296]: https://en.wikipedia.org/wiki/Second-order_logic "Second-order logic"
[297]: https://en.wikipedia.org/wiki/Higher-order_logic "Higher-order logic"
[298]: https://en.wikipedia.org/wiki/Modal_logic "Modal logic"
[299]: https://en.wikipedia.org/wiki/Many-valued_logic "Many-valued logic"
[300]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=30 "Edit section: Solvers"
[301]: https://en.wikipedia.org/wiki/NP-complete "NP-complete"
[302]: https://en.wikipedia.org/wiki/DPLL_algorithm "DPLL algorithm"
[303]: https://en.wikipedia.org/wiki/Chaff_algorithm "Chaff algorithm"
[304]: https://en.wikipedia.org/wiki/SAT_solver "SAT solver"
[305]: https://en.wikipedia.org/wiki/Arithmetic_expression "Arithmetic expression"
[306]: https://en.wikipedia.org/wiki/SMT_solver "SMT solver"
[307]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=31 "Edit section: See also"
[308]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=32 "Edit section: Higher logical levels"
[309]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[310]: https://en.wikipedia.org/wiki/Second-order_propositional_logic "Second-order propositional logic"
[311]: https://en.wikipedia.org/wiki/Second-order_logic "Second-order logic"
[312]: https://en.wikipedia.org/wiki/Higher-order_logic "Higher-order logic"
[313]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=33 "Edit section: Related topics"
[314]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=34 "Edit section: References"
[315]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-1
[316]: https://brilliant.org/wiki/propositional-logic/
[317]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-2
[318]: http://plato.stanford.edu/archives/spr2016/entries/logic-ancient/
[319]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-3
[320]: https://iep.utm.edu/prop-log/
[321]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-4
[322]: https://archive.org/details/introductiontome00mare
[323]: https://archive.org/details/introductiontome00mare/page/n151
[324]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-5
[325]: http://plato.stanford.edu/archives/spr2014/entries/leibniz-logic-influence/
[326]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-6
[327]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-7
[328]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-Truth_in_Frege_8-0
[329]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-Truth_in_Frege_8-1
[330]: https://web.archive.org/web/20120807235445/http://frege.brown.edu/heck/pdf/unpublished/TruthInFrege.pdf
[331]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-Russell_Truth-Tables_9-0
[332]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-Russell_Truth-Tables_9-1
[333]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-Russell_Truth-Tables_9-2
[334]: http://digitalcommons.mcmaster.ca/cgi/viewcontent.cgi?article=1219&context=russelljournal
[335]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-10
[336]: https://en.wikipedia.org/wiki/Irving_Anellis "Irving Anellis"
[337]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[338]: https://doi.org/10.1080%2F01445340.2011.621702
[339]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-Wernick_11-0
[340]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-12
[341]: http://www.cs.odu.edu/~toida/nerzic/content/logic/prop_logic/implications/implication_proof.html
[342]: https://en.wikipedia.org/wiki/Old_Dominion_University "Old Dominion University"
[343]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-metalogic_13-0
[344]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-metalogic_13-1
[345]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-metalogic_13-2
[346]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-metalogic_13-3
[347]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-metalogic_13-4
[348]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-metalogic_13-5
[349]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-metalogic_13-6
[350]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-metalogic_13-7
[351]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-metalogic_13-8
[352]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-metalogic_13-9
[353]: https://en.wikipedia.org/wiki/Propositional_calculus#cite_ref-metalogic_13-10
[354]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[355]: https://en.wikipedia.org/wiki/Special:BookSources/0-520-02356-0 "Special:BookSources/0-520-02356-0"
[356]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=35 "Edit section: Further reading"
[357]: https://en.wikipedia.org/wiki/Chen_Chung_Chang "Chen Chung Chang"
[358]: https://en.wikipedia.org/wiki/Howard_Jerome_Keisler "Howard Jerome Keisler"
[359]: https://en.wikipedia.org/wiki/Robert_R._Korfhage "Robert R. Korfhage"
[360]: https://en.wikipedia.org/wiki/Joachim_Lambek "Joachim Lambek"
[361]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=36 "Edit section: Related works"
[362]: https://en.wikipedia.org/wiki/Douglas_Hofstadter "Douglas Hofstadter"
[363]: https://en.wikipedia.org/wiki/G%C3%B6del,_Escher,_Bach "Gödel, Escher, Bach"
[364]: https://en.wikipedia.org/wiki/Basic_Books "Basic Books"
[365]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[366]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-465-02656-2 "Special:BookSources/978-0-465-02656-2"
[367]: https://en.wikipedia.org/w/index.php?title=Propositional_calculus&action=edit&section=37 "Edit section: External links"
[368]: https://en.wikipedia.org/w/index.php?title=Kevin_C._Klement&action=edit&redlink=1 "Kevin C. Klement (page does not exist)"
[369]: https://en.wikipedia.org/wiki/Internet_Encyclopedia_of_Philosophy "Internet Encyclopedia of Philosophy"
[370]: http://www.iep.utm.edu/p/prop-log.htm
[371]: http://www.qedeq.org/current/doc/math/qedeq_formal_logic_v1_en.pdf
[372]: https://en.wikipedia.org/wiki/Propositional_calculus#Alternative_calculus "Propositional calculus"
[373]: http://www.fecundity.com/logic/
[374]: https://en.wikipedia.org/w/index.php?title=P.D._Magnus&action=edit&redlink=1 "P.D. Magnus (page does not exist)"
[375]: https://en.wikipedia.org/wiki/Proof_theory "Proof theory"
[376]: http://logicinaction.org/docs/ch2.pdf
[377]: http://logicinaction.org/
[378]: https://www.nayuki.io/page/propositional-sequent-calculus-prover
[379]: https://docs.google.com/document/d/1DhtRAPcMwJmiQnbdmFcHWaOddQ7kuqqDnWp2LZcGlnY/edit?usp=sharing
