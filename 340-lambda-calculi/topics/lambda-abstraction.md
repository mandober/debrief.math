# Lambda abstraction

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

# Lambda abstractions

One of the three lambda terms are abstractions. Abstractions are in fact functions, albeit anonymous and unary. Since LC only have functions, abstractions are forms with numerous different syntactic roles. They are also the forms with some semantic meaning attached.

Abstractions have many roles in LC: an abstraction can play the active role when it is used as a function and applied to another lambda term; an abstraction can also play the passive role when it is an argument passed to a function; also, since LC has no other entities,abstractions are used to represent language datatypes.

A single abstraction is a function when it is in an active position, in which case it is juxtaposed to another abstraction that plays the role of an arg; but each abstraction also represents some concrete datatype: an abstraction may stand for a Boolean value, or for a natural number, o for many other things. Usually, the final reduction will be a single lambda term that is an abstraction representing one of these datatypes.
