# 5. Products and Coproducts

## 5.1 Initial Object

Terminal and initial objects
https://youtu.be/zer1aFgj4aU?list=PLbgaMIhjbmEnaH_LTkxLI7FMa2HsnawM_

* The simplest shape is a single object. Obviously, there are as many instances of this shape as there are objects in a given category. That's a lot to choose from. We need a ranking to help us find the object that tops this hierarchy.

* The only means at our disposal are morphisms. If you think of morphisms as arrows, then it's possible that there is an overall net flow of arrows from one end of the category to another. This is true in ordered categories, for instance in partial orders.

* We could generalize that notion of object precedence by saying that object 𝑎 is "more initial" than object 𝑏, if there is an arrow from 𝑎 to 𝑏.

* if `𝑎 ---> 𝑏` then 𝑎 is "more initial" than 𝑏

* We then define the initial object as the one that has arrows going to all other objects.

* Such an object may not exists, but a bigger problem is that there may be too many of them. The solution is to take a hint from *ordered categories* — they allow at most one arrow between any two objects (as there is only one way of being LT or EQ another object).

> **The initial object** is the object that has precisely one arrow going to any object in the category. It is unique, up to isomorphism.

* However, even that doesn't guarantee the uniqueness of the initial object (if one exists). But it guarantees the next best thing: *uniqueness up to isomorphism*.

* The initial object in the *category of posets* is the least element of a poset. Some posets don't have an initial object, like ℤ with < rel as arrows. In the *category of sets and functions*, the initial object is the empty set.

* Haskell's `Void` type corresponds to an empty set, and the unique polymorphic function from `Void` to any other type is `absurd :: Void -> a`. It is this family of morphisms that makes `Void` the initial object in the *category of types*.

```hs
absurd :: Void -> a
```

* The absurd function corresponds to the logical priniciple "ex falsum quidlibet". `Void` is falsum, so anything (`a`) can follow from it.
