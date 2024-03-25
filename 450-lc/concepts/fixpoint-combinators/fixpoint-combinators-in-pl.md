# Fixpoint combinators across PLs

## In LC

The famous Y combinator can only be expressed in untyped lambda calculus.

>Y := λf. (λx. f (x x)) (λx. f (x x))

**Self-application is not well-typed**, so the Y combinator cannot be expressed in typed lambda calculi.

Y := λf. (λx.f(xx)) (λx.f(xx))
             ↑          ↑
Despite these two subexp being the same, we cannot express the Y combo more succintly. `f` param in there is free, bound in the outermost lambda abstraction.

```
Y := λf. (λf. λx. f (x x))
         (λf. λx. f (x x))
     R := λf. λx. f (x x)

Y := λf. R R
```

...but there's no name binding in LC.



## In Haskell

Haskell is strongly typed language, so the Y combinator (or Z) cannot be implemented; self-application cannot be typed! Instead, we define the `fix` function which, in the end, achieves the same goal.

```hs
why :: (a -> a) -> a
why f = let x = f x in x

newtype Fix f = Fix { unFix :: f (Fix f) }
```

Haskell also has the `Fix` data type for type-level recursion. The `Fix` data ctor adds one layer of recursion, while the accesor function `unFix`, peels one layer off.


## In JS

```js
const Y = f => (x => f(x(x)))(x => f(x(x)))
```

## In Ruby

Ruby has applicative order semnatics, so the Y combinator cannot be implemented directly as the inner computation `f (x x)` would diverge, so we must delay it by introducing thunks. The resulting combinator is called the *Z fixpoint combinator*, and it is used in strict PLs.

```rb
# Y-combinator
y = ->(f) {
    ->(x) { f.(x.(x)) }.(
    ->(x) { f.(x.(x)) } )
}

# Z-combinator
z = ->(f) {
    ->(x) { f.(->(v) { x.(x).(v) }) }.(
    ->(x) { f.(->(v) { x.(x).(v) }) } )
}
```
