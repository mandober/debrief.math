# Product type

Given types `A, B : U`, we introduce the type `A × B : U`, which we call their *cartesian product*.

We also introduce a nullary product type, called the *unit* type `1 : U`.

We intend the elements of `A × B` to be pairs `(a, b) : A × B`, where `a : A` and `b : B`, and the only element of `1` to be some particular object `⋆ : 1`.

However, unlike in set theory, where we define ordered pairs to be particular sets and then collect them all together into the cartesian product, in type theory, ordered pairs are a primitive concept, as are functions.

There is a general pattern for introducing a new type in type theory:
- formation rules
- introduction rules
- elimination rules
- computation rules
- uniqueness principle (optional)

Introduction rules define how to construct elements of that type. These are the type's constructors. Elimination rules define how to use elements of that type. Computation rules expresses how an eliminator acts on a constructor. Optional uniqueness principle expresses uniqueness of maps into or out of the type.

For some types, *the uniqueness principle* characterizes maps into the type, by stating that every element of the type is uniquely determined by the results of applying eliminators to it, and can be reconstructed from those results by applying a constructor - thus expressing how constructors act on eliminators, dually to the computation rule.

For example, for functions, the uniqueness principle says that any function `f` is judgmentally equal to the "expanded" function `λx.f x`, and thus is uniquely determined by its values.

For other types, the uniqueness principle says that every map from that type is uniquely determined by some data. An example is the coproduct type.

When the uniqueness principle is not taken as a rule of judgmental equality, it is often nevertheless provable as a propositional equality from the other rules for the type. In this case we call it a *propositional uniqueness principle*. In later chapters we will also encounter propositional computation rules.
