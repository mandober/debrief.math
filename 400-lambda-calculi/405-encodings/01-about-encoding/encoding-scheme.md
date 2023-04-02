# Encoding scheme

>An encoding scheme in lambda calculus is a comprehensive and consistent set of representations of data types and operations on them.




## λ-calculus rules

The rules of λ-calculus govern the manipulation of lambda terms, which are comprised of variables (parameters that bind lambda terms passed in as arguments), lambda abstraction (function definition) and application of lambda abstractions to lambda terms.

λ-calculus only specifies the way of defining functions (lambda abstractions or just lambda) and their application - these rules are not exotic, but are based on the usual rules concerning how functions work in mathematics and in PLs. However, unlike in math, the body of a lambda is comprised entirely of variables, no other entities (like numbers are in math) are available anyway.

Like any function, a lambda abstraction specifies the formal parameters in the head section, and each parameter may occur any number of times (including zero) in the lambda's body. A formal parameter is also the *binding occurrence* of that parameter, as opposed to its occurrences in the body, which are its *applied occurrences*. Further, a parameter may be *bound* or *free* in its applied occurrences, relative to whether its binding occurrence is in the same scope or not. Focusing on a lambda abstraction, a parameter occurs bound in its body if it has the binding occurrence in that lambda's head; otherwise, it is free because its binding occurrence happens to be fall out of our current consideration. This also means, that the same parameter appears free if we just focus on the lambda's body. Therefore, free and bound occurrences of a parameter are very relativistic, depending on the segment of a lambda term that we are currently considering.

The application of a lambda abstraction to an argument is based on the *substitution* and the mechanics of it are the same as in anywhere: first, the argument is bound to the positionally appropriate parameter. Then, all the applied occurrences of the parameter are substituted with the value of the bound argument. That's it. Then we repeat this procedure for the rest of the arguments - that's all we can really do.

## Reduction strategy

This segues into another aspect of λ-calculus and PLs in general: the issue of the *reduction strategy*.

In the *normal order* reduction strategy, an argument is first reduced (as it very well may be a lambda application itself) before it is passed to the function. This is sometimes called the eager, call-by-value, strategy.

In the *applicative order* reduction strategy, an argument is passed as-is to the function, being reduced later. This is known as the lazy, call-by-name, strategy.

The *call-by-need* is a variant of the call-by-name strategy in which the passed argument is only reduced if its value is needed for the evaluation of the lambda's body. Moreover, after reducing the argument, the evaluator will memoize the result in order to reuse it for future references to the same formal parameter.

Additional problem with evaluation is the question of *reductions under a lambda* - how, and even whether at all, are they done. In the *free beta reductions* strategy, all redexes are reduced, eventually in whichever order, until no further reductions are possible.

An amazing early result in the lambda calculus was the *Church-Rosser theorem*: informally, if two lambda terms are reducable (if neither diverges) to another term, then the reduction strategy (the ordering in which the reductions are chosen) does not make a difference to the eventual result.

## λ-calculus as a programming language

λ-calculus, as austere as it may seem, is sufficient to be treated as a pure programming language. In fact, λ-calculus already forms the core of many functional programming languages.

The challenge in treating λ-calculus as a programming language, is that we start with a blank slate with nothing predefined. The formation and reduction rules are fixed, but the actual reduction strategy is allowed to be selected (although due to Church-Rosser this shouldn't be our primary concern). Lambda calculus is a pure language because we can use it the same way we use mathematical functions: there are no side effects. We may even skip the mechanics of implementing the I/O, needed to view the results of evaluations, if we restrict ourselves to the head and paper approach. Anyway, before we get to implementing the lambda calculus using some PL both as a meta language and the means of obtaining the I/O functionality, we should first come up with an ecoding scheme.
