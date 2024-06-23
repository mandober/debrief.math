# Beta normal form

https://en.wikipedia.org/wiki/Beta_normal_form

A lambda term is in
* *beta normal form*     if no beta reduction is possible
* *beta-eta normal form* if neither β or η reduction is possible
* *head normal form*     if there is no beta-redex in head position


*Head Normal Form* (HNF) describes a lambda expression whose top level is either a variable, a data value, a partially applied built-in function, or a lambda abstraction whose soul is not reducible. That is, the top level lambda expr is neither a redex nor a lambda abstraction with a reducible body. An expression in HNF may contain redexes in argument postions whereas a normal form may not.

A lambda expression is in *weak head normal form* (WHNF) if it is a head normal form (HNF) or any lambda abstraction; i.e. the top level is not a redex. The term was coined by Simon Peyton Jones to make explicit the difference between head normal form (HNF) and what graph reduction systems produce in practice. A lambda abstraction with a reducible body, e.g. `\ x -> ((\ y -> y+x) 2)` is in WHNF but not HNF. To reduce this expression to HNF would require reduction of the lambda body: `(\ y -> y+x) 2` ~~> `2+x`

https://en.wikipedia.org/wiki/Church-Rosser_theorem


## Beta reduction

In the lambda calculus, a **beta redex** is a term of the form `(λp. B) A`

A redex `R` is in *head position* in a term `T`, if `T` has the following shape (application has higher priority than abstraction, so this formula is an abstraction, not an application):

```js
 abstraction F
             │      A the first arg
           ┌─┴────┐┌┴┐
λp₁ … λpₙ . (λp. B) A₁ A₂ … Aₘ              where n >= 0, m >= 1
           └────┬────┘
          redex R
```

A beta reduction is an application of the following rewrite rule to a beta redex contained in a term:

```js
(λp. B) A ---> [p:=A]B
```

where the notation `[p:=A]B` represents the capture-avoiding substitution of the lambda term `A` for the variable `p` in the lambda term `B`. This represents the very common function application - the act of applying some function `f` to some arg `A`. Since we prefer to go about this in a general setting, we need such syntactic blobs in order to discuss the notion of a function application in the most general and abstract setting, resenting the concrete syntax with a firm conviction. Push come to show, we'll grudgingly produce a couple of examples in the despised syntax.

```js
(λp. p) a ----- [p:=a]p -----> p    // 1
(λp. b) a ----- [p:=a]b -----> b    // 2
```

[The notation for substitution is not a part of the actual LC syntax (object language), but rather a meta-notation (in the meta language) that we sometimes use as a kind of justification (or an additional explanation) of the performed β-reduction step][]


Instead of the more familiar notation `f(a)` of applying a function `f` to an argument `A`, because LC lacks top-level name bindings, *functions are always inlined*, so we have the corresponding syntax `(λp. B) A`, where `p` is a formal parameter that will bind some arg `A`. The parameter `p` is an actual parameter (variable), while both `B` (body) and `A` (arg) are both placeholders standing for some arbitrary lambda terms.

> There is no strict, or even a marginally popular above the average, notation to express a capture-avoiding substitution; several variants are in use.

I've seen all kinds of permutations of this seemingly limited number of tokens; interestingly, the only thing that stays constant are the brackets, everything else plays footloose.

```js
B[p:=A]       [p:=A]B
B[p⟼A]       [p⟼A]B
B[p/A]        [p/A]B
B[A/p]        [A/p]B
```


[][the form with the mapping arrow, `⟼` is the clearest by far, no matter which side of the brackets we put the expression representing the function's body]

The idea is to represent the binding of the formal parameter (`p`) to the arg (`a`). After that it is understood (but not actually seen) that the variable `p`, in all its *application occurences* throughout the function's body (`B`), has the value that was assigned to it by the argument.

Therefore, we have the notion of substitution: we call the formal parameter `p` a dummy variable because it has no value, at least not initially and not until the function is applied; if and when that happens, the parameter will obtain the same value as the argument's. At that point it is said that the parameter is **bound** (the argument is also a variable, but unlike formal parameters, it always has a value assigned). So, we refer to this process as substitution, albeit this is (probably) implemented by copying - the value of one point (arg) gets copied as the value of another (param). We don't see the immediate effect of this, so we talk about literally substituting one var for another.
