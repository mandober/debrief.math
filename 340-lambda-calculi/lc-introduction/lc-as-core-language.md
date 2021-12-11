# Lambda calculus as a core language

Being entirely based on abstraction and application of functions, LC is often considered a prototypical FPL. Although modern FPLs have been extended with additional features, it is often the case that these new features are just syntactic sugar that is simplified by translation into functions. Functions are the most fundamental, and thus the most important, language construct in FPLs. Definition and application of functions is still the primary driver in FP.


* Unlike functions from PLs, lambdas require no (manual) computation in their body apart substitution.

* The only caclulation, that happens when a lambda is applied to an arg, is the process of (careful) substitution.

* An abstraction is a function, or more precisely, it is an anonymous unary function, meaning it obeys the same rules imposed on mathematical functions.

* Originally developed in order to study some mathematical properties of effectively computable functions, this formalism has provided a strong theoretical foundation for the family of FPLs.

* A mathematical function has a single input and a single output value. Multiple input values are realzable through the concept of currying. Multiple output values are not possible, at least not directly, although they can be sneaked out by wrapping them in an appropriate compound data structure, like a list or a pair, as is usual in many programming languages. However, unlike in PLs where many data structures are already given, in LC there is nothing at all; you must define every single thing before you use it. While it's possible, programming in LC is cumbersome due to the lack of any and all features that makes programming a managable undertaking. Sure sounds like an invite for a self-improvement-is-masturbation Pepsi challenge.

* parameter binding and substitution.

* Unlike functions from the PLs, lambdas require no (manual) computation in their body apart substitution.

* The only caclulation, that happens when a lambda is applied to an arg, is the process of (careful) substitution.

* Considered as the very **minimal programming language**, λ-calculus lacks almost every concept and construction found in PLs; in fact, there are no other values but functions.

* This means that LC deals with the first-class functions, such that a function can be taken as an argument of a function, and a function can be returned as a value from a function. Moreover, there is nothing predefined, there is no standard library of routines and anything similar, the evaluation environment is completely empty. There are only the rules for defining a new function and the rules for applying it an argument (that is again a function). With nothing predefined, you work with a completely blank slate, free to determine for yourself what the various functions you define will represent.

- everything is achieved through function definitions and applications
- all functions are anonymous and unary
- λ-abstraction refers to an anonymous function, i.e. function definition
- λ-application refers to applying a function to its argument
- λ-term refers to any of the 3 elementary syntactic elements
- λ-expression refers to any lambda expression
- completely devoid of (pre-defined) objects
- There are only 2 basic rules: how to define and apply functions
- defining a new function is called *lambda abstraction*
- applying a function to an argument is called *lambda application*
- an argument can only be another function (only functions exist)
- functions are anonymous; external name binding is not available
- functions are unary; they must declare one formal parameter


* Lambda calculus is a formal system for expressing computation.
* The grammar rules are divided in two parts: function abstraction and function application.
* Function abstraction is a function definition, it defines what a function does. A function definition is static, it does nothing by itself. It stays inactive until it is applied.
* A function application "computes" a function. When a function is applied to some arguments is when the action really happens; calling a function is a call to action.
* For example, using mathematical notation, `f(x) = x + 1` is a function abstraction, but `f(3)` is a function application.
* In lambda calculus, the equality sign `=` from function definition is replaced by a dot
* To represent a function `f(x) = x + 1` we write `λx.x + 1`. The big difference is that, unlike in math, in LC all functions are anonymous, so there are no external binders (identifiers), like `f` is in the math notation.
* In function application, instead of writing `f(x)`, we must give the definition of a function (abstraction) and immediately follow it by the arguments.
* In math, `f(5)`, but in the LC, `(λx.x + 1) (5)` (just for illustration, things like numbers do not exist, nothing exists, until defined explicitly).


- isomorphism between products and exponentials
- `bᵃ` the number of possible functions from `a` to `b`, `a -> b`
- |Bool -> RGB| = 3²
- |RGB -> Bool| = 2³
- (a ⨯ b) -> c ≅ a -> (b -> c)
- cᵃᵇ = (c -> b)ᵃ = (cᵇ)ᵃ = cᵃᵇ
