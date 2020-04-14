# 5. Products and Coproducts

The only way to reference a particular object in a category is through the relations it forms with other objects, even with itself. And these relations are defined by morphisms.

In category theory, the **universal construction** is a common construction technic to reference an object in terms of its relations. It means searching for a particular pattern (a shape made of objects and morphisms) then ranking the candidate objects according to a scheme into a hierarchy.


## Initial Object

The notion of **object precedence** qualifies object `a` as being *"more initial"* than object `b` if there is an arrow going from `a` to `b`.

**Initial object** is an object without incoming arrows, there are only outgoing arrows. There may be more than one initial object or it might not exist at all.


```
       🍊
       ↑
🍓 ←- 🌟 -→ 🍒
       ↓
      🍈
```

**Ordered categories** allow at most one arrow between any two objects (because there's only one way of being "less then" another object). However, even this doesn't guarantee the uniqueness of the initial object (if one even exists), but it does guarantee *uniqueness up to isomorphism*.

The initial object in the category of posets is the least element of a partially ordered set. Some posets don't have an initial object, like the set of all integers with LE relation for morphisms.

In the *category of sets and functions*, the initial object is the empty set.

Haskell's `Void` type  corresponds to an empty set, and the unique polymorphic function from `Void` to any other type is `absurd :: Void -> a`. It is this family of morphisms that makes `Void` the initial object in the *category of types*.


## Terminal Object

 object 𝑎 is “more terminal” than object 𝑏 if there is a morphism going from 𝑏 to 𝑎
 
**The terminal object** in a category is the one with precisely one incoming morphism.
