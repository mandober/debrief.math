# Functional notation

- named function
- `f` used as generic name
- application `f(x)`
- referring to the function itself: `f`, or abusing application `f(x)`


The **functional notation** requires that a name is given to the function, which, in the case of a unspecified function is often the letter `f`.

The function definition is denoted by `f(x) = x²`.

Referring to the function itself, e.g. in order to pass it into another function as argument, is done by stating the function's name alone, e.g. `f`. However, the application form `f(x)` is often abused for this, so people often talk about a function `f(x)`, rather then just `f`, which is sufficient.

The application of the function to an argument is denoted by the function's name followed by the argument (or arguments, in multivariate functions), usually, but not necessarily, enclosed in parentheses, such as in `f(x)`, `sin(3)`, `exp(x²+1)`, or, equivalently as `f x`, `sin 3`, `exp (x²+1)`, for version without parens.

The principle thing we do with functions is applying them (to appropriate arguments). The notation for *function application* - the act of applying a (previously defined) function to an argument - also referred to as "calling the function on an argument" or "passing an argument into a function" - has the form where the function's name is followed by an argument in parens, as `f(x)`, athough parens are not strictly necessary, so `f x` is also valid.

argument
- variable (ranging over the domain)
- constant (from the domain)
- expression (whose type is the same as that of the domain)

In a function application form, the argument (in parens) may be a *variable*, often `x`, in which case `x` ranges over the *domain* of the function, which is specified as part of the function's type (as a *function signature*), as a separate standalone notation, that most generally looks like `f : A → B`. Here, `A` is the domain set, while `B` is the *codomain* set; of course, the name of the function (`f`) must be the same as in the function's definition. A concrete example of a function type is `f : ℕ → ℝ`, usually followed by the function's definition, `f(x) = x²`.

An argument can also be a constant, i.e. a specific element of the domain, such as `3`.

Most flexibly, an argument may also be an expression, like `2a+1`, whose type is the same as that of the domain; e.g. for a function of type `f : ℕ → ℤ`, argument expression must have the type `ℕ`, `a²+1 : ℕ`; so when the expression gets evaluated, it resolves to an element of the domain `ℕ`. Importantly, all names must be previously defined so they can be resolved to their values; e.g. the variable `a` in this example of a function application, `f(2a+1)`, must be previosuly defined, so the argument can be evaluated down to a constant value. Note that the expression in the function application, like `f(2a+1)`, has nothing to do with the expression that defines the function (that makes the function's body), such as `g(x) = 2x+1`. Thus, this function `g` may be called with an expr as the argument, `g(2a+1)`. The argument will replace every occurrence of the parameter `x` in the function's body: `g(2a+1) = 2(2a+1)+1`; if `a` was previosuly defined with value `a=4+1`, the call is evaluated to a constant value by:

```js
g(x) = 2x+1
g(3) = 2(3)+1 = 6+1 = 7
g(3+2) = 2(3+2)+1 = 2(5)+1 = 10+1 = 11
g(π) = 2(π)+1 = 2π+1
let a = 4 + 1
g(2a+1) = 2(2a+1)+1 = 2(2(4+1)+1)+1
        = 2(2(5)+1)+1
        = 2(10+1)+1
        = 2(11)+1
        = 22+1
        = 23
```

following the usual rules of precedence, associativity, etc. of arithemtic operators. Note that `a` above is an *external variable* - nevertheless the function can "see" it and access it. In programming, there are precise rules that govern such aspects, but when doing math in prose, there are only conventions and a convention relevant for this situation is that the variable `a` must be defined somewhere "near" the place of use - somewhere in the same context, be it the same equation, sentence, paragraph, page, or book section.

The variable `x` in the function definition like, `f(x) = (x²+x)/2`, is actually called *function parameter*. The first occurrence of `x`, on the left-hand side of the equals sign, i.e. in `f(x)`, is known as its *binding occurrence*. The expression `f(x)` on the lhs actually manages to denote several things: that the function name is `f`, that `f` is a unary function, and that when `f` is applyied to some arg, that arg will be bound in the function to the parameter named `x`. This means that inside the function the argument (the value of the argument) will be known as `x` (if we could refer to it, we'd refer to it as `x`; but, of course, we cannot refer to a function's parameter once the function is defined - that train has long passed). Why, oh why, my, oh mine, why do I go into such details, I cry, oh, do I cry.

*External values*, and generally all *names* (mostly variables, but maybe also names of other functions). These names must be resolved to their values in order to evaluate the function application. When we replace the argument `x` for each occurrence of `x` in the function's body, we proceed with evaluation. However, what happens if we encounter an unknown name (aka unknown reference)? Say, something unfamiliar like `versin` or `ℏ`?

`ℏ = ℎ/2π`

are seemingly bad because we haveto chase down their definition - this is called *name resolution* - each unknown name, mostly meaning unknown variable, must literaly be looked up; the reader must scan the previous text hunting down the place where it was defined.

the name of a variable must 

not used in math very often because math insists on pure functions 


The use of a unspecified variable between parentheses is useful for defining a function explicitly such as in "let `f(x) = sin(x²+1)`".

When the symbol denoting the function consists of several characters and no ambiguity may arise, the parentheses of functional notation might be omitted. For example, it is common to write sin x instead of sin(x).

Functional notation was first used by Leonhard Euler in 1734. Some widely used functions are represented by a symbol consisting of several letters (usually two or three, generally an abbreviation of their name). In this case, a roman type is customarily used instead, such as "sin" for the sine function, in contrast to italic font for single-letter symbols.

The functional notation is often used colloquially for referring to a function and simultaneously naming its argument, such as in "let `f(x)` be a function". This is an abuse of notation that is useful for a simpler formulation.
