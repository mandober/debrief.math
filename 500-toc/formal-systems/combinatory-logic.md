# Combinatory logic

https://en.wikipedia.org/wiki/Combinatory_logic

**Combinatory logic** is a notation to eliminate the need for quantified variables in mathematical logic.

It was introduced by Moses Schönfinkel and Haskell Curry, and has more recently been used in CS as a *theoretical model of computation* and also as a basis for the design of FPL.

It is based on combinators, which were introduced by Schönfinkel in 1920, with the idea of providing an analogous way to build up functions (and to remove any mention of variables) particularly in predicate logic.

A **combinator** is a higher-order function that uses only function application and earlier defined combinators to define a result from its arguments.

## In math and CS

Combinatory logic was originally intended as a "pre-logic" that would clarify the role of *quantified variables* in logic, essentially by eliminating them.

Another way of eliminating quantified variables is *Quine's predicate functor logic*. While the expressive power of combinatory logic typically exceeds that of first-order logic, the expressive power of predicate functor logic is identical to that of first order logic.

The original inventor of *combinatory logic*, Moses Schönfinkel, published nothing on combinatory logic after his original 1924 paper. Haskell Curry rediscovered the combinators while working as an instructor at Princeton University in late 1927.

In the late 1930s, Alonzo Church and his students at Princeton invented a rival formalism for functional abstraction, the *lambda calculus*, which proved more popular than combinatory logic.

In CS, combinatory logic is used as a simplified model of computation, used in *computability theory* and *proof theory*. Despite its simplicity, combinatory logic captures many essential features of computation.

* Combinatory logic can be viewed as a variant of LC, in which lambda expressions are replaced by a limited set of combinators.
* Expressions can be easily translated between LC and CL.
* Combinator reduction is much simpler than lambda reduction.
* `Unlambda` (a Turing tarpit of a PL) only uses `S` and `K` combinators augmented with character I/O.


While it is certainly fantastic that LC can represent any conceivable computation using only the simple notions of function abstraction and application based on simple textual substitution of terms for variables, it is even more remarkable that abstraction is not even needed.

Combinatory logic is a model of computation equivalent to lambda calculus, but without function abstraction, the advantage of which is that evaluating expressions is much simpler because there is no notion of substitution.

## Combinatory calculi

Instead of function abstraction (which is the only way to manufacture functions in LC), combinatory calculus provides a limited set of *primitive functions*, out of which other functions may be built.

*Combinatory terms*:
- `x`, variable, a character or string representing a combinatory term
- `P`, primitive function, one of the combinator symbols I, K, S
- `(M N)`, application, applying a fn to arg. `M` and `N` are combinatory terms

In combinatory logic, each primitive combinator comes with a reduction rule of the form `(P x₁...xₙ) = E`, where `E` is a term mentioning only variables from the set {x₁,...,xₙ}. It is in this way that primitive combinators behave as functions.

## Combinators

The simplest combinator is `I`, the identity combinator, defined by `(I x) = x`,for all terms x.

Another simple combinator is `K`, which manufactures constant functions: `(K x)` is the function which, for any argument, returns `x`, so we say `((K x) y) = x`, for all terms x and y; or, following the convention for multiple application, `(K x y) = x`.

The third combinator is `S`, which is a generalized version of application:   
`(S x y z) = (x z (y z))`. S applies x to y after first substituting z into each of them. Or, put another way, x is applied to y inside the environment z.

Given S and K, I itself is unnecessary, since it can be built from the other two, `I := SKK`

((S K K) x)
= (S K K x)
= (K x (K x))
= x

Note that although `(S K K) x = I x`, for any x, `S K K` itself is not equal to `I`. We say the terms are extensionally equal.

*Extensional equality* captures the mathematical notion of the equality of functions: that two functions are equal if they always produce the same results for the same arguments.

In contrast, the terms themselves, together with the reduction of primitive combinators, capture the notion of intensional equality of functions:

*Intensional equality*: two functions are equal only if they have identical implementations up to the evaluation order (up to the expansion of primitive combinators when these ones are applied to enough args) and alpha equivalence.

The word "equivalent" is usually used to indicate extensional equality, while "equal" indicates identical terms (intensional equality).

There are many ways to implement an identity function; (S K K) and I are among these ways. (S K S) is another.

composition: `S (K f) g`
