# Collation

https://proofwiki.org/wiki/Definition:Collation

## Collation in a logic system

A **collation** is a structured alignment with certain placeholders that underpins the construction of formal languages. These placeholders may be replaced by elements of an alphabet `A` under consideration. A collation in `A` is one where all placeholders are replaced by symbols from `A`.

For example, if we take `□` to denote a placeholder, then `□□□□□` represents the collation "a word of length 5". We can see that then the word "sheep" is an instance of the collation "a word of length 5" in the English alphabet, as is the word "axiom".

Typical examples of collations encountered in mathematics are words or structured graphics like labeled trees.

A key feature of collations is the presence of methods to collate a number of collations into a new one. A collection of collations, together with a collection of such collation methods may be called a **collation system**. For example, words and the method of concatenation.

Let `C` be a collation system and `A` be an alphabet. Suppose that for any two collations from `C`, `C` and `C′`, in the alphabet `A`, it holds that if `C` and `C′` are indistinguishable, then `C=C′`. Then `C` has the *unique readability property* for `A`.

Collation is a very fundamental albeit an abstract concept, so it is helpful to present some examples.
- any word in natural language is a collation in the standard alphabet.
- any number is a collation in the alphabet of digits.
- any sentence is a collation in the alphabet of all words.
- any sentence is a collation in the alphabet of letters and punctuation marks.
- any movie is a collation in the alphabet of stills.
- any Lego construction is a collation in the alphabet of Lego bricks.
- any labeled tree is a collation.

We see that unique readability is typically ensured by:
- position on the paper (or any other 2D carrier)
- position in time
- position in the real world (or any other 3D environment)


## Collation in general

https://en.wikipedia.org/wiki/Collation

**Collation** is the assembly of written information into a standard order. Many systems of collation are based on numerical order or alphabetical order, or extensions and combinations thereof.

Formally speaking, a collation method typically defines a total order on a set of possible identifiers, called sort keys, which consequently produces a total preorder on the set of items of information (items with the same identifier are not placed in any defined order).

A *collation algorithm*, such as the Unicode collation algorithm, defines an order through the process of comparing two given character strings and deciding which should come before the other. When an order has been defined in this way, a sorting algorithm can be used to put a list of any number of items into that order.

The advantages of collation is that it is fast and easy to find an element in the list, or to confirm its absence. In automatic systems this can be done using a binary search algorithm or interpolation search. Also, you can easily find the first or last elements of the list, or elements in a given range.
