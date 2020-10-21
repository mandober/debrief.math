# Symmetry

## Definition

A binary relation $$R$$ 
over a set $$X$$ 
is symmetric if it holds 
for all $$a$$ and $$b$$ in $$X$$ 
that $$a$$ is related to $$b$$ 
if and only if 
$$b$$ is related to $$a$$.

Notation:

> $$\displaystyle \forall a, \forall b \in X \mid aRb \iff bRa$$

Description:

> A binary relation, $$R$$, over a set    
> is symmetric *if and only if*    
> whenever $$x$$ is $$R$$-related to $$y$$, i.e. $$xRy$$,   
> then $$y$$ is $$R$$-related to $$x$$, i.e. $$yRx$$.


## Informal definition

The empty relation $$R = \{ \}$$ has no elements/pairs, therefore it is (vacuously) **reflexive** (no elements = no conditions = nothing broken). It doesn't even matter over which two sets this relation is defined. There is only one empty relation (hence the 'the' in 'the empty relation'), in general, and it is reflexive.

Example relation between two sets: $$A = \{1,2\}$$ to itself, $$A^2$$.
- the empty relation is reflexive

The total relation is the dot product:    
R = { (1,1) , (1,2) , (2,1), (2,2) }

To determine if it is reflexive, we need to consider each element (x,y) and see if its opposite (y,x) is also in the relation. This is because the axioms says that if there's the element (a,b) then there must also be the element (b,a), or the relation is not reflexive.

```
(1,1) ~ (1,1)
(1,2) ~ (2,1)
(2,1) ~ (1,2)
(2,2) ~ (2,2)
```

It all checks out so it's reflexive.

Does this mean that every dot product is reflexive? (Probably) Yes? Yes!




**Anti-symmetry**
A relation R ⊆ X2 is anti-symmetric iff, whenever both Rxy and Ryx, then x = y (or, in other words: if x 6= y then either :Rxy or :Ryx).




**Symmetric** relation R on set A is called Symmetric if xRy implies yRx, ∀x∈A and ∀y∈A.
Example
The relation R={(1,2),(2,1),(3,2),(2,3)} on set A={1,2,3} is symmetric.

**Antisymmetric**
relation R on set A is called Anti-Symmetric if xRy and yRx implies x=y∀x∈A and ∀y∈A.
Example
The relation R={(x,y)→N|x≤y} is anti-symmetric since x≤y and y≤x implies x=y.



## symmetric
"Is a blood relative of" is a symmetric relation, because x is a blood relative of y if and only if y is a blood relative of x.

## antisymmetric
For example, $$>=$$ is anti-symmetric; so is $$>$$, but vacuously (the condition in the definition is always false).

## asymmetric
A relation is asymmetric if and only if it is both anti-symmetric and irreflexive. For example, $$>$$ is asymmetric, but $$>=$$ is not.
