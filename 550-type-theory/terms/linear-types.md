# Linear types

* Linear types introduce the new "lollipop" arrow, `⊸` (latex: `\multimap`)


```js
Syntax          Meaning

F := F ⨂ F      α and β hold simultaneously, α ⊗ β
   | 1          nothing holds
   | F & F      α and β hold but not necessarily simultaneously, α & β
   | ⊤          tautology
   | F ⨁ F      α and β hold, α ⊕ β
   | 0          absurdity
   | F ⊸ F      if α holds then β holds, α ⊸ β
   | !F         α holds arbitrarily often, !α
```


## Linear Haskell

Informally, a function is *linear* if it consumes its argument *exactly once*. It is *affine* if it consumes it *at most once*. A linear type system gives a static guarantee that a claimed linear function really is linear. Whether a function f is linear or not is called the *multiplicity* of f.

* It seems Haskell will use this arrow instead: `#->` and the `LinearTypes` language pragma.

There are many motivations for linear type systems, including these:
* It is safe to update a linear value in-place provided there are no aliases to it. Linearity supports a more efficient implementation, by O(1) update rather than O(n) copying.
* Linear types help us obey the use protocol of an external resource. For example, an open file should be closed, and should not be used after; a socket should be opened, then bound, and only then used for reading; allocated memory block should be freed, and should not be used after. Here, linearity does not affect efficiency, but rather eliminates many bugs.

The exact meaning of the fact that a linear function consumes its argument exactly once is given by the linear arrow: `f :: s ⊸ t`, which guarantees that if (`f u`) is consumed exactly once, then the argument `u` is consumed exactly once.

The meaning of "to consume a value exactly once" is based on the type of the value concerned:

Definition: **Consume exactly once**
* To consume a value of atomic base type (like Int or Ptr) exactly once, just evaluate it.
* To consume a function value exactly once, apply it to one argument, and consume its result exactly once.
* To consume a pair exactly once, pattern-match on it, and consume each component exactly once.
* In general, to consume a value of an algebraic datatype exactly once, pattern-match on it, and consume all its linear components exactly once.

Note that a *linear arrow* specifies how the function uses its argument; it does not restrict the arguments to which the function can be applied. In particular, a linear function cannot assume that it is given the unique pointer to its argument.

For example, if `f :: s ⊸ t`, then this is fine:

```hs
{-# LANGUAGE LinearHaskell #-}


f :: s ⊸ t

g :: s -> t
g x = f x
```

The type of g makes no particular guarantees about the way in which it uses x; in particular, `g` can pass that argument to `f`.
