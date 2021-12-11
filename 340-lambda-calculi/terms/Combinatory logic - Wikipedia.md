---
downloaded:       2021-11-05
author:           Authority control
page-url:         https://en.wikipedia.org/wiki/Combinatory_logic
page-title:       Combinatory logic - Wikipedia
article-title:    Combinatory logic - Wikipedia
article-length:   29201
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# Combinatory logic - Wikipedia

Combinatory logic is a notation to eliminate the need for quantified variables in mathematical logic. It was introduced by Moses Schönfinkel[1] and Haskell Curry,[2] and has more recently been used in computer science as a theoretical model of computation and also as a basis for the design of functional programming languages. It is based on combinators which were introduced by Schönfinkel in 1920 with the idea of providing an analogous way to build up functions—and to remove any mention of variables—particularly in predicate logic.  A combinator is a higher-order function that uses only function application and earlier defined combinators to define a result from its arguments.
__Combinatory logic__ is a notation to eliminate the need for [quantified][1] variables in [mathematical logic][2]. It was introduced by [Moses Schönfinkel][3][\[1\]][4] and [Haskell Curry][5],[\[2\]][6] and has more recently been used in [computer science][7] as a theoretical [model of computation][8] and also as a basis for the design of [functional programming languages][9]. It is based on __combinators__ which were introduced by [Schönfinkel][10] in 1920 with the idea of providing an analogous way to build up functions—and to remove any mention of variables—particularly in [predicate logic][11]. A combinator is a [higher-order function][12] that uses only [function application][13] and earlier defined combinators to define a result from its arguments.

## In mathematics\[[edit][14]\]

Combinatory logic was originally intended as a 'pre-logic' that would clarify the role of [quantified variables][15] in logic, essentially by eliminating them. Another way of eliminating quantified variables is [Quine's][16] [predicate functor logic][17]. While the [expressive power][18] of combinatory logic typically exceeds that of [first-order logic][19], the expressive power of [predicate functor logic][20] is identical to that of first order logic ([Quine 1960, 1966, 1976][21]).

The original inventor of combinatory logic, [Moses Schönfinkel][22], published nothing on combinatory logic after his original 1924 paper. [Haskell Curry][23] rediscovered the combinators while working as an instructor at [Princeton University][24] in late 1927.[\[3\]][25] In the late 1930s, [Alonzo Church][26] and his students at Princeton invented a rival formalism for functional abstraction, the [lambda calculus][27], which proved more popular than combinatory logic. The upshot of these historical contingencies was that until theoretical computer science began taking an interest in combinatory logic in the 1960s and 1970s, nearly all work on the subject was by [Haskell Curry][28] and his students, or by [Robert Feys][29] in [Belgium][30]. Curry and Feys (1958), and Curry *et al.* (1972) survey the early history of combinatory logic. For a more modern treatment of combinatory logic and the lambda calculus together, see the book by [Barendregt][31],[\[4\]][32] which reviews the [models][33] [Dana Scott][34] devised for combinatory logic in the 1960s and 1970s.

## In computing\[[edit][35]\]

In [computer science][36], combinatory logic is used as a simplified model of [computation][37], used in [computability theory][38] and [proof theory][39]. Despite its simplicity, combinatory logic captures many essential features of computation.

Combinatory logic can be viewed as a variant of the [lambda calculus][40], in which lambda expressions (representing functional abstraction) are replaced by a limited set of *combinators*, primitive functions without [free variables][41]. It is easy to transform lambda expressions into combinator expressions, and combinator reduction is much simpler than lambda reduction. Hence combinatory logic has been used to model some [non-strict][42] [functional programming][43] languages and [hardware][44]. The purest form of this view is the programming language [Unlambda][45], whose sole primitives are the S and K combinators augmented with character input/output. Although not a practical programming language, Unlambda is of some theoretical interest.

Combinatory logic can be given a variety of interpretations. Many early papers by Curry showed how to translate axiom sets for conventional logic into combinatory logic equations (Hindley and Meredith 1990). [Dana Scott][46] in the 1960s and 1970s showed how to marry [model theory][47] and combinatory logic.

## Summary of lambda calculus\[[edit][48]\]

Lambda calculus is concerned with objects called *lambda-terms*, which can be represented by the following three forms of strings:

where ![v](https://wikimedia.org/api/rest_v1/media/math/render/svg/e07b00e7fc0847fbd16391c778d65bc25c452597) is a variable name drawn from a predefined infinite set of variable names, and ![E_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7ac42446bcd2cbb76ec8fe2895635d328da22e26) and ![E_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8e6ee346e54f38302f47b5cf3016d8718f2040c0) are lambda-terms.

Terms of the form ![{\displaystyle \lambda v.E_{1}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/54c73b5694f6f98d2507b606b6439f2653b7fd42) are called *abstractions*. The variable *v* is called the [formal parameter][49] of the abstraction, and ![E_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7ac42446bcd2cbb76ec8fe2895635d328da22e26) is the *body* of the abstraction. The term ![{\displaystyle \lambda v.E_{1}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/54c73b5694f6f98d2507b606b6439f2653b7fd42) represents the function which, applied to an argument, binds the formal parameter *v* to the argument and then computes the resulting value of ![E_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7ac42446bcd2cbb76ec8fe2895635d328da22e26)— that is, it returns ![E_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7ac42446bcd2cbb76ec8fe2895635d328da22e26), with every occurrence of *v* replaced by the argument.

Terms of the form ![{\displaystyle (E_{1}E_{2})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6925e006863c4ba10d6d30133050d3795623db46) are called *applications*. Applications model function invocation or execution: the function represented by ![E_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7ac42446bcd2cbb76ec8fe2895635d328da22e26) is to be invoked, with ![E_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8e6ee346e54f38302f47b5cf3016d8718f2040c0) as its argument, and the result is computed. If ![E_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7ac42446bcd2cbb76ec8fe2895635d328da22e26) (sometimes called the *applicand*) is an abstraction, the term may be *reduced*: ![E_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8e6ee346e54f38302f47b5cf3016d8718f2040c0), the argument, may be substituted into the body of ![E_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7ac42446bcd2cbb76ec8fe2895635d328da22e26) in place of the formal parameter of ![E_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7ac42446bcd2cbb76ec8fe2895635d328da22e26), and the result is a new lambda term which is *equivalent* to the old one. If a lambda term contains no subterms of the form ![{\displaystyle ((\lambda v.E_{1})E_{2})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8e8c9f9093f2b9a4726352bfe4e4c78c07d67431) then it cannot be reduced, and is said to be in [normal form][50].

The expression ![{\displaystyle E[v:=a]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/047bbfe880e02dbeadbd534e88b1a0dcae650c6d) represents the result of taking the term E and replacing all free occurrences of v in it with a. Thus we write

![{\displaystyle ((\lambda v.E)a)\Rightarrow E[v:=a]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2d4f0f5e53d5eed9f9fee1018c32e925831f9576)

By convention, we take ![{\displaystyle (abc)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2addca78b69e2ffb9ce3370f3e4970a625f2f017) as shorthand for ![{\displaystyle ((ab)c)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2bfc36065db1968990c7de3b825569ed1c98efd3) (i.e., application is [left associative][51]).

The motivation for this definition of reduction is that it captures the essential behavior of all mathematical functions. For example, consider the function that computes the square of a number. We might write

The square of *x* is ![{\displaystyle x*x}](https://wikimedia.org/api/rest_v1/media/math/render/svg/32533de7085bdb1ff431b4f3c0bed2a46a2ab3cd)

(Using "![*](https://wikimedia.org/api/rest_v1/media/math/render/svg/8e9972f426d9e07855984f73ee195a21dbc21755)" to indicate multiplication.) *x* here is the [formal parameter][52] of the function. To evaluate the square for a particular argument, say 3, we insert it into the definition in place of the formal parameter:

The square of 3 is ![3*3](https://wikimedia.org/api/rest_v1/media/math/render/svg/16833f8a5a3d69016aa3c045e1ab19bacd35bb12)

To evaluate the resulting expression ![3*3](https://wikimedia.org/api/rest_v1/media/math/render/svg/16833f8a5a3d69016aa3c045e1ab19bacd35bb12), we would have to resort to our knowledge of multiplication and the number 3. Since any computation is simply a composition of the evaluation of suitable functions on suitable primitive arguments, this simple substitution principle suffices to capture the essential mechanism of computation. Moreover, in lambda calculus, notions such as '3' and '![*](https://wikimedia.org/api/rest_v1/media/math/render/svg/8e9972f426d9e07855984f73ee195a21dbc21755)' can be represented without any need for externally defined primitive operators or constants. It is possible to identify terms in lambda calculus, which, when suitably interpreted, behave like the number 3 and like the multiplication operator, q.v. [Church encoding][53].

Lambda calculus is known to be computationally equivalent in power to many other plausible models for computation (including [Turing machines][54]); that is, any calculation that can be accomplished in any of these other models can be expressed in lambda calculus, and vice versa. According to the [Church-Turing thesis][55], both models can express any possible computation.

It is perhaps surprising that lambda-calculus can represent any conceivable computation using only the simple notions of function abstraction and application based on simple textual substitution of terms for variables. But even more remarkable is that abstraction is not even required. *Combinatory logic* is a model of computation equivalent to lambda calculus, but without abstraction. The advantage of this is that evaluating expressions in lambda calculus is quite complicated because the semantics of substitution must be specified with great care to avoid variable capture problems. In contrast, evaluating expressions in combinatory logic is much simpler, because there is no notion of substitution.

## Combinatory calculi\[[edit][56]\]

Since abstraction is the only way to manufacture functions in the lambda calculus, something must replace it in the combinatory calculus. Instead of abstraction, combinatory calculus provides a limited set of primitive functions out of which other functions may be built.

### Combinatory terms\[[edit][57]\]

A combinatory term has one of the following forms:

The primitive functions are *combinators*, or functions that, when seen as lambda terms, contain no [free variables][58].

To shorten the notations, a general convention is that ![{\displaystyle (E_{1}E_{2}E_{3}...E_{n})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3f75868c45df39b90f5d771fa604f03d89b4a191), or even ![{\displaystyle E_{1}E_{2}E_{3}...E_{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b5dc74abb644b81c08c672ecccfb50ccaf657456), denotes the term ![{\displaystyle (...((E_{1}E_{2})E_{3})...E_{n})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d71ca4736195f020ba0dfd6d51ee26a80d871a57). This is the same general convention (left-associativity) as for multiple application in lambda calculus.

### Reduction in combinatory logic\[[edit][59]\]

In combinatory logic, each primitive combinator comes with a reduction rule of the form

(*P* *x*1 ... *xn*) = *E*

where *E* is a term mentioning only variables from the set {*x*1 ... *xn*}. It is in this way that primitive combinators behave as functions.

### Examples of combinators\[[edit][60]\]

The simplest example of a combinator is __I__, the identity combinator, defined by

(__I__ *x*) = *x*

for all terms *x*. Another simple combinator is __K__, which manufactures constant functions: (__K__ *x*) is the function which, for any argument, returns *x*, so we say

((__K__ *x*) *y*) = *x*

for all terms *x* and *y*. Or, following the convention for multiple application,

(__K__ *x* *y*) = *x*

A third combinator is __S__, which is a generalized version of application:

(__S__ *x y z*) = (*x z* (*y z*))

__S__ applies *x* to *y* after first substituting *z* into each of them. Or put another way, *x* is applied to *y* inside the environment *z*.

Given __S__ and __K__, __I__ itself is unnecessary, since it can be built from the other two:

((__S K K__) *x*)

\= (__S K K__ *x*)

\= (__K__ *x* (__K__ *x*))

\= *x*

for any term *x*. Note that although ((__S K K__) *x*) = (__I__ *x*) for any *x*, (__S K K__) itself is not equal to __I__. We say the terms are [extensionally equal][61]. Extensional equality captures the mathematical notion of the equality of functions: that two functions are *equal* if they always produce the same results for the same arguments. In contrast, the terms themselves, together with the reduction of primitive combinators, capture the notion of *intensional equality* of functions: that two functions are *equal* only if they have identical implementations up to the expansion of primitive combinators. There are many ways to implement an identity function; (__S K K__) and __I__ are among these ways. (__S K S__) is yet another. We will use the word *equivalent* to indicate extensional equality, reserving *equal* for identical combinatorial terms.

A more interesting combinator is the [fixed point combinator][62] or __Y__ combinator, which can be used to implement [recursion][63].

### Completeness of the S-K basis\[[edit][64]\]

__S__ and __K__ can be composed to produce combinators that are extensionally equal to *any* lambda term, and therefore, by Church's thesis, to any computable function whatsoever. The proof is to present a transformation, *T*\[ \], which converts an arbitrary lambda term into an equivalent combinator.

*T*\[ \] may be defined as follows:

1.  *T*\[*x*\] => *x*
2.  *T*\[(*E*₁ *E*₂)\] => (*T*\[*E*₁\] *T*\[*E*₂\])
3.  *T*\[*λx*.*E*\] => (__K__ *T*\[*E*\]) (if *x* does not occur free in *E*)
4.  *T*\[*λx*.*x*\] => __I__
5.  *T*\[*λx*.*λy*.*E*\] => *T*\[*λx*.*T*\[*λy*.*E*\]\] (if *x* occurs free in *E*)
6.  *T*\[*λx*.(*E*₁ *E*₂)\] => (__S__ *T*\[*λx*.*E*₁\] *T*\[*λx*.*E₂*\]) (if *x* occurs free in *E*₁ or *E*₂)

Note that *T*\[ \] as given is not a well-typed mathematical function, but rather a term rewriter: Although it eventually yields a combinator, the transformation may generate intermediary expressions that are neither lambda terms nor combinators, via rule (5).

This process is also known as *abstraction elimination*. This definition is exhaustive: any lambda expression will be subject to exactly one of these rules (see [Summary of lambda calculus][65] above).

It is related to the process of *bracket abstraction*, which takes an expression *E* built from variables and application and produces a combinator expression \[x\]E in which the variable x is not free, such that \[*x*\]*E x* = *E* holds. A very simple algorithm for bracket abstraction is defined by induction on the structure of expressions as follows:[\[5\]][66]

1.  \[*x*\]*y* := __K__ *y*
2.  \[*x*\]*x* := __I__
3.  \[*x*\](*E₁* *E₂*) := __S__(\[*x*\]*E₁*)(\[*x*\]*E₂*)

Bracket abstraction induces a translation from lambda terms to combinator expressions, by interpreting lambda-abstractions using the bracket abstraction algorithm.

#### Conversion of a lambda term to an equivalent combinatorial term\[[edit][67]\]

For example, we will convert the lambda term *λx*.*λy*.(*y* *x*) to a combinatorial term:

*T*\[*λx*.*λy*.(*y* *x*)\]

\= *T*\[*λx*.*T*\[*λy*.(*y* *x*)\]\] (by 5)

\= *T*\[*λx*.(__S__ *T*\[*λy*.*y*\] *T*\[*λy*.*x*\])\] (by 6)

\= *T*\[*λx*.(__S I__ *T*\[*λy*.*x*\])\] (by 4)

\= *T*\[*λx*.(__S I__ (__K__ *T*\[*x*\]))\] (by 3)

\= *T*\[*λx*.(__S I__ (__K__ *x*))\] (by 1)

\= (__S__ *T*\[*λx*.(__S I__)\] *T*\[*λx*.(__K__ *x*)\]) (by 6)

\= (__S__ (__K__ (__S I__)) *T*\[*λx*.(__K__ *x*)\]) (by 3)

\= (__S__ (__K__ (__S I__)) (__S__ *T*\[*λx*.__K__\] *T*\[*λx*.*x*\])) (by 6)

\= (__S__ (__K__ (__S I__)) (__S__ (__K K__) *T*\[*λx*.*x*\])) (by 3)

\= (__S__ (__K__ (__S I__)) (__S__ (__K K__) __I__)) (by 4)

If we apply this combinatorial term to any two terms *x* and *y* (by feeding them in a queue-like fashion into the combinator 'from the right'), it reduces as follows:

(__S__ (__K__ (__S__ __I__)) (__S__ (__K__ __K__) __I__) x y)

\= (__K__ (__S__ __I__) x (__S__ (__K__ __K__) __I__ x) y)

\= (__S__ __I__ (__S__ (__K__ __K__) __I__ x) y)

\= (__I__ y (__S__ (__K__ __K__) __I__ x y))

\= (y (__S__ (__K__ __K__) __I__ x y))

\= (y (__K__ __K__ x (__I__ x) y))

\= (y (__K__ (__I__ x) y))

\= (y (__I__ x))

\= (y x)

The combinatory representation, (__S__ (__K__ (__S I__)) (__S__ (__K K__) __I__)) is much longer than the representation as a lambda term, *λx*.*λy*.(y x). This is typical. In general, the *T*\[ \] construction may expand a lambda term of length *n* to a combinatorial term of length [Θ][68](*n*3).[\[6\]][69]

#### Explanation of the *T*\[ \] transformation\[[edit][70]\]

The *T*\[ \] transformation is motivated by a desire to eliminate abstraction. Two special cases, rules 3 and 4, are trivial: *λx*.*x* is clearly equivalent to __I__, and *λx*.*E* is clearly equivalent to (__K__ *T*\[*E*\]) if *x* does not appear free in *E*.

The first two rules are also simple: Variables convert to themselves, and applications, which are allowed in combinatory terms, are converted to combinators simply by converting the applicand and the argument to combinators.

It is rules 5 and 6 that are of interest. Rule 5 simply says that to convert a complex abstraction to a combinator, we must first convert its body to a combinator, and then eliminate the abstraction. Rule 6 actually eliminates the abstraction.

*λx*.(*E*₁ *E*₂) is a function which takes an argument, say *a*, and substitutes it into the lambda term (*E*₁ *E*₂) in place of *x*, yielding (*E*₁ *E*₂)\[*x* : = *a*\]. But substituting *a* into (*E*₁ *E*₂) in place of *x* is just the same as substituting it into both *E*₁ and *E*₂, so

(*E*₁ *E*₂)\[*x* := *a*\] = (*E*₁\[*x* := *a*\] *E*₂\[*x* := *a*\])

(*λx*.(*E*₁ *E*₂) *a*) = ((*λx*.*E*₁ *a*) (*λx*.*E*₂ *a*))

\= (__S__ *λx*.*E*₁ *λx*.*E*₂ *a*)

\= ((__S__ *λx*.*E₁* *λx*.*E*₂) *a*)

By extensional equality,

*λx*.(*E*₁ *E*₂) = (__S__ *λx*.*E*₁ *λx*.*E*₂)

Therefore, to find a combinator equivalent to *λx*.(*E*₁ *E*₂), it is sufficient to find a combinator equivalent to (__S__ *λx*.*E*₁ *λx*.*E*₂), and

(__S__ *T*\[*λx*.*E*₁\] *T*\[*λx*.*E*₂\])

evidently fits the bill. *E*₁ and *E*₂ each contain strictly fewer applications than (*E*₁ *E*₂), so the recursion must terminate in a lambda term with no applications at all—either a variable, or a term of the form *λx*.*E*.

### Simplifications of the transformation\[[edit][71]\]

#### η-reduction\[[edit][72]\]

The combinators generated by the *T*\[ \] transformation can be made smaller if we take into account the *η-reduction* rule:

*T*\[*λx*.(*E* *x*)\] = *T*\[*E*\] (if *x* is not free in *E*)

*λx*.(*E* x) is the function which takes an argument, *x*, and applies the function *E* to it; this is extensionally equal to the function *E* itself. It is therefore sufficient to convert *E* to combinatorial form.

Taking this simplification into account, the example above becomes:

  *T*\[*λx*.*λy*.(*y* *x*)\]

\= ...

\= (__S__ (__K__ (__S I__)) *T*\[*λx*.(__K__ *x*)\])

\= (__S__ (__K__ (__S I__)) __K__) (by η-reduction)

This combinator is equivalent to the earlier, longer one:

  (__S__ (__K__ (__S I__)) __K__ *x y*)

\= (__K__ (__S I__) *x* (__K__ *x*) *y*)

\= (__S I__ (__K__ *x*) *y*)

\= (__I__ *y* (__K__ *x y*))

\= (*y* (__K__ *x y*))

\= (*y x*)

Similarly, the original version of the *T*\[ \] transformation transformed the identity function *λf*.*λx*.(*f* *x*) into (__S__ (__S__ (__K S__) (__S__ (__K K__) __I__)) (__K I__)). With the η-reduction rule, *λf*.*λx*.(*f* *x*) is transformed into __I__.

#### One-point basis\[[edit][73]\]

There are one-point bases from which every combinator can be composed extensionally equal to *any* lambda term. The simplest example of such a basis is {__X__} where:

__X__ ≡ *λx*.((x__S__)__K__)

It is not difficult to verify that:

__X__ (__X__ (__X__ __X__)) =β __K__ and

__X__ (__X__ (__X__ (__X__ __X__))) =β __S__.

Since {__K__, __S__} is a basis, it follows that {__X__} is a basis too. The [Iota][74] programming language uses __X__ as its sole combinator.

Another simple example of a one-point basis is:

__X'__ ≡ *λx*.(x __K__ __S__ __K__) with

(__X'__ __X'__) __X'__ =β __K__ and

__X'__ (__X'__ __X'__) =β __S__

In fact, there exist infinitely many such bases.[\[7\]][75]

#### Combinators B, C\[[edit][76]\]

In addition to __S__ and __K__, [Schönfinkel][77]'s paper included two combinators which are now called __B__ and __C__, with the following reductions:

(__C__ *f* *g* *x*) = ((*f* *x*) *g*)

(__B__ *f* *g* *x*) = (*f* (*g* *x*))

He also explains how they in turn can be expressed using only __S__ and __K__:

__B__ = (__S__ (__K S__) __K__)

__C__ = (__S__ (__S__ (__K__ (__S__ (__K S__) __K__)) __S__) (__K K__))

These combinators are extremely useful when translating predicate logic or lambda calculus into combinator expressions. They were also used by [Curry][78], and much later by [David Turner][79], whose name has been associated with their computational use. Using them, we can extend the rules for the transformation as follows:

1.  *T*\[*x*\] ⇒ *x*
2.  *T*\[(*E₁* *E₂*)\] ⇒ (*T*\[*E₁*\] *T*\[*E₂*\])
3.  *T*\[*λx*.*E*\] ⇒ (__K__ *T*\[*E*\]) (if *x* is not free in *E*)
4.  *T*\[*λx*.*x*\] ⇒ __I__
5.  *T*\[*λx*.*λy*.*E*\] ⇒ *T*\[*λx*.*T*\[*λy*.*E*\]\] (if *x* is free in *E*)
6.  *T*\[*λx*.(*E₁* *E₂*)\] ⇒ (__S__ *T*\[*λx*.*E₁*\] *T*\[*λx*.*E₂*\]) (if *x* is free in both *E₁* and *E₂*)
7.  *T*\[*λx*.(*E₁* *E₂*)\] ⇒ (__C__ *T*\[*λx*.*E₁*\] *T*\[*E₂*\]) (if *x* is free in *E₁* but not *E₂*)
8.  *T*\[*λx*.(*E₁* *E₂*)\] ⇒ (__B__ *T*\[*E₁*\] *T*\[*λx*.*E₂*\]) (if *x* is free in *E₂* but not *E₁*)

Using __B__ and __C__ combinators, the transformation of *λx*.*λy*.(*y* *x*) looks like this:

   *T*\[*λx*.*λy*.(*y* *x*)\]

\= *T*\[*λx*.*T*\[*λy*.(*y* *x*)\]\]

\= *T*\[*λx*.(__C__ *T*\[*λy*.*y*\] *x*)\] (by rule 7)

\= *T*\[*λx*.(__C__ __I__ *x*)\]

\= (__C__ __I__) (η-reduction)

\= ![{\displaystyle \mathbf {C} _{*}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4f8da23b6893141b57a14a5bd882ba425f33409b) (traditional canonical notation : ![{\displaystyle \mathbf {X} _{*}=\mathbf {XI} }](https://wikimedia.org/api/rest_v1/media/math/render/svg/1e8c2967ab3caf35b1c6bc87cf48987e7673e2ed))

\= ![{\displaystyle \mathbf {I} '}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3fcc9169efe687a404b57cc98369084f8165f9b8) (traditional canonical notation: ![{\displaystyle \mathbf {X} '=\mathbf {CX} }](https://wikimedia.org/api/rest_v1/media/math/render/svg/777f6972010ee80e38c818cf4c4dad533d6f1257))

And indeed, (__C__ __I__ *x* *y*) does reduce to (*y* *x*):

   (__C__ __I__ *x* *y*)

\= (__I__ *y* *x*)

\= (*y* *x*)

The motivation here is that __B__ and __C__ are limited versions of __S__. Whereas __S__ takes a value and substitutes it into both the applicand and its argument before performing the application, __C__ performs the substitution only in the applicand, and __B__ only in the argument.

The modern names for the combinators come from [Haskell Curry][80]'s doctoral thesis of 1930 (see [B, C, K, W System][81]). In [Schönfinkel][82]'s original paper, what we now call __S__, __K__, __I__, __B__ and __C__ were called __S__, __C__, __I__, __Z__, and __T__ respectively.

The reduction in combinator size that results from the new transformation rules can also be achieved without introducing __B__ and __C__, as demonstrated in Section 3.2 of. [\[8\]][83]

##### CLK versus CLI calculus\[[edit][84]\]

A distinction must be made between the __CL__K as described in this article and the __CL__I calculus. The distinction corresponds to that between the λK and the λI calculus. Unlike the λK calculus, the λI calculus restricts abstractions to:

*λx*.*E* where *x* has at least one free occurrence in *E*.

As a consequence, combinator __K__ is not present in the λI calculus nor in the __CL__I calculus. The constants of __CL__I are: __I__, __B__, __C__ and __S__, which form a basis from which all __CL__I terms can be composed (modulo equality). Every λI term can be converted into an equal __CL__I combinator according to rules similar to those presented above for the conversion of λK terms into __CL__K combinators. See chapter 9 in Barendregt (1984).

### Reverse conversion\[[edit][85]\]

The conversion *L*\[ \] from combinatorial terms to lambda terms is trivial:

*L*\[__I__\] = *λx*.*x*

*L*\[__K__\] = *λx*.*λy*.*x*

*L*\[__C__\] = *λx*.*λy*.*λz*.(*x* *z* *y*)

*L*\[__B__\] = *λx*.*λy*.*λz*.(*x* (*y* *z*))

*L*\[__S__\] = *λx*.*λy*.*λz*.(*x* *z* (*y* *z*))

*L*\[(*E₁* *E₂*)\] = (*L*\[*E₁*\] *L*\[*E₂*\])

Note, however, that this transformation is not the inverse transformation of any of the versions of *T*\[ \] that we have seen.

## Undecidability of combinatorial calculus\[[edit][86]\]

A [normal form][87] is any combinatory term in which the primitive combinators that occur, if any, are not applied to enough arguments to be simplified. It is undecidable whether a general combinatory term has a normal form; whether two combinatory terms are equivalent, etc. This is equivalent to the undecidability of the corresponding problems for lambda terms. However, a direct proof is as follows:

First, the term

__Ω__ = (__S__ __I__ __I__ (__S__ __I__ __I__))

has no normal form, because it reduces to itself after three steps, as follows:

  (__S__ __I__ __I__ (__S__ __I__ __I__))

\= (__I__ (__S__ __I__ __I__) (__I__ (__S__ __I__ __I__)))

\= (__S__ __I__ __I__ (__I__ (__S__ __I__ __I__)))

\= (__S__ __I__ __I__ (__S__ __I__ __I__))

and clearly no other reduction order can make the expression shorter.

Now, suppose __N__ were a combinator for detecting normal forms, such that

![{\displaystyle (\mathbf {N} \ x)={\begin{cases}\mathbf {T} ,{\text{ if }}x{\text{ has a normal form}}\\\mathbf {F} ,{\text{ otherwise.}}\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bf75e884abcc6503e0829adf44da3f424aba6dc2)

(Where __T__ and __F__ represent the conventional [Church encodings][88] of true and false, *λx*.*λy*.*x* and *λx*.*λy*.*y*, transformed into combinatory logic. The combinatory versions have __T__ = __K__ and __F__ = (__K__ __I__).)

Now let

*Z* = (__C__ (__C__ (__B__ __N__ (__S__ __I__ __I__)) __Ω__) __I__)

now consider the term (__S__ __I__ __I__ *Z*). Does (__S__ __I__ __I__ *Z*) have a normal form? It does if and only if the following do also:

  (__S__ __I__ __I__ *Z*)

\= (__I__ *Z* (__I__ *Z*))

\= (*Z* (__I__ *Z*))

\= (*Z* *Z*)

\= (__C__ (__C__ (__B__ __N__ (__S__ __I__ __I__)) __Ω__) __I__ *Z*) (definition of *Z*)

\= (__C__ (__B__ __N__ (__S__ __I__ __I__)) __Ω__ *Z* __I__)

\= (__B__ __N__ (__S__ __I__ __I__) *Z* __Ω__ __I__)

\= (__N__ (__S__ __I__ __I__ *Z*) __Ω__ __I__)

Now we need to apply __N__ to (__S__ __I__ __I__ *Z*). Either (__S__ __I__ __I__ *Z*) has a normal form, or it does not. If it *does* have a normal form, then the foregoing reduces as follows:

  (__N__ (__S__ __I__ __I__ *Z*) __Ω__ __I__)

\= (__K__ __Ω__ __I__) (definition of __N__)

\= __Ω__

but __Ω__ does *not* have a normal form, so we have a contradiction. But if (__S__ __I__ __I__ *Z*) does *not* have a normal form, the foregoing reduces as follows:

  (__N__ (__S__ __I__ __I__ *Z*) __Ω__ __I__)

\= (__K__ __I__ __Ω__ __I__) (definition of __N__)

\= (__I__ __I__)

\= __I__

which means that the normal form of (__S__ __I__ __I__ *Z*) is simply __I__, another contradiction. Therefore, the hypothetical normal-form combinator __N__ cannot exist.

The combinatory logic analogue of [Rice's theorem][89] says that there is no complete nontrivial predicate. A *predicate* is a combinator that, when applied, returns either __T__ or __F__. A predicate __N__ is *nontrivial* if there are two arguments *A* and *B* such that __N__ *A* = __T__ and __N__ *B* = __F__. A combinator __N__ is *complete* if and only if __N__*M* has a normal form for every argument *M*. The analogue of Rice's theorem then says that every complete predicate is trivial. The proof of this theorem is rather simple.

> __Proof:__ By reductio ad absurdum. Suppose there is a complete non trivial predicate, say __N__. Because __N__ is supposed to be non trivial there are combinators *A* and *B* such that
> 
> (__N__ *A*) = __T__ and
> 
> (__N__ *B*) = __F__.
> 
> Define NEGATION ≡ *λx*.(if (__N__ *x*) then *B* else *A*) ≡ *λx*.((__N__ *x*) *B* *A*)
> 
> Define ABSURDUM ≡ (__Y__ NEGATION)
> 
> Fixed point theorem gives: ABSURDUM = (NEGATION ABSURDUM), for
> 
> ABSURDUM ≡ (__Y__ NEGATION) = (NEGATION (__Y__ NEGATION)) ≡ (NEGATION ABSURDUM).
> 
> Because __N__ is supposed to be complete either:
> 
> 1.  (__N__ ABSURDUM) = __F__ or
> 2.  (__N__ ABSURDUM) = __T__
> 
> -   Case 1: __F__ = (__N__ ABSURDUM) = __N__ (NEGATION ABSURDUM) = (__N__ *A*) = __T__, a contradiction.
> -   Case 2: __T__ = (__N__ ABSURDUM) = __N__ (NEGATION ABSURDUM) = (__N__ *B*) = __F__, again a contradiction.
> 
> Hence (__N__ ABSURDUM) is neither __T__ nor __F__, which contradicts the presupposition that __N__ would be a complete non trivial predicate. __[Q.E.D.][90]__

From this undecidability theorem it immediately follows that there is no complete predicate that can discriminate between terms that have a normal form and terms that do not have a normal form. It also follows that there is __no__ complete predicate, say EQUAL, such that:

(EQUAL *A B*) = __T__ if *A* = *B* and

(EQUAL *A B*) = __F__ if *A* ≠ *B*.

If EQUAL would exist, then for all *A*, *λx.*(EQUAL *x A*) would have to be a complete non trivial predicate.

## Applications\[[edit][91]\]

### Compilation of functional languages\[[edit][92]\]

David Turner used his combinators to implement the [SASL programming language][93].

[Kenneth E. Iverson][94] used primitives based on Curry's combinators in his [J programming language][95], a successor to [APL][96]. This enabled what Iverson called [tacit programming][97], that is, programming in functional expressions containing no variables, along with powerful tools for working with such programs. It turns out that tacit programming is possible in any APL-like language with user-defined operators.[\[9\]][98]

### Logic\[[edit][99]\]

The [Curry–Howard isomorphism][100] implies a connection between logic and programming: every proof of a theorem of [intuitionistic logic][101] corresponds to a reduction of a typed lambda term, and conversely. Moreover, theorems can be identified with function type signatures. Specifically, a typed combinatory logic corresponds to a [Hilbert system][102] in [proof theory][103].

The __K__ and __S__ combinators correspond to the axioms

__AK__: *A* → (*B* → *A*),

__AS__: (*A* → (*B* → *C*)) → ((*A* → *B*) → (*A* → *C*)),

and function application corresponds to the detachment (modus ponens) rule

__MP__: from *A* and *A* → *B* infer *B*.

The calculus consisting of __AK__, __AS__, and __MP__ is complete for the implicational fragment of the intuitionistic logic, which can be seen as follows. Consider the set *W* of all deductively closed sets of formulas, ordered by [inclusion][104]. Then ![\langle W,\subseteq\rangle](https://wikimedia.org/api/rest_v1/media/math/render/svg/c5be3b5cf30187707ad183a5b24a8c649ed65a16) is an intuitionistic [Kripke frame][105], and we define a model ![\Vdash ](https://wikimedia.org/api/rest_v1/media/math/render/svg/b36c6f760b79c97e44771611b1e8ef69913ec5c8) in this frame by

![X\Vdash A\iff A\in X.](https://wikimedia.org/api/rest_v1/media/math/render/svg/f2d15dbc280b953211e3933bbe01d7ee88d5a2a6)

This definition obeys the conditions on satisfaction of →: on one hand, if ![X\Vdash A\to B](https://wikimedia.org/api/rest_v1/media/math/render/svg/164dbcdf97d75d5bcdaabd13a01eab26f9d5a1a3), and ![Y\in W](https://wikimedia.org/api/rest_v1/media/math/render/svg/f7fa2d380f22cf0e7d39a685e5e93ed821ac1b19) is such that ![Y\supseteq X](https://wikimedia.org/api/rest_v1/media/math/render/svg/9c82d05838ab7ac3da5441d78eacdd7143727ae2) and ![Y\Vdash A](https://wikimedia.org/api/rest_v1/media/math/render/svg/ffb2ecec2e432c5670b6d51e7a790b85ac73e835), then ![Y\Vdash B](https://wikimedia.org/api/rest_v1/media/math/render/svg/1497f82b9ccf78e80108f9f3ced107e35e8e6b5b) by modus ponens. On the other hand, if ![X\not\Vdash A\to B](https://wikimedia.org/api/rest_v1/media/math/render/svg/64c8f5a5ecab802c0dc30e7f1714dd0aeadcdae4), then ![X,A\not\vdash B](https://wikimedia.org/api/rest_v1/media/math/render/svg/a50f92cd4e567510050f12c5db46aa19c2f41450) by the [deduction theorem][106], thus the deductive closure of ![X\cup\{A\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/564f3eb82f13e781cb97bcd5cc7fecd94ff77cb8) is an element ![Y\in W](https://wikimedia.org/api/rest_v1/media/math/render/svg/f7fa2d380f22cf0e7d39a685e5e93ed821ac1b19) such that ![Y\supseteq X](https://wikimedia.org/api/rest_v1/media/math/render/svg/9c82d05838ab7ac3da5441d78eacdd7143727ae2), ![Y\Vdash A](https://wikimedia.org/api/rest_v1/media/math/render/svg/ffb2ecec2e432c5670b6d51e7a790b85ac73e835), and ![Y\not\Vdash B](https://wikimedia.org/api/rest_v1/media/math/render/svg/19b48d105e147aedfc5b831be50ee168cb0eca69).

Let *A* be any formula which is not provable in the calculus. Then *A* does not belong to the deductive closure *X* of the empty set, thus ![X\not\Vdash A](https://wikimedia.org/api/rest_v1/media/math/render/svg/d638eed31cc0282e75925623c3e0a3e4c26ee0eb), and *A* is not intuitionistically valid.

## See also\[[edit][107]\]

-   [Applicative computing systems][108]
-   [B, C, K, W system][109]
-   [Categorical abstract machine][110]
-   [Combinatory categorial grammar][111]
-   [Explicit substitution][112]
-   [Fixed point combinator][113]
-   [Graph reduction machine][114]
-   [Lambda calculus][115] and [Cylindric algebra][116], other approaches to modelling quantification and eliminating variables
-   [SKI combinator calculus][117]
-   [Supercombinator][118]
-   *[To Mock a Mockingbird][119]*

## References\[[edit][120]\]

1.  __[^][121]__ [Schönfinkel, Moses][122] (1924). ["Über die Bausteine der mathematischen Logik"][123] (PDF). *Mathematische Annalen*. __92__ (3–4): 305–316. [doi][124]:[10.1007/bf01448013][125]. Translated by Stefan Bauer-Mengelberg as "On the building blocks of mathematical logic" in [Jean van Heijenoort][126], 1967. *A Source Book in Mathematical Logic, 1879–1931*. Harvard Univ. Press: 355–66.
2.  __[^][127]__ [Curry, Haskell Brooks][128] (1930). "Grundlagen der Kombinatorischen Logik" \[Foundations of combinatorial logic\]. *American Journal of Mathematics* (in German). The Johns Hopkins University Press. __52__ (3): 509–536. [doi][129]:[10.2307/2370619][130]. [JSTOR][131] [2370619][132].
3.  __[^][133]__ Seldin, Jonathan (2008). ["The Logic of Curry and Church"][134] (PDF).
4.  __[^][135]__ [Barendregt 1984][136].
5.  __[^][137]__ [Turner, David A.][138] (1979). "Another Algorithm for Bracket Abstraction". *The Journal of Symbolic Logic*. __44__ (2): 267–270. [doi][139]:[10.2307/2273733][140]. [JSTOR][141] [2273733][142].
6.  __[^][143]__ Lachowski, Łukasz (2018). ["On the Complexity of the Standard Translation of Lambda Calculus into Combinatory Logic"][144]. *Reports on Mathematical Logic* (53): 19–42. [doi][145]:[10.4467/20842589RM.18.002.8835][146]. Retrieved 9 September 2018.
7.  __[^][147]__ Goldberg, Mayer (2004). "A construction of one-point bases in extended lambda calculi". *Information Processing Letters*. __89__ (6): 281–286. [doi][148]:[10.1016/j.ipl.2003.12.005][149].
8.  __[^][150]__ Tromp, John (2008). ["Binary Lambda Calculus and Combinatory Logic"][151] (PDF). In Calude, Cristian S. (ed.). *Randomness And Complexity, from Leibniz To Chaitin*. World Scientific Publishing Company. Archived from [the original][152] (PDF) on 2016-03-04.
9.  __[^][153]__ Cherlin, Edward (1991). "Pure Functions in APL and J". *Proceedings of the International Conference on APL '91*: 88–93. [doi][154]:[10.1145/114054.114065][155]. [ISBN][156] [0897914414][157].

## Further reading\[[edit][158]\]

-   [Barendregt, Hendrik Pieter][159] (1984). *The Lambda Calculus, Its Syntax and Semantics. Studies in Logic and the Foundations of Mathematics*. Volume 103. [North Holland][160]. [ISBN][161] [0-444-87508-5][162].
-   [Curry, Haskell B.][163]; [Feys, Robert][164] (1958). *Combinatory Logic*. Vol. I. Amsterdam: North Holland. [ISBN][165] [0-7204-2208-6][166].
-   [Curry, Haskell B.][167]; [Hindley, J. Roger][168]; Seldin, Jonathan P. (1972). *Combinatory Logic*. Vol. II. Amsterdam: North Holland. [ISBN][169] [0-7204-2208-6][170].
-   Field, Anthony J.; [Harrison, Peter G.][171] (1998). [*Functional Programming*][172]. Addison-Wesley. [ISBN][173] [0-201-19249-7][174].
-   [Hindley, J. Roger][175]; Meredith, David (1990), ["Principal type-schemes and condensed detachment"][176], *[Journal of Symbolic Logic][177]*, __55__ (1): 90–105, [doi][178]:[10.2307/2274956][179], [JSTOR][180] [2274956][181], [MR][182] [1043546][183]
-   [Hindley, J. R.][184]; Seldin, J. P. (2008). [*λ-calculus and Combinators: An Introduction*][185]. [Cambridge University Press][186].
-   [Paulson, Lawrence C.][187] (1995). [*Foundations of Functional Programming*][188]. University of Cambridge.
-   [Quine, W. V.][189] (1960). "Variables explained away". *Proceedings of the American Philosophical Society*. __104__ (3): 343–347. [JSTOR][190] [985250][191]. Reprinted as Chapter 23 of Quine's *Selected Logic Papers* (1966), pp. 227–235
-   [Schönfinkel, Moses][192], 1924, "[Über die Bausteine der mathematischen Logik][193]," translated as "On the Building Blocks of Mathematical Logic" in *From Frege to Gödel: a source book in mathematical logic, 1879–1931*, [Jean van Heijenoort][194], ed. [Harvard University Press][195], 1967. [ISBN][196] [0-674-32449-8][197]. The article that founded combinatory logic.
-   [Smullyan, Raymond][198], 1985. *[To Mock a Mockingbird][199]*. Knopf. [ISBN][200] [0-394-53491-3][201]. A gentle introduction to combinatory logic, presented as a series of recreational puzzles using bird watching metaphors.
-   \_\_\_\_\_\_, 1994. *Diagonalization and Self-Reference*. [Oxford University Press][202]. Chapters 17–20 are a more formal introduction to combinatory logic, with a special emphasis on fixed point results.
-   Sørensen, Morten Heine B. and Paweł Urzyczyn, 1999. *[Lectures on the Curry–Howard Isomorphism][203]*. [University of Copenhagen][204] and [University of Warsaw][205], 1999.
-   Wolfengagen, V. E. (2003). [*Combinatory logic in programming: Computations with objects through examples and exercises*][206] (2nd ed.). Moscow: "Center JurInfoR" Ltd. [ISBN][207] [5-89158-101-9][208].
-   [Wolfram, Stephen][209] (2021). [*Combinators: A Centennial View*][210]. [Wolfram Media][211]. [ISBN][212] [978-1-57955-043-1][213]. e[ISBN][214] [978-1-57955-044-8][215]. A celebration of the development of combinators, a hundred years after they were introduced by [Moses Schönfinkel][216] in 1920.

## External links\[[edit][217]\]

-   [Stanford Encyclopedia of Philosophy][218]: "[Combinatory Logic][219]" by [Katalin Bimbó][220].
-   [1920–1931 Curry's block notes.][221]
-   Keenan, David C. (2001) "[To Dissect a Mockingbird: A Graphical Notation for the Lambda Calculus with Animated Reduction.][222]"
-   Rathman, Chris, "[Combinator Birds.][223]" A table distilling much of the essence of Smullyan (1985).
-   [Drag 'n' Drop Combinators.][224] (Java Applet)
-   [Binary Lambda Calculus and Combinatory Logic.][225]
-   [Combinatory logic reduction web server][226]

[1]: https://en.wikipedia.org/wiki/Quantifier_(logic) "Quantifier (logic)"
[2]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[3]: https://en.wikipedia.org/wiki/Moses_Sch%C3%B6nfinkel "Moses Schönfinkel"
[4]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_note-1
[5]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[6]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_note-2
[7]: https://en.wikipedia.org/wiki/Computer_science "Computer science"
[8]: https://en.wikipedia.org/wiki/Model_of_computation "Model of computation"
[9]: https://en.wikipedia.org/wiki/Functional_programming_languages "Functional programming languages"
[10]: https://en.wikipedia.org/wiki/Moses_Sch%C3%B6nfinkel "Moses Schönfinkel"
[11]: https://en.wikipedia.org/wiki/Predicate_logic "Predicate logic"
[12]: https://en.wikipedia.org/wiki/Higher-order_function "Higher-order function"
[13]: https://en.wikipedia.org/wiki/Function_application "Function application"
[14]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=1 "Edit section: In mathematics"
[15]: https://en.wikipedia.org/wiki/Quantifier_(logic) "Quantifier (logic)"
[16]: https://en.wikipedia.org/wiki/Willard_Van_Orman_Quine "Willard Van Orman Quine"
[17]: https://en.wikipedia.org/wiki/Predicate_functor_logic "Predicate functor logic"
[18]: https://en.wikipedia.org/wiki/Expressive_power_(computer_science) "Expressive power (computer science)"
[19]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[20]: https://en.wikipedia.org/wiki/Predicate_functor_logic "Predicate functor logic"
[21]: https://en.wikipedia.org/wiki/Combinatory_logic#Quine_1960_1966
[22]: https://en.wikipedia.org/wiki/Moses_Sch%C3%B6nfinkel "Moses Schönfinkel"
[23]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[24]: https://en.wikipedia.org/wiki/Princeton_University "Princeton University"
[25]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_note-Seldin_2006-3
[26]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[27]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[28]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[29]: https://en.wikipedia.org/wiki/Robert_Feys "Robert Feys"
[30]: https://en.wikipedia.org/wiki/Belgium "Belgium"
[31]: https://en.wikipedia.org/wiki/Henk_Barendregt "Henk Barendregt"
[32]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_note-FOOTNOTEBarendregt1984-4
[33]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[34]: https://en.wikipedia.org/wiki/Dana_Scott "Dana Scott"
[35]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=2 "Edit section: In computing"
[36]: https://en.wikipedia.org/wiki/Computer_science "Computer science"
[37]: https://en.wikipedia.org/wiki/Computation "Computation"
[38]: https://en.wikipedia.org/wiki/Computability_theory "Computability theory"
[39]: https://en.wikipedia.org/wiki/Proof_theory "Proof theory"
[40]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[41]: https://en.wikipedia.org/wiki/Free_variables_and_bound_variables "Free variables and bound variables"
[42]: https://en.wikipedia.org/wiki/Non-strict_programming_language "Non-strict programming language"
[43]: https://en.wikipedia.org/wiki/Functional_programming "Functional programming"
[44]: https://en.wikipedia.org/wiki/Graph_reduction_machine "Graph reduction machine"
[45]: https://en.wikipedia.org/wiki/Unlambda "Unlambda"
[46]: https://en.wikipedia.org/wiki/Dana_Scott "Dana Scott"
[47]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[48]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=3 "Edit section: Summary of lambda calculus"
[49]: https://en.wikipedia.org/wiki/Formal_parameter "Formal parameter"
[50]: https://en.wikipedia.org/wiki/Beta_normal_form "Beta normal form"
[51]: https://en.wikipedia.org/wiki/Associative#Non-associativity "Associative"
[52]: https://en.wikipedia.org/wiki/Formal_parameter "Formal parameter"
[53]: https://en.wikipedia.org/wiki/Church_encoding "Church encoding"
[54]: https://en.wikipedia.org/wiki/Turing_machine "Turing machine"
[55]: https://en.wikipedia.org/wiki/Church-Turing_thesis "Church-Turing thesis"
[56]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=4 "Edit section: Combinatory calculi"
[57]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=5 "Edit section: Combinatory terms"
[58]: https://en.wikipedia.org/wiki/Free_variable "Free variable"
[59]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=6 "Edit section: Reduction in combinatory logic"
[60]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=7 "Edit section: Examples of combinators"
[61]: https://en.wikipedia.org/wiki/Extensional_equality "Extensional equality"
[62]: https://en.wikipedia.org/wiki/Fixed_point_combinator "Fixed point combinator"
[63]: https://en.wikipedia.org/wiki/Recursion "Recursion"
[64]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=8 "Edit section: Completeness of the S-K basis"
[65]: https://en.wikipedia.org/wiki/Combinatory_logic#Summary_of_lambda_calculus "Combinatory logic"
[66]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_note-Turner_1979-5
[67]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=9 "Edit section: Conversion of a lambda term to an equivalent combinatorial term"
[68]: https://en.wikipedia.org/wiki/Big_O_notation "Big O notation"
[69]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_note-6
[70]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=10 "Edit section: Explanation of the T[ ] transformation"
[71]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=11 "Edit section: Simplifications of the transformation"
[72]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=12 "Edit section: η-reduction"
[73]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=13 "Edit section: One-point basis"
[74]: https://en.wikipedia.org/wiki/Iota_and_Jot "Iota and Jot"
[75]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_note-7
[76]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=14 "Edit section: Combinators B, C"
[77]: https://en.wikipedia.org/wiki/Moses_Sch%C3%B6nfinkel "Moses Schönfinkel"
[78]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[79]: https://en.wikipedia.org/wiki/David_Turner_(computer_scientist) "David Turner (computer scientist)"
[80]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[81]: https://en.wikipedia.org/wiki/B,_C,_K,_W_System "B, C, K, W System"
[82]: https://en.wikipedia.org/wiki/Moses_Sch%C3%B6nfinkel "Moses Schönfinkel"
[83]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_note-8
[84]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=15 "Edit section: CLK versus CLI calculus"
[85]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=16 "Edit section: Reverse conversion"
[86]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=17 "Edit section: Undecidability of combinatorial calculus"
[87]: https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting) "Normal form (abstract rewriting)"
[88]: https://en.wikipedia.org/wiki/Church_encoding "Church encoding"
[89]: https://en.wikipedia.org/wiki/Rice%27s_theorem "Rice's theorem"
[90]: https://en.wikipedia.org/wiki/Q.E.D. "Q.E.D."
[91]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=18 "Edit section: Applications"
[92]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=19 "Edit section: Compilation of functional languages"
[93]: https://en.wikipedia.org/wiki/SASL_programming_language "SASL programming language"
[94]: https://en.wikipedia.org/wiki/Kenneth_E._Iverson "Kenneth E. Iverson"
[95]: https://en.wikipedia.org/wiki/J_programming_language "J programming language"
[96]: https://en.wikipedia.org/wiki/APL_(programming_language) "APL (programming language)"
[97]: https://en.wikipedia.org/wiki/Tacit_programming "Tacit programming"
[98]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_note-9
[99]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=20 "Edit section: Logic"
[100]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_isomorphism "Curry–Howard isomorphism"
[101]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[102]: https://en.wikipedia.org/wiki/Hilbert-style_deduction_system "Hilbert-style deduction system"
[103]: https://en.wikipedia.org/wiki/Proof_theory "Proof theory"
[104]: https://en.wikipedia.org/wiki/Inclusion_(set_theory) "Inclusion (set theory)"
[105]: https://en.wikipedia.org/wiki/Kripke_semantics "Kripke semantics"
[106]: https://en.wikipedia.org/wiki/Deduction_theorem "Deduction theorem"
[107]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=21 "Edit section: See also"
[108]: https://en.wikipedia.org/wiki/Applicative_computing_systems "Applicative computing systems"
[109]: https://en.wikipedia.org/wiki/B,_C,_K,_W_system "B, C, K, W system"
[110]: https://en.wikipedia.org/wiki/Categorical_abstract_machine "Categorical abstract machine"
[111]: https://en.wikipedia.org/wiki/Combinatory_categorial_grammar "Combinatory categorial grammar"
[112]: https://en.wikipedia.org/wiki/Explicit_substitution "Explicit substitution"
[113]: https://en.wikipedia.org/wiki/Fixed_point_combinator "Fixed point combinator"
[114]: https://en.wikipedia.org/wiki/Graph_reduction_machine "Graph reduction machine"
[115]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[116]: https://en.wikipedia.org/wiki/Cylindric_algebra "Cylindric algebra"
[117]: https://en.wikipedia.org/wiki/SKI_combinator_calculus "SKI combinator calculus"
[118]: https://en.wikipedia.org/wiki/Supercombinator "Supercombinator"
[119]: https://en.wikipedia.org/wiki/To_Mock_a_Mockingbird "To Mock a Mockingbird"
[120]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=22 "Edit section: References"
[121]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_ref-1 "Jump up"
[122]: https://en.wikipedia.org/wiki/Moses_Sch%C3%B6nfinkel "Moses Schönfinkel"
[123]: http://www.cip.ifi.lmu.de/~langeh/test/1924%20-%20Schoenfinkel%20-%20Ueber%20die%20Bausteine%20der%20mathematischen%20Logik.pdf
[124]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[125]: https://doi.org/10.1007%2Fbf01448013
[126]: https://en.wikipedia.org/wiki/Jean_van_Heijenoort "Jean van Heijenoort"
[127]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_ref-2 "Jump up"
[128]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[129]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[130]: https://doi.org/10.2307%2F2370619
[131]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[132]: https://www.jstor.org/stable/2370619
[133]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_ref-Seldin_2006_3-0 "Jump up"
[134]: http://people.uleth.ca/~jonathan.seldin/CCL.pdf
[135]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_ref-FOOTNOTEBarendregt1984_4-0 "Jump up"
[136]: https://en.wikipedia.org/wiki/Combinatory_logic#CITEREFBarendregt1984
[137]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_ref-Turner_1979_5-0 "Jump up"
[138]: https://en.wikipedia.org/wiki/David_Turner_(computer_scientist) "David Turner (computer scientist)"
[139]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[140]: https://doi.org/10.2307%2F2273733
[141]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[142]: https://www.jstor.org/stable/2273733
[143]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_ref-6 "Jump up"
[144]: http://www.ejournals.eu/rml/2018/Number-53/art/12285
[145]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[146]: https://doi.org/10.4467%2F20842589RM.18.002.8835
[147]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_ref-7 "Jump up"
[148]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[149]: https://doi.org/10.1016%2Fj.ipl.2003.12.005
[150]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_ref-8 "Jump up"
[151]: https://web.archive.org/web/20160304083208/http://tromp.github.io/cl/LC.pdf
[152]: http://tromp.github.io/cl/LC.pdf
[153]: https://en.wikipedia.org/wiki/Combinatory_logic#cite_ref-9 "Jump up"
[154]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[155]: https://doi.org/10.1145%2F114054.114065
[156]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[157]: https://en.wikipedia.org/wiki/Special:BookSources/0897914414 "Special:BookSources/0897914414"
[158]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=23 "Edit section: Further reading"
[159]: https://en.wikipedia.org/wiki/Henk_Barendregt "Henk Barendregt"
[160]: https://en.wikipedia.org/wiki/North-Holland_Publishing_Company "North-Holland Publishing Company"
[161]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[162]: https://en.wikipedia.org/wiki/Special:BookSources/0-444-87508-5 "Special:BookSources/0-444-87508-5"
[163]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[164]: https://en.wikipedia.org/wiki/Robert_Feys "Robert Feys"
[165]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[166]: https://en.wikipedia.org/wiki/Special:BookSources/0-7204-2208-6 "Special:BookSources/0-7204-2208-6"
[167]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[168]: https://en.wikipedia.org/wiki/J._Roger_Hindley "J. Roger Hindley"
[169]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[170]: https://en.wikipedia.org/wiki/Special:BookSources/0-7204-2208-6 "Special:BookSources/0-7204-2208-6"
[171]: https://en.wikipedia.org/wiki/Peter_G._Harrison "Peter G. Harrison"
[172]: https://archive.org/details/functionalprogra0000fiel
[173]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[174]: https://en.wikipedia.org/wiki/Special:BookSources/0-201-19249-7 "Special:BookSources/0-201-19249-7"
[175]: https://en.wikipedia.org/wiki/J._Roger_Hindley "J. Roger Hindley"
[176]: http://projecteuclid.org/euclid.jsl/1183743187
[177]: https://en.wikipedia.org/wiki/Journal_of_Symbolic_Logic "Journal of Symbolic Logic"
[178]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[179]: https://doi.org/10.2307%2F2274956
[180]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[181]: https://www.jstor.org/stable/2274956
[182]: https://en.wikipedia.org/wiki/MR_(identifier) "MR (identifier)"
[183]: https://www.ams.org/mathscinet-getitem?mr=1043546
[184]: https://en.wikipedia.org/wiki/J._Roger_Hindley "J. Roger Hindley"
[185]: http://www.cambridge.org/catalogue/catalogue.asp?isbn=9780521898850
[186]: https://en.wikipedia.org/wiki/Cambridge_University_Press "Cambridge University Press"
[187]: https://en.wikipedia.org/wiki/Lawrence_Paulson "Lawrence Paulson"
[188]: http://www.cl.cam.ac.uk/Teaching/Lectures/founds-fp/Founds-FP.ps.gz
[189]: https://en.wikipedia.org/wiki/Willard_Van_Orman_Quine "Willard Van Orman Quine"
[190]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[191]: https://www.jstor.org/stable/985250
[192]: https://en.wikipedia.org/wiki/Moses_Sch%C3%B6nfinkel "Moses Schönfinkel"
[193]: http://www.cip.ifi.lmu.de/~langeh/test/1924%20-%20Schoenfinkel%20-%20Ueber%20die%20Bausteine%20der%20mathematischen%20Logik.pdf
[194]: https://en.wikipedia.org/wiki/Jean_van_Heijenoort "Jean van Heijenoort"
[195]: https://en.wikipedia.org/wiki/Harvard_University_Press "Harvard University Press"
[196]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[197]: https://en.wikipedia.org/wiki/Special:BookSources/0-674-32449-8 "Special:BookSources/0-674-32449-8"
[198]: https://en.wikipedia.org/wiki/Raymond_Smullyan "Raymond Smullyan"
[199]: https://en.wikipedia.org/wiki/To_Mock_a_Mockingbird "To Mock a Mockingbird"
[200]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[201]: https://en.wikipedia.org/wiki/Special:BookSources/0-394-53491-3 "Special:BookSources/0-394-53491-3"
[202]: https://en.wikipedia.org/wiki/Oxford_University_Press "Oxford University Press"
[203]: https://web.archive.org/web/20051016213140/http://folli.loria.fr/cds/1999/library/pdf/curry-howard.pdf
[204]: https://en.wikipedia.org/wiki/University_of_Copenhagen "University of Copenhagen"
[205]: https://en.wikipedia.org/wiki/University_of_Warsaw "University of Warsaw"
[206]: https://archive.org/details/CLP-2003_780
[207]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[208]: https://en.wikipedia.org/wiki/Special:BookSources/5-89158-101-9 "Special:BookSources/5-89158-101-9"
[209]: https://en.wikipedia.org/wiki/Stephen_Wolfram "Stephen Wolfram"
[210]: https://www.wolfram-media.com/products/combinators-a-centennial-view.html
[211]: https://en.wikipedia.org/wiki/Wolfram_Media "Wolfram Media"
[212]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[213]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-57955-043-1 "Special:BookSources/978-1-57955-043-1"
[214]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[215]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-57955-044-8 "Special:BookSources/978-1-57955-044-8"
[216]: https://en.wikipedia.org/wiki/Moses_Sch%C3%B6nfinkel "Moses Schönfinkel"
[217]: https://en.wikipedia.org/w/index.php?title=Combinatory_logic&action=edit&section=24 "Edit section: External links"
[218]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
[219]: http://plato.stanford.edu/entries/logic-combinatory/
[220]: https://en.wikipedia.org/wiki/Katalin_Bimb%C3%B3 "Katalin Bimbó"
[221]: https://web.archive.org/web/20070209093802/http://www.sadl.uleth.ca/gsdl/cgi-bin/library?a=p&p=about&c=curry
[222]: http://dkeenan.com/Lambda/index.htm
[223]: http://www.angelfire.com/tx4/cus/combinator/birds.html
[224]: https://web.archive.org/web/20081029051502/http://cstein.kings.cam.ac.uk/~chris/combinators.html
[225]: https://web.archive.org/web/20160304083208/http://tromp.github.io/cl/LC.pdf
[226]: https://code.google.com/p/clache
