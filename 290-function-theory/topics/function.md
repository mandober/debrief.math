# Function

https://en.wikipedia.org/wiki/Function_(mathematics)

A **function** (map, mapping, correspondence, transformation) is a binary relation between two sets that associates to each element of the first set exactly one element of the second set.

A function is a process (rule) that associates each element x of a set X (the domain of the function) to a single element y of a set Y (the codomain of the function), with the possibility that the domain and codomain are the same set.

Functions originally represented how a varying quantity depends on another quantity; e.g. the position of a planet is a function of time. The concept of a function was formalized at the end of the 19th century in terms of set theory.

A function is a relation that is right-unique and left-serial.

This relation is denoted by `f (x) = y`, where the element `x` is the input (argument) value to `f` and `y` is its output value; it is also said that `y` is the image of `x` by `f`, with `x` as the pre-image.

The input *argument, `M`, is bound by a function, `f`, by a corresponding *formal parameter*, `x`, which is its *declaration occurrence*, while all the places inside the function's body, where that parameter is used, are called its *application occurrences*.

                                       ┌ function application
┌ function  ┐                          │   to an
│declaration│                          │ ┌ argument
│           │                          │ │
f(x) = x + 2x                          f(5) = 5 + 2*5
│ │    │    │  parameter                 │    │     │
│ │    └────┴─ application        (x+2x)[5/x] │     │
│ │            occurrences               substitution 
│ │
│ └ parameter declaration occurrence
│
└ name of the function


A function, just like a relation, is uniquely represented by a set of ordered pairs, called the *graph of the function*, `f = { ∀x ∈ X. ∃y ∈ Y | (x, y) }`.

`∀x ∈ X. ∃y ∈ Y. (x, y) ∈ f ∧ y = f(x)`
