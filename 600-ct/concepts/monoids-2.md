# Monoid

https://en.wikipedia.org/wiki/Monad_(category_theory)
https://en.wikipedia.org/wiki/Monoid_(category_theory)
https://en.wikipedia.org/wiki/Monoidal_category


Monoids are data types that can be instantiated empty and be combined together without losing any information.
- "instantiated empty" = they have identity element
- "combined" = they have a binary operation that must be associative
- "without losing any information" = they are closed under the binary operation

A common example is `forall a. [a]` where `mempty = []` and `mappend = (++)`.

```hs
class Monoid m where
    mempty  :: m
    mappend :: m -> m -> m
```

We can think of the application of the binary operator as moving or shifting things around the set. For instance, a function defined on the set of natural numbers may be `(+ 5)` which adds 5 to any n ∈ ℕ. There is such a function for any m ∈ ℕ, `(+ m)`. So addition, `5 + 7`, may be defined as function composition, `(+ 5) . (+ 7)` applied to the identity element, here 0.

The mapping from integers to adders follows from the second interpretation of the type signature of `mappend :: m -> (m -> m)`, which tells us that `mappend` maps an element of a monoid set to a function acting on that set.

Every monoid can be described as a single object category with a set of morphisms that follow appropriate rules of composition.

You might ask the question whether every categorical monoid, a one-object category, defines a unique set-with-binary-operator monoid. It turns out that we can always extract a set from a single-object category. This set is the set of morphisms - the adders in our example. In other words, we will have the hom-set `M(m, m)` of the single object `m` in the category `M`. We can easily define a binary operator in this set: The monoidal product of two set-elements is the element corresponding to the composition of the corresponding morphisms. If you give me two elements of `M(m, m)` corresponding to `f` and `g`, their product will correspond to the composition `g ∘ f`. The composition always exists, because the source and the target for these morphisms are the same object. The composition is associative by the rules of category. 

The identity morphism is the neutral element of this product. So we can always recover a *set monoid* from a *category monoid*. For all intents and purposes they are one and the same.
