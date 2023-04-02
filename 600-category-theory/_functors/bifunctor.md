# Bifunctor

https://en.wikipedia.org/wiki/Bifunctor

Bifunctor comes up naturally if we consider a type ctor with two type parameters, like a pair `(a,b)` and `Either a b` in Haskell.

Note: function type ctor, `a -> b`, is indeed a type ctor (`->`) with two type parameters (`a` and `b`), in fact its actual definition is `((->) a) b`, however, although a function type is a functor, it is so only in the second type argument, `b`, but not in the first type arg, `a`. 

In Haskell, a function type that is partially applied, i.e. `(->) a` (with its input arg fixed) can be an instance of `Functor`. So a function type is a functor in the first type arg, but it is not in the second. In the second type arg, it is a `contrafunctor` or `contravariant` (functor is also a called a `covariant`).


A pair is really a container, but it only has a single slot - the second component, while the first component is fixed in advance. That's why in Haskell the lenght of a pair is 1 (and not 2): `lenght (True, 1)`. By the same token, we could invert a pair and say that it's also functorial in the first argument.

Actually, a pair is functorial in both args at the same time. This would be a binary functor that takes two type args and produces a type. We must define such functor as a new type class in Haskell, but in CT, we don't have to inreoduce a new definition - we can define bifunctors in terms of functors, that is, as a functor that acts on a pair of categories. It takes one object from one cat and an object from another cat, and maps them to an object in the target cat that is their product.

We can define a product of two categories, then a factor from a product of two categories would be equivalent to a factor of two arguments, one from one category and one from theother category.
