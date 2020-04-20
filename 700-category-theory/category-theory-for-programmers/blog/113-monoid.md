# Monoid

A monoid is a set together with a binary operation that obeys the axioms of:
- identity
- associativity
- totality (closure)

There has to be a carrier set (usually a number set) considered together with a single binary operation. When combining two elements of the set, the operation must produce a result that is also an element of the set.

Also, there must be a special neutral or identity element, that behaves like a unit under the operation:

`Id • 𝑎 = 𝑎 = 𝑎 • Id`

Finally, the operation must be associative, i.e. it must hold that:

`(𝑎 • 𝑏) • 𝑐 = 𝑎 • (𝑏 • 𝑐)`

For example, integers form a monoid under addition and multiplication. Strings also form a monoid under concatenation with the empty string as the identity.

Monoids are ubiquitous in programming, showing up as strings, lists, foldable data structures, futures, events, etc.


## Monoid in Haskell

Monoid is defined as a type class in Haskell, with identity element called `mempty` and a binary operation called `mappend`.

```hs
class Monoid m where
  mempty :: m
  mappend :: m -> m -> m

instance Monoid String where
  mempty = ""
  mappend = (++)
```

However, Haskell doesn't provide any way to enforce the monoidal axioms of identity for `mempty` and associativity for `mappend`. It is programer's responsibility to uphold these laws.

Haskell lets you express *equality of functions*, e.g. `mappend = (++)`. This translates into equality of morphisms in the category Hask. Such equations are not only more succinct, but can often be generalized to other categories. 

Conceptually, it is different than expressing the equality of values produced by functions, e.g. `mappend s1 s2 = (++) s1 s2`, which is called *extensional equality* and states the fact that for any two inputs, the outputs of `mappend` and `(++)` are equal.

Stating the equality of functions without specifying the arguments is
called a *point-free equality*. When the arguments are present, it is called *point-wise equality*.


## Monoid as Category

In category theory we can't directly refer to the elements of a set, but instead must focus on objects and morphisms. So, we can think about the effects a binary operator makes as "moving" or "shifting" things around the set.

For any number 𝑛 there is a function `add_𝑛`, an "adder" function. For example, considering the set of natural numbers and the operations of `add_3` and `add_5`, we see that the composition of adders is equivalent to the rules of addition, so we can replace addition with function composition. The adder for the neutral element, `add_0` doesn't move things around, so this is the identity function in the set of natural numbers. The composition of adders is associative, because the composition of functions is associative.

Instead of addition rules, one could be given rules for functional composition of adder functions without any loss of information.

The mapping from integers to adder functions follows from the signature for mappend:

```hs
class Monoid m where
  mappend :: m -> m -> m
  -- i.e.
  mappend :: m -> (m -> m)
```

which states that `mappend` maps an element of a monoid set, `m` (where `m` is forced to be a monoid by the constraint `Monoid m`), to a function over that set, `(m -> m)`.

We can regard the set of natural numbers (and any other) just as a single object, in fact, just as a dot with a bunch of morphisms (where the adder functions are morphisms).

A monoid is a category with a single object.

Every monoid can be described as a single object category with a set of morphisms that obeys rules of composition.


Every categorical monoid (a one-object category) defines a unique monoid (a set with a binary operator). We can always extract a set from a single-object category - the set of morphisms.

In other words, we have the hom-set `𝐌(𝑚, 𝑚)` of a single object `𝑚` in the category `𝐌`. We can easily define a binary operator in this set: the monoidal product of two set elements is the element corresponding to the composition of the corresponding morphisms.

If you give me two elements of `𝐌(𝑚, 𝑚)` corresponding to `𝑓` and `𝑔`, their product will correspond to the composition `𝑓 ∘ 𝑔`. The composition always exists, because the source and target for these morphisms is the same object. And it's associative by the rules of category. The identity morphism is the neutral element of this product. So we can *always recover a set monoid from a category monoid*. For all intents and purposes they are one and the same.

However, morphisms don't have to form a set; in the world of categories there are things larger than sets.

**Locally small category** is a category in which morphisms between any two objects form a set. 

A lot of interesting phenomena in category theory have their roots in the fact that elements of a hom-set can be seen both as morphisms (which follow the rules of composition) and as points in a set; here, composition of morphisms in `𝐌` category translates into monoidal product in the set `𝐌(𝑚, 𝑚)`.
