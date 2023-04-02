---
downloaded:       2021-11-05
author:           
page-url:         https://matt.might.net/articles/implementation-of-recursive-fixed-point-y-combinator-in-javascript-for-memoization/
page-title:       Memoizing recursive functions via the fixed-point Y combinator: Applying functional programming techniques to Javascript
article-title:    Memoizing recursive functions via the fixed-point Y combinator: Applying functional programming techniques to Javascript
article-length:   10148
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# Memoizing recursive functions via the fixed-point Y combinator: Applying functional programming techniques to Javascript

It comes as a surprise to many programmers that it is possible to
express a "recursive" function like factorial without using recursion
or iteration.
It comes as a surprise to many programmers that it is possible to express a "recursive" function like factorial without using recursion or iteration.

The technique involved is subtle but powerful: the recursive function is computed as the "fixed point" of a non-recursive function. To compute the fixed point, we can use the __Y combinator__, which is itself a non-recursive function that computes fixed points.

*That this manages to work is truly remarkable.*

\--Sussman and Steele on the Y Combinator

As a practical application of this theory, recursive functions expressed as fixed points allow the use of a memoizing fixed-point combinator. The combinator approach to recursion makes it possible to cache the internal calls to a recursive function automatically.

For example, this caching turns the naive, exponential implementation of Fibonacci into the optimized, linear-time version *for free*.

Read below to see how to do this all of this in JavaScript, courtesy of its anonymous function construct.

If you like the article below, you might also enjoy:

## Recursion as fixed points

Students of algebra are already familiar with recursion and fixed points.

They just don't realize it.

Consider an equation like "*x* = *x*2 - 2." (Programmers might recognize this as a recursive definition, in which *x* is being defined in terms of itself.)

If asked to solve for the value of *x*, a student might re-arrange the equation to use the quadratic formula. However, there is another way to express, and even find, the value(s) of *x*: fixed points.

A __fixed point__ of a function *f* is an input that is equal to its output; that is *x* is a fixed point of the function *f* if *x* = *f*(*x*). Some functions have no fixed points; some have many. The notation *Fix*(*f*) denotes the set of fixed points of a function *f*.

Define the function *f* such that *f*(*v*) = *v*2 - 2. Then, observe that the original equation may now be re-written as "*x* = *f*(*x*)." In other words, the solutions to the equation are the fixed points of the function *f*! That is, *Fix*(*f*) = {-1,2}--a fact we can verify by seeing that

*f*(-1) = (-1)2 - 2 = 1 - 2 = -1,

and:

*f*(2) = (2)2 - 2 = 4 - 2 = 2

or by graphing *y* = *x* and *y* = *f*(*x*):

![y = x and y = x^2 - 2](https://matt.might.net/articles/implementation-of-recursive-fixed-point-y-combinator-in-javascript-for-memoization/images/fix-graph.gif)

These are exactly the [solutions to *x* = *x*2 - 2][1] given by Wolfram Alpha.

The insight that powers the upcoming technique is the observation that any time we have a recursive definition of the form "*x* = *f*(*x*)," the meaning of *x* is going to be defined in terms of fixed points.

The trick is to find a way to obtain fixed points when the equation has the form "*f* = *F*(*f*)," in which the value of *f* is not a number, but a function.

The Y combinator is that trick.

## The Y combinator in theory

In his research on the [λ-calculus][2] and [combinatory logic][3], [Haskell Curry][4] discovered the "paradoxical" [fixed-point combinator][5] known as the Y combinator. The Y combinator takes a functional as input, and it returns the (unique) fixed point of that functional as its output. A __functional__ is a function that takes a function for its input. Therefore, the fixed point of a functional is going to be a *function*.

Using the concepts of functionals and fixed points, we can eliminate explicit recursion for a function through two steps:

1.  Find a functional whose fixed point is the recursive function we seek.
2.  Find the fixed point of a functional *without recursion*.

A simple source transformation takes care of the first step. The Y combinator takes care of the second.

## Deriving the Y combinator

The λ-calculus, the language in which the Y combinator is typically expressed, is a programming language which contains only anonymous functions, function applications and variable references. (Remarkably, this language is Turing-complete.) The notation λ*v*.*e* stands for the function that maps the input *v* to the output *e*. JavaScript supports anonymous functions:

`λ*v*.*e* == function (*v*) { return *e* ; }`

So, if we can find a way to express the Y combinator in the λ-calculus, we can express it in JavaScript too.

To derive the Y combinator, start with the core property we seek. Namely, if we give the Y combinator a functional *F*, then *Y*(*F*) needs to be a fixed point:

*Y*(*F*) = *F*(*Y*(*F*))

We could actually transliterate this definition into JavaScript as:

`function Y(F) { return F(Y(F)) ; }`

Of course, if we tried to use it, it would never work because the function *Y* immediately calls itself, leading to infinite recursion.

Using a little λ-calculus, however, we can wrap the call to *Y* in a λ-term:

*Y*(*F*) = *F*(λ *x*.(*Y*(*F*))(*x*))

Now, when we invoke the function *Y*, it immediately calls the function *F*, and passes it λ *x*.(*Y*(*F*))(*x*), which is equivalent to the fixed point.

Or, in JavaScript:

`function Y(F) { return F(function (x) { return (Y(F))(x) ; } ) ; }`

This function will actually find the fixed point of a functional, and we could use it to eliminate recursion. Of course, as defined, the function *Y* calls itself recursively, so we haven't really eliminated recursion yet. We've just moved it all into the function *Y*.

Using another construct called the [U combinator][6], we can eliminate the recursive call inside the *Y* combinator, which, with a couple more transformations gets us to:

*Y* = (λ*h*.λ*F*.*F*(λ *x*.((*h*(*h*))(*F*))(*x*))) (λ*h*.λ*F*.*F*(λ *x*.((*h*(*h*))(*F*))(*x*)))

Note that the right-hand-side makes no reference to *Y*.

## The Y combinator in JavaScript

Any untyped language which permits lexically scoped anonymous functions, such as JavaScript, can express the Y combinator without relying on recursion, iteration or side effects. Even without understanding *how* the Y combinator works, you still can see it in action and verify for yourself that no recursion or iteration is used. The following example expresses the factorial function without using recursion:

\[result1\]

Take a close look at the definition of Y. It uses only three kinds of expression: anonymous functions, variable reference and function application. Each anonymous function has the form __function__ (*argument*) { __return__ *expression* ; }. The Y combinator is a closed expression--it makes no explicit reference to an outside variable or to itself. Clearly, there is no recursion, iteration or mutation.

The Y combinator allows a concise transformation from a recursive function to a non-recursive function. If we have a recursive function `f`:

function f (arg) {
 ... f ...
}

This definition can be transformed into a non-recursive form:

var f = Y(function(g) { return (function (arg) {
 ... g ...
 }) ;}) ;

It is inspiring to see what you can achieve in just a few extra characters.

## Exploiting the Y combinator

The Y combinator is a significant result in the theory of computation and the theory of programming languages. It offers another way to think about nontrivial functions in terms of fixed points, rather than the standard paradigms of recursion and iteration.

For instance, suppose we define a recursive function using the functional-fixed-point paradigm: can we then create a fixed-point combinator that automatically gives us better performance for the function? The answer is *yes*. We can create a [memoizing][7] fixed-point combinator: a Y-like combinator that caches the results of intermediate function calls.

For example, the naive way of defining Fibonacci using recursion makes two recursive calls, leading to exponential time complexity:

function fib(n) {
 if (n == 0) return 0 ;
 if (n == 1) return 1 ;
 return fib(n-1) + fib(n-2) ;
}

We could however, define Fibonacci using the Y combinator:

var fib = Y(function (g) { return (function (n) {
 if (n == 0) return 0 ;
 if (n == 1) return 1 ;
 return g(n-1) + g(n-2) ;
}) ; }) ;

This formulation still has exponential complexity, but we can change it to linear time *just by changing the fixed-point combinator*. The memoizing Y combinator, `Ymem`, keeps a cache of computed results, and returns the pre-computed result if available:

\[result2\]

There are a couple caveats with this particular `Ymem`:

1.  `Ymem` only works on functions of one argument, but this could be remedied with Javascript's `apply` method and the use of a [trie][8]\-like cache.
2.  `Ymem` only works for indexable argument values like numbers and strings, but this can be circumvented by supplying a comparator on argument values, so that it can use a sorted tree for the cache.

The end result is that the 100th Fibonacci number is computed instantly, whereas the naive version (or the version using the ordinary Y combinator) would take well beyond the estimated lifetime of the universe.

## External resources

-   Benjamin Pierce's [Types and Programming Languages][9]![](http://www.assoc-amazon.com/e/ir?t=&l=as2&o=1&a=0262162091&camp=217145&creative=399369) is a great resource for the lambda calculus and programming language theory.
-   [Doug Crockford's site][10] is a great reference on advanced JavaScript.
-   [A cool paper][11] by [Daniel Brown][12] and [William Cook][13] on monads, mixins, inheritence and, yes, fixed points.

## Related posts

-   [Tree transformations: Desugaring Scheme][14]
-   [Lexical analysis in Racket][15]
-   [Grammar: The language of languages (BNF, EBNF, ABNF)][16]
-   [What is static program analysis?][17]
-   [Implementing Java as a CESK machine, in Java][18]
-   [Writing an interpreter, CESK-style][19]
-   [Order theory for computer scientists][20]
-   [HOWTO: Translate math into code][21]
-   [Writing CEK-style interpreters in Haskell][22]
-   [Closure conversion: How to compile lambda][23]
-   [How to compile with continuations][24]
-   [Understand exceptions by implementing them][25]
-   [A-Normalization: Why and How][26]
-   [Compiling up to the λ-calculus][27]
-   [Parsing with derivatives (Yacc is dead: An update)][28]
-   [By example: Continuation-passing style in JavaScript][29]
-   [7 lines of code, 3 minutes: Implement a programming language][30]
-   [Architectures for interpreters][31]
-   [First-class macros from meta-circular evaluators][32]
-   [Programming with continuations by example][33]
-   [Compiling Scheme to C][34]
-   [Compiling to Java][35]
-   [Church encodings in Scheme][36]
-   [Non-termination without loops, iteration or recursion in Javascript][37]
-   [Advanced programming languages][38]
-   [Recommended books and papers for grad students][39]

---

[1]: http://www.wolframalpha.com/input/?i=solve+x+%3D+x^2+-2+
[2]: http://en.wikipedia.org/wiki/Lambda_calculus
[3]: http://en.wikipedia.org/wiki/Combinatory_logic
[4]: http://en.wikipedia.org/wiki/Haskell_Curry
[5]: http://en.wikipedia.org/wiki/Fixed_point_combinator
[6]: http://www.ucombinator.org/
[7]: http://en.wikipedia.org/wiki/Memoization
[8]: http://en.wikipedia.org/wiki/Trie
[9]: http://www.amazon.com/gp/product/0262162091/ref=as_li_ss_tl?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=217145&creative=399369&creativeASIN=0262162091
[10]: http://www.crockford.com/
[11]: http://www.cs.utexas.edu/users/wcook/Drafts/2009/sblp09-memo-mixins.pdf
[12]: http://www.ccs.northeastern.edu/home/dbrown/
[13]: http://www.cs.utexas.edu/~wcook/
[14]: http://matt.might.net/articles/desugaring-scheme/
[15]: http://matt.might.net/articles/lexers-in-racket/
[16]: http://matt.might.net/articles/grammars-bnf-ebnf/
[17]: http://matt.might.net/articles/intro-static-analysis/
[18]: http://matt.might.net/articles/oo-cesk/
[19]: http://matt.might.net/articles/cesk-machines/
[20]: http://matt.might.net/articles/partial-orders/
[21]: http://matt.might.net/articles/discrete-math-and-code/
[22]: http://matt.might.net/articles/cek-machines/
[23]: http://matt.might.net/articles/closure-conversion/
[24]: http://matt.might.net/articles/cps-conversion/
[25]: http://matt.might.net/articles/implementing-exceptions/
[26]: http://matt.might.net/articles/a-normalization/
[27]: http://matt.might.net/articles/compiling-up-to-lambda-calculus/
[28]: http://matt.might.net/articles/parsing-with-derivatives/
[29]: http://matt.might.net/articles/by-example-continuation-passing-style/
[30]: http://matt.might.net/articles/implementing-a-programming-language/
[31]: http://matt.might.net/articles/writing-an-interpreter-substitution-denotational-big-step-small-step/
[32]: http://matt.might.net/articles/metacircular-evaluation-and-first-class-run-time-macros/
[33]: http://matt.might.net/articles/programming-with-continuations--exceptions-backtracking-search-threads-generators-coroutines/
[34]: http://matt.might.net/articles/compiling-scheme-to-c/
[35]: http://matt.might.net/articles/compiling-to-java/
[36]: http://matt.might.net/articles/church-encodings-demo-in-scheme/
[37]: http://matt.might.net/articles/implementation-of-non-terminating-program-in-javascript-without-loops-iteration-recursion/
[38]: http://matt.might.net/articles/best-programming-languages/
[39]: http://matt.might.net/articles/books-papers-materials-for-graduate-students/
