# Definitional Interpreters for Higher-Order Programming Languages

`Definitional Interpreters for Higher-Order Programming Languages`
John C. Reynolds, 1972

## Abstract

Higher-order programming languages (i.e. languages in which procedures or labels can occur as values) are usually *defined by interpreters* which are themselves written in a programming language based on *lambda calculus* (i.e. an applicative language such as pure LISP). Examples include McCarthy's definition of LISP, Landin's SECD machine, the Vienna definition of PL/I, Reynolds' definitions of GEDANKEN, and recent unpublished work by L. Morris and C. Wadsworth.

Such definitions can be classified according to whether the interpreter contains *higher-order functions*, and whether the *order of application* (i.e. call-by-value vs call-by-name) in the *defined language* depends upon the order of application in the *defining language*. 

As an example, we consider the definition of a simple applicative programming language by means of an interpreter written in a similar language. Definitions in each of the above classifications are derived from one another by informal but constructive methods. The treatment of imperative features such as jumps and assignment is also discussed.

## Introduction

An important and frequently used method of defining a PL is to give an *interpreter* for the language which is written in a second, hopefully better understood language. We call these two languages the *defined* and *defining* languages, respectively.

In this paper, we describe and classify several varieties of such interpreters, and show how they may be derived from one another by informal but constructive methods. Although our approach to "constructive classification" is original, the paper is basically an attempt to review and systematize previous work in the field, and we have tried to make the presentation accessible to readers who are unfamiliar with this previous work. Of course, *interpretation* can provide an *implementation* as well as a *definition*, but there are large practical differences between these usages. *Definitional interpreters* often achieve clarity by sacrificing all semblence of efficiency.

The features of PLs can be divided into 2 categories:
- *applicative features*: expression evaluation, definition and application of functions
- *imperative features*: statement sequencing, labels, jumps, assignment, procedural side-effects

Most user-oriented languages provide features in both categories, but machine languages are usually completely imperative.

On the other hand, there is at least one well-known example of a purely applicative language, LISP (i.e. the language defined in McCarthy's original paper; most LISP implementations are extended with imperative features). There are also several more recent theoretical languages (ISWIM, PAL, GEDANKEN) which have been designed by starting with an applicative language and adding imperative extensions.

Purely applicative languages are often said to be based on lambda calculus, or even to be "syntactically sugared" versions of the lambda calculus. In particular, Landin has shown that such languages can be reduced to the lambda calculus by treating each type of expression as an abbreviation for some expression of the lambda calculus.

Indeed, this kind of reducibility could be taken as a precise definition of the notion of *purely applicative*. However, as we will see, although an unsugared applicative language is syntactically equivalent to the lambda calculus, there is a subtle semantic difference. Essentially, the semantics of the "real" lambda calculus implies a different *order of application* than most applicative programming languages.

A second useful characterization is the notion of a *higher-order programming language*. In analogy with mathematical logic, we say that a PL is **higher-order language** if functions can occur as data, i.e. if these entities can be used as arguments to functions, results of functions, or values of assignable variables. A language which is not higher-order is called **first-order language**.

However, the unrestricted use of functions as data is permitted in only a handful of languages which sacrifice efficiency for generality (LISP, ISWIM, PAL, GEDANKEN).

With regard to current techniques of language definition, there is a substantial disparity between first-order and higher-order languages. As a result of work by Floyd, Manna, Hoare, and others, most aspects of first-order languages can be defined logically, i.e. one can give an effective method for transforming a program in the defined language into a logical statement of the relation between its inputs and outputs. However, it has not yet been possible to apply this approach to higher-order languages (although recent work by Scott and Milner represents a major step in this direction).

Almost invariably, higher-order languages have been defined by the approach discussed in this paper, i.e. by giving interpreters which are themselves written in a programming language. Moreover, even when the defined language contains imperative features, the defining language is usually purely applicative.

These examples exhibit considerable variety, ranging from very concise and abstract interpreters to much more elaborate and machine-like ones. To achieve a more precise classification, we will introduce two criteria.

First, we ask whether the defining language is *higher-order*, or more precisely, whether any of the functions which comprise the interpreter either accept or produce values which are themselves functions.

The second criteria involves the notion of *order of application*. In designing any language which allows the use of functions, one must choose between two orders of application: **call-by-value** and **call-by-name**. Even when the language is purely applicative, this choice will affect the meaning of some, but not all, programs which can be written in the language. Remembering that an interpreter is a specific program, we obtain our second criteria: Does the meaning of the interpreter depend upon the order of application chosen for the defining language?

These two criteria establish 4 possible classes of interpreters.

The main goal of this paper is to illustrate and relate these classes of definitional interpreters. In the next section we introduce a simple applicative language, which we use as the defining language and also, with several restrictions, as the defined language. Then we present a simple interpreter which uses higher-order functions and is order-of-application dependent, and we transform this interpreter into examples of the 3 remaining classes. Finally, we consider the problem of adding imperative features to the defined language (while keeping the defining language purely applicative).

## Simple applicative language

In an applicative language, the meaningful phrases of a program are called expressions, the process of executing or interpreting expressions is called evaluation, and the result of evaluating an expression is called a value.

>**Expressions** are meaningful phrases of a program.
>>**Evaluation** is the process of executing or interpreting expressions.
>>>**Values** are the results of expression evaluation.

However, as is evident from a simple arithmetic expression such as x + y, different evaluations of the same expression can produce different values, so that the process of evaluation must depend upon something more than just the expression being evaluated. It is evident that this "something" must specify a value for every variable which might occur (free) in the expression. We call such a specification an environment, and say that it binds variables to values.

>**Environment** binds variables to values.

It is also evident that the evaluation process may involve the creation of new environments from old ones. Suppose `x₁,…,xₙ` are variables, `v₁,…,vₙ` are values, and `e` and `e'` are environments. If `e'` specifies the value `vᵢ` for each `xᵢ`, and behaves the same way as `e` for all other variables, then we say that `e'` is the extension of `e` which binds the `xᵢ` to the `vᵢ`.

The simplest expressions in our applicative language are *constants* and *variables*. The evaluation of a constant always gives the same value, regardless of the environment. We won't specify the set of constants precisely, but we'll assume that it contains the integers and the Boolean constants 'true' and 'false'. The evaluation of a variable simply produces the value which is bound to that variable by the environment.

If our language is going to involve functions, then we must have a form of expression whose evaluation will cause the application of function to its args. If `r₁,…,rₙ` are expressions, then `r₀(r₁,…,rₙ)` is an *application expression*, whose operator is `r₀` and the rest are operands (arguments).

Evaluation of application expression in an environment proceeds as follows:
- The subexpressions `r₀, r₁, …, rₙ` are evaluated in the same environment to obtain values `f, a₁, …, aₙ`.
- If `f` is not a function of `n` arguments, then an error stop occurs.
- Otherwise, the function `f` is applied to the args `a₁, …, aₙ`, and if this application produces a result, then the result is the value of the application expression.

During the evaluation of an application expression, the application process does not begin until after the operator and all of its operands have been evaluated. This is the *call-by-value* order of application. In the alternative order of application, known as *call-by-name*, the application process would begin as soon as the operator had been evaluated, and each operand would only be evaluated when (and if) the function being applied actually depended upon its value.

Although we have specified that all of the subexpressions (r₀,r₁,…,rₙ) are to be evaluated before the application process begins, we have not specified the relative order in which these subexpressions are to be evaluated. In a purely applicative language, this choice has no effect. A slight exception occurs if the evaluation of one subexpression never terminates while the evaluation of another gives an error stop. However, the choice will become significant when we start adding imperative features to the defined language. In anticipation of this extension, we will assume that the subexpressions are evaluated successively from left to right.

Next, we must have a form of exp whose evaluation will produce a function. If `x₁,…,xₙ` are vars and `r` is an exp, then `λx₁…xₙ.r` is a lambda exp, whose formal parameters are `x₁,…,xₙ` and whose body is `r`.

The evaluation of a lambda expression with `n` formal parameters always terminates and always produces a function of `n` arguments. To describe this function, we must specify what happens when it is applied to its arguments.

Suppose `f` is a function obtained by evaluating `λx₁ … xₙ . r` in an env `e`. Then the application of `f` to the args `a₁, …, aₙ` will cause the evaluation of the body `r` in the environment which is the extension of `e` which binds each `xᵢ` to the corresponding `aᵢ`. If this evaluation produces a value, then the value becomes the result of the application of `f`.

>The key point is that the environment in which the body is evaluated during application is an *extension of the earlier environment in which the lambda expression was evaluated*, rather than the more recent environment in which the application takes place.

As a consequence, if a lambda expression contains global variables (i.e. vars which are not formal parameters), its evaluation in different environments can produce different functions.

For example, the lambda expression `λx.x+y` can produce an incrementing function, an identity function (for the integers), or a decrementing function, when evaluated in environments which bind `y` to the values 1, 0, or -1 respectively.

Nowadays, it is generally accepted that this behavior of lambda expressions and environments is a basic characteristic of a well-designed higher-order language.
>Its importance is that it permits functional data to depend upon the *partial results of a program*.

Functions whose evaluation depends on an environment are called **closures**.

### Distinction between call-by-value and call-by-name

Call-by-value
- in an app, `M N`, we have two unknown lambda exps `M` and `N`
- the left operand `M` better be a (previously defined) lambda
- if `M` is indeed a lambda, then it was defined earlier, by evaluating an exp `λx.B` in the previous environment, `env₀`, and the lambda body `B` could have captured values from the surrounding environment (if it had free vars).

To see how some values could have been captured, consider this example

```hs
(λx. λy. x + y) (2)
= λy. 2 + y
```
Focusing only on the inner lambda, i.e. on the subexp `λy.x+y`, of the overall exp `(λx.λy.x+y)`, we see that the inner lambda has a free var, namely `x`. This free var can capture *external values*, which is exactly what happens after the application of `(λx.λy.x+y)` to the arg (2) - the result is a lambda abstraction `λy.(2+y)` with the captured value in its body.

However, this would only be the case if the application (and substitution) was implemented as **explicit rewriting**, meaning we explicitly rewrite one expression with another. More often then not, this is not what happens; instead, *the concept of environment* is introduced. An **environment** records the information about which variable has bound (captured) what value. Thus, in the approach that uses environment, expressions are not explicitly rewritten, but rather *evaluated in the appropriate context* (environment).

The example above could be considered a regular binding in the broader view. However, if the language supports, e.g. top-level let-bindings, a free variable in a lambda's body can capture any external value just by referencing it.

```hs
-- asume we have let bindings
let z = 3
-- defining the lambda f (in the current environment) will allow the var `x` to capture the value of var `z`, i.e. the value 3.
let f = λx. x + z
-- the captured value is 3, regadless of the later changes to `z`;
let z = 5
-- the var `z` can even be long gone by the time `f` is used (applied) later.

-- later...
let r = f(4)
-- is the same as
(λx.x+3)(4)
-- since `x` was fixed to `3`
-- but again, this info must be recorded somewhere, thus the use of an env.
```


Consider the evaluation of an application exp `r₀(r₁ … rₙ)` in the current env `E!`, and suppose that the value of the operator `r₀` is a function `f` which was originally created by evaluating the exp `λx₁…xₙ.B` in a previous env `Eₑₓ`.

Possibly this lambda exp is `r₀` itself, but, in general, `r₀` may be any exp whose functional value was created earlier in the computation.

In the call-by-value, these steps occur during the evaluation of application:
- `r₀` is evaluated in the current env `E!` to obtain the function value `f`
- `r₁,…,rₙ` are evaluated in the env `E!` to obtain args `a₁, …, aₙ`
- `B` is evaluated in the extension of `Eₑₓ` which binds each `xᵢ` to the corresponding `aᵢ`, to obtain the value of the application expression.


Application in the call-by-value setting:

```hs
-- Previously, 'f' was defined by eval the exp `λx₁…xₙ.B` in envL.
-- The body exp `B` could have captured some values from the surrounding envL.
let f = eval (λx₁ … xₙ. B) in envL

-- Now, to evaluate the application of exp `r₀` to exps `r₁ … rₙ`
r₀(r₁ … rₙ)

-- 1) eval `r₀` in the current envA, to get the lambda `f` out
--    (most likely the same lambda as `f` defined previously)
let f = eval r₀ in envA

-- 2) eval terms r₁ … rₙ in envA to get args a₁ … aₙ
let a₁ = eval r₁ in envA
let a₂ = eval r₂ in envA
-- ...
let aₙ = eval rₙ in envA

-- 3) eval body `B` in the extension of envL with bindings xᵢ ⟼ aᵢ
let envX = envL ++ { x₁ ⟼ a₁, x₂ ⟼ a₂, …, xₙ ⟼ aₙ }
let resultOfApp = eval B envX
```
