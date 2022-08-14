# 5. Products and Coproducts

Terminal and initial objects
https://youtu.be/zer1aFgj4aU?list=PLbgaMIhjbmEnaH_LTkxLI7FMa2HsnawM_

## 5.2 Terminal Object

* Let's continue with the single-object pattern, but let’s change the way we rank the objects. Now, an object 𝑎 is "more terminal" than object 𝑏 if there is a morphism going from 𝑏 to 𝑎.

* if 𝑏 ---> 𝑎 then 𝑎 is "more terminal" than 𝑏

> **The terminal object** in a category is one with precisely one incoming morphism. It is unique, up to isomorphism.

* In a poset, the terminal object, if it exists, is the biggest object. In the category of sets, the terminal object is a singleton.

* Singleton set corresponds to the unit type, `()`, in Haskell and there is only one pure function from any type to the unit type, so all conditions for the terminal object are satisfied.

```hs
unit :: a -> ()
unit _ = ()
```
