# Terminal Object

* `A -> B -> C -> D` (id and transitive arrows elided)
* `A -> B` => object `A` is *more initial* than object `B`
* `C -> D` => object `D` is *more terminal* than object `C`

If we now reverse the principle for ranking objects (from the one we used to rank initial objects) and say that an object `D` is *"more terminal"* than an object `C` if there is an arrow `C -> D`.

> **The terminal object** is the object with one and only one morphism coming to it from any object in the category. The terminal object is unique, up to isomorphism.

Examples
- In a poset, the terminal object (if it exists) is the largest object.
- In the category of sets, the terminal object is a singleton.
- In the Hask category, unit type is the terminal object as there is one and only one pure function from any type to the unit type, so all the conditions for the terminal object are satisfied.

```hs
unit :: a -> ()
unit _ = ()
```
