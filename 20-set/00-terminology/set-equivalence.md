# Set equivalence

Two sets are equal, $$X=Y$$, iff they have identical elements, or formally, if they are subsets of each other. However, two sets are **equivalent** iff they have the same cardinality. **Set equivalence** is denoted as $$X\simeq Y$$ or $$X\sim Y$$. **Set inequivalence** is denoted as $$X\not\simeq{Y}$$ or $$X\not\sim Y$$.

To see if two sets, $$X$$ and $$Y$$, have the same cardinality, you don't need to count their elements - you can just couple their elements: pairing each element $$x$$ of the set $$X$$ with an element $$y$$ of a set $$Y$$ so that every element belongs to exactly one pair, $$(x,y)$$.

If no unpaired element remains, such pairing of elements from two sets is called **one-to-one** (1-1) or **correspondence**.

## Bijection

Sets $$X$$ and $$Y$$ are equivalent iff they have the same cardinality, that is, if there exists a **bijection function**, $$f:X\to Y$$, from the elements of $$X$$ to those of $$Y$$.

Bijection is a function (and all functions are relations) that associates each element of $$X$$ to exactly one element of $$Y$$, such that all elements of $$Y$$ are associated.

## Equivalence

The study of cardinality is often called **equinumerosity** (equalness-of-number); the terms equipollence (equalness-of-strength) and equipotence (equalness-of-power) are also used.

The statement that two sets are equinumerous is denoted:
$$A\approx B$$ or $$A\sim B$$ or $$|A|=|B|$$.


Equinumerosity has the characteristic properties of an equivalence relation i.e. reflexivity, symmetry and transitivity.

**Reflexivity**   
Given a set A, the identity function on A is a bijection from A to itself, showing that every set A is equinumerous to itself: A ~ A.

**Symmetry**    
For every bijection between two sets A and B there exists an inverse function which is a bijection between B and A, implying that if a set A is equinumerous to a set B then B is also equinumerous to A: A ~ B implies B ~ A.

**Transitivity**    
Given three sets A, B and C with two bijections f : A → B and g : B → C, the composition g ∘ f of these bijections is a bijection from A to C, so if A and B are equinumerous and B and C are equinumerous then A and C are equinumerous: A ~ B and B ~ C together imply A ~ C.
