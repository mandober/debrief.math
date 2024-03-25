## CT and Haskell

*Klesli arrows*, `a -> m b`, model such computation perfectly - they go from a type `a` to the embellished type `b`, denoted by `m b`, where various embellishments, `m`, stand for different computations. 

Monadic types `m` (types that have an instance of the `Monad` class) could be simple types like a list, when `m` is just the list type ctor, `[]`, so `m a` is actually `[] a` i.e. [a]. List monad is used to express indeterminism as lists are capable of returning multiple results from a computation.

The `Maybe` monad instantiates `m` with the `Maybe` type ctor to express fallable computations - computations that may succeed or fail (then `Nothing` represents failure). The `Either` monad is used similarly except is comes with the capability to report the reason of failure.

A pair type, where `m` is instantiated to `(,) a` (a pair is a functor in its second type argument) may serve as the `Writer` monad, which is used, e.g. to trace execution of functions by aggregating debugging messages from each function, besides threding the results (payload) around.

A function type, where `m` is instantiated to `(->) a` (functions are functors in the return type) is the `Reader` monad. The Reader monad is used to solve the problem of global variables as it enables reading from a fixed environment.

The `IO` monad is used for effectful computations (getting random numbers), input-otput (writing to the console, connecting to a DB). `IO` manages side-effects in that effectful computations are represented as descriptions so that, e.g. the action of writing a message to the console always returns the same description (parameterized by the message). The actual execution of these "action descriptions" is carried out outside of Haskell, outside the realm of pure functions (using the dirty RTS).
