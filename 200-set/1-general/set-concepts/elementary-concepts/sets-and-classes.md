# Sets and Classes

## Sets

Set theory is not a logic per se, it must have a separate, usually first-order logic undelying it. Propositions in set theory are constructed using the fundamental binary membership relation, `∈`, e.g. `x ∈ S`, which may be true or false. Membership relation is a binary relation between an object and a set, but for now we don't have anything but sets, so it's a relation between a set as the container and a set as an element. Non-membership relation, `∉`, is defined in terms of `∈` as `x ∉ S ≝ ¬(x ∈ S)`.

So far, it is allowed for a set to be a member of itself, `x ∈ x`. So the set of all sets that are members of themselves is `R = { x | ∀x.x ∈ x }`, and the set of all  sets which are not members of themselves is `R̅ = { x | ∀x.x ∉ x }`.

Generally, `x ≠ {x}`, i.e. an element (set) is never the same as the set containing that element. We have a set `x` on the left that may be any set, but we have a set containing the set `x` on the right.
- `A = {B}`, `B = {x}`, so `A = {B} = {{x}}`, which means `x ∈ B` and `x ∈ A`
- `A = {B}`, `B = {B}`, so `A = {B} = {{B}} = {{{B}}} = …`, which means `B ∈ A` and `B ∈ B`, so the element of the set `B`, namely `B`, is both an element of `B` and its containing set `A` (which implies that `A` is a transitive set).

More generally, a set can be defined using a predicate (property), `P`, in a set-builder notation, `S = { x | Px}`, but this form of unrestricted set comprehension falls pray to the Russell's paradox. To avoid it, we need to introduce the notion of classes.

The universal set (let's call it a set for now), `𝒰`, contains all sets. So if S is a set, then S is a member of 𝒰, `∀S. S ∈ 𝒰`. And any member of 𝒰 is a set, i.e. if S is an element of, than S is a set, `S ∈ 𝒰 ⇒ S is Set`.

*Classes* are defined as subsets of `𝒰`. Any collection of elemnts of `𝒰` (i.e. sets), is a class (i.e. a subclass of 𝒰). And since `𝒰 ⊆ 𝒰`, then `𝒰` is actually the universal class (not the universal set as said previously).

>The *universal class* `𝒰` contains all sets.
>Any memeber of `𝒰` is a *set*, since `𝒰` contains all sets and only sets.
>A *class* is any subset (subclass) of `𝒰`.

So far we have 2 problems.

The first problem is that any set we can make will have sets as its elements, and its elements, being sets, are members of 𝒰. But classes are defined exactly the same: as collections of elements of 𝒰. So, there is no real difference between sets and classes (at least for now).

The second problem is: What is the collection of all subsets of 𝒰 (i.e. the powerset of 𝒰)? Where or to what entity does it belong? It cannot belong to 𝒰, `𝒫(𝒰) ∉ 𝒰`. A class is then defined as well as that which is a member of `𝒫(𝒰)`. We need to introduce axioms to make sense of all this.

## ASIDE: Examples of some sets we can build thus far

What are some examples of sets that we can build thus far?

Since there is nothing but sets, the very first set we can make can then only be an empty set, `{}` or `∅`. From there, we can make new sets by "horizontal" or "vertical" nesting, or by mixing these two ways of nesting.

Horizontal and vertical nesting can be defined inducively, with (1) as the base case and (2) as the inductive case. Both ways can be used to define the natural numbers in terms of sets.

*Horizontal nesting* expands horizontally, to the right, where each new set contains all the sets defined in the previous steps. The superscript indicates a set's cardinality (and correspond to a natural number).
1. H⁰ = {} = ∅
2. Hⁿ = {H⁰, H¹, H², …, Hⁿ⁻¹ }

so we have,
- H⁰ = ∅
- H¹ = {H⁰} = {∅}
- H² = {H⁰, H¹} = {∅, {∅}}
- H³ = {H⁰, H¹, H²} = {∅, {∅}, {∅,{∅}}}
- H⁴ = {H⁰, H¹, H², H³} = {∅, {∅}, {∅,{∅}}, {∅,{∅},{∅,{∅}}}}

We can now also define natural numbers in terms of the zero element and the successor functions, `S`:
1. 0 := ∅
2. S(n) := n ⋃ {n}

thus,
- 0 = {} = ∅
- 1 = S(0) = 0 ⋃ {0} = {} ⋃ {{}} = {{}} = {∅}
- 2 = S(1) = 1 ⋃ {1} = {∅} ⋃ {{∅}} = {∅, {∅}}
- 3 = S(2) = 2 ⋃ {2} = {∅, {∅}} ⋃ {{∅, {∅}}} = {∅, {∅}, {∅,{∅}}}
- n = S(n) = n ⋃ {n} = {0, 1, 2, … n-1}


*Vertical nesting* can be inductively described as follows, where the superscript indicates the number of braces minus one, or the number of sets nested inside the first set-element:
1. V⁰ = {} = ∅
2. Vⁿ = {Vⁿ⁻¹}

so we have
- V⁰ = {} =                 ∅
- V¹ = {V¹⁻¹} = {V⁰} =     {∅}
- V² = {V²⁻¹} = {V¹} =    {{∅}}
- V³ = {V³⁻¹} = {V²} =   {{{∅}}}
- V⁴ = {V⁴⁻¹} = {V³} =  {{{{∅}}}}
- V⁵ = {V⁵⁻¹} = {V⁴} = {{{{{∅}}}}}


The set of all sets obtaining using horizontal nesting is infinite, but *countably infinite* (ℵ₀) since it describes the natural numbers. And the same is true for the set of all sets constructed using vertical nesting. But when we merge these two sets and also add the sets that can be constructed using the combination of vertical and horizontal nesting, as well as any other conceivable combination that yields new unique sets, we see that the cardinality of *the set of all possible constructible sets* is beyond countable - it must be *uncountably infinite*, having the cardinality `𝖈`.

## Subsets

A set `A` is a *subset* of set `B` iff all elements of `A` are elements of `B` (although `B` may have additional elements):    
`∀x(x ∈ A ⇒ x ∈ B) ⇒ A ⊆ B`

The binary relation "is a subset of", `⊆`, is the second fundamental relation on sets, i.e. between two sets. We can define the relation "is not a subset of" in terms of it as `x ⊈ S ≝ ¬(x ⊆ S)`.

If two sets A and B are subsets of each other, then they are the same:    
`A ⊆ B ⋀ B ⊆ A ⇔ A = B`

**Equality of sets** can be defined in terms of subsets `A=B ≝ A ⊆ B ⋀ B ⊆ A`.

When the formula is expanded: 
set A is a subset of set B 
and B is a subset of A 
iff A and B are the same set, 
`∀x(x ∈ A ⇔ x ∈ B) ⇔ A = B`

This biconditional can be decomposed into a pair of implications:
```js
∀x(x ∈ A ⇒ x ∈ B) ⇒ A ⊆ B
∀x(x ∈ B ⇒ x ∈ A) ⇒ B ⊆ A
// thus
[∀x(x ∈ A ⇒ x ∈ B) ⇒ A ⊆ B] ⋀ [∀y(y ∈ B ⇒ y ∈ A) ⇒ B ⊆ A] ⇔ A = B
// or just
∀x(x ∈ A ⇔ x ∈ B) ⇔ A = B
```


In general, an element of a set (which is also a set) need not be a subset of itself. An element of a set (which is also a set) *may be a subset of itself*, `∀x(x ∈ S ⇒ x ⊆ S)`, *but it need not be*, `∀x(x ∈ S ⇒ x ⊈ S)`. And a subset of a set could be an element of that same set, `∀x(x ∈ S <- x ⊆ S)`, but also it may not be, `∀x(x ⊆ S ⇒ x ∉ S)`.

- Let `A = {B}` and `B = {B}`. Then `B ∈ A` and `B ⊆ A`
- Let `A = {B}` and `B = ∅`. Then `B ∈ A` and `B ⊆ A` (since ∅ ⊆ S)
- Let `A = {B}` and `B = {C}` and `C = {∅}`. Then `B ∈ A` but `B ⊈ A`
  - The only element of `B`, namely `C`, is not an element of `A` (`{C}` is)
  - A = {  B  }
  - A = { {C} }

## Axiom of Extensionality

So, *all sets are classes*, since any set can only contain sets as its elements (and those sets are members of 𝒰), but a class is defined as any collection of elements of 𝒰. *However, are all classes sets?*

The *Axiom of Extensionality* states that two sets with the same elements are the same set.

From the axioms it follows that
- the order of elements in a set is immaterial, {a, b} = {b, a}
- identical elements are collapsed into one, {x} = {x, x}
- two sets are the same if they are subsets of each other

## Axiom of Separation

Axiom of Separation, aka
- Axiom Schema of Specification
- Subset Axiom Schema
- Axiom Schema of Restricted Comprehension

**Axiom of Separation** states that for any predicate (property) `P`, there is a *class* that contains the sets for which `P` holds (although such class may be empty). Note that such class does not contain (sort, separte) other classes by `P` but only sets.

For example, the class `O` of ordinary sets contains sets which are not members of themselves, `∀x(x ∈ O ⇔ x ∉ x)`. Thus, there must exist at least one class that is not a set (namely `O`). Thus, all sets are classes *but not all classes are sets*.

Given any class `C`, there exists its subclass `D` that is not a member of the class `C`, i.e. `∀C ∃D (D ⊆ C ⋀ D ∉ C)`. This is a more general statement than the one claiming that not all classes are sets.

### The Ordinary Set Lemma

The detailed proof of `∀A∃B(B ⊆ A ⋀ B ∉ A)`:

```
∀A ∃B (B ⊆ A ⋀ B ∉ A)

01 ∀A ∃B ∀x(x ∈ B ⇔ (x ∈ A ⋀ x ∉ x)                       (SepAx, UI)
02    ∃B ∀x(x ∈ B ⇔ (x ∈ Y ⋀ x ∉ x)                       (1, UI)
03       ∀x(x ∈ L ⇔ (x ∈ Y ⋀ x ∉ x)                       (2, EI)
04          z ∈ L ⇔ (z ∈ Y ⋀ z ∉ z)                       (3, UI)
05 [z ∈ L ⇒ (z ∈ Y ⋀ z ∉ z)] ⋀ [(z ∈ Y ⋀ z ∉ z) ⇒ z ∈ L]  (4, ⇔E)
06 z ∈ L ⇒ (z ∈ Y ⋀ z ∉ z)                                (5, ∧E₂)
07 z ∉ L ⋁ (z ∈ Y ⋀ z ∉ z)                                (6, ∨ from ⇒)
08 [z ∉ L ⋁ z ∈ Y] ⋀ [z ∉ L ⋁ z ∉ z]                      (7, dist ∨ over ∧)
09 z ∉ L ⋁ z ∈ Y                                          (8, ∧E₂)
10 z ∈ L ⇒ z ∈ Y                                          (9, ⇒ from ∨)
11 ∀x(x ∈ L ⇒ x ∈ Y)                                      (10, UG)
12 L ⊆ Y                                                  (11, subclass def)
13 (z ∈ Y ⋀ z ∉ z) ⇒ z ∈ L                                (5, ∧E₁)
14 z ∈ Y ⇒ (z ∉ z ⇒ z ∈ L)                               (6, exportation)
15 z ∉ Y ⋁ z ∉ z                                          (8, ∧E₁)
16 z ∈ Y ⇒ z ∉ z                                          (15, ∨ to ⇒)
17 | L ∈ Y                                                (AIP)
18 | [  z ∈ Y ⇒ (z ∉ z ⇒ z ∈ L)] ⋀ [z ∈ L ⇒ z ∉ z]       (∧I 14,16)
19 | ∀x(x ∈ Y ⇒ (x ∉ x ⇒ x ∈ L)] ⋀ [x ∈ L ⇒ x ∉ x]       (18, UG)
20 | [L ∈ Y ⇒ (L ∉ L ⇒ L ∈ L)] ⋀ [L ∈ L ⇒ L ∉ L]         (19, UI)
21 | L ∈ Y ⇒ (L ∉ L ⇒ L ∈ L)                              (∧E₂ 20)
22 | L ∉ L ⇒ L ∈ L                                        (MP 17, 21)
23 | L ∈ L ⇒ L ∉ L                                        (∧E₁ 20)
24 | ¬(L ∈ L) ⇒ L ∈ L                                     (22 def of ∈)
25 | L ∈ L ⇒ ¬(L ∈ L)                                     (23 def of ∈)
26 | L ∈ L ⋁ L ∈ L                                        (24, ⇒)
27 | ¬(L ∈ L) ⋁ ¬(L ∈ L)                                  (25, ⇒)
28 | L ∈ L                                                (26, taut)
29 | ¬(L ∈ L)                                             (27, taut)
30 | L ∈ L ⋀ ¬(L ∈ L)                                     (∧I 28,29)
31 ¬(L ∈ Y)                                               (IP 17-30)
32 L ∉ Y                                                  (def of ∉)
33 L ⊆ Y ⋀ L ∉ Y                                          (∧I 32,12)
34 ∃B(B ⊆ Y ⋀ B ∉ A)                                      (UG 34)
35 ∀A ∃B (B ⊆ A ⋀ B ∉ A)                                  Q.E.D.
```

## Transitive sets

A set `A` is a **transitive set** if either of these conditions hold:
- whenever `x ∈ A` and `y ∈ x`, then `y ∈ A`    
  `∀x∀y(x ∈ A ∧ y ∈ x -> y ∈ A)`    
  all elems of each elem of A are also in A
- whenever `x ∈ A` and `x` is not an urelement, then `x ⊆ A`    
  `∀x(x ∈ A -> x ⊆ A)`

Similarly, `M` is a **transitive class** if every elem of `M` is subset of M.

## Swelled sets

A **swelled set** is one which has as its members all of subsets of its members.

A **swelled class** is one which has as its members all of subclasses of its members.

`∀A(S(A) ≝ ∀x∀y((x ⊆ y ⋀ y ∈ A) ⇒ x ∈ A))` 
where `S(A)` means "is a swollen set".

M is a transitive set if every element of M is subset of M. 
When a set is transitive, all its members are subsets of itself. 

When a set M is swelled, *all subsets of its elements* are also elements themselves of M, `∀x(x ∈ M ⇒ 𝒫(x) ∈ M)`.

This concept applies to both sets and classes.

The empty set is a subset of any and all sets: `∅ ⊆ A`, for any set `A`. A swelled set must always contain ∅ as one of its members in order to qualify as a swalled set, since ∅ is always one of its subsets.

### Examples of swelled sets

```
A = {B, C, D, ∅}
B = {C}
C = {A}
D = {E}
E = {C, ∅}
F = {E, ∅}
G = {B, E, {∅}, ∅}
H = {B, D, E, F, {∅}, ∅}

𝒫(∅)       = { ∅          }
𝒫({∅})     = { ∅,   {∅}   }
𝒫({{∅}})   = { ∅,  {{∅}}  }
𝒫({{{∅}}}) = { ∅, {{{∅}}} }
𝒫({x})     = { ∅,   {x}   }

𝒫(B) = 𝒫({C}) = { ∅, {C} }
𝒫(C) = 𝒫({A}) = { ∅, {A} }
𝒫(D) = 𝒫({E}) = { ∅, {E} }

```

## Supercomplete Set

Supercomplete set is a set that is both transitive and swelled.

## Basic Universe
## Axiomatic Set Theory

## Axiom 1 (Transitive Universal Class) in Axiomatic Set Theory

Transitive Universal Class aka Axiom A1 of the Basic Universe

A description of the first axiom of **vonNeumann-Berneays-Gödel (NBG)** set/class theory, that *the universal class is transitive*.

>A1: All sets are classes.

## Axiom 2 (Swelled Universal Class) Axiomatic Set Theory

The Swelled Basic Universe aka Axiom 2

A description of the second axiom of vonNeumann-Berneays-Gödel set/class theory, that *the universal class is swelled*.

>A1 + A2 says that the universe `V` is supercomplete.

A1 + A2 also implies that the universe `V` is not set (not a member of itself).

## Axiom 3 (The Axiom of the Null Set) Axiomatic Set Theory

A description of the third axiom of vonNeumann-Berneays-Gödel set/class theory, that *the null class is a set (a member of the universal class)*.

## Null set is a subset of all classes

## Null set is supercomplete

## Is {∅} the Universal Class? (Axiomatic Set Theory)

This video shows that with only Axioms 1, 2, and 3, of NBG set theory, `{∅}` could be the universal class, `V = {∅}`.

## Proper Subset

## Pairing

The concept of *pairing* (sets with multiple members) and provides a *formal definition of braces*.

## Axiom 4 (The Pairing Axiom) Axiomatic Set Theory

A description of the fourth axiom of NBG set/class theory, that *all classes of sets are sets*.
