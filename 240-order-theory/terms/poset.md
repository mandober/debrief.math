# Partially ordered set

https://en.wikipedia.org/wiki/Partially_ordered_set

A **partially ordered set** (poset) consists of a set together with a binary *partial ordering* relation which indicates that:
- not every pair of elements in the set need to be comparable
- for a comparable pair of elements, it indicates which element precedes the other in the ordering

* Unlike *total orders* in which every pair of elements is comparable, partial orders may have pairs of elements for which neither element precedes the other in the poset. Therefore, partial orders generalize total orders - every total order is a partial order. A partial order weakens the requirements of a total order.

* However, it seems that the notion of "relatable" is different from the notion of "comparable", meaning that, especially wrt the axioms that use universal quantification, any two elements must be "relatable" but need not be "comparable". Therefore, it is ok to ask whether `NaN < 3.14` becasue they are related, i.e. they are an element of the "<" relation, i.e. `(NaN, 3.14) ∈ <`; it's only that their relation does not produce result that would indicate which element precedes which (!?) Hmm, but isn't the form of a pair itself indicator of the precedence? Does it not state that first component is R-related to the secondm which in this case says that NaN < 3.14 i.e. NaN preceds 3.14 in this relation, which is an order... that orders elements?! Either not all elements are involved in the relation, or...maybe these order relations have some additional capability...they can evaluate any two elements, which means relating them, which means putting them into an ordered pair and containing that pair - making it a member of self (elements of any relation are ordered pairs; a relation contains ordered pairs and the first component of a pair is R-related to the second one)..but only temporarily! for if it turns out they are relatablebut incomparable, the relation membership expires, the pair gets kicked out out of the relation, which means those two particular elements are not even related. For if NaN were related to 3.14, the order pair (NaN, 4.14) would be a member of the relation. both are members of a set/type "Float". And axioms use ∀.


placing them in an ordered pair to containg them as an elements and indicate the ordering for those elements that are comparable, retroactively demoting incompatible pairs as own elements (i.e. ordered pair as an element of the/any relation).


* A familiar partial order, that is, a partially ordered set, is present in all PLs that support floating point numbers. Since floating point types are almost exclusively implemented according to the IEEE 754 standard, each such type contains the value `NaN`, which is an element that is not comparable to any other; e.g. NaN and 3.14 are not in any relation, neither >, nor <, nor =. In JavaScript, `NaN` is not even comparable to itself, negating the axiom of reflexivity which is necessary condition for a poset. Floats also have a special element `Infinity`, but its relation with other elements is language-dependend.

* Partial orders are used all over math, but their home is the *order theory*, which formalizes and generalizes the intuitive concepts of orders, sequences, and other structural arrangements.

* The axioms of a partial order are reflexivity, antisymmetry, transitivity. (these axioms use universal quantifiers, but in a poset, not any two elements are related? Or, are they are related but incomparable?!)

* When a ≤ b, we say that a is related to b. (This does not imply that b is also related to a, because the relation need not be symmetric.)




- *reflexivity*: each element must be comparable (relatable) to itself
- *antisymmetry*: no two distinct elements may precede each other
- *transitivity*: the start of a chain of precedence relations must precede the end of the chain


Considering LE (<) relation on a set/type `S`, these axioms amount to:
* ∀x ∈ R. x < x (which is false, but the outcome itself is not important)
* ∀xy ∈ R. x < y ∧ y < x <-> x = y
  - (x,y) ∈ R ∧ (y,x) ∈ R <-> x = y



## Formal definition

A non-strict partial order is a homogeneous binary relation "≤" over a set `P` satisfying axioms of reflexivity, antisymmetry, transitivity.

When `a ≤ b`, we say that `a` is related to `b`, but this does not imply that b is also related to a, because the relation need not be symmetric.

The axioms for a non-strict partial order state that the relation ≤ is reflexive, antisymmetric, and transitive. That is, **for all a, b, c in set P**, the following is satisfied:

* a ≤ a (reflexivity: every element is related to itself).
* if a ≤ b and b ≤ a, then a = b (antisymmetry: two distinct elements cannot be related in both directions).
* if a ≤ b and b ≤ c, then a ≤ c (transitivity: if a first element is related to a second element, and, in turn, that element is related to a third element, then the first element is related to the third element).

In other words, a partial order is an antisymmetric preorder.

A set with a partial order is called a partially ordered set (also called a poset). The term ordered set is sometimes also used, as long as it is clear from the context that no other kind of order is meant. In particular, totally ordered sets can also be referred to as "ordered sets", especially in areas where these structures are more common than posets.

* For a, b, elements of a partially ordered set P, if a ≤ b or b ≤ a, then a and b are comparable. Otherwise they are incomparable.

* A partial order under which every pair of elements is comparable is called a total order or linear order; a totally ordered set is also called a chain (e.g., the natural numbers with their standard order).

* A subset of a poset in which no two distinct elements are comparable is called an antichain.

* An element a is said to be strictly less than an element b, if a ≤ b and a ≠ b.

* An element a is said to be covered by another element b, written a ⋖ b (or a <: b), if a is strictly less than b and no third element c fits between them; formally: if both a ≤ b and a ≠ b are true, and a ≤ c ≤ b is false for each c with a ≠ c ≠ b.


---

In a poset $$P$$, the **join** of a subset $$S$$ is the **supremum** or **least upper bound** (LUB) of $$S$$, denoted $$\lor S$$.

In a poset $$P$$, the **meet** of a subset $$S$$ is the **infimum** or **greatest lower bound** (GLB) of $$S$$, denoted $$\land S$$.

In general, the join and meet of a subset of a poset need not exist, but when they do, they are elements of $$P$$.
