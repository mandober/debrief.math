# Equivalence class

https://en.wikipedia.org/wiki/Equivalence_classes

(Concerning set theory, this article is in `set theory :: set constructions :: Equivalence class` as it is a construction of set partition. But the topic 
`Equivalence relation` is in the ection `relation theory :: types of relations`)

https://en.wikipedia.org/wiki/Equivalence_relation

## Terms

- equivalence relation (refl, symm, trans)
- equivalence class
- equivalence classes form a partition
- equivalence class of an element `a ∈ X` under an equiv. rel `~` is `[a]`
- [x] is an equivalence class of an element `x`
- quotient set of `X` by an equivalence relation `~` is `X\~`
- quotient set of `X` by a relation `R` is `X` modulo relation `R`
- quotient set (or quotient space) is the set of all equivalence classes
- isomorphism class
- canonical surjection or projection, `X ⟼ X/R; x ↦ [x]`
- every element of an equivalence class characterizes the class
- representative of the class
- choice of a representative elem is an injection `X/R ⟼ X`
- section
- canonical representatives
- congruence relation

## Debrief

When a set `X` is endowed with an equivalence relation - that is, when the elements of `X` have a notion of equivalence - then the set `X` may be partitioned into a set of equivalence classes according to that relation.

The set of equivalence classes is constructed so that elements `a` and `b` in `X` belong to the same equivalence class iff they are equivalent under the equivalence relation, `a ~ b`.

If a set `X` is endowed with an equivalence relation, `~`, the equivalence class of an element `a ∈ X` is denoted by `[a]`; it is the set `{∀x ∈ X|x ~ a}` of all elements `x` in `X` equivalent to `a`, `∀x ∈ X. x ~ a`.




A relation `~` on a set `X` is an equivalence relation is it is reflexive, symmetric and transitive. Since it is reflexive, an equivalence relation can only be a relation on a set (not between sets). Set `X` endowed with an equivalence relation `~` is denoted `∼X`.

An equivalence relation `~` partitions the elements of `X` into disjoint equivalence classes. An equivalence class of an element `a ∈ X`, under the equivalence relation `~`, is denoted `[a]`. Every element of an equivalence class characterizes that equivalence class, so we often talk about an element `x` being the representative of an equivalence class denoted [x], which denotes all elements in set `X` that belong to the same equivalence class as `x`.

A quotient set is the set of all equivalence classes of a set `X`. A quotient set is a set {[x], [y], …} where `x` and `y` in `X` are representatives of their respecive equivalence classes. A quotient set of `X` obtained by an equivalence relation `~` is denoted `X\~`.




## Introduction

When the elements of a set `S` have a notion of equivalence (formalized as an equivalence relation), then the set `S` may be naturally split into a set of **equivalence classes**.

NOTE: The word "class" in the term "equivalence class" does not refer to the notion of a class of set theory, but just means a collection; however equivalence classes do often turn out to be proper classes.

These equivalence classes are constructed so that elements `a` and `b` __belong to the same equivalence class iff, they are equivalent__.

For all `a,b ∈ S`, if `a ~ b` (`a` is equivalent to `b`) then `a` and `b` belong to the same equivalence class.

Formally, given a set `S` and an __equivalence relation__ `~` on `S`, the __equivalence class of an element__ `a` in `S`, denoted by `[a]`, is the set 
`{ x ∈ S | x ~ a }` of all the elements in `S` which are equivalent to `a`.

It may be proven, from the defining properties of equivalence relations, that the equivalence classes form a *partition* of `S`. This partition (the set of equivalence classes) is called the **quotient set** or the **quotient space** of `S` by `~` and denoted by `S\~`.

>The set of equivalence classes forms a partition of `S`, called the quotient set of `S` by an equivalence relation `~`, and denoted by `S\~`.

When a set `S` has some structure (e.g. group operation or a topology) and the equivalence relation `~` is compatible with this structure, the quotient set often inherits a similar structure from its parent set. Examples include quotient spaces in linear algebra, quotient spaces in topology, quotient groups, homogeneous spaces, quotient rings, quotient monoids, and quotient categories.

## Contents

- Examples
- Definition and notation
- Properties
- Graphical representation
- Invariants
- Quotient space in topology

## Examples



* The modulo 2 equivalence relation on the set of the integers, `ℤ/2ℤ`.

: `x ~ y` iff their difference `x − y` is an even number. This relation gives rise to exactly 2 equivalence classes: one class consisting of all even numbers, and the other consisting of all odd numbers. Under the relation `[7]`, `[9]`, `[1]` all represent the same element of `Z/~` since `9 ≡ 1 mod 2` and `7 ≡ 1 mod 2`.

- `{ x ∈ ℕ | x ≡ 0 (mod 2) }` specifies a quotent class
- `{ x ∈ ℕ | x ≡ 1 (mod 2) }` specifies a quotent class


* If `X` is the set of all cars, and `~` is the equivalence relation has-the-same-color-as, then one particular equivalence class consists of all green cars. `X/~` could be naturally identified with the set of all car colors.

* Let `X` be the set of all rectangles in a plane, and `~` the equivalence relation has-the-same-area-as. For each positive real number `A` there will be an equivalence class of all the rectangles that have area `A`.

* Let `X` be the set of ordered pairs of integers `(a,b)` with `b` not zero, and define an equivalence relation `~` on `X` according to which `(a,b) ~ (c,d)` iff `a * d = b * c`. Then the equivalence class of the pair `(a,b)` can be identified with the rational number `a / b`, and this equivalence relation and its equivalence classes can be used to give a formal definition of the set of rational numbers. The same construction can be generalized to the field of fractions of any integral domain.

* If `X` consists of all the lines in the Euclidean plane, and `L ~ M` means that `L` and `M` are parallel lines, then the set of lines that are parallel to each other form an equivalence class as long as a line is considered parallel to itself. In this situation, each equivalence class determines a point at infinity.

## Definition and notation

An equivalence relation on a set `X` is a binary relation `~` on `X` satisfying these 3 properties, `∀abc ∈ X`:
- reflexivity:  `a ~ a`
- symmetry:     `a ~ b -> b ~ a`
- transitivity, `a ~ b ∧ b ~ c -> a ~ c`

**The equivalence class of an element** `a` is denoted `[a]` or

$$\Huge[a]_{\sim}$$

and is defined as the set `{ ∀x ∈ X | a ~ x }` of elements that are related to `a` by `~`.

The word "class" in the term "equivalence class" may generally be considered as a synonym for set or collection, although some equivalence classes are indeed proper classes. For example, "being isomorphic" is an equivalence relation on groups, and the equivalence classes, called *isomorphism classes*, are not sets.

>The set of all equivalence classes in `X` with respect to an equivalence relation `R` is denoted as `X/R`, and is called __`X` modulo `R`__, or __the quotient set of `X` by `R`__.

For example, equivalence classes in ℤ wrt `(mod 3)` is `ℤ/(mod 3)` or `ℤ/3ℤ`.


The surjective map `x ↦ [x]` from `X` onto `X/R`, which maps each element to its equivalence class, is called the **canonical surjection**, or the **canonical projection**.

```hs
-- canonical surjection/projection
surj : X/R -> X
surj x = [x]
```

Every element of an equivalence class *characterizes the class*, and may be used to represent it. When such an element is chosen, it is called a __representative of the class__. The choice of a representative in each class defines an injection `X/R ⟼ X`.

Since the composition of this injection with the canonical surjection is the identity of `X/R`, such an injection is called a __section__, when using the terminology of category theory.

```hs
f : X/R ⟼ X
g : X ⟼ X/R
f ∘ g = id   -- from
g ∘ f = id   -- into
```

Sometimes, there is a section that is more "natural" than the other ones. In this case, the representatives are called __canonical representatives__.

For example, in modular arithmetic, for every integer `m > 1`, the congruence modulo `m` is an equivalence relation on ℤ, for which two integers `a` and `b` are equivalent - in this case, one says **congruent** - if `m` divides `a−b`, denoted `a ≡ b (mod m)`.

Each class contains a unique non-negative integer smaller than `m`, and these integers are the canonical representatives.

>The use of representatives for representing classes allows avoiding to consider explicitly classes as sets.

In this case, the canonical surjection that maps an element to its class is replaced by the function that maps an element to the representative of its class. In the preceding example, this function is denoted `a mod m`, producing the remainder of the Euclidean division of `a` by `m`.

For example, in modular arithmetic on ℤ, the congruence relation `mod 4` is an equivalence relation on ℤ, and the equivalence classes are denoted `ℤ/4ℤ`. There are 4 equivalence classes each represented by its canonical element:
- [0] repr the quotient class `n ≡ 0 (mod 4)`
- [1] repr the quotient class `n ≡ 1 (mod 4)`
- [2] repr the quotient class `n ≡ 2 (mod 4)`
- [3] repr the quotient class `n ≡ 3 (mod 4)`

## Properties

Every element `x` of `X` is a member of the equivalence class [x]. 
Every two equivalence classes [x] and [y] are either equal or disjoint. Therefore, the set of all equivalence classes of `X` forms a partition of `X` : every element of `X` belongs to one and only one equivalence class. Conversely, every partition of `X` comes from an equivalence relation in this way, according to which `x∼y` iff `x` and `y` belong to the same set of the partition.

It follows from the properties of an equivalence relation that `x∼y `if and only if [x] = [y]. In other words, if `∼` is an equivalence relation on a set `X`, and `x` and `y` are two elements of `X`, then these statements are equivalent:
- `x∼y`
- [x] = [y]
- [x] ∩ [y] ≠ ∅

## Graphical representation

An undirected graph may be associated to any symmetric relation on a set `X`, where the vertices are the elements of `X`, and two vertices `s` and `t` are joined if and only if `s∼t`.

Among these graphs are the graphs of equivalence relations; they are characterized as the graphs such that the connected components are cliques.

## Invariants

If `∼` is an equivalence relation on `X`, and `P(x)` is a property of elements of `X` such that whenever `x∼y`, `P(x)` is true if `P(y)` is true, then the property `P` is said to be **an invariant of `∼`**, or **well-defined under the relation `∼`**.

A frequent particular case occurs when `f` is a function from `X` to another set `Y`; if `f(x₁) = f(x₂)` whenever `x₁ ∼ x₂`, then `f` is said to be **class invariant under `∼`**, or simply **invariant under `∼`**. This occurs, for example, in the character theory of finite groups. Some authors use "*compatible with `∼`*" or just "*respects `∼`*" instead of "*invariant under `∼`*".

Any function `f : X → Y` is **class invariant under `∼`**, according to which `x₁ ∼ x₂` if and only if `f(x₁) = f(x₂)`. The equivalence class of `x` is the set of all elements in `X` which get mapped to `f(x)`, that is, the class [x] is the inverse image of `f(x)`. This equivalence relation is known as the **kernel of `f`**.

More generally, a function may map equivalent arguments (under an equivalence relation `∼X` on `X`) to equivalent values (under an equivalence relation `∼Y` on `Y`). Such a function is a *morphism of sets equipped with an equivalence relation*.

## Quotient space in topology

In topology, a **quotient space** is a topological space formed on the set of equivalence classes of an equivalence relation on a topological space, using the original space's topology to create the topology on the set of equivalence classes.

In abstract algebra, *congruence relations* on the underlying set of an algebra allow the algebra to induce an algebra on the equivalence classes of the relation, called a **quotient algebra**.

In linear algebra, a quotient space is a *vector space* formed by taking a quotient group, where the quotient homomorphism is a linear map. By extension, in abstract algebra, the term quotient space may be used for quotient modules, quotient rings, quotient groups, or any quotient algebra. However, the use of the term for the more general cases can as often be by analogy with the orbits of a group action.

The orbits of a group action on a set may be called the quotient space of the action on the set, particularly when the orbits of the group action are the right cosets of a subgroup of a group, which arise from the action of the subgroup on the group by left translations, or respectively the left cosets as orbits under right translation.

A normal subgroup of a topological group, acting on the group by translation action, is a quotient space in the senses of topology, abstract algebra, and group actions simultaneously.

Although the term can be used for any equivalence relation's set of equivalence classes, possibly with further structure, the intent of using the term is generally to compare that type of equivalence relation on a set X, either to an equivalence relation that induces some structure on the set of equivalence classes from a structure of the same kind on X, or to the orbits of a group action. Both the sense of a structure preserved by an equivalence relation, and the study of invariants under group actions, lead to the definition of invariants of equivalence relations given above.
