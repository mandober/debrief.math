# Church Booleans

In PLs, Boolean type is inhabited with 2 values, True and False. These two values are nothing special; True doesnot correspond to some higher notion of truth. True and False serve only as branching factors for conditional operators. A language construct like `if-then-else` takes a Boolean and depending on its evaluation branches out; that is, if it evaluates to True, the execution takes the first code path ("then" path); if it's False, the second path is taken ("else" path). In that way, a Boolean is just a path selector which we can easily encode in lambda calculus.

There are two approaches, but the Church encoding uses these definitions:
- T, True  := λab.a
- F, False := λab.b

`True` is represented by a binary function which takes two args, it ignores the second and always returns the first arg. Because of this, this lambda abstraction is also called the constant, and its "bird" name is Kestrel. In combinatory logic, this is one of the two operators, viz. K (the other is S).

The `True` functions, that is, its corresponding lambda abstraction `λab.a` has a dual role as it is both a constant and a function: it acts as the True (logical) constant (Boolean value), and it acts as a selector function that always returns the first arg.

T T F =
T         T         F =
(λa.λb.a) (λa.λb.a) (λa.λb.b) =

since Tαβ = α, TTF = T

(λa.λb.a) (λa.a) =
(λb.a) α =
(λa.a)





https://en.wikipedia.org/wiki/Primitive_recursive_function
https://en.wikipedia.org/wiki/Monus#Natural_numbers
https://en.wikipedia.org/wiki/Peano_axioms
https://en.wikipedia.org/wiki/Successor_function
https://en.wikipedia.org/wiki/Hyperoperation
https://en.wikipedia.org/wiki/Course-of-values_recursion
https://en.wikipedia.org/wiki/Mutual_recursion
https://en.wikipedia.org/wiki/LOOP_(programming_language)
https://en.wikipedia.org/wiki/Double_recursion
https://en.wikipedia.org/wiki/General_recursive_function
https://en.wikipedia.org/wiki/Church%E2%80%93Turing_thesis
https://en.wikipedia.org/wiki/Lambda_calculus#Encoding_datatypes
