# Nonregular languages

https://www.youtube.com/watch?v=yXSisUjz9iQ

Here we look at 4 closure properties for non-regular languages: union, intersection, complement, and star.

We show that these languages are closed only under complement, and are not closed under union, intersection, or star.

The reason for this is based on the complement proof, and that we can create languages such that the language and its complement (unioned, or intersected) is in fact regular.

The proof for star is based on having a non-regular language with a string of very short length that repeats many times in the star of the language.


Closures of nonregular languages
- complement


## Myhill-Nerode Equivalence Relation

The *Myhill-Nerode Equivalence Relation* is another way of proving a language is not regular.

Some languages cannot be shown to be regular using the *pumping lemma*, so we look at a "stronger" property, which is that if two different strings land in the same state, then anything read after either of them will also result in the same state.

We turn this on its head by considering any two different strings `xz` and `yz` that land in different states. Then it must be that `x` and `y` themselves went to different states. If there are infinitely many such cases, this implies that the language cannot be regular.
