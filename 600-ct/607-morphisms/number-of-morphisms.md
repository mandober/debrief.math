# Number of morphisms in Set

- `𝟘`, the empty set, ∅, uninhabited type, `Void`
- `𝟙`, a singleton set, `()`, unit
- `𝟚`, 2-element set
- `a`, any set (type)

The number of distinct unary functions between two sets `a` and `b`, i.e. `a -> b`, is `aᵇ`.

In Set Theory, we can see the structure of sets, i.e. we can examine their elements. In Category Theory, in the category `Set`, sets are opaque objects, and since we cannot examine their structure they are represented by points. Functions between sets are arrows in `Set`, and it is only thanks to them that we can infer things about the structure of these opaque objects.

```js
|𝟘 -> 𝟘| = 0⁰ = 1
|𝟘 -> 𝟙| = 1⁰ = 1
|𝟘 -> 𝟚| = 2⁰ = 1
|𝟘 -> a| = a⁰ = 1 ✱
|𝟙 -> 𝟘| = 0¹ = 0
|𝟚 -> 𝟘| = 0² = 0
|a -> 𝟘| = 0ᵃ = 0 ✱
```

In Haskell

```hs
f¹ : Void -> Void -- 0⁰ = 1
Void -> a    -- a⁰ = 1
a    -> Void -- 0ᵃ = 0
```



In Category Theory, an arrow `a -> b`, between the objects `a` and `b`, corresponds to an exponential object `aᵇ`.
