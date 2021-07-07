# Inverse function

A bijection is a surjective + injective function, in other words, it is an *invertable function*. Bijective functions have an inverse.

Surjective functions don't have an invere - their inverse is not a function at all, but a relation. This is because surjections collapse domain elements - at least two domain elements will be associated to one codomain element, so when this function is reversed it becomes a relation as one domain element will be related to two codomain elements (which fails to satisfy the most important property of functions).

Injections are also called one to one mappings, but unlike bijections, they leave some codomain elements (at least one) unassociated. So the inverse of an injective function does not cover its whole domain - there will be at least one element for which the function is not defined. Because of that, an inverse of injection is a partial function.

Bijections are exactly the kind of functions used to establish the equivalence (equinumerosity) between two sets. With finite sets, it is easy to find, at least one, bijective map between sets `a` and `b`. If `|a| = |b| = 3`, then the number of functions `a -> b` is `3³ = 27`. Out of this 27 functions, `6` functions are bijections.

If map `f : A -> B` is a bijection, then its inverse map is `g : B -> A`; moreover, `f` and its inverse map `g` are related by these two equations:   
`g ∘ f = 1ᴀ` and `f ∘ g = 1ʙ`. However, neither of these two equations by itself guarantees that `A` and `B` have the same size - for that we need both.

If `f` function is invertable, its inverse function is denoted by `f⁻¹`.

> [def] A map `f : A → B` is called an *isomorphism*, or *inverse* or *invertible map*, if there is a map `g : B → A` for which these two equations hold: `g ∘ f = 1ᴀ` and `f ∘ g = 1ʙ`. A map `g`, related to `f` by satisfying these two equations, is called an inverse for `f`. Two objects are isomorphic if there is at least one isomorphism between them.

* The notion of isomorphism (or isomorphic sets, or equinumerous sets, i.e. the same-size sets) has the same 3 basic properties like all other equivalence relations:
- reflexivity   A ≅ A
- symmetry      A ≅ B <=> B ≅ A
- transitivity  (A ≅ B ⋀ B ≅ C) => A ≅ C



## Rant ahead

a 1
b 2
c 3
d 4

a1 b2 c3 c4
a1 b2 c4 c3

a1 b3 c2 c4
a1 b3 d4 d2

a1 b4 c2 d3
a1 b4 c3 d2
------------
a2 b1 c3 d4
a2 b1 c4 d3

a2 b3 c1 d4
a2 b3 c4 d1

a2 b4 c1 d3
a2 b4 c3 d1
------------
a3
------------
a4
------------

2 -> 2 => 2  (4)
3 -> 3 => 6  (27)
4 -> 4 => 16 (4⁴)



|A| = n, |B| = m, A ⟼ B, total number of fns, mⁿ

n | m | mⁿ |fns | bij | inj | surj | notes
--|---|----|----|-----|-----|------|------------------------------------
0 | 0 | 0⁰ |   1|  ?  |  ?  |  ?   | `Void -> Void` especially weird
--|---|----|----|-----|-----|------|------------------------------------
0 | 1 | 1⁰ |   1|  ?  |  ?  |  ?   | `Void -> ()`   weird
1 | 0 | 1⁰ |   1|  ?  |  ?  |  ?   | `()   -> Void` weird
--|---|----|----|-----|-----|------|------------------------------------
n | 0 | 0ⁿ |   0|  ?  |  ?  |  ?   | `a    -> Void`
0 | m | m⁰ |   1|  ?  |  ?  |  ?   | `Void -> a`



## Domain = codomain

Cardinalities when domain and codomain have the same number of elements:
- |A| = n
- |B| = m
- n = m dom and cod are equivalent, they have the same cardinality
- |A⨯B| = n⨯m, |A⨯A| = |A²| = n⨯n = n²
- Carthesian set card: n²
- Powerset card: 2ⁿ
- number of functions: nⁿ

n | n² | 2ⁿ      | nⁿ        | (2ⁿ)² | (n²)ⁿ
--|----|---------|-----------|-------|--
0 |  0 | 2⁰ =  1 |1  1
1 |  1 | 2¹ =  2 |
2 |  4 | 2² =  4 |
3 |  9 | 2³ =  8 |
4 | 16 | 2⁴ = 16 |
5 | 25 | 2⁵ = 32 |


n | m |n⨯m| mⁿ |fns | bij | inj | surj | notes
--|---|---|----|----|-----|-----|------|-------------
0 | 0 | 0 | 0⁰ |   1|  ?  |  ?  |  ?   | ∅ -> ∅
1 | 1 | 1 | 1¹ |   1|  1  |  1  |  1   | ⑴ -> ⑴
2 | 2 | 4 | 2² |   4|  2  |     |      | ⑵ -> ⑵
3 | 3 | 9 | 3³ |  27|     |     |      | ⑶ -> ⑶
4 | 4 |16 | 4⁴ | 256|     |     |      | ⑷ -> ⑷
5 | 5 |25 | 5⁵ |3125|     |     |      | ⑸ -> ⑸



One function any time domain is empty
* 1 fn, `Void -> Void`, 0⁰ = 1,   0 → 0 (special case)
* 1 fn, `Void -> ()`  , 1⁰ = 1,   0 → 1
* 1 fn, `Void -> 𝔹`   , 2⁰ = 1,   0 → 2
* 1 fn, `Void -> a`   , m⁰ = 1,   0 → m

No functions any time codomain is empty
* 0 fn, `()   -> Void`, 0¹ = 0,   1 → 0
* 0 fn, `𝔹    -> Void`, 0² = 0,   2 → 0
* 0 fn, `a    -> Void`, 0ⁿ = 0,   n → 0


a -> a

a -> b, b -> a







0
  0 → 0

1
  0 → 1
  1 → 0
  1 → 1

2
  2 → 0
  0 → 2
  1 → 2
  2 → 1
  2 → 2
