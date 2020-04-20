# Groups


A group is not a set but a tuple `(S, ⋆)`, where `S` is a set of elements and `⋆` is a binary operation. A qualify as a group it must obey the group axioms.


## Group axioms

If a group is denoted as $$G$$ and the binary operation as $$\star$$ (called the *group law* of $$G$$) then:

1. **Closure**     
  $$\forall a,b . (a,b \in G) \to a \star b \in G$$    
  If `a` and `b` are elements of the group `G`, then the result of the binary operation, `a ⋆ b`, is an element that is also in `G`.

To qualify as a group, the set and operation, (G, ⋆), must satisfy four requirements known as the group axioms.


2. **Associativity**    
For all a, b and c in G, (a ⋆ b) ⋆ c = a ⋆ (b ⋆⋆ c)

3. **Identity**    
Identity element
There exists an element e in G such that, for every element a in G, the equation e ⋆ a = a ⋆ e = a holds. Such an element is unique (see below), and thus one speaks of the identity element.

4. **Invertibility**    
Inverse element
For each a in G, there exists an element b in G, commonly denoted a−1 (or −a, if the operation is denoted "+"), such that a ⋆ b = b ⋆ a = e, where e is the identity element.


group = (G, ⋆), G = {id,x,x',...}

- set of elements together with a binary operation, `*` ("star")
- Closure: the set is closed under the operation `*`
- Associativity: the `*` operation is associative
- Identity: there is the identity element
- Invertibility: the "undo" element



# Groups

https://en.wikipedia.org/wiki/Group_(mathematics)
https://en.wikipedia.org/wiki/List_of_group_theory_topics




| structures        | C | A | I | N |
|-------------------|---|---|---|---|
| Semigroupoid      |   | + |   |   |
| Small category    |   | + | + |   |
| Groupoid          |   | + | + | + |
| Magma             | + |   |   |   |
| Quasigroup        | + |   |   | + |
| Loop              | + |   | + | + |
| Semigroup         | + | + |   |   |
| Inverse Semigroup | + | + |   | + |
| Monoid            | + | + | + |   |
| Group             | + | + | + | + |


Abelian group: Commutative group


| structures        | C | A | I | N |
|-------------------|---|---|---|---|
| Magma             | + |   |   |   |
| Semigroup         | + | + |   |   |
| Quasigroup        | + |   |   | + |
| Inverse Semigroup | + | + |   | + |
| Loop              | + |   | + | + |
| Group             | + | + | + | + |
| Groupoid          |   | + | + | + |
| Monoid            | + | + | + |   |
| Small category    |   | + | + |   |
| Semigroupoid      |   | + |   |   |



One of the most familiar examples of a group is the set of integers together with the addition operation, but groups are encountered in numerous areas within and outside mathematics, and help focusing on essential structural aspects, by detaching them from the concrete nature of the subject of the study.

Groups share a fundamental kinship with the notion of symmetry. 

For example, a **symmetry group** encodes symmetry features of a geometrical object: the group consists of the set of transformations that leave the object unchanged and the operation of combining two such transformations by performing one after the other.

**Lie groups** are the symmetry groups used in the Standard Model of particle physics; **Poincaré groups**, which are also Lie groups, can express the physical symmetry underlying special relativity; and **point groups** are used to help understand symmetry phenomena in molecular chemistry.

The concept of a group arose from the study of polynomial equations, starting with Évariste Galois in the 1830s. After contributions from other fields such as number theory and geometry, the group notion was generalized and firmly established around 1870. Modern group theory—an active mathematical discipline—studies groups in their own right. To explore groups, mathematicians have devised various notions to break groups into smaller, better- understandable pieces, such as subgroups, quotient groups and simple groups. In addition to their abstract properties, group theorists also study the different ways in which a group can be expressed concretely, both from a point of view of representation theory (that is, through the representations of the group) and of computational group theory. A theory has been developed for finite groups, which culminated with the classification of finite simple groups, completed in 2004. Since the mid-1980s, geometric group theory, which studies finitely generated groups as geometric objects, has become an active area in group theory.
