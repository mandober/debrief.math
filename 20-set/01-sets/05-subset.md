# Relations between sets

<!-- TOC -->

- [Subset relation](#subset-relation)
- [The empty set](#the-empty-set)
- [Proper subset](#proper-subset)

<!-- /TOC -->


If $$x$$ and $$y$$ are sets, they may be related in several ways:
- $$x$$ is a member of $$y$$: $$x\in y$$ (membership relation)
- $$x$$ is a subset of $$y$$: $$x\subseteq y$$ (inclusion relation)
  - $$x$$ is a proper subset of $$y$$: $$x\subset y$$
  - $$x$$ is equal to $$y$$ if $$x\subseteq y \land y\subseteq x$$

Axioms:
- every set is a subset of itself, $$A\subseteq A$$
- the empty set is a subset of every set, $$\varnothing \subseteq A$$
- therefore, the empty set is a subset of itself, $$\varnothing \subseteq \varnothing$$


## Subset relation

Besides membership (which relates elements and sets), another fundamental relation is the **subset relation**, also called the **inclusion relation**, which is relation between sets, denoted by the symbol $$\subseteq$$.

If all elements of a set $$X$$ are also elements of a set $$Y$$, then $$X$$ is the **subset** of $$Y$$, denoted by 

$$X \subseteq Y$$

At the same time, set $$Y$$ is a **superset** of $$X$$, denoted by $$Y \supseteq X$$


```text
Given objects x and y
(y = {x}) → (∀x . x ∈ y ∧ [x ⊆ y → ∀z.z ∈ x ∧ z ∈ y])
  then x ∈ y holds always,
  but  x ⊆ y holds only if x is a set, e.g.:
    (x=1 → y={1}) → (x ∈ y ∧ x ⊈ y)
    if (x={1}) → (y={{1}}), then x ∈ y and x ⊆ y
```

- ∈ ∋ ∉ ∌
- ∣ ∅ ⋜ ⋝
- ∃ ∀ ∄
- ⋃ ⋂
- ⊆ ⊇ ⊂ ⊃ 
- ⊊ ⊋ ⊄ ⊅
- ⊈ ⊉


$$
\text{Given } a,b\ where\ b = \{a\} \\
\text{if } a = 1\ \text{then } b = \{1\}\ ,so\ a \in b\\
\text{if } a = \{1\}\ \text{then } b = \{\{1\}\}\ ,so\ a\in b \land a \subseteq b\\
$$




A set $$X$$ is a __proper subset__ of a set $$Y$$, denoted by $$X\subset Y$$ if set $$Y$$ has additional elements besides those that are also in set $$X$$.

That is, if every element of $$X$$ is an element of $$Y$$ and $$|X| < |Y|$$.

For example, $$X=\{1,2\}$$ and $$Y=\{1,2,3,4\}$$.

Here, $$X\subseteq Y$$, but, more precisely, $$X$$ is a proper subset of $$Y$$ i.e. $$X\subset Y$$.

> Every set is a subset of itself:
>      
> $$\{a,b,c\} \subseteq \{a,b,c\}$$




## The empty set

* There is only one empty set (hence *the* empty set).
* The empty set is subset of every set
* The empty set is a member of a set's powerset.
* The empty set is not a member of a set's partition.


> The empty set is a subset of every set

$$
\varnothing \subseteq S           \\ 
\varnothing \subseteq \varnothing \\ 
\varnothing \subseteq \mathcal{U} \\
$$



## Proper subset
