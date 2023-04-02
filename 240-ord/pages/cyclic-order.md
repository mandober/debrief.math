# Cyclic order

https://en.wikipedia.org/wiki/Cyclic_order

A **cyclic order** is a way to arrange a set of objects in a circle.

A cyclic order is an order in which triples of elements are either clockwise (cw) or counterclockwise (ccw).


Unlike most structures in order theory, a cyclic order is not modeled as a binary relation (we don't say that east is "more clockwise" than west). Rather, a cyclic order is defined as a *ternary relation* [a,b,c], meaning "a, then b, then c", e.g. [Jun,Oct,Feb], but not [Jun,Feb,Oct].

A ternary relation is called a *partial cyclic order* if it is
- transitive
- asymmetric
- cyclic

A ternary relation is called a *cyclic order* if it is
- transitive
- asymmetric
- cyclic
- connected

Properties
- Transitivity:  `∀abcd.   R(a,b,c) ⋀ R(a,c,d) -> R(a,b,d)`
- Asymmetry:     `∀abc.    R(a,b,c) -> R(c,b,a)`
- Cyclicity:     `∀abc.    R(a,b,c) -> R(b,c,a)`
- Connectedness: `a≠b≠c -> R(a,b,c) ⋁ R(c,b,a)`


A set with a cyclic order is called a *cyclically ordered set* or simply a *cycle*.

Some familiar cycles are discrete, having only a finite number of elements: there are 7 days of the week, 4 cardinal directions, 12 notes in the chromatic scale, and  plays in rock-paper-scissors game. In a *finite cycle*, each element has a *successor* and a *predecessor*.

There are also *continuously variable cycles* with *infinitely many elements*, such as the *oriented unit circle* in the plane.

Cyclic orders are closely related to the more familiar linear orders, which arrange objects in a line. Any linear order can be bent into a circle, and any cyclic order can be cut at a point, resulting in a line. These operations, along with the related constructions of intervals and covering maps, mean that questions about cyclic orders can often be transformed into questions about linear orders.

Cycles have more symmetries than linear orders, and they often naturally occur as *residues of linear structures*, as in the finite cyclic groups or the real projective line.

## Finite cycles

```hs
o----->o
↑      |
|      ↓
o<-----o
```
A 4-element cycle


A cyclic order on a set `X` with `n` elements is like an arrangement of `X` on a clock face, for an `n`-hour clock. Each element `x` in `X` has a successor and a predecessor, and taking either cycles exactly once through the elements as `x(1), x(2), ..., x(n)`.

There are a few equivalent ways to state this definition.

A cyclic order on `X` is the same as a *permutation* that makes all of `X` into a single cycle. A cycle with `n` elements is also a `ℤn-torsor`: a set with a *free transitive action* by a finite cyclic group.

Another formulation is to make `X` into the standard *directed cycle graph* on `n` vertices, by some matching of elements to vertices.

It can be instinctive to use cyclic orders for symmetric functions, for example as in `xy + yz + zx` where writing the final monomial as xz would distract from the pattern.

A substantial use of cyclic orders is in the determination of the *conjugacy classes of free groups*.

Two elements `g` and `h` of the free group `F` on a set `Y` are *conjugate* iff, when they are written as products of elements `y` and `y−1` with `y` in `Y`, and then those products are put in cyclic order, the cyclic orders are equivalent under the rewriting rules that allow one to remove or add adjacent `y` and `y−1`.

A cyclic order on a set `X` can be determined by a linear order on `X`, but not in a unique way.

Choosing a linear order is equivalent to choosing a first element, so there are exactly `n` linear orders that induce a given cyclic order. Since there are `n!` possible linear orders, there are `(n − 1)!` possible cyclic orders.


## Definitions



### The ternary relation

The general definition is as follows: a cyclic order on a set `X` is a relation `C ⊂ X³`, written [a,b,c], that satisfies the following axioms:
- Cyclicity:     if [a,b,c] then [b,c,a]
- Asymmetry:     if [a,b,c] then not [c,b,a]
- Transitivity:  if [a,b,c] and [a,c,d] then [a,b,d]
- Connectedness: if `a`, `b`, `c` are distinct, then either [a,b,c] or [c,b,a]
