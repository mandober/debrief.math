# Lambda lifting

https://en.wikipedia.org/wiki/Lambda_lifting

Lambda lifting is a meta-process that restructures a computer program so that functions are defined independently of each other, in a global scope.

An individual "lift" transforms a local function into a global function.

Lambda lifting is a two step process:
- eliminating free variables in a function by adding extra formal parameters
- move functions from a restricted scope to broader or global scope

The term *lambda lifting* was first introduced by Thomas Johnsson around 1982.

Lambda lifting is not the same as *closure conversion*. It requires all call sites to be adjusted (adding extra arguments to calls), and it doesn't introduce a closure for the lifted lambda expression. In contrast, a closure conversion doesn't require call sites to be adjusted, but does introduce a closure for the lambda expression mapping free variables to values.

In code refactoring, the technic of lambda lifting may be used on functions to make them available to a broader scope.

Lambda lifts may also be repeated, in order to transform the program. Repeated lifts may be used to convert a program written in lambda calculus into a set of recursive functions, without lambdas. This demonstrates the equivalence of programs written in lambda calculus and programs written as functions. However it does not demonstrate the soundness of lambda calculus for deduction, as the *eta reduction* used in lambda lifting is the step that introduces cardinality problems into the lambda calculus, because it removes the value from the variable, without first checking that there is only one value that satisfies the conditions on the variable (see Curry's paradox).

Lambda lifting is a costly code transformation: an efficient implementation of lambda lifting can be done in no less then `O(n²)` time complexity.

In the untyped lambda calculus, where the basic types are functions, lifting may change the result of beta reduction of a lambda expression. The resulting functions will have the same meaning, in a mathematical sense, but are not regarded as the same function in the untyped lambda calculus.

The reverse operation to lambda lifting is **lambda dropping**. Lambda dropping may make the compilation of programs quicker for the compiler, and may also increase the efficiency of the resulting program, by reducing the number of parameters, and reducing the size of stack frames. However it makes a function harder to re-use as the dropped function is tied to its context.

1. Algorithm
2. Example
3. Lambda lifting versus closures
4. Let expressions and lambda calculus
5. Lambda lifting in lambda calculus
  5.1 Lambda lift
    5.1.1 Anonymous lift
      5.1.1.1 Constructing the call
    5.1.2 Named lift
  5.2 Lambda-lift transformation
    5.2.1 Choosing the expression for lifting
      5.2.1.1 Choosing anonymous functions only for lifting
      5.2.1.2 Choosing named and anonymous functions for lifting
  5.3 Examples
  5.4 Execution
6. Lambda dropping in lambda calculus
  6.1 Lambda drop
  6.2 Lambda drop transformation
  6.3 Abstraction sinking
    6.3.1 Example
  6.4 Parameter dropping
    6.4.1 Build parameter lists
      6.4.1.1 Examples
    6.4.2 Drop parameters
    6.4.2.1 Drop formal parameters
  6.5 Example


## Algorithm

The following algorithm describes how to perform a lambda lifting in a PL that lacks the first-class support for closures:

1. Rename the functions so that each function has a unique name.
2. Declare an additional formal paramater for each free variable found in the lambda's body. Modify all the call sites to also pass in as many additional arguments as there was free variables; each arg *is* the value of the corresponding free variable.
3. Replace every local function definition that has no free variables with an identical global function.
4. Repeat steps 2 and 3 until all free variables and local functions are eliminated.

If the language has closures as first-class objects that can be passed as arguments or returned from other functions, the closure will need to be represented by a data structure that captures the bindings of the free variables.


## Let expressions and lambda calculus

The let-expressions are useful in describing lambda lifting and dropping, and in describing the relationship between recursive equations and lambda expressions.

The `let` expression used here is the `let rec` variant, a recursive version of `let` as implemented by Haskell.

Let expressions are related to Lambda calculus.

Lambda calculus has a simple syntax and semantics, and is good for describing Lambda lifting.

It is convenient to describe lambda lifting as a translations from lambda to a let expression, and lambda dropping as the reverse.

This is because let expressions allow mutual recursion, which is, in a sense, more lifted than is supported in lambda calculus.

Lambda calculus does not support mutual recursion and only one function may be defined at the outermost global scope.


Conversion rules which describe translation without lifting:
https://en.wikipedia.org/wiki/Let_expression#Rules_for_conversion_between_lambda_calculus_and_let_expressions


The following rules describe the equivalence of lambda and let expressions,


https://en.wikipedia.org/wiki/Category:Lambda_calculus
