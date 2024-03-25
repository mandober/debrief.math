# Category Theory :: Formulas


## Programming with Categories
Programming with Categories (DRAFT)
Fong, Bartosz, Spivak, 2020

1. Definition of category

A category is a network of composable relationships.

A category C consists of four constituents:

(i) a set Ob"C", elements of which are called objects of C;
(ii) for every pair of objects c; d 2 Ob"C" a set C"c; d", elements of which are called
morphisms from c to d and often denoted f : c ! d;
(iii) for every object c, a specified morphism idc 2 C"c; c" called the identity morphism
for c; and
(iv) for every three objects b; c; d and morphisms f : b ! c and 1 : c ! d, a specified
morphism "1 ∘ f ": b ! d called the composite of 1 after f (sometimes denoted
f # 1).
These constituents are subject to three constraints:
Left unital: for any f : c ! d, the equation idc ∘ f  f holds;
Right unital: for any f : c ! d, the equation f ∘ idd  f holds;
Associative: for any f1 : c1 ! c2, f2 : c2 ! c3, and f3 : c3 ! c4, the following
equation holds
" f3 ∘ f2" ∘ f1  f3 ∘ " f2 ∘ f1":
If f : c ! d is a morphism, we again call c the domain and d the codomain of f .



## Category Theory Applied to FP

Category Theory Applied to Functional Programming
Juan Pedro Villa Isaza, 2014

2. Definition of category

A category 𝒞 consists of:
• Objects 𝑎, 𝑏, 𝑐, ...
• Morphisms or arrows 𝑓, 𝑔, ℎ, ...
• For each morphism 𝑓, domain and codomain objects 𝑎 = dom(𝑓) and
𝑏 = cod(𝑓), respectively. We then write 𝑓 ∶ 𝑎 → 𝑏.
• For each object 𝑎, an identity morphism id𝑎 ∶ 𝑎 → 𝑎.
• For each pair of morphisms 𝑓 ∶ 𝑎 → 𝑏 and 𝑔 ∶ 𝑏 → 𝑐, a composite
morphism 𝑔 ∘ 𝑓 ∶ 𝑎 → 𝑐. That is, for each pair of morphisms 𝑓 and
𝑔 with cod(𝑓) = dom(𝑔), a composite morphism 𝑔 ∘ 𝑓 ∶ dom(𝑓) →
cod(𝑔). We may then draw a diagram like that of Figure 2.2

Composition of morphisms associates to the right. Therefore, for all
morphisms 𝑓 ∶ 𝑎 → 𝑏, 𝑔 ∶ 𝑏 → 𝑐, and ℎ ∶ 𝑐 → 𝑑, ℎ ∘ 𝑔 ∘ 𝑓 denotes
ℎ ∘ (𝑔 ∘ 𝑓).
The category is subject to the following axioms:
• For all morphisms 𝑓 ∶ 𝑎 → 𝑏, 𝑔 ∶ 𝑏 → 𝑐, and ℎ ∶ 𝑐 → 𝑑,
ℎ ∘ (𝑔 ∘ 𝑓) = ℎ ∘ 𝑔 ∘ 𝑓 = (ℎ ∘ 𝑔) ∘ 𝑓, (2.1)
that is, composition of morphisms is associative or, equivalently, the
diagram in Figure 2.3a is commutative.
• For all morphisms 𝑓 ∶ 𝑎 → 𝑏,
id𝑏 ∘ 𝑓 = 𝑓 = 𝑓 ∘ id𝑎 , (2.2)
that is, identity morphisms are identities for the composition of morphisms or, equivalently, the diagram in Figure 2.3b is commutative.


## Categories and Haskell

Categories and Haskell: An introduction to the mathematics behind modern FP
by Jan-Willem Buurlage

3. Definition of category

A category is a triple `C = (O, A, ∘)` consists of
- a collection `O` of objects, `a, b, … ∈ O`
- a collection `A` of arrows,  `f, g, … ∈ A` between objects, `f : a → b`
- an identity arrow `idₐ` for each object `a ∈ O`
- composition of arrows, `f ∘ g`

The composition operation and identity arrow 
must satisfy the following laws:
- Composition: 
  if   `f : a → b` 
  and      `g : b → c` 
  then `g ∘ f : a → c`
- Composition with identity arrows: 
  if `f : x → a` 
  and    `g : a → x` 
  where `x` is arbitrary, 
  then `idₐ ∘ f = f` 
  and   `g ∘ idₐ = g`
- Associativity: 
  if  `f : a → b`, 
      `g : b → c` 
  and `h : c → d` 
  then `(h ∘ g) ∘ f = h ∘ (g ∘ f)`

If `f : a → b`, then we say that `a` is the domain and `b` is the codomain of `f`. It is also written as `dom(f) = a`, `cod(f) = b`

The composition `g ∘ f` is only defined on arrows `f` and `g` if the domain of `g` is equal to the codomain of `f`.

We will write for objects and arrows, respectively, simply `a ∈ C` and `f ∈ C`, instead of `a ∈ O` and `f ∈ A`.
