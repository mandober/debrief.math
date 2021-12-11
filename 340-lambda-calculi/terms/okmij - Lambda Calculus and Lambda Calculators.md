---
created: 2021-09-07)
tags: []
source: http://okmij.org/ftp/Computation/lambda-calc.html#haskell-type-level
author: oleg-at-okmij.org
---

# Lambda Calculus and Lambda Calculators
-   [Beyond Church encoding:][1] Boehm-Berarducci isomorphism of algebraic data types and polymorphic lambda-terms
-   [lambda to SKI: the first compositional translation][2]
-   [Simplest poly-variadic fix-point combinators for mutual recursion][3]
-   [Fix-point combinators are infinitely many and recursively-enumerable][4]
-   [Many More Predecessors: A Representation Workout][5]

-   [Alpha-conversion is inevitable][6]
-   [The bluff combinator][7]
-   [Miscellaneous curious equalities][8]
-   [for-any vs for-all][9]
-   [\`switch' in lambda calculus][10]

-   [Numerals and lists in lambda calculus: P-numerals][11]
-   [Negative numbers, subtraction and division in lambda calculus][12]
-   [Basic lambda calculus terms][13]
-   [Predecessor and lists are not representable in simply typed lambda calculus][14]
-   [Generating interesting lambda-terms][15]
-   [Lambda calculus embedded in OCaml and its normalization][16]
-   [A practical lambda calculator in Haskell][17]
-   [A practical lambda calculator in Scheme][18]
-   [Lambda-calculator as a CPS R5RS macro][19]
-   [Lambda-calculator as a short, direct-style R5RS macro][20]
-   [Embedding of lambda calculus with De Bruijn *levels*][21]
-   [Reducers and normalizers for the lambda calculus with De Bruijn variables][22] and integer operations, embedded in OCaml

-   [Type-level call-by-value lambda-calculator in three lines][23]
-   [A progression of term and type evaluators for the Church- and Curry-style lambda calculi][24] with integers and let-polymorphism, written in Haskell
-   Lambda calculi with monads, delimited control, etc. in [Twelf][25]
-   [Lambda-calculator and alpha-conversion in pure Prolog][26]
-   [Lambda as an effect][27]

---

## Many More Predecessors: A Representation Workout

\[Abstract\]  
From the outset lambda calculus represented natural numbers through iterated application. The successor hence adds one more application, and the predecessor removes. In effect, the predecessor un-applies a term -- which seemed impossible, even to Church. It took Kleene a rather oblique glance to sight a related representation of numbers, with an easier predecessor. Let's see what we can do if we look at this old problem with today's eyes. We discern the systematic ways to *derive* more predecessors -- smaller, faster, sharper -- while keeping all teeth.

Lambda calculus is banal in its operation -- and yet is an unending source of delightful puzzles. One of the first was the predecessor: applied to the term representing a natural number `n+1`, it should reduce to the representation of `n`. When the number `n` is represented as an `n`\-times repeated application, the predecessor amounts to an un-application -- which is not the operation lambda calculus supports. As Church was about to give up the hope of expressing arithmetic, his student Kleene was getting his wisdom teeth extracted, and under anesthetic (or so Barendregt says) foreglimpsed the solution. The tooth-wrenching story and Kleene's predecessor have become a part of the Functional Canon, told and retold in tutorials and textbooks, and invariably called \`very tricky'. I can sympathize, having searched for, and eventually finding, a different predecessor back in 1992. Incidentally, I also had a tooth extracted that year.

This article (referenced below) shows that by looking at the puzzle as a representation-change problem we see, in plain sight, more and more solutions -- insightful, easier to explain and to write down on a single line, and to extend beyond numbers. We even spot an un-application. We shall derive many predecessors, some known, most new, and all in normal form, by contemplating the koan (\*) below and following three trails of thought as they unfold. Finally, in Sec. 8 we look back, with the map at hand, discerning the motif and further connections and extensions. The general method of deriving predecessors is general indeed: it lets one obtain small and fast \`predecessors' for other data structures, as we show in paper's App. B for binary trees. We will be stressing intuitions rather than formality. Formal statements and outlines of the correctness proofs are collected in App. A.

Below we give the derivation of the most insightful predecessor. It takes only four, self-evident lines. (Compare with the typical explanation of the Kleene Predecessor.) The first line is the fundamental tautology of Church numerals, which is easy to overlook:

 c\_n == c\_n succ c\_0               (\*) 

Here `c_n` stands for the Church numeral `n`, and `succ` is the successor on Church numerals; the sign `==` means beta-congruence (equality). (\*) is trivial and obvious: A number `n` is the `n`\-th successor of zero -- which essentially the definition of a number.

If we count `n` times starting from one, rather than zero, we end up one further down:

 c\_(n+1) == c\_n succ c\_1           (1) 

Therefore, the term `succO` defined as

 succO := λn. n succ c\_1

is a successor on Church numerals. That is, applied to the `n`\-th numeral it reduces to the `n+1`\-th, as (1) shows.

The `succO` term may be applied to other things than Church numerals. For example, it is easy to see that

    succO (λfx. c\_0) == c\_0

If the result of applying a successor is zero, its argument must be minus one. Thus the term `λfx. c_0` plays the role of `c_-1`.

If we get the successor of `n` by counting `n` times starting from one, per (1), we get the predecessor by starting the count from minus one:

    λn. n succO (λfx. c\_0)

Or, desugaring the `succO`, `c_0`, etc. abbreviations and normalizing:

    λn. n (λp. p (λcfx. f (c f x)) (λx.x)) (λfxsz.z)

This is a novel predecessor on Church numerals. It is different from the Kleene predecessor: notably shorter, and quite more easier to understand. Perhaps it is also more insightful.

The name `succO` was chosen for a reason: `succO` is a meta-circular successor. By raising the stage, so to speak, of a successor we found the way to accommodate minus one.

__Version__

The current version is June 2021

__References__

[pred.pdf][28] \[171K\]  
The full paper, published in J. Functional Programming, v30, 2020, e7, pp. 1-13 [doi:10.1017/S095679682000009X][29]

[pred-talk.pdf][30] \[264K\]  
Slides of the talk at the LFCS seminar (University of Edinburgh), 28 May 2021. The recording is available on YouTube.

[Lambda calculus embedded in OCaml and its normalization][31]  
The normalizer used to test the predecessors, compute their sizes and estimate the performance (and to represent as Scheme code)

[Predecessor and lists are not representable in simply typed lambda calculus][32]

[Numerals and lists in lambda calculus: P-numerals][33]  
A different representation of numerals, with the predecessor being just as simple as the successor.

[The bluff combinator][34]

## Numerals and lists in lambda calculus: P-numerals

This article derives a term in the pure untyped lambda calculus that *efficiently* computes the symmetric difference of two Church numerals. We introduce other numerals, so called P-numerals, which are more convenient for arithmetic. We show the connection between the P-numerals and the list fold.

P-numerals are the functional equivalent of lists: increment, *decrement*, and zero testing operations on P-numerals all take constant time -- just as `cons`, `car`, and `null?` do on lists.

Peter G. Hancock has observed that P-numerals are closely related to Goedel's recursor `R`.

Paul Brauner has pointed out that P-numerals have been introduced by Michel Parigot back in 1988, with different motivations and in a typed setting. They are since called \`\`Parigot integers''. Paul Brauner has pointed out yet another way to come to P-numerals, from the definition of integers in deduction modulo.

Andrew Hodges, in \`Alan Turing: The Enigma', wrote: \`\`But underneath there lay the same powerful idea that Goedel has used, that there was no essential distinction between numbers and operations on numbers.'' And so, lambda calculus and Turing machine are duals: In a (universal) TM, an integer encodes an operation. In lambda calculus, an operation encodes an integer.

__Version__

The current version is 1.5, November 2010

__References__

[LC\_Pnum.lhs][35] \[13K\]  
The article itself. This is also the complete, literate Haskell code that defines the numerals and the symmetric difference, shows their use, and compares Church and P-numerals.  
The article was originally posted as \`\`Symmetric difference in LC, P-numerals, and fold'' on comp.lang.functional on Fri Aug 30 01:49:31 2002

Michel Parigot: Programming with proofs: A second order type theory  
LNCS 300, pp. 145-159, 1988

Peter G. Hancock: The AMEN combinators and their reduction.  
Combinatorially complete arithmetic operations, and the rewriting calculus for arithmetical expressions built entirely upon addition, multiplication, exponentiation, and naught.

## for-any vs for-all

Contrasting Church-numerals with P-numerals gives an opportunity to show the difference between `for-any` and `for-all`. Lambda calculus lets us demonstrate the truth of the proposition \`\`the predecessor is the left inverse of the successor'' for *any* Church numeral, and yet unable to demonstrate it for *all* numerals. For P-numerals however, we can prove the proposition for all numerals, within the lambda calculus itself. In other words, in stark contrast to Church numerals, for P-numerals the composition `pred . succ` normalizes to the identity function.

In the notation of the Haskell lambda-calculator, Church-numerals, the successor and the predecessor are defined as follows:

    c1 = f ^ x ^ f # x                    -- Church numeral 1
    succ = n ^ f ^ x ^ f # (n # f # x)
    pred = n ^ f ^ x ^ n # (g ^ h ^ h # (g # f)) # (y ^ x) # (y ^ y)

With `c1` as an example, the following transcript shows: applying the successor, then applying the predecessor, and checking the final result being beta-eta-equivalent to the original numeral `c1`.

    \*LC\_Pnum> eval (succ # c1)
    (\\f. (\\x. f (f x)))
    \*LC\_Pnum> eval (pred # (succ # c1))
    (\\f. f)
    \*LC\_Pnum> eval (pred # (succ # c1)) == eval c1
    True

We can do these operations for *any* concrete numeral. However, when we try to prove that taking the successor followed by the predecessor being the identity for *all* numerals, we get stuck. It is easy to define the composition of the predecessor and the successor, and to normalize it:

    \*LC\_Pnum> let predsucc\_c = n ^ pred # (succ # n)
    \*LC\_Pnum> eval predsucc\_c
    (\\n. (\\f. (\\x. n (\\g. (\\h. h (g f))) (\\y. x) f)))

Alas, the normalization result does not look like the the identity function at all. We must use the external, to lambda calculus, induction principle. Here is the induction step:

    \*LC\_Pnum> eval (predsucc\_c # (succ # n))
    (\\f. (\\x. f (n (\\g. (\\h. h (g f))) (\\y. x) f)))
    \*LC\_Pnum> eval (succ # (predsucc\_c # n))
    (\\f. (\\x. f (n (\\g. (\\h. h (g f))) (\\y. x) f)))
    \*LC\_Pnum> eval (succ # (predsucc\_c # n)) == eval (predsucc\_c # (succ # n))
    True

One is reminded of Robinson Arithmetic, or Q, which is essentially Peano Arithmetic without the induction schema. One can prove in Q that the addition of any two concrete natural numbers is commutative, but one cannot prove the commutativity of addition for all natural numbers.

We now turn to P-numerals, with the following successor and predecessor:

    p0 = c0                         -- the same as Church 0
    succp = n ^ f ^ x ^ f # n # (n # f # x)
    predp = n ^ n # combK # combI
    p1 = succp # p0

(one can use anything in place of the `I` combinator, `combI`, in `predp`. More properly, one should use -1). As before, we check that the predecessor is the left inverse of the successor, for a concrete numeral, `p1` in our example:

    \*LC\_Pnum> eval p1 -- The P-numeral 1
    (\\f. f (\\f. (\\x. x)))
    \*LC\_Pnum> eval (succp # p1)
    (\\f. (\\x. f (\\f. f (\\f. (\\x. x))) (f (\\f. (\\x. x)) x)))
    \*LC\_Pnum> eval (predp # (succp # p1))
    (\\f. f (\\f. (\\x. x)))
    \*LC\_Pnum> eval (predp # (succp # p1)) == eval p1
    True

We can likewise show that for any numeral `pn`, `(predp # (succp # p1))` is beta-eta-equivalent to `pn`. We now prove a stronger claim -- that the predecessor is the left inverse of the successor for all numerals -- within the lambda calculus itself. We define the composition of `predp` and `succp`:

    predsucc = n ^ predp # (succp # n)

and normalize it

    \*LC\_Pnum> eval predsucc
    (\\n. n)

obtaining the identity function, syntactically. Thus the predicate `predsucc n == n` holds *uniformly,* that is, for all `n`.

Although for-any vs for-all distinction is emblematic of intuitionism, Whitehead and Russell were already aware of it when writing Principia Mathematica. They insisted on separate notations for \`any' vs. \`all' (although admitting the equivalence of these notions in their theory) \[Chap 1, p18, paragraph \`\`Ambiguous assertion and the real variable''\].

The article was prompted by a question from Benedikt Ahrens.

__Version__

The current version is 1.5, November 2010

__References__

[Numerals and lists in lambda calculus: P-numerals][36]

## The bluff combinator

A Bluff combinator problem in the pure untyped lambda calculus was posed by Mayer Goldberg in the 1990s:

Let `c_i` denote a Church numeral for the number i. We should design two terms `beq` and `bluff` so that the following reductions hold:

    beq c\_i c\_j     ==> \\x\\y.x (that is, boolean 'true')
                        iff i == j
                    ==> \\x\\y.y (that is, boolean 'false') otherwise
    
    beq bluff c\_i   ==> \\x\\y.x (that is, boolean 'true') for all i
    beq c\_i bluff   ==> \\x\\y.x (that is, boolean 'true') for all i
    beq bluff bluff ==> \\x\\y.y (that is, boolean 'false')

In other words, `beq` should act as equality on Church numerals. The bluff combinator should be `beq`\-equal to any numeral. However, the combinator should not be equal to itself. The gist of the problem is discriminating *any* Church numeral from some other term.

__Version__

The current version is 1.2, Oct 14, 2002

__References__

[bluff.lhs][37] \[6K\]  
The complete code that shows one solution to the problem. Other solutions are described in an article below.

Mayer Goldberg and Mads Torgersen: Circumventing Church Numerals  
Nordic Journal of Computing, v9, January 2002, pp. 1-12.

## Alpha-conversion is inevitable

Of all the (three) operations of lambda calculus, alpha-conversion feels bothersome -- whether we program reductions or do them by hand. We are forced to do it when an existing variable is *shadowed* -- locally rebound -- by a lambda-subexpression. For example, in `((\x\y.x y) y)` the sub-expression `\y.x y` shadows the (free) variable `y`. Alpha-conversion renames the locally-bound variable and eliminates the shadowing: `(\x\z.x z) y`. One often hears that variable shadowing makes programs harder to understand and error-prone, and should be avoided whenever possible, by using distinct variable names. OCaml and GHC Haskell compilers, among others, take this advice to the heart: GHC has a special initial compiler phase that uniquely renames all variables within the program.

This prompts the question: Suppose we take trouble to consciously avoid variable shadowing when writing lambda-terms, choosing fresh (unique) names for bound identifiers. Do we still need alpha-conversion when evaluating such terms? In other words, can we apply alpha-conversion to a term at the very beginning, making all binders distinctly named -- and then forget about alpha-conversion for the rest of the evaluation? How necessary is the alpha-conversion really?

The unique naming of binders indeed makes alpha-conversion unnecessary -- in very many cases. Yet in general it is unavoidable. We show several subtle examples of terms with uniquely named binders that still demand alpha-conversion in the middle of evaluation. In fact, in some cases such \`dynamic' alpha-conversion is needed indefinitely many times.

The answer satisfies the old curiosity: why all formal introductions to lambda calculus start with the phrase like \`Let V be an infinite countable set of variable names'. We shall see why lambda calculus needs infinitely many names. Surprisingly, there are practical implications, for the implementation of staged languages. In fact, one of the examples below is patterned after a bug accidentally discovered in the first implementation of MetaScheme.

To start with, recall that variables in (closed) lambda-terms play the role of pointers, between the binder (lambda) and the places where a future application should insert its argument. Therefore, names per se do not matter, only their equality: `\x.x` and `\y.y` denote the same identity function. Formally, identity and other relations between lambda-terms are understood modulo alpha-conversion, the renaming of bound identifiers.

Alpha-conversion is not just an formalization artifact: it is something we may have to really do during the evaluation. Consider the following beta-reductions:

    (\\x\\y.x y) y  --> \\y. y y  -- Wrong!
    (\\x\\z.x z) y  --> \\z. y z
    (\\x\\u.x u) y  --> \\u. y u

The terms to reduce are all equivalent, differing only in the name of one bound variable. The last two reduction results are also equivalent: the eta-expanded version of `y`. But the first reduction breaks the equivalence. It is therefore prohibited. The term `(\x\y.x y) y` has to be first alpha-converted, say, to `(\x\z.x z) y`, before the beta-reduction may be carried out. On the other hand, alpha-conversion feels rather similar to beta-reduction: in either case, we traverse the body of a lambda-abstraction, looking for a particular variable and replacing it. It seems bothersome and inelegant to having to precede a beta-reduction with alpha-conversion, the operation of roughly the same complexity.

In the above -- and many other cases -- alpha-conversion can be averted had we given bound variables unique names to start with. But not in all cases. No matter how variables are named at the beginning, there may come a time during the evaluation when shadowing appears. This happens when substituting a term into itself:

    (\\y. y y) (\\z.\\x. z x)
    -->  (\\z.\\x. z x) (\\z.\\x. z x)
    -->  (\\x. (\\z.\\x. z x) x)

To proceed further, alpha-conversion is unavoidable.

In fact, we may have to do alpha-conversion infinitely many times, e.g., when reducing the following term:

    (\\y.y s y) (\\t\\z\\x. z (t x) z)
    --> (\\t\\z\\x. z (t x) z) s (\\t\\z\\x. z (t x) z)
    --> (\\z\\x. z (s x) z) (\\t\\z\\x. z (t x) z)
    --> \\x. (\\t\\z\\x. z (t x) z) (s x) (\\t\\z\\x. z (t x) z)
    --> {alpha-conversion is necessary}
    --> \\x. (\\t\\z\\x1. z (t x1) z) (s x) (\\t\\z\\x. z (t x) z)
    --> \\x. (\\z\\x1. z (s x x1) z) (\\t\\z\\x. z (t x) z)
    --> \\x. \\x1. (\\t\\z\\x. z (t x) z) (s x x1) (\\t\\z\\x. z (t x) z)
    --> {another alpha-conversion is necessary, renaming x to something that
         is different from x and x1}
    --> \\x. \\x1. (\\t\\z\\x2. z (t x2) z) (s x x1) (\\t\\z\\x. z (t x) z)
    --> ...

Our examples so far relied on self-applications and were written in the untyped lambda calculus. One may wonder if the simply-typed lambda calculus, where self-application is ruled out, might let us escape from alpha-conversion. It does not. The indefinite number of alpha-conversions may be needed even here, as the following example with the second Church numeral demonstrates:

    fun t -> (fun y -> y (y t)) (fun u z x -> u x z);;
->
    fun t -> (fun u z x -> u x z) (fun z x -> t x z)
->
    fun t -> (fun z x -> (fun z x -> t x z) x z)

The example is written in the OCaml notation, to double-check it is simply typed.

Thus typed or untyped, the alpha-renaming step may have to be done during the evaluation, arbitrarily many times. We may need an inexhaustible supply of fresh names. This is something to keep in mind when implementing staged languages, for example.

__Version__

The current version is July 2016

## Miscellaneous curious equalities

This section collects curious properties of particular lambda-terms. Some of the properties have been used in proving theorems or solving puzzles described on this site. Throughout this section, `c_i` means a Church numeral for integer `i`, `true` stands for the term `\x\y.x` and `false` stands for `\x\y.y` . The symbol `==>` indicates reduction in one or several steps.

`c_i (\x.false) false ==> false`

This property of Church numerals helped to solve the bluff combinator problem.

`c_i combI ==> combI`

where `combI` is the identity combinator `\x.x`. Thus the identity combinator is a fixpoint of any Church numeral.

`c_i c_j c_k ==> c_n` where `n=k^(j^i)`

and the operator `(^)` means exponentiation. The property says that an application of a Church numeral to two other Church numerals is itself a Church numeral, which corresponds to the exponentiated integers.

`c_1 === combI`, `true === K`, `c_0 === false`

Trivial statements that `c_1` is the identity combinator and `true` is the `K` (a.k.a. const) combinator. In lambda calculus -- as in C, Perl and other programming languages -- numeral `0` and boolean `false` are the same.

`c_i (\y.x) u ==> x`, `c_0 (\y.x) u ==> u, i>0`

This property gives a simple test for discriminating `c_0` from any other Church numeral.

`cons a x (cons b y) ==> a b y x`

where `cons` is `\x\y\p.p x y`.

__Version__

The current version is 1.2, Dec 24, 2002

## \`switch' in lambda calculus

We implement the `switch` combinator: the lambda-term with the following reduction rules.

    switch 0 -> id
    switch n test1 stmt1 test2 stmt2 ... test\_n stmt\_n default
      -> stmt\_i    for the first i such that test\_i -> true
      -> default   otherwise

Here `n` is a Church numeral, `test_i` are Church Booleans, `stmt_i` and `default` are arbitrary terms. We impose an additional constraint of avoiding general recursion.

For example, assuming `c2` stands for the Church numeral 2, etc., and `true`, `false`, and `zerop` are combinators with the obvious meaning,

    ((switch c2) true  x true y z)               ; reduces to: x
    ((switch c2) false x true y z)               ; reduces to: y
    ((switch c3) false x false y (zerop c1) z h) ; reduces to: h

__Version__

The current version is 1.1, Mar 25, 2003

__References__

[LC\_switch.lhs][38] \[4K\]  
The complete code with the explanation and examples  
The code was first posted in the message \`\`Re: Lambda Calculus Question'' on comp.lang.functional on Tue, 25 Mar 2003 14:13:34 -0800

## Negative numbers, subtraction and division in lambda calculus

This article will demonstrate basic arithmetic operations -- comparison, addition, subtraction, multiplication, and division -- on non-negative and negative integer numbers. Both the integers and the operations on them are represented as terms in the pure untyped lambda calculus. The only building blocks are identifiers, abstractions and applications. No constants or delta-rules are used. Reductions follow only the familiar beta-substitution and eta-rules. We also show two approaches of defining a predecessor of a Church numeral. Curiously, none of the arithmetic operations involve the Y combinator; even the division gets by without Y.

Addition, multiplication, squaring, and exponentiation are easily expressed in lambda calculus. We discuss two approaches to their \`\`opposites'' -- subtraction, division, finding of a square root and of a discrete logarithm. The opposite operations present quite a challenge. One approach, based on fixpoints, is more elegant but rather impractical. The dual approach, which relies on counting, leads to constructive and useful, albeit messy, terms.

__Version__

The current version is 1.2, Jul 14, 2002

__References__

[lambda-calc-div-neg.txt][39] \[15K\]  
The article itself. It was originally posted as \`\`Negativism and division in lambda-calculus'' on the newsgroup comp.lang.functional on Sun, 13 May 2001 23:12:25 GMT

[lambda-arithm-neg.scm][40] \[14K\]  
Negative numbers and four arithmetic operations on integers  
The source code that defines and tests all four arithmetic operations on positive and negative integers, in lambda calculus. The code is meant to be evaluated by the practical lambda-calculator in Scheme.

[LC\_neg.lhs][41] \[17K\]  
Negative numbers and the four arithmetic operations on integers \[Haskell version\]

[lambda-calc-opposites.txt][42] \[4K\]  
The article \`\`Subtraction, division, logarithms and other opposites in Lambda calculus'' posted on comp.lang.functional on Tue, 29 May 2001 20:58:02 -0700

[lambda-arithm-div-term.scm][43] \[8K\]  
The lambda term for division  
The unadorned lambda term that implements division of two signed integers (also represented as lambda terms). The article explains in detail how this division term has been derived.

## Basic lambda calculus terms

Definitions of basic lambda terms: Church numerals, combinators, Booleans, etc. These are basic lambda-calculus terms, needed to run more advanced examples. Two versions of the terms are given, in the notation of the Scheme and Haskell calculators.

__Version__

The current version is 1.3, Aug 18, 2002

__References__

[lambda-arithm-basic.scm][44] \[4K\]  
The Scheme calculator version

[LC\_basic.lhs][45] \[4K\]  
The Haskell calculator version: the literate Haskell code that defines the terms and shows off of their use

## Predecessor and lists are not representable in simply typed lambda calculus

The predecessor of a Church-encoded numeral, or, generally, the encoding of a list with the `car` and `cdr` operations are both impossible in the simply typed lambda calculus. Henk Barendregt's \`\`The impact of the lambda-calculus in logic and computer science'' (The Bulletin of Symbolic Logic, v3, N2, June 1997) has the following phrase, on p. 186:

> Even for a function as simple as the predecessor lambda definability remained an open problem for a while. From our present knowledge it is tempting to explain this as follows. Although the lambda calculus was conceived as an untyped theory, typeable terms are more intuitive. Now the functions addition and multiplication are defineable by typeable terms, while \[101\] and \[108\] have characterized the lambda-defineable functions in the (simply) typed lambda calculus and the predecessor is not among them \[the story of the removal of Kleene's four wisdom teeth is skipped...\]  
> (Ref 108 is R.Statman: The typed lambda calculus is not elementary recursive. Theoretical Comp. Sci., vol 9 (1979), pp. 73-81.)

Since list is a generalization of numeral -- with `cons` being a successor, `append` being the addition, `tail` (aka `cdr`) being the predecessor -- it follows then the list cannot be encoded in the simply typed lambda calculus.

To encode both operations, we need either inductive (generally, recursive) types, or System F with its polymorphism. The first approach is the most common. Indeed, the familiar definition of a list

    data List a = Nil | Cons a (List a)

gives an (iso-) recursive data type (in Haskell. In ML, it is an inductive data type).

Lists can also be represented in System F. As a matter of fact, we do not need the full System F (where the type reconstruction is not decidable). We merely need the extension of the Hindley-Milner system with higher-ranked types, which requires a modicum of type annotations and yet is able to infer the types of all other terms. This extension is supported in Haskell and OCaml. With such an extension, we can represent a list by its fold, as shown in the code below. It is less known that this representation is faithful: we can implement all list operations, including `tail`, `drop`, and even `zip`.

__References__

[How to zip folds: A library of fold transformers (streams)][46]

[list-representations.txt][47] \[9K\]  
Detailed discussion of various representations of lists in Haskell, and their typing issues  
The message was originally posted as \`\`Re: Lists vs. Monads'' on the Haskell-Cafe mailing list on Thu, 21 Jul 2005 19:30:38 -0700 (PDT)

## Lambda calculus embedded in OCaml and its normalization

We present a practical, convenient, preprocessor-free embedding of lambda-calculus in OCaml and its normalization. One of the interpreters of embedded terms is a normalizer, producing beta-normal terms by doing what amounts to normal-order reductions. To be precise, normal forms are obtained by a combination of normalization-by-evaluation and delayed substitutions. We do maintain however the close correspondence to normal-order reduction steps, and hence produce accurate counts of normal-order reductions.

The source calculus is untyped pure lambda calculus embedded in OCaml in the tagless-final style using higher-order abstract syntax. Open terms are to be represented by wrapping them into lambdas; since we normalize under lambda, this is not really a limitation.

Our lambda calculus is pure and has no constants or primitive operations (save for the application). However, thanks to the embedding in OCaml, we may use OCaml let-bindings to give convenient names to terms and to refer to terms by names. Here are a few examples:

    let id = lam "x" (fun x -> x)

The body of a lambda abstraction is an OCaml function. OCaml variables, as they are, hence act as lambda-calculus variables. The `lam` constructor takes as the first argument a string -- the name to give to the bound variable when pretty-printing the term. The OCaml infix operator `@@` is the low-precedence OCaml application, letting us write the identity term without parentheses:

    let id = lam "x" @@ fun x -> x

One may read `@@` as the \`dot' of the conventional notation. Lambda-calculus applications are represented by the left-associative infix operator \`slash'.

    let cmp = lam "f" @@ fun f -> lam "g" @@ fun g -> lam "x" @@ fun x -> f / (g / x)
    let delta = lam "x" (fun x -> x / x)
    let omega = delta / delta
    let fix   = lam "f" @@ fun f -> delta / (lam"u" @@ fun u -> f / (u / u))

An embedded lambda-calculus term may be interpreted in many ways: pretty-printed, converted to a Scheme expression to evaluate in Scheme, measured in size, normalized -- including the normalization with counting of the normal-order reduction steps. One can easily extend the normalizer to also produce a reduction trace. The pretty-printer tries to be smart and to keep the user-given variable names whenever possible (renaming a variable by appending an integer counter to its name only when the clash is imminent).

As an example,

    lam "x" @@ fun x -> lam "y" @@ fun y -> fst / (pair / x / y)

normalizes to the term equal to `lam "x" @@ fun x -> lam "y" @@ fun y -> x` in six reduction steps. One may confirm the count by manual normalization.

__Version__

The current version is September 2019

__References__

[pred.ml][48] \[32K\]  
The complete OCaml code for the normalizers, pretty-printers and other interpreters. The code contains very many tests, and a larger application: predecessors on numbers and trees.

## A practical lambda calculator in Haskell

The present calculator implements what seems to be an efficient and elegant algorithm of normal order reductions. It is almost identical to that employed by yacc, with one critical difference. The calculator also takes a more functional approach to the hygiene of beta-substitutions, which is achieved by coloring of identifiers where absolutely necessary. This approach is \`\`more functional'' because it avoids a global counter or the threading of the paint bucket through the whole the process. The integration of the calculator with Haskell lets us store terms in variables and easily and intuitively combine them.

The traditional recipe for normal-order reductions includes an unpleasant phrase \`\`cook until done''. The phrase makes it necessary to keep track of reduction attempts, and implies an ugly iterative algorithm. We're proposing what seems to be an efficient and elegant technique that can be implemented through intuitive re-writing rules. Our calculator, like yacc, possesses a stack and works by doing a sequence of `shift` and `reduce` steps. The only significant difference from yacc is that the lambda-calculator \`\`reparses'' the result after the successful reduce step. The source and the target languages of our \`\`parser'' (lambda-calculator) are the same; therefore, the parser can indeed apply itself.

The parsing stack can be made implicit. In that case, the algorithm can be used for normalization of typed lambda-terms in Twelf.

The following examples show that lambda calculus becomes a domain-specific language embedded into Haskell:

    > c0 = f ^ x ^ x                -- Church numeral 0
    > succ = c ^ f ^ x ^ f # (c # f # x)            -- Successor
    
    > c1 = eval $ succ # c0   -- pre-evaluate other numerals
    > c2 = eval $ succ # c1
    > c3 = eval $ succ # c2
    > c4 = eval $ succ # c3

It is indeed convenient to store terms in Haskell variables and pre-evaluate (i.e., normalize) them. They are indeed terms. We can always ask the interpreter to show the term. For example, `show c4` yields `(\f. (\x. f (f (f (f x)))))`.

    let mul = a ^ b ^ f ^ a # (b # f)                 -- multiplication
    eval $ mul # c1 ---> (\\b. b), the identity function
    eval $ mul # c0 ---> (\\b. (\\f. (\\x. x))), which is "const 0"

These are algebraic results: multiplying any number by zero always gives zero. We can see now how lambda calculus can be useful for theorem proving, even over universally-quantified formulas.

The calculator implements Dr. Fairbairn's suggestion to limit the depth of printed terms. This makes it possible to evaluate and print some divergent terms (so-called tail-divergent terms):

    Lambda\_calc> let y\_comb = f^((p^p#p) # (c ^ f#(c#c))) in eval $ y\_comb#c
        c (c (c (c (c (c (c (c (c (c (...))))))))))

It is amazing how well lambda calculus and Haskell play together.

A monadic version of the calculator shows the trace of the reduction steps.

__Version__

The current version is 2.3, May 5, 2005

__References__

[Lambda\_calc.lhs][49] \[23K\]  
The complete literate Haskell code for the calculator  
The code also includes convenience functions to list free variables of a term and to compare two terms modulo alpha-renaming. The latter function is extensively used in built-in regression tests. To run the tests, evaluate `all_tests`.  
The code was first posted in the message \`\`ANN: Normal-order evaluation as bottom-up parsing'' on Sun, 28 Apr 2002 14:11:59 -0700 on the Haskell mailing list.

[Basic lambda calculus terms][50]

Reynald Affeldt. Abstract machines for functional languages. A Survey  
The survey describes SECD, Krivine, CAM and ZAM machines and several of their variations. Incidentally, `Lambda_calc.lhs` appears to have little in common with Krivine, SECD or other machines. The Lambda*calc.lhs machine has stack, but it has no concept of environment. This is indicative of a larger difference: in Lambda*calc.lhs variables have 'no meaning'. To this machine, normalization of lambda terms is a pure syntactic transformation, akin to a transformation of `(((a+b)))` into `a+b` by a regular parser.

## A practical lambda calculator in Scheme

The code below implements a normal-order interpreter for the untyped lambda calculus. The interpret permits \`\`shortcuts'' of terms. The shortcuts are not first class and do not alter the semantics of the lambda calculus. Yet they make complex terms easier to define and apply.

The code also includes a few convenience tools: tracing of all reduction, comparing two terms modulo alpha-renaming, etc.

__Version__

The current version is 1.1, Mar 30, 2001

__References__

[A practical lambda-calculator in Scheme][51]

[Basic lambda calculus terms][52]

## Lambda-calculator as a CPS R5RS macro

Another normal-order interpreter for untyped lambda calculus, implemented as a syntax-rule macro. The source and the object languages of the calculator are regular Scheme terms. Lambda-abstractions for the calculator are ordinary lambda-forms of Scheme:

    (?lc-calc
     ((lambda (x) (x x)) (lambda (y) (y z))) ; term to reduce
     (??!lambda (result) (display '(??! result)))
    )

expands to `(display '(z z))`. The funny `??!lambda` is a macro-lambda -- the abstraction of the (meta-)calculator.

The calculator normalizes regular Scheme terms. The result can be compiled and evaluated in a call-by-value lambda calculus with constants (i.e., Scheme). The lambda-calculator acts therefore as a partial evaluator.

__Version__

The current version is Dec 16, 2001

__References__

[Lambda-calculator as a R5RS macro][53]

## Lambda-calculator as a short, direct-style R5RS macro

Yet another normal-order interpreter for untyped lambda calculus, implemented as a *direct-style* syntax-rule macro. This implementation is the shortest and the fastest one. It does no alpha-renaming directly and no substitutions directly. Everything is integrated with normalization, and everything is delayed until the latest possible moment. The source and the object languages of the calculator are regular Scheme terms. Lambda-abstractions for the calculator are ordinary lambda-forms of Scheme:

    (((NORM ((lambda (c)     ; succ
                (lambda (f) (lambda (x) (f ((c f) x)))))
             (lambda (f) f)  ; c1
            ))
      (lambda (u) (+ 1 u))) 0)

normalizes the application of the `succ` lambda-term to `c1`, Church numeral 1. The result, which is a Scheme procedure, is then applied to the Scheme values `(lambda (u) (+ 1 u))` and `0` to yield 2 -- which shows that the result of the normalization was Church numeral 2.

The calculator normalizes regular Scheme terms. The result can be compiled and evaluated in a call-by-value lambda calculus with constants (i.e., Scheme). The lambda-calculator acts therefore as a partial evaluator.

__Version__

The current version is December 2004

__References__

[Lambda-calculator as a R5RS macro][54]

## Type-level call-by-value lambda-calculator in three lines

We present a *type-level* interpreter for the call-by-value lambda calculus with booleans, natural numbers, and case discrimination. Its terms are Haskell types. Using functional dependencies for type-level reductions is well-known. Missing before was the encoding abstractions with named arguments and closures.

The core of the interpreter indeed takes only three lines:

    instance                                   E (F x)           (F x)
    instance (E y y', A (F x) y' r)         => E ((F x) :< y)    r
    instance (E (x :< y) r', E (r' :< z) r) => E ((x :< y) :< z) r

The first line says that abstractions evaluate to themselves, the second line executes the redex, and the third recurs to find it. The representation of abstractions is apparent from the expression for the `S` combinator, which again takes three lines:

    instance A (F CombS)     f (F (CombS,f))
    instance A (F (CombS,f)) g (F (CombS,f,g))
    instance E (f :< x :< (g :< x)) r => A (F (CombS,f,g)) x r

The instances of the type class `A f x r` define the result `r` of applying `f` to `x`. The last line shows the familiar lambda-expression for `S`, written with the familiar variable names `f`, `g`, and `x`. The other two lines build the closure \`record'. The closure-conversion is indeed the trick. The second trick is taking advantage of the instance selection mechanism. When the type checker selects a type-class instance, the type checker instantiates it, substituting for the type variables in the instance head. The type checker thus does the fundamental operation of substitution, which underlies beta-reduction. No wonder why our lambda-calculator is so simple.

The encoding of the applicative fixpoint combinator is even simpler:

    data Rec l
    instance E (l :< (F (Rec l)) :< x) r => A (F (Rec l)) x r

expressing the reduction of the application `(fix l) x` to `l (fix l) x`. The article shows several examples of using the fixpoint combinator, e.g., to compute Fibonacci numbers. Incidentally, the present code constitutes what seems to be the shortest proof that the type system of Haskell with the undecidable instances extension is indeed Turing-complete.

The type-level lambda-calculator albeit trivial has the expected properties, e.g., handling of closures and higher-order functions. It uses named function arguments, rather than De Bruijn indices and is based on explicit substitutions. We again rely on the Haskell type checker for appropriate alpha-conversions.

__Version__

The current version is 1.1, Sep 14, 2006

__References__

[TypeLC.lhs][55] \[9K\]  
The complete literate Haskell code with explanations and tests, including Fibonacci, S and K combinators and the combinatorial arithmetic  
The code was originally posted in the message \`\`On computable types. I. Typed lambda and type closures'' on Thu, 14 Sep 2006 19:07:29 -0700 (PDT) on the Haskell mailing list.

[Applications of computable types][56]

[1]: http://okmij.org/ftp/tagless-final/course/Boehm-Berarducci.html
[2]: http://okmij.org/ftp/tagless-final/cookbook.html#ski
[3]: http://okmij.org/ftp/Computation/fixed-point-combinators.html#Poly-variadic
[4]: http://okmij.org/ftp/Computation/fixed-point-combinators.html#many-fixes
[5]: http://okmij.org/ftp/Computation/lambda-calc.html#predecessors
[6]: http://okmij.org/ftp/Computation/lambda-calc.html#alpha-conv
[7]: http://okmij.org/ftp/Computation/lambda-calc.html#bluff
[8]: http://okmij.org/ftp/Computation/lambda-calc.html#misc-equalities
[9]: http://okmij.org/ftp/Computation/lambda-calc.html#forany-v-forall
[10]: http://okmij.org/ftp/Computation/lambda-calc.html#switch
[11]: http://okmij.org/ftp/Computation/lambda-calc.html#p-numerals
[12]: http://okmij.org/ftp/Computation/lambda-calc.html#neg
[13]: http://okmij.org/ftp/Computation/lambda-calc.html#basic
[14]: http://okmij.org/ftp/Computation/lambda-calc.html#predecessor
[15]: http://okmij.org/ftp/Haskell/AlgorithmsH1.html#random-term
[16]: http://okmij.org/ftp/Computation/lambda-calc.html#lambda-normalizer-ocaml
[17]: http://okmij.org/ftp/Computation/lambda-calc.html#lambda-calculator-haskell
[18]: http://okmij.org/ftp/Computation/lambda-calc.html#lambda-calculator-scheme
[19]: http://okmij.org/ftp/Computation/lambda-calc.html#lambda-calculator-macro-cps
[20]: http://okmij.org/ftp/Computation/lambda-calc.html#lambda-calculator-macro-direct
[21]: http://okmij.org/ftp/tagless-final/cookbook.html#dblevels
[22]: http://okmij.org/ftp/tagless-final/semantics.html
[23]: http://okmij.org/ftp/Computation/lambda-calc.html#haskell-type-level
[24]: http://okmij.org/ftp/Haskell/AlgorithmsH.html#teval
[25]: http://okmij.org/ftp/formalizations/index.html
[26]: http://okmij.org/ftp/Prolog/Prolog.html#lambda-calc
[27]: http://okmij.org/ftp/Computation/having-effect.html#lambda3
[28]: http://okmij.org/ftp/Computation/pred.pdf
[29]: http://doi.org/10.1017/S095679682000009X
[30]: http://okmij.org/ftp/Computation/pred-talk.pdf
[31]: http://okmij.org/ftp/Computation/lambda-calc.html#lambda-normalizer-ocaml
[32]: http://okmij.org/ftp/Computation/lambda-calc.html#predecessor
[33]: http://okmij.org/ftp/Computation/lambda-calc.html#p-numerals
[34]: http://okmij.org/ftp/Computation/lambda-calc.html#bluff
[35]: http://okmij.org/ftp/Haskell/LC_Pnum.lhs
[36]: http://okmij.org/ftp/Computation/lambda-calc.html#p-numerals
[37]: http://okmij.org/ftp/Haskell/bluff.lhs
[38]: http://okmij.org/ftp/Haskell/LC_switch.lhs
[39]: http://okmij.org/ftp/Computation/lambda-calc-div-neg.txt
[40]: http://okmij.org/ftp/Computation/lambda-arithm-neg.scm
[41]: http://okmij.org/ftp/Haskell/LC_neg.lhs
[42]: http://okmij.org/ftp/Computation/lambda-calc-opposites.txt
[43]: http://okmij.org/ftp/Computation/lambda-arithm-div-term.scm
[44]: http://okmij.org/ftp/Scheme/lambda-arithm-basic.scm
[45]: http://okmij.org/ftp/Haskell/LC_basic.lhs
[46]: http://okmij.org/ftp/Streams.html#zip-folds
[47]: http://okmij.org/ftp/Computation/list-representations.txt
[48]: http://okmij.org/ftp/tagless-final/pred.ml
[49]: http://okmij.org/ftp/Haskell/Lambda_calc.lhs
[50]: http://okmij.org/ftp/Computation/lambda-calc.html#basic
[51]: http://okmij.org/ftp/Scheme/index.html#lambda-calc
[52]: http://okmij.org/ftp/Computation/lambda-calc.html#basic
[53]: http://okmij.org/ftp/Scheme/macros.html#macro-lambda-calc
[54]: http://okmij.org/ftp/Scheme/macros.html#macro-lambda-calc
[55]: http://okmij.org/ftp/Haskell/TypeLC.lhs
[56]: http://okmij.org/ftp/Haskell/dependent-types.html#computable-types
