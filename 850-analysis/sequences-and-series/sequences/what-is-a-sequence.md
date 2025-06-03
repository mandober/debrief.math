# Sequence :: What is a sequence

## About sequences

- A sequence is an *ordered collection* of elements, called *terms*, that, in contrast to a set, allows *multiplicity* of terms (non-uniqueness of terms).
- A sequence is a *collection of mathematical objects*, but the sequence itself is a mathematical object in its own right.
- However, unlike sets, which can be both elements and containers, sequences are almost exclusively containers; nested sequences are almost never used.
- A sequence is not intended to serve as a practical container - adding or removing elements is not allowed - sequences are immutable objects. A sequence holds a finite or even an infinite number of objects, and mostly serves to provide a convenient singular reference (can be hauled around comfortably) for an entire collection of objects.
- Elements of a sequence are almost always numbers, usually real or complex numbers, and each sequence has a certain ordering imposed on its elements. That is to say, objects are not placed willy-nilly in a sequence, abusing it as a mere container; rather, the objects are put in a sequence in order to retain some implicit, imposed ordering. In fact, the logic of that ordering is more important that the actual elements.
- The logic of this ordering comes from a *generating function* or *general formula* that defines how to produce terms. So, a sequence is both an abstract object, usually "compressed" into a single generating function or formula, or a concerete and often very large object when it gets expanded into a sequence of elements. This expansion is the effect of constructing some terms of the sequence, starting with the initial term and proceeding to "inflate" a number of subsequent terms. For infinite sequences, only an *initial segment* of a certain length can be expanded, with the appended ellipses signalling its neverendingness.






- elements of a sequence are almost always real or complex numbers

- it is a collection of mathematical objects
- sequence itself is also a mathematical object
- elements of a sequence are called terms
- terms are almost always numbers, mostly from ℝ or ℂ
- infinite sequence has an infinite number of terms
- finite sequence has a property called the length of a sequence
- sequences cannot be empty or have empty slots, all slots are filled, in order
- slots of a sequence are labelled and identified by an index
- index is a unique natural number
- an index uniquely identifies each slot and thereby the term residing in it
- indexing means retrieving terms by their index from the sequence
- indexing is also the automatic process of assigning an index to each term
- position of a certian term in a sequence is stable, fixed
- sequence are immutable: terms cannot be removed or added to a sequence


## What is a sequence

A **sequence** is an ordered collection of terms in which repetition is allowed.

Unlike sets, which are ignorant to an ordering of elements, sequences enforce ordering, so each element is always positioned in the same, fixed place, and can be easily retrieved using its index. An **index** is always a natural number that identifies a position in a sequence. A sequence can be viewed as a collection of *slots* (positions, compartments), with each slot being labelled and identified by an unique index. Thus, a sequence named `a`, usually denoted by a generic index `n` as `aₙ`, possibly in braces as `{aₙ}`, consists of `n` slots, `n ∈ ℕ`. To retrieve an element from it, we have to know its index, then e.g. `a₄` would retrieve the element located in the 4th slot. This also means that writing `a₄` would evaluate to the value of the term located in the 4th slot in the sequence. Empty slots are disallowed, it is not possible to skip slots. So a finite sequence like `{a₇}` is bound to have 7 slots all filled with certain objects (usually numbers).




A sequence is an ordered collection of elements, called **terms**. Unlike sets, sequences support multiplicity of elements. The number of terms in a sequence is called the *length of the sequence*.

An *infinite sequence* is a sequence with an infinite number of terms. Research into infinite sequences has started in the 1600's. A *finite sequence* has a finite number of terms. An infinite sequence can be easily turned into a finite sequence by chopping off its tail after a certain index, thereby obtaining an *initial segment* of a sequence. Infinite sequences are usually examined by only considering some number of elements - an initial segment - always including the terms from the start up to a certain index. There is less need to examine finite sequence like that, and there is almost never a need not to investigate an infinite sequence by skipping a number of elements from the start; that is, the *initial term* and the subsequent terms of a sequence are almost always included in order, all the way up to the *final term*. Various initial segments that can be obtained from an infinite sequence only differ by their upper bound, i.e. by the index of the final term that is included in the subsequance.



A sequence is a *mathematical object*, just like sets and numbers are. It is an object, but also a container for other objects and this regard sequences are very similar to sets.

A sequence is an ordered collection of elements meaning that every element has a fixed place in the sequence as determined by its index. An **index** or subscript is always a natural number. The terms of sequences are almost always numbers, so in case of a sequence of real numbers, the sequence itself can be understood as a *function from ℕ to ℝ*.
