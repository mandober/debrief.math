# LC informal description

- Lambda Calculus (LC) is a prototype of functional languages
- there is nothing but functions in LC
- there is only function abstraction and function application

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
- lambda functions (lambdas) are anonymous functions
- lambda functions are unary (they accept a single argument at the time)
- lambdas are never syntactically nullary, but may be semantically (by discarding a declared parameter) 
- the body of a lambda is an, implicitly returned, expression 


- an argument to a lambda function is a function
- a lambda function is applied to a (functional) argument
- application may trigger evaluation process
- evaluation may "return" ("yield") a new lambda expression


abstraction: $$\lambda f.ff$$

application: $$(\lambda f.ff)(\lambda f.ff)$$
