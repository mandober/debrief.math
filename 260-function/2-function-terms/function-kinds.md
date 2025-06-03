# Function Theory :: Functions :: Functions kinds


There are functions at term level that take and return values, functions at type level that take and return types. There are crossover functions: functions that take a term and return a type, and functions that take a type and return a term.
Sorts of functions (function sorts)
- term -> term
- type -> type
- term -> type
- type -> term

## Functions

The most general type of functions, `f :: a -> b`, can be interpreted as a promise of a value of type `b` given a value of type `a`. If we can supply an `a` we automatically get a `b`. In terms of consumers and producers, the input type `a` is consumed in order to produce the output type `b`.

Note, however, that there is no sensible function bearing this general signature as a standalone type as this would imply that we can coerce a value of one type into another type. There are many functions, however, conforming to this general signature but with the type params instantiated to concrete types, e.g. there are many functions from `Int` to `Int` or to `String` or to `[Int]`, etc., but no reasonable function can bear the signature `f :: forall a b. a -> b`.

On the other hand, the signature `f :: forall a. a -> a` is reasonable enough and there is at least one function that bears it, i.e. `id`. The reason for scarcity of concrete functions that have this signature is the polymorphism: the signature suggest too polymorphic types. Given an input type `a` (which remains an untouchable mistery), we must somehow produce another (any!) output type `a`.



In logic, function types correspond to implication, `a ⇒ b`, and lambdas correspond to implication introduction. If assuming a proposition `a`, we are able to conclude a `b`, then we are free to discharge the assumption `a` and use the implication `a ⇒ b`. This can be expressed symbolically in sequent calculus: from `a ⊢ b` (assuming `a` we conclude `b`), we can obtain `⊢ a ⇒ b` (by discharging the assumption `a` we are left with implication `a ⇒ b`).

In IPL (intuitionistic propositional logic), under the BHK interpretation, in order to prove `a ⇒ b`, the proof of `a` is converted to a proof of `b`. In IPL, negation is expressed in terms of implication as `¬a := a ⇒ ⊥`, i.e. a proposition is negated if its proof implies the proof of bottom (falsity, contradiction).

Many classes are defined with restriction that the type `b` is an instance of a particular class, a `Monoid` for example; in fact, function type is an instance of the `Monoid` class if `b` type is a `Monoid`.

Function types are also functors in the type parameter `b`, i.e. `((->) a)` is the target type ctor for the `Functor` class. Moreover, function type also belongs to the `Profunctor` class, which is similar to the `Bifunctor` class (which implies that both type params of a binary type ctor are bifunctors, for example a pair) except profunctors have the first arrow revered since the `a` type param in function types is in the contravariant position.

Function type is also an instance of the `Arrow` class since every function may be treated as a computation.
