# Composition of relations

https://en.wikipedia.org/wiki/Composition_of_relations

In binary relations, the composition of relations refers to the formation of a new relation, denoted by `R ; S`, given two relations `R` and `S`.

The composition of relations is called *relative multiplication* in the *calculus of relations*. The composition is then the *relative product* of the *factor relations*.

*Composition of functions* is a special case of composition of relations.

The words "uncle" indicates a *compound relation*: for a person to be somebody's uncle, he first must be a brother of a parent. In *algebraic logic* it is said that the relation of "is an uncle of", `(xUz)`, is the composition of relations "is a brother of", `xBy`, and "is a parent of", `yPz`.

$$xBy \land yPz \iff xUz$$

`x` is an uncle of `z` 
if and only if 
`x` is a brother of `y` who is a parent of `z`

## Definition

If $$R\subseteq X\times Y \land S\subseteq Y\times Z$$ are two binary relations, then their composition, $$R; S$$ is the relation:

$$
\displaystyle
R;S = \{(x,z) \in X \times Z \ .
\ \exists y \in Y \ .\ (x,y) \in R 
\land (y,z) \in S \}
$$


In other words, $$R;S\subseteq X\times Z$$ is defined by the rule that says $$(x,z)\in R;S$$ iff there is an element $$y\in Y$$ such that $$x\,R\,y\,S\,z$$, that is $$(x,y)\in R \land (y,z)\in S$$.
