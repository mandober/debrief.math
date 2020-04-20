# Equivalence relation

https://en.wikipedia.org/wiki/Equivalence_relation

> An **equivalence relation** is a binary relation that is at the same time reflexive, symmetric and transitive.

A given binary relation $$\sim$$ on a set $$X$$ is said to be an equivalence relation iff it is reflexive, symmetric and transitive.

That is, $$\forall a, b, c \in X$$:
* reflexivity: $$\forall a : a \sim a$$
* symmetry: $$\forall a,b : (a \sim b) \to (b \sim a)$$
* transitivity, $$\forall a,b,c :(a \sim b \land b \sim c) \to (a \sim c)$$

A set $$X$$ together with the relation $$\sim$$ is called a *setoid*.

As a consequence of these 3 properties an equivalence relation provides a _partition_ of a set into _equivalence classes_. Two elements of the given set are equivalent to each other iff they belong to the same equivalence class.

The *equivalence class* of $$a$$ under $$\sim$$, denoted $$[a]$$, is defined as: $$[a] = \{b \in X | a \sim b \}$$. For example, if $$X$$ is the set of all cars, and $$\sim$$ is the equivalence relation *has-the-same-color-as*, then one particular *equivalence class* consists of all green cars.



## The relation is-equal-to

The relation *is-equal-to* (=), is the canonical example of an equivalence relation, where $$\forall a, b, c$$:
* reflexivity: $$a = a$$
* symmetry: if $$a = b$$ then $$b = a$$
* transitivity: if $$a = b$$ and $$b = c$$ then $$a = c$$


## Example #1

The relation $$R$$ is defined by the set of the ordered pairs,   
$$R=\{(1,1),(2,2),(3,3),(1,2),(2,1),(2,3),(3,2),(1,3),(3,1)\}$$,    
on the set $$A=\{1,2,3\}$$.    
Is $$R$$ an equivalence relation?

Reflexivity:
- $$a \sim a$$
- it needs to have 3 ordered pairs $$(x,x)$$ to be reflexive, which it does:
- $$\{(1,1),(2,2),(3,3)\}$$

Symmetry:
- if $$a \sim b$$ then $$b \sim a$$
- if it has a pair $$(x,y)$$ then it must also have a pair $$(x,y)$$
- $$\{(1,2),(2,1)\}$$
- $$\{(2,3),(3,2)\}$$
- $$\{(1,3),(3,1)\}$$

Transitivity:
- if $$a \sim b$$ and $$b \sim c$$ then $$a \sim c$$
- if there's a pair $$(x,y)$$ and $$(y,z)$$ then there must be $$(x,z)$$
- if $$\{(1,2),(2,3)\}$$ then $$\{(1,3)\}$$: it does have it

All 3 properties hold so $$R$$ an equivalence relation.
