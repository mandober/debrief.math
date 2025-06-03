# Formal definition


## Sets and elements

There are sets $$\exists A,B,\varnothing$$

$$(A:set \land a:element \land a\in A) \to$$ "a is an element of set A"

There is the empty set, denoted by $$\varnothing = \{\}$$. There is only one empty set, it is unique, $$\forall x.x \not\in A$$ 

A non-empty set contains elements - it is the membership relation, $$a \in A$$.

All elements of set A: $$\forall a : a \in A$$

All elements of set B: $$\forall b : b \in B$$


## cross product
The cross product between sets $$X$$ and $$Y$$ is a new set, such that:

$$X\times Y = \{\forall x\forall y. x\in X\land y\in Y\ . (x,y)\}$$


## paradox
Russell's paradox shows that the "set of all sets that do not contain themselves", that is, this set does not exist:    
$$\{\not\exists x.x:set \land x \in x\}$$


## Ordered pairs

If one agrees that set theory is an appealing foundation of mathematics, then all mathematical objects must be defined as sets of some sort. Hence if the ordered pair is not taken as primitive, it must be defined as a set.

### Wiener's definition
Norbert Wiener proposed the first set theoretical definition of the ordered pair in 1914:     

$$
(a,b) := 
  \color{fuchsia}{\{}
    \ \color{#89ca78ff}{\{}
      \color{#e5c07b}{\{}
        a
      \color{#e5c07b}{\}}
     ,\ \varnothing
    \color{#89ca78ff}{\}}, 
    \color{#89ca78ff}{\{}
      \color{#e5c07b}{\{}
        b
      \color{#e5c07b}{\}}
    \color{#89ca78ff}{\}}
  \ \color{fuchsia}{\}}
$$

He observed that this definition made it possible to define the types of Principia Mathematica as sets. Principia Mathematica had taken types, and hence relations of all arities, as primitive.

Wiener used $$\{\{b\}\}$$ instead of just $$\{b\}$$ to make the definition compatible with type theory where all elements in a class must be of the same *type*. With $$b$$ nested within an additional set, its type is equal to the type of first component, $$\{\{a\}, \emptyset\}$$




All ordered pairs between sets A and B:    
$$\forall a\forall b. a \in A \land b \in B \to (a, b) \in A \times B$$

The characteristic (defining) property of the ordered pair:    
$$(x,y)=(a,b) \iff x=a \land y=b$$

The left projection of a pair p: $$\pi_{_ 1}(p)$$
The right projection of a pair p: $$\pi_{_ 2}(p)$$

$$\pi^n_i = Proj ^{\ n} _{\ i} \\
Proj^{^2}_ {_ 1}(a, b) = a \\
Proj^{^2}_ {_ 2}(a, b) = b \\
Proj^{^4}_ {_ 3}(a, b, c, d) = c \\
Proj^{^1}_ {_ 1}(a) = a \equiv Id \\
$$

In contexts where arbitrary n-tuples are considered:     
$$\pi^n_i (t)$$    
is a common notation for the `i`-th component of an n-tuple `t`
