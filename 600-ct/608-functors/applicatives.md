# Applicatives

## Applicative functors

Applicatives are applicative functors. A functor lifts a function `a -> b` into a function on a structure (container), `f a -> f b`. An applicative functor is a functor that is preserving the co-called *closed structure*, meaining it preserves function type. Functors map one category into another, and endofunctors map a category back to itself. In Hask category, all functors are endofunctors. The structure there is the structure of function types. An applicative functor takes a function type in one category and maps it into a function type in another category, via the "apply" operator `<*>`:

```hs
pure  :: Functor f => a -> f a
(<*>) :: Functor f => f (a -> b) -> (f a -> f b)
```

A functor lifts a fn `a -> b` into a function on a structure, `f a -> f b`. An applicative lifts a functorful o' functions `f (a -> b)` into a function on a structure, `f a -> f b`.

If `<*>` were to strictly preserve structure, it'd be `f (a → b) <=> (f a → f b)`, i.e. `f (a -> b)` ≅ `(f a -> f b)` would be isomorphic. But `<*>` does not so it is a *lax functor*, and a *lax monoidal functor*.

see: [LMF](./monoidal-functors.md)
