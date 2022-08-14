# Reduction strategy

https://en.wikipedia.org/wiki/Evaluation_strategy
https://en.wikipedia.org/wiki/Reduction_strategy
https://en.wikipedia.org/wiki/Reduction_strategy_(lambda_calculus)
https://en.wikipedia.org/wiki/Lambda_calculus#Reduction
https://en.wikipedia.org/wiki/Reduction_strategy#Lambda_calculus
https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting)

https://www.cmi.ac.in/~madhavan/courses/pl2009/lecturenotes/lecture-notes/node78.html


A **reduction strategy** is a specific approach in reducing lambda terms. Each reduction strategy defines at least the most prominent aspect of performing reductions - the order in which the abstractions (functions) are applied to their arguments.

A *redex* is a reducable lambda expression. A lambda expression that cannot be further reduced by successive reduction steps is said to be in a *normal form*.

The notion of order of reductions arises when we consider (arbitrary) nested lambda terms like `L (M N)` (these are metavariables ranging over lambda terms).Here, the subexpression `M N` is nested deeper than the term `L`. Thus, we can differentiate between the outer and inner terms. Often, a distinction is made between the left and right terms (as related to each other). We say that the term `L` is the *outermost leftmost* term, while `M N` is the *innermost rightmost* term; the two referenced terms are the primary drivers of their respective reduction orders: applicative and normal order:
* Under the *applicative order*, the innermost rightmost redex is reduced first.
* Under the *normal order*, the outermost leftmost redex is reduced first.

Besides defining the order of reductions, the two approaches foster other differences, but their second most prominent distinction is the exact moment an argument undergoes evaluation in a function application.

Reconsidering the previous expression `L (M N)`, the applicative order will first deal with the subexpression `M N`. The term `N` (argument) is the first one that undergoes evaluation and reduction until it cannot be reduced no more. Then the term `M` (function) is evaluated in order to make sure it is an abstraction. Only then is the beta-reduction of the application `M N` performed. This approach is also known as the *eager evaluation*.

On the other hand, in the normal order, the outermost leftmost redex is reduced first, meaning the term `L` is an abstraction applied to an argument `(M N)`. Moreover, in the normal order, the argument is passed to the function as is, without even taking a look at it. The beta reduction is performed, and the argument is bound to the `L`'s formal parameter, still in its "raw state". Should it happend that this arguemnt is not even used in the abstraction's body, it is discarded in a beat. This saves resources from being wasted dealing with an argument that is after all unused (meanwhile, the applicative order would have fully and very eagerly ealuated the argument only to find out that it is being dropped). Another aspect of evalution arises at this point - what happens if there are two or more identical arguments? Surely, it would be good to avoid computing each arg individually, when computing just one would suffice. This issues has spawned further classes, each dealing with this andsimilar issues slightly different, but all attempting to increase efficency or at least avoid unnecessary work.

The canonical reduction strategies:
* Outermost, lazy: don't evaluate args untill they are absolutely needed
* Innermost, eager: evaluate the arg before evaluating an Abs

Haskell has a lazy reduction strategy, while ML follows the eager strategy like it's not a FPL.

THEOREM #1     
Let `E` be a Haskell expression with two reductions sequances 

```
e ~~> f₁  ~~> f₂  ~~> … ~~> fₖ  ~~> g
e ~~> f₁' ~~> f₂' ~~> … ~~> fₖ' ~~> g'
```

then `g = g'`.

https://www.cmi.ac.in/~madhavan/courses/pl2009/lecturenotes/lecture-notes/node76.html

> The outermost strategy for reduction terminates with a value whenever the innermost strategy does.

THEOREM #2     






It is similar to but subtly different from the notion of *evaluation strategy* in TPL.

Roughly, a reduction strategy is a function that maps a lambda calculus term with reducible expressions to one particular reducible expression, the one to be reduced next.

Logicians have studied the properties of this system for decades, and the superficial similarity between the description of evaluation strategies and reduction strategies originally misled PL researchers to speculate that the two were identical; these are, however, different concepts.

## Lazy and strict evaluation

There are two approaches to evaluating a function applications:
- **strict** evaluation: **by value** i.e. applicative order
- **lazy** evaluation: **by reference** i.e. normal order

The former approach is called __applicative order__ and it is similar to "call by value" in PL in that the value of the argument is evaluated before being assigned as the value of the formal parameter.

The second approach is called __normal order__ and it is similar to "call by reference" in PL in that the value of the argument is assigned to the formal parameter unevaluated.

All occurences of the function's bound variable in the function's body expression are replaced by either the value of the argument expression or the unevaluated argument expression.

In most cases the evaluation order amounts to the same result, but sometimes the order does matter, to the point of evaluation decidibility.




<!-- #region -->

<details><summary>Example#1</summary><br>

$$(\lambda x.x)(((\lambda xy.x)a)b)$$    
here the argument expression, $$(((\lambda xy.x)a)b)$$,     
is either evaluated first and only then applied to the abstraction, $$(\lambda x.x)$$, or it is applied immediately unevaluated:

by value (evaluate the arg before applyng it):
$$
\quad \ (\lambda x.x)\ (((\lambda xy.x)a)b)\\
\quad \ (\lambda x.x)\ ((\lambda y.a)b)\\
\quad \ (\lambda x.x)\ (a)\\
\quad \ a
$$

by reference (apply the arg unevaluated):
$$
\quad \ (\lambda x.x)\ (((\lambda xy.x)a)b)\\
\quad \ (((\lambda xy.x)a)b)\\
\quad \ ((\lambda y.a)b)\\
\quad \ a
$$

</details><br>

<!-- #endregion -->
