# Hom functors

## Hom functors

Set theory is the assembly language of mathematics. Category theory tries to step away from set theory, to some extent. For instance, it's a known fact that the set of all sets doesn't exist, but the category of all sets, `Set`, does. On the other hand, we assume that morphisms between any two objects in a category form a set. We even called it a *hom-set*.

All the information about sets can be encoded in functions between them - especially the invertible ones called *isomorphisms*. For all intents and purposes isomorphic sets are identical.

The important lesson about sets is that it's okay to compare sets of unlike elements. For instance, we can say that a given set of natural transformations is isomorphic to some set of morphisms, because a set is just a set.

Isomorphism in this case just means that for every natural transformation from one set there is a unique morphism from the other set and vice versa. They can be paired against each other. You can't compare apples with oranges, if they are objects from different categories, but you can compare sets of apples against sets of oranges.

Often transforming a categorical problem into a set-theoretical problem gives us the necessary insight or even lets us prove valuable theorems.

## Hom functor `Hom(a, -)`

Every category comes equipped with a canonical family of mappings to `Set`. Those mappings are in fact functors, so they preserve the structure of the category. To see this, let's build such a functor.

The main premise of CT is that objects are defined in terms of their relations. So an object `a` in a category C is defined in terms of the totality of arrows going out from it (but also, in terms of the totality of arrows coming into it).

~~A/N: Does it take both totalities to completely determine/define the object `a` or is one totality enough? If both totalities are required, then what does any one totality signify? Bartosz continues with the first totality and considers all the arrows eminating from `a`.~~

We fix an object `a` in `C` and pick another object, `x`, also in `C`. The collection of arrows from `a` to `x` is called a *hom-set* and denoted `C(a, x)`; but since it is a set, it is thus an object in `Set`; which is a category distinct from the current one, `C` - so these are *extrnal hom-sets* (the hom-sets of category `C` are objects in another category, `Set`).

The hom-set `C(a, x)` is just one hom-set - to completely determine object `a` we need to consider the totality of morphisms going out of `a` - thus, we need to vary the target object. When the target object, `x`, varies while `a` stays fixed, the hom-set `C(a, x)` also varies (as an object) of `Set`.

We now have a mapping from `x` to `Set`.

~~A/N: Did he mean a mapping from `a` to `Set`? Or, rather a mapping from C to Set? No, he definitely meant a mapping from `x` to `Set`. Namely, we are exploring whether `C(a, -)` is a functor - if it is indeed a functor, evidently a functor from `C` to `Set`, then it should map objects of `C` to something in `Set`, and arrows of `C` to something in `Set`.~~

To stress the fact that we are considering the *hom-set as a mapping in its second argument*, we use the notation `C(a, -)`, where the dash serves as an argument placeholder.

    C(a, -)


~~A/N: In fact, we already observe that the functor `Hom(a, -)` maps an object `x` in `C` to an arrow `C(a, -)` in `Set`; but careful now, the `C(a, x)` is the image of the object `x` that the functor mapped to `Set`. The action of the functor `C(a, -) : C -> Set` on an object `x` in `C` produces an image in `Set`, which is an arrow `C(a, x)`. That is, the functor `C(a, -)` maps objects (in `C`) to arrows (in `Set`).~~

    Hom(a, -) : C -> Set

    Hom(a, -)(x) = Hom(a, x)

>So `Hom(a, x)` is the image of the object `x` that the functor `Hom(a, -)` mapped to `Set`. If the functor `Hom(a, -)` was denoted only by `H`, the image of `x` would be labeled `H x`.


We now see what this functor does to objects, but we also need to see what it does to arrows.

This mapping of objects is easily extended to the *mapping of morphisms*.

Take a morphism `f` in C between two arbitrary objects `x` and `y` in C.



    C(a, -) : C -> Set
    x,y ∈ Ob(C)
      C(a, -)(x) = C(a, x)
      C(a, -)(y) = C(a, y)
    f : x -> y
      C(a, -)(f) = C(a, f) = C(a, x) -> C(a, y)

The object `x` is mapped to the set `C(a, x)`, and the object `y` is mapped to the set `C(a, y)` (under the mapping we have just defined). But if this mapping is to be a functor, `f` must be mapped to a function between these two sets:

      C(a, -)(f) = C(a, f) = C(a, x) -> C(a, y)  ∈ Set

Let's define this function point-wise, i.e. for each argument separately. We should pick an arbitrary element[^¹] `h` in `C(a, x)` as an argument. So `h` is an arrow in the hom-set C(a, x), i.e. a -> x.

The object `C(a, x) ∈ Ob(Set)` is the image of the object `x` in C mapped by the functor `C(a, -) : C -> Set`.

    h : a -> x  ∈ Set(C(a, x))

Since the target of `h` matches the source of `f`, the composition `f ∘ h` is a morphism going from `a` to `y`.

    f ∘ h :: a -> y  ∈ Set(C(a, x), C(a, y))

Therefore, `f ∘ h` is a member of `C(a, y)`.

So, the functor maps arrows in C to arrows (functions) in Set by precomposing them with `f`.

We have just found our function from `C(a, x)` to `C(a, y)`, which can serve as the image of `f`. If there is no danger of confusion, we'll write this lifted function as: `C(a, f)`, and its action on a arrow `h` as: `C(a, f) h = f ∘ h`.


Since this construction works in any category, it must also work in Hask. In Haskell, the hom-functor is called the `Reader` functor:

```hs
-- Reader is just a function as a datatype
newtype Reader r a = Reader (r -> a)

instance Functor (Reader r) where
  fmap :: (a -> b) -> Reader r a -> Reader r b
  fmap f (Reader h) = Reader (f . h)
```

Mapping a function `h : r -> a` with a function `f : a -> b` amounts to precomposing it with `f`, i.e. `f ∘ h`; thereby shifting the codomain or the function value, from `a` to `b`; the value of the entire function could be identified with its return value (type), `r -> a ≈ a`, so we just map the return type `a` using `f` to get a `b`. Return type is the copacetic value of the whole function, so mapping it is the covariant thing to do. That is why mapping the input value is so contrary, it is a contravariant thing to do.

## Hom functor `Hom(-, a)`

Consider now what happens if, instead of fixing the source of the hom-set, we fix the target. We see that the mapping `C(-, a)` is also a functor, but a **contravariant functor**. While mapping of objects behaves the same, the mapping of morphisms in now reversed and amounts to the **postcomposition** with `f`, instad of the precomposition with `f` as was the case with `C(a, -)`.

We again consider the function type as the receiver for the functor instance, but since this is a *contravariant functor*, we need to adjust the function type by flipping its type variables in order to make it contravariant compliant - because we need a fucntion type that is a contravariant (functor) in the second type argument, i.e. in the input type. *Return type is fixed* to some type `a`, while *input type varies*, which corresponds exactly to `Hom(-, a)`.

```hs
newtype Op b a = Op (a -> b)

instance Contravariant (Op m) where
  contramap :: (b -> a) -> Op a -> Op b
  contramap f (Op h) = Op (h . f)
```

## Hom functor `Hom(-, =)`

Finally, if we let both objects vary, we get a **profunctor** `C(-, =)`, which is *contravariant* in the first argument (i.e. in the input type) and *covariant* in the second argument (i.e. in the return type).

To underline the fact that the two arguments may vary independently, we use the double dash (equals sign really) as the second placeholder.

    C(-, =)


Haskell has the `Profunctor` class, and the function type, `->`, is the natural candidate for its implementation; it is because the function type, `(->) a b`, is contravariant in the input type `a` and covariant in the return type `b`. Since both arguments are mapped, the receiver of the `Profunctor` class is just the *parameterless function type constructor*, `->`.

```hs
instance Profunctor (->) where
  dimap ab cd bc = cd . bc . ab
  lmap = flip (.)
  rmap = (.)
```

The important thing is that this observation holds in any category: the mapping of objects to hom-sets is *functorial*.

Also, since *contravariance* is equivalent to a mapping from the opposite category, we can state this fact by denoting the type as

    C(-, =) : Cᴼᴾ × C -> Set






## Refs

Bartosz video
https://www.youtube.com/watch?v=KaBz45nZEZw

Bartosz post
https://bartoszmilewski.com/2015/07/29/representable-functors/

https://ncatlab.org/nlab/show/hom-set

The Catsters video about representable functors
https://www.youtube.com/watch?v=4QgjKUzyrhM


---

[^¹]: There it is again with selecting the elements of objects which we know are sets. Just skipping over the mechanics of picking an arbitrary element in something that is an object. Ok, sure, it's an object that is really a set, but still, where is the selector? Is it the terminal object or what? When did we establish the fact that it exists in this category. Well, this category is `Set`, so, yeah. Hmm, ok, but I'm still uncomfortable with the whole "picking" part. I mean, how is the selector used? Can it be programmed? Is it used at all, does it take args, or does it spit out whatever? Or, worse yet, does it produce exactly what we want, somehow reading into our intents? "Want the identity element? Sure, there you go. Want a random element? No probs, here you go". These questions probably/hopefully have a sensible answer that I'll realize later, as more info comes to light, or as I gather further insight, but for now they keep accumulating and the selector keeps pissing me off.
