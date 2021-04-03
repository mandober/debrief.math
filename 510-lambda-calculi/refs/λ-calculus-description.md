# About λ-calculus

λ-calculus
- is a formal system of mathematic logic
- formalization of mathematical, pure, functions
- invented in 1932 by Alonzo Church @Princeton
- is computationally equivalent to a Turing Machine
- Church-Turing thesis: effective calculations and equivalence between λc, TM and combinatory logic, later also, μ-recursive functions, rewrite systems, etc.


λ-calculus syntax
- the syntax consists of just 3 constructs
  1. variables          `x, y, z,...`
  2. λ-abstraction      `λx.M`
  3. application        `M N`

* Associativity, precedence, conventions
  - application has the highest precedence
  - applications associate to the left, `a b c d` is `((a b) c) d`
  - λ-abstractions associate to the right, `λa. λb. M` is `λa. (λb. M)`
  - by convention, multiple binders are merged, `λa.λb.b` becomes `λab.b`
  - use of parenthesis is reduced if λ-terms are unambiguous
  - `λa. λb. λc. λd. a b c d` is `λa. λb. λc. λd. a b c d`



λf. λx. (f (x x) (λh. λg. λy. (h y (g y)) (f (x x) y)))


- everything is achieved through function definitions and applications
- 
- all functions are anonymous and unary
- λ-abstraction refers to an anonymous function, i.e. function definition
- λ-application refers to applying a function to its argument
- λ-term refers to any of the 3 elementary syntactic elements
- λ-expression refers to any lambda expression


completely devoid of (pre-defined) objects
- There are only 2 basic rules: how to define and apply functions
- defining a new function is called *lambda abstraction*
- applying a function to an argument is called *lambda application*
- an argument can only be another function (only functions exist)
- functions are anonymous; external name binding is not available
- functions are unary; they must declare one formal parameter

Function Abstraction
- in PLs known as a function definition (or function declaration)
- like in many PL, a function definition consists of the header and the body
- the function's header may contain:
  - a mark (keyword or symbol) that a new function definition follows. Or, the form of a function definition is distinguishable enough from other language constructs to serve as its own introductory mark.
  - possible identifier of the function i.e. function's name
  - ordered list of formal parameters with their names and, possibly, types
  - the return type; the type of function's return value

  function part is a function's signature; it identifies a function by:
- lambda abstraction = function definition
- function application: function is not "called", it is applied to an argument
- lambda abstraction uses the greek letter lambda to introduce a new definition of a function (some nominal PL use keywords: `function`, `fn`, `func`, `fun`)
- lambda functions are unary (they accept a single argument at the time)

- lambdas are never syntactically nullary, but may be semantically (by discarding a declared parameter)

- the body of a lambda is an, implicitly returned, expression 

- application may trigger evaluation process
- evaluation may "return" ("yield") a new lambda expression
