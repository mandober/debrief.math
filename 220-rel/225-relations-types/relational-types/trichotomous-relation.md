# Trichotomous relation

https://en.wikipedia.org/wiki/Trichotomy_(mathematics)

*The law of trichotomy* states that every real number is either positive, negative, or zero.

More generally, a binary relation `R` on a set `X` is **trichotomous** if for all `x` and `y` in `X`, exactly one of `xRy`, `yRx` and `x = y` holds. (either X is R-related to y, or vice versa, or x is equal to y).

`∀ab ∈ A. aRb ⊕ bRa ⊕ a=b`

Writing `R` as `<`, this is stated in formal logic as:

```js
∀xy ∈ X.
[ ¬(x < y)  ⋀   (y < x)  ⋀   (x = y) ] ⋁
[  (x < y)  ⋀  ¬(y < x)  ⋀   (x = y) ] ⋁
[  (x < y)  ⋀   (y < x)  ⋀  ¬(x = y) ]
```

Properties
- A relation is trichotomous iff it is asymmetric and connected.
- if a trichotomous relation is also transitive, then it is a *strict total order*; this is a special case of a strict weak order.

Examples
* `X = {a,b,c}`, the relation `R = { (a,b), (a,c), (b,c) }` is transitive and trichotomous, and hence a **strict total order**.

* `X = {a,b,c}`, the relation `R = { (a,b), (b,c), (c,a) }` is a **cyclic relation**; it is trichotomous and antitransitive.

## Trichotomy on numbers

A law of trichotomy on some set `X` of numbers usually expresses that some tacitly given ordering relation on `X` is a trichotomous one.

An example is the law "for arbitrary real numbers `x` and `y`, exactly one of `x < y`, `y < x`, or `x = y` applies"; some authors even fix `y` to be 0, relying on the real number's additive linearly ordered group structure. The latter is a group equipped with a trichotomous order.

In classical logic, *this axiom of trichotomy* holds for ordinary comparison between real numbers and therefore also for comparisons between integers and between rational numbers. The law doesn't hold in general in intuitionistic logic.

In Zermelo-Fraenkel set theory and *Bernays set theory*, the law of trichotomy holds between the cardinal numbers of *well-orderable sets* even without the axiom of choice. If the axiom of choice holds, then trichotomy holds between arbitrary cardinal numbers (because they are all well-orderable in that case).
