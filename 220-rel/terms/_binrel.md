# Binary relation

⊰ ⨟ ⨾ ⊱ ⫴ ⫻ ☂ ⛱ Ꝕ ꝕ 🗪 ❏ ★ Ʀ


## List of properties
Important properties that a binary relation may have include:
- reflexivity, irreflexivity, coreflexivity
- symmetry, antisymmetry, asymmetry
- transitivity
- totality
- right Euclidean, left Euclidean, Euclidean
- trichotomy, serial properties, set-like properties


## List of relations
List of some relations by properties
- equivalence: reflexive, symmetric, transitive.
- partial equivalence: symmetric, transitive.
- reflexive: symmetric, transitive, serial.
- partial order: reflexive, antisymmetric, transitive.
- total order (linear order, or chain): partial order that is total.
- well-order: linear order where every nonempty subset has a least element.


## Total
This definition for total is different from left total. 
For example, `>=` is a total relation.

## Trichotomous
For example, `>` is a trichotomous relation, while the relation "divides" on natural numbers is not.

## Euclidean
A Euclidean relation is both left and right Euclidean. Equality is a Euclidean relation because if `x=y` and `x=z`, then `y=z`.

## Serial
"Is greater than" is a serial relation on the integers.
But it is not a serial relation on the positive integers, because there is no `y` in the positive integers such that `1 > y`. 
However, "is less than" is a serial relation on the positive integers, the rational numbers and the real numbers.

Every reflexive relation is serial: for a given `x`, choose `y = x`.
A serial relation can be equivalently characterized as every element having a non-empty successor neighborhood. Similarly an inverse serial relation is a relation in which every element has non-empty predecessor neighborhood.

## Set-like or Local
The usual ordering `<` on the class of ordinal numbers is set-like, while its inverse `>` is not.




## Partial equivalence relation
A partial equivalence relation (PER) `R` on a set `X` is a relation that is _symmetric_ and _transitive_.

It holds for all `a, b, c ∈ X` that:
1. if `aRb`, then `bRa` (symmetry)
2. if `aRb` and `bRc`, then `aRc` (transitivity)

If `R` is also reflexive, then `R` is an equivalence relation.




## Reference

- [Reflexive relation](http://www.wikipedia.com/en/Reflexive_relation)
- [Symmetric relation](http://www.wikipedia.com/en/Symmetric_relation)
- [Transitive relation](http://www.wikipedia.com/en/Transitive_relation)
- [Equivalence relation](http://www.wikipedia.com/en/Equivalence_relation)
- [Partial equivalence relation](http://www.wikipedia.com/en/Partial_equivalence_relation)





Binary relations are used to model concepts like "is greater than", "is equal to", and similar. The concept of function is defined as a special kind of binary relation.

Relations are categorized by the special properties they hold.

If $$X$$ and $$Y$$ are sets, **the Cartesian product** $$X \times Y$$ is the set of all ordered pairs $$(x,y)$$ with $$x\in X$$ and $$y \in Y$$. And the set $$X^2 =X\times X$$ is the set where all pair of $$x\in X$$.

**A binary relation** between sets $$A$$ and $$B$$ is a **subset** of their Cartesian product, $$A \times B$$. Or equivalently, it is an **element** in the powerset of their Cartesian product.

Any subset of the Cartesian product forms a relation: the Cartesian product itself forms a universal (full) relation and the empty set (being a subset of the Cartesian product set) forms an empty (or null) relation.

A single set's Cartesian product (with itself) is commonly denoted as $$\mathbb{N^2} = \mathbb{N} \times \mathbb{N}$$.

---

The set $$\mathbb{N^2} = \mathbb{N} \times \mathbb{N}$$ of ordered pairs of natural numbers (starting and ending curly-braces demarking this set are not showndue to formatting):

$$$
\begin{matrix}
  (1,1), &(1,2),  &(1,3), &\dots \\
  (2,1), &(2,2),  &(2,3), &\dots \\
  (3,1), &(3,2),  &(3,3), &\dots \\
  \vdots &\vdots  &\vdots &\ddots
\end{matrix}\\
\text{figure 1.1}
$$$


*Any* subset of this set forms a relation:
- __full relation__, where every pair participates, is the set of the __Cartesian product__ itself.
- on the other side of the extreme is the __empty relation__ which is the __empty set__; even though no pair participates, it is still considered a relation.
- between these two extremes are all other relations, some of which have a name, being more popular then others. The most popular ones, come with a name and a special symbol attached.

__Less than__ (LT, `<`) relation is formed by the subset of all pairs lying above the diagonal, and __greater than__ (GT, `>`) by the subset of all pairs below the diagonal. The union of these two with identity relation form __less than or equal to__ (LE, `<=`) and __greater than or equal to__ (GE, `>=`) relations, respectively.
