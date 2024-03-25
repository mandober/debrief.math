# Definition of category

There are many equivalent definitions of a category.

## General definition of category

Regardless how a definition is stated, a category is a collection of objects and arrows that connect them.

A category C consists of
- a collection of objects, denoted Ob(C) or Obj(C)
- a collection of morphisms, denoted Hom(C), Ar(C) or Mor(C)

Naming conventions
- categories are denoted using an uppercase letter (C, 𝓒, 𝒟, ℂ, 𝔻, …)
- objects are denoted using an uppercase or lowercase letters (a, b, A, …)
- morphisms are denoted using lowercase letters, (f, g, h, …)

After stating the elements of a category (i.e. objects and morphisms) and the notation used, definitions deviate from one another mostly in the way they phrase the axioms that a category must satisfy.

Another point of contention is the extent to which the definitions go to explain the issues with the size of collections. Since mentioning a collection immediately requires set-theoretical justification regarding its size (whether is forms a set, class, congomerate), some definitions proceed to outline a particular version of set theory that acts as a prerequisite and underpins all categorical considerations (NBG is a popular choice since it admits a universe, unlike ZFC). The main problem is the question of the size of the category of all categories that is posited to exists, unlike the set of all sets. Some definitions skip this whole issue, ignoring the set-related paradoxes, possibly only mentioning that a category is called *small* if the collection of objects forms a set, and *locally small* if the collection of arrows forms a set.

Some definitions take a step back and first define a graph, then give the definition of a category in terms of a graph.

Here are some commonly seen definitions.




## Definition of category I

The usual way to define a category goes like this:

A **category** C consists of
- a collection of objects, denoted `Ob(C)`
- a collection of morphisms, denoted `Hom(C)`

For each **morphism** `f ∈ Hom(C)`, there exists 
an object `a ∈ Ob(C)`, called the domain or *source* of `f`, and 
an object `b ∈ Ob(C)`, called the codomain or *target* of `f`, 
in which case we denote the arrow by `f : a -> b`.

Some accounts stop to define the source and target object as operations so that `src(f) = a` and `tgt(f) = b`, although this is later rarely used.

The **axioms**

We require that all the defined compositions of morphisms are included in C: if f : A → 𝐵 ∈ Hom(C) and 𝑔: 𝐵 → 𝐶 ∈ Hom(C), then 𝑔 ◦ f : A → 𝐶 ∈ Hom(C).

We assume that the composition operation is associative and that for every object A ∈ Ob(C) there exists an identity morphism idA : A → A so that f ◦ idA = f and idA ◦ f = f whenever the composition is defined.



For each morphism 𝑓 ∈ 𝐻𝑜𝑚(C) there exists an object 𝐴 ∈ 𝑂𝑏𝑗(C) that is a domain of 𝑓 and an object 𝐵 ∈ 𝑂𝑏𝑗(C) that is a target of 𝑓. In this case we denote 𝑓 : 𝐴 → 𝐵. We require that all the defined compositions of morphisms are included in C: if 𝑓 : 𝐴 → 𝐵 ∈ 𝐻𝑜𝑚(C) and 𝑔: 𝐵 → 𝐶 ∈ 𝐻𝑜𝑚(C), then 𝑔 ◦ 𝑓 : 𝐴 → 𝐶 ∈ 𝐻𝑜𝑚(C). We assume that the composition operation is associative and that for every object 𝐴 ∈ 𝑂𝑏𝑗(C) there exists an identity morphism id𝐴 : 𝐴 → 𝐴 so that 𝑓 ◦ id𝐴 = 𝑓 and id𝐴 ◦ 𝑓 = 𝑓 whenever the composition is defined.
