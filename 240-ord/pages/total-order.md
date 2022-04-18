# Total order

https://en.wikipedia.org/wiki/Total_order
https://en.wikipedia.org/wiki/Total_ordered_set

A **total order** (or linear order) is a specialization of a partial order, but in which any two elements are comparable.

A total order is a binary relation `<=` on a set `S` with axioms:
1. Reflexivity,       `∀a(a ∈ S -> a <= a)`
2. Transitivity,      `∀a,b,c ∈ S. (a <= b ⋀ b <= c) -> a <= c`
3. Antisymmetry,      `∀a,b ∈ S. (a <= b ⋀ b <= a) -> a = b`
4. Strong-connected¹, `∀a,b ∈ S. (a <= b) ⋁ (b <= a)`

(¹ strong-connected is a relation previously known as total)

A total order is also called linear order, simple order, connex, or full order.

A set equipped with a total order is called a *totally ordered set* (simply ordered set, linearly ordered set, `loset`); *chain* is sometimes also used as a synonym, although it generally refers to some sort of totally ordered subsets of a given poset.

An extension of a given partial order to a total order is called a *linear extension* of that partial order.


* Every finite subset of a non-empty totally ordered set has both upper and lower bounds.

* A totally ordered set is linear (looks like a line) Hasse diagram (refl and trans is implicit).

```js
0 -------> 1 -------> 2 -------> 3 -------> 4

S = {0,1,2,3,4} ⋀ S ⊆ ℕ
```
