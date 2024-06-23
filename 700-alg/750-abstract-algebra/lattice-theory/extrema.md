# Extrema

- minimal (pl. minima) element
- maximal (pl. maxima) element
- minimal vs maximal (element)
- minimum element
- maximum element
- minimum vs maximum (element)
- maximum (pl. maxima)
- minimum (pl. minima)
- greatest element
- least element
- greatest lower bound (glb)
- least upper bound (lub)
- infimum (infima)
- supremum (suprema)
- lower bounds
- upper bounds

Opposing pairs
- minimal vs maximal element
- minimum vs maximum element
- least vs greatest element
- glb vs lub
- meet vs join
- infimum vs supremum


## Maxima and minima
## Maximum and minimum
## Least and greatest

https://en.wikipedia.org/wiki/Maximum_and_minimum#In_relation_to_sets

Besides for functions, *maxima and minima* are also defined for sets.

In general, in an *ordered set* `S`
- if `m` is a greatest elem of `S`, then `m` is *maximal* elem, `max(S) = m`
- if `𝓁` is a least    elem of `S`, then `𝓁` is *minimal* elem, `min(S) = 𝓁`

Furthermore, 
if `S` is a subset of an ordered set `T`, `S ⊆ T`, 
and `m` is the *greatest* element of `S` wrt the order induced by `T`, 
then `m` is a *least upper bound* of `S` in `T`.

If `S` is a subset of an ordered set `T`, 
and `𝓁` is the *least* element of `S` wrt the order induced by `T`, 
then `𝓁` is a *least lower bound* of `S` in `T`.

In case of a *general partial order*:
- the *least element* is one that is smaller than all other elements. 
  It shouldn't be confused with a *minimal element*, 
  which is one compared to whom no element is smaller.
- the *greatest element* is one that is greater than all other elements. 
  It shouldn't be confused with a *maximal element*, 
  which is one compared to whom no element is greater.


For example, in this Hasse diagram of a poset

```
    24
  ⟋   ⟍
8       12       35
  ⟍   ⟋   ⟍      │
    4       3    7
    │
    2
```

- minimal elements: 2, 3, 7
- maximal elements: 24, 35
- greatest element: no
- maximum element: no
- minimum element: no
- least element: no




```
   a
 ⟋  ⟍
b     c
│   ⟋ │
│ ⟋   │
d     e       f
  ⟍ ⟋  ⟍      │
   g     h    i
```





the *greatest element* of a poset 
is an *upper bound* of the set 
which is contained within the set, 

whereas a *maximal element* `m` of a poset `A` 
is an element of `A` 
such that if `m ≤ b` (∀b ∈ A) then `m = b`.


Any *least element* or *greatest element* of a poset is unique, but a poset can have several minimal or maximal elements.

If a poset has more than one maximal element, then these elements will not be mutually comparable.



In a toset (totally ordered set), or chain, all elements are mutually comparable, so such a set can have at most one *minimal* element and at most one *maximal* element. Then, due to mutual comparability, the *minimal* element will also be the *least* element, and the *maximal* element will also be the *greatest* element. Thus, in a totally ordered set, we can simply use the terms *minimum* and *maximum*.

In a toset
```
S = toset

┬ greatest = maximum = maximal
│
│
│
┴ least = minimum = minimal
```


If a chain is finite, then it will always have a maximum and a minimum. If a chain is infinite, then it need not have a maximum or a minimum. For example, the set of natural numbers has no maximum, though it has a minimum. If an infinite chain S is bounded, then the closure Cl(S) of the set occasionally has a minimum and a maximum, in which case they are called the greatest lower bound and the least upper bound of the set S, respectively.


```
   a
 ⟋  ⟍
b     c
│   ⟋ │
│ ⟋   │
d     e
│   ⟋ │
│ ⟋   │
f     g       k
  ⟍ ⟋  ⟍      │
   h     i    j
```
