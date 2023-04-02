# Primitive recursive operators

Msot authors leave out the combination operator (×), since it's definable in terms of projection and composition.

The PR operators are not recursive functions themselves; they're the building blocks of functions that are recursive; therefore the ρ-operator is always employed. Recursion is "primitive" in "primitive recursion" because it is expressed in terms of the primitive functions that are themselves obviously computable; they massage the terms into appropriate forms mostly by overusing the projection function.

The biggest problem with translating PRFs theory into a PL is that they are functions which take only a single arg which is a tuple. Now, if it is an 1-tuple a function apllication is denoted f(x), but if the tuple has more components, it is not f((x,y)) as it should be for a fn applied to a tuple, but just f(x,y). Also, tuples can have any arity with functions (like zero, or proj) adopting to the fluctuating arity on the fly, by picking a function's instance with approapriate arity (π² then π³).


More complex primitive recursive functions can be obtained by combining the 3 initial functions with the 2 combinators (composition and primitive recursion).

Sometimes a combination operator, `(⨯) f g x = (f x, g x)`, is also included).
