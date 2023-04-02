# Parametric polymorphism

Parametric polymorphism allows a single piece of code to be given a generic type, using type variables in place of concrete types, and then instantiated with particular types as needed.

Parametrically polymorphic functions and data types are sometimes called generic, and they form the basis of generic programming.

Parametrically polymorphic definitions are uniform - they behave identically regardless of the type they are instantiated at.

There are functions that don't depend on the types of their arguments. One such function is the identity, `id x = x`, that just returns its arg unmodified. Its type says that, given any type, `a`, it will return that same type, `a`.

```hs
id :: forall a. a -> a
id x = x
```

So, the identity function is a single expression that than gives rise to a family of potential types, like `Int → Int`, `Bool → Bool`, `String → String`, etc., where the type variable `a` is instantiated at different *monotypes*, i.e. `Int`, `Bool`, `String` in these examples. In fact, these 3 monotypes (`Int`, `Bool`, `String`) are basic (ground) types - the types (type constants) of the primitive values provided by a language - expressions in a language are evaluated to values of such base types.

Type constants
Base types are usually denoted by `τ`



Parametric polymorphism allows {\displaystyle {\mathsf {id}}}id to be given a single, most general type by introducing a universally quantified type variable:

{\displaystyle {\mathsf {id}}:\forall \alpha .\alpha \to \alpha }id:∀α.α→α
