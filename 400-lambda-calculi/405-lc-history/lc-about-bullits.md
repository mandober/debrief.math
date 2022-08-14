# Lambda Calculus: Descriptions

* What is usually called λ-calculus is a collection of several formal systems, based on a notation invented by Alonzo Church in the 1930s. These systems are designed to describe the most basic ways functions are combined to form other operators.
* λ-calculus is a collection of systems formalizing the notion of function, trough function abstraction and function composition. They can be seen as programming languages and as formal logics at the same time.

The original **lambda calculus** was invented by Alonzo Church in the 1930's (Church, 1933).

Church's aim was to use lambda calculus as a foundation for a formal theory of mathematics, in order to establish which functions are computable by means of an algorithm.

λ-calculus formalizes the basic aspects of mathematical functions, particularly their construction, application and evaluation.




* λ-calculus is a language of pure, mathematical, functions.
* λ-calculus is a formal language which facilitates the definition of the notion of computable functions.
* λ-calculus is a rewrite system with binders that formalises the notion of computable functions.
* λ-calculus is a formulation of the theory of reflexive functions that has deep connections to computational theory.
* λ-calculus is a formal system in which all computation is carried out exclusively by pure functions. Only two fundamental mechanisms exists: a way to define functions and a way to apply them (to other functions as args). Its importance arises from the fact that it can be viewed simultaneously as a simple programming language in which computations can be described, and as a mathematical object about which rigorous statements can be proved.

* Church's was motivated by the desire to create a calculus (informally, a calculus is a syntax for terms and a set of rewrite rules for transforming terms) that could capture the intuition about the behavior of functions. This approach was unaligned with the prevalent understanding of functions in terms of the set theory, as sets of ordered pairs (argument-value pairs), since Church intended to capture the computational aspects of functions (a calculus is a formal way to that end). Functions-as-sets is the extensional view of functions, while functions-as-computations is the intensional view of functions.
* Church's lambda calculus was the first suitable treatment of the computational aspects of functions. Its type-free nature yielded a particularly small and simple calculus, and it had one very interesting property, capturing functions in their fullest generality: functions could be applied to themselves. In most reasonable theories of functions as sets, this is impossible, since it requires the notion of a set containing itself, resulting in well-known paradoxes. This ability of self-application is what gives the lambda calculus its power, since it allows one to gain the effect of recursion without explicitly writing a recursive definition. Despite this powerful ability, the lambda calculus is consistent as a mathematical system - no contradictions or paradoxes arise [?] [well,whatabout…].
