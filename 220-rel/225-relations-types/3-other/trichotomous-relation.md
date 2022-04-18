# Trichotomous relation

https://en.wikipedia.org/wiki/Trichotomy_(mathematics)

A binary relation `R` on a set `X` is trichotomous if for all `x` and `y` in `X`, exactly one of these holds: `xRy`, `yRx`, `x  =  y`.

Stated in FOL as: `∀x,y ∈ X (xRy ⊕ yRx ⊕ x = y)`

Properties
* A relation is trichotomous iff it is asymmetric and connected.
* If a trichotomous relation is also transitive, then it is a strict total order; this is a special case of a strict weak order.

## Examples

On the set `X = {a,b,c}`, the relation `R = { (a,b), (b,c), (a,c) }` is transitive and trichotomous, and hence a strict total order.

On the same set `X`, the cyclic relation `R = { (a,b), (b,c), (c,a) }` is trichotomous, but not transitive - it is even antitransitive.


## Trichotomy on numbers

A law of trichotomy on some set `X` of numbers usually expresses that some tacitly given ordering relation on `X` is trichotomous.

An example is the law "for arbitrary real numbers `x` and `y`, exactly one of `x < y`, `y < x`, `x = y` applies". Some authors even fix `y` to be 0, relying on the real number's additive linearly ordered group structure. The latter is a group equipped with a trichotomous order.

In classical logic, this axiom of trichotomy holds for ordinary comparison between real numbers and therefore also for comparisons between integers and between rational numbers. The law does not hold in general in intuitionistic logic.

In Zermelo-Fraenkel set theory and Bernays set theory, the law of trichotomy holds between the cardinal numbers of well-orderable sets even without the axiom of choice. If the axiom of choice holds, then trichotomy holds between arbitrary cardinal numbers (because they are all well-orderable in that case).


## In FOL

```js
// in FOL without XOR
∀x,y ∈ X ( [ xRy ⋀ ¬yRx ⋀ x ≠ y ] 
         ⋁ [¬xRy ⋀  yRx ⋀ x ≠ y ] 
         ⋁ [¬xRy ⋀ ¬yRx ⋀ x = y ] )

// in FOL with XOR
∀x,y ∈ X (xRy ⊕ ¬xRy ⊕ x = y)

// Writing `R` as `<`, this can also be stated in FOL as
∀x,y ∈ X ( [  (x < y) ⋀ ¬(y < x) ⋀ ¬(x = y) ]
         ⋁ [ ¬(x < y) ⋀  (y < x) ⋀ ¬(x = y) ]
         ⋁ [ ¬(x < y) ⋀ ¬(y < x) ⋀  (x = y) ] )
```


1 ⊕ 1 = 0
1 ⊕ 0 = 1

 1 ⊕ 1  ⊕ 1 =
(1 ⊕ 1) ⊕ 1 =
   0     ⊕ 1 = 1

 1 ⊕ 1  ⊕ 0 =
(1 ⊕ 1) ⊕ 0 =
   0     ⊕ 0 = 0

 1 ⊕ 0  ⊕ 1 =
(1 ⊕ 0) ⊕ 1 =
   1     ⊕ 1 = 0
