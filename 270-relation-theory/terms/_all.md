# Relations



[Functional](https://en.wikipedia.org/wiki/Functional_relation)
[Function](https://en.wikipedia.org/wiki/Function_(mathematics))
[Left-total](https://en.wikipedia.org/wiki/Binary_relation)
[Injective](https://en.wikipedia.org/wiki/Injective)
[Surjective](https://en.wikipedia.org/wiki/Surjective)
[Bijection](https://en.wikipedia.org/wiki/Bijection)
[Transitive](https://en.wikipedia.org/wiki/Transitive_relation)
[Reflexive](https://en.wikipedia.org/wiki/Reflexive_relation)
[Coreflexive](https://en.wikipedia.org/wiki/Coreflexive_relation)
[Irreflexive](https://en.wikipedia.org/wiki/Irreflexive_relation)
[Symmetric](https://en.wikipedia.org/wiki/Symmetric_relation)
[Antisymmetric](https://en.wikipedia.org/wiki/Antisymmetric_relation)
[Asymmetric](https://en.wikipedia.org/wiki/Asymmetric_relation)
[Total](https://en.wikipedia.org/wiki/Total_relation)
[Connex](https://en.wikipedia.org/wiki/Total_relation)
[Idempotent](https://en.wikipedia.org/wiki/Idempotent_relation)
[Equivalence](https://en.wikipedia.org/wiki/Equivalence_relation)
[Preorder](https://en.wikipedia.org/wiki/Preorder)
[Partial order](https://en.wikipedia.org/wiki/Partial_order)
[Total order](https://en.wikipedia.org/wiki/Total_order)
[Strict partial order](https://en.wikipedia.org/wiki/Strict_partial_order)
[Strict total order](https://en.wikipedia.org/wiki/Total_order)
[Dense](https://en.wikipedia.org/wiki/Dense_order)
[Triadic relation](https://en.wikipedia.org/wiki/Triadic_relation)

[Binary relation](https://en.wikipedia.org/wiki/Binary_relation)



[Algebraic logic](https://en.wikipedia.org/wiki/Algebraic_logic)
[Allegory (category theory)](https://en.wikipedia.org/wiki/Allegory_(category_theory))
[Cartesian product](https://en.wikipedia.org/wiki/Cartesian_product)
[Cartesian square](https://en.wikipedia.org/wiki/Cartesian_square)
[Cylindric algebras](https://en.wikipedia.org/wiki/Cylindric_algebra)
[Extension in logic](https://en.wikipedia.org/wiki/Extension_(predicate_logic))
[Involution](https://en.wikipedia.org/wiki/Involution_(mathematics))
[Logic of relatives](https://en.wikipedia.org/wiki/Logic_of_relatives)
[Logical matrix](https://en.wikipedia.org/wiki/Logical_matrix)
[Predicate functor logic](https://en.wikipedia.org/wiki/Predicate_functor_logic)
[Quantale](https://en.wikipedia.org/wiki/Quantale)
[Relation](https://en.wikipedia.org/wiki/Relation_(mathematics))
[Relation construction](https://en.wikipedia.org/wiki/Relation_construction)
[Relational calculus](https://en.wikipedia.org/wiki/Relational_calculus)
[Relational algebra](https://en.wikipedia.org/wiki/Relational_algebra)
[Residuated Boolean algebra](https://en.wikipedia.org/wiki/Residuated_Boolean_algebra)
[Spatial-temporal reasoning](https://en.wikipedia.org/wiki/Spatial-temporal_reasoning)
[Theory of relations](https://en.wikipedia.org/wiki/Theory_of_relations)


---

$$xRy : x \in X, y\in Y\\$$
$$R \subseteq X \times Y$$
$$X$$ and $$Y$$
$$X^2$$
$$xRx$$

---

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
