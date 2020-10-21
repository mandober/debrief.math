# Category

The Category consist of 2 parts: the data and the set of rules the data must follow.


## Data

1. A Set of **objects** of the category, S = {A, B, C}.

Here, in S, objects are abstract sets whose interior we cannot see; we cannot talk about their elements.

2. A Set of arrows between objects.

The source of each arrow is an object in category called *domain*, and the target is the object in category called *codomain*, e.g. `f: A -> B`.

Here, in S, the arrows (morphisms) are functions (mappings).

$$\displaystyle \forall a \in A, \exists !b \in B \mid f(a) = b$$

3. A special arrow, called the Identity arrow, defined on each object in category, $$1_A : A \to A$$.

Here, S is also a set of identrity arrows:

$$\forall a \in A \mid 1_A (a)=a$$


## Rules

1. Composition

$$(f: A \to B_1 \land g: B_2 \to C) \to (g \circ f : A \to C) \iff B_1 = B_2$$

Given two functions,   
$$f: A \to B_1$$ and    
$$g: B_2 \to C$$    
we can form a composition,    
$$g \circ f$$    
if and only if     
$$B_1 = B_2$$

2. Associativity of composition

$$
f: A \to B \\
g: B \to C \\
h: C \to D \\
then\ \\
h \circ g \circ f = (h \circ g) \circ f = h \circ (g \circ f)
$$

3. Identity laws

$$(1_A: A \to A) \land (1_B: B \to B) \land (f: A \to B) \\
then \\
f \circ 1_A = f = 1_B \circ f
$$
