# Functions in mathematics vs Functions in programming

Functions in programming languages are different from 
mathematical functions.

Functions in mathematics, or mathematical functions, are different from functions as they are used in various programming languages in crucial ways:
- no side effects
- no nullary functions: functions always take arguments
- functions always return a value
- purity

There are no side effects in math; no terminal to print and read from, no file system to interacting with, no network. In fact, there isn't much of anything at all. A mind is required, pen and paper are preferable, and that's about it. These are the so-called minimal *romantic requirements*.

That math has no nullary functions is expected since those are only used for side effects. This is also the reason that functions always return a value; not returning a value is only useful for side effects. For example, a function that prints a string has no meaningful value to return, except maybe a Boolean to indicate whether the action was performed successfully or not. No use for that in math.

These characteristics segue into the notion of *mathematical or pure functions* in programming, which are functions free of side effects and thus pure.

A **pure function** is side-effect free function that always return the same value given the same argument. In math, all functions are pure, but in programming, particularly in functional programming languages, pure functions are preferred but hard to pull of. In fact, only a handful of languages have managed to so, most notably Haskell with the help of monads (concept from the mathematical field of category theory). Now, many languages used in theorem proving have followed Haskell's implementation. Haskell achieves this by separating pure from effectful computation. In fact, Haskell is a completely pure language - all the effectful dirt is delegated to the runtime system (which technically is not part of the language).
