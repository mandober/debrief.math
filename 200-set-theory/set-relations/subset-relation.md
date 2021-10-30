# Set membership

- Membership relation
- Set membership
- set elements
- set members

- subset relation
- set inclusion
- set containment
- subset
- superset
- set equality
- proper subset
- proper superset


If A = {2, 3, 4} and B = {3, 4, 5, 6}, then: A ∩ B = {3, 4} and A ∪ B = {2, 3, 4, 5, 6}.
We can say that (A ∩ B) ⊂ (A ∪ B).
If A = {4, 5, 6, 7} and B = {3, 4, 5, 6, 7, 8}, then A ⊂ B.
If A = {4, 5, 6, 7} and B = {4, 5, 6, 7}, then A ⊆ B.


## Subset

**Set inclusion**, a binary relation derived from membership relation, is a binary relation between two sets. The relation "_is included in_", also called **subset relation**, is denoted by the symbol $$\subseteq$$.

If all members of set $$X$$ are also members of set $$Y$$, then $$X$$ is a **subset** of $$Y$$, denoted $$X\subseteq Y$$. Equivalently, $$Y$$ is a **superset** of $$X$$, denoted $$Y\supseteq X$$.

The relationship of one set being a subset of another is called **inclusion** or sometimes **containment**.

The subset relation defines a partial order on sets. The algebra of subsets forms a Boolean algebra in which the subset relation is called inclusion.

The definition for subset also means that any set is a subset (or superset) of itself.

> Any set, $$X$$, is a subset of itself, $$X\subseteq X$$

This also gives us the definition of **set equality**: two sets are equal if they containt precisely the same elements, that is, if they are each other's subsets:

> Sets $$X$$ and $$Y$$ are equal if $$X\subseteq Y$$ and $$Y\subseteq X$$.

If set $$Y$$ contains the same elements as set $$X$$, but also additional ones, then $$X$$ is a **proper subset** of $$Y$$, denoted as $$X\subset Y$$.

> $$X$$ is a proper subset of $$Y$$ if and only if $$X$$ is a subset of $$Y$$, but $$X\neq Y$$.


Set membership is not set inclusion: note that $$1,2,3$$ are elements of the set $$\{1,2,3\}$$, but not its subsets, i.e. $$1,2,3\in \{1,2,3\}$$.

On the other hand, subsets, such as $$\{1\},\{2\},\{3\}$$, are not elements of the set $$\{1,2,3\}$$, but (some of) its subsets, e.g. $$\{2\} \subseteq \{1,2,3\}$$.



## Notations

$$
let\ A=\{1,2,3\}  \\
then: \\
\quad 1\in A      \\
\quad A\ni 2      \\
\quad 1,2,3\in A  \\
\quad \{2\} \not\in A \\
\quad A\subseteq A \\
\quad 3 \not\subseteq A \\
\quad 1,2,3 \not\subseteq A \\
\quad \{2\}     \subseteq A \\
\quad \{1,2\}   \subseteq A \\
\quad \{1,2,3\} \subseteq A \\
$$
