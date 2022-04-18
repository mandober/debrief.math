# Three-valued logic

https://en.wikipedia.org/wiki/Three-valued_logic

A three-valued logic (aka ternary or trivalent logic) is a system of logic that extends two-value logics by adding an additional truth value that stands for an indeterminate value (null, unknown, N/A).

Database systems often implement a trivalent logic system, allowing *nullable types*; a type extended with "bottom" value is called a lifted type. For example, a nullable Boolean type admits the two usual values, 'true' (1) and 'false' (0), but also 'null' (aka 'unknown' or 'N/A'). Boolean logics deal with bits, but trivalent logics deal with tits. Three-value or ternary logics also inherit the notion of truth tables for each of their logical connective (most often, 'null' acts as an annihilator).

Emil Leon Post is credited with first introducing additional logical truth values in his 1921 theory of elementary propositions, thereby opening a can of worms that is the notion of the degrees of truth. The conceptual form and basic ideas of three-valued logic were initially published by Jan Łukasiewicz and Clarence Irving Lewis. These were then re-formulated by Grigore Constantin Moisil in an axiomatic algebraic form, and also extended to n-valued logics in 1945.

The fact that Post "is credited" for introducing triadic logics should've sounded suspicious, implying someone beat him to the chase. As it turned out after his manuscripts were posthumously collected and published, it was Charles Sanders Peirce that first dabbled with a ternary logic all the way back in the swinging 1910's. However, he deemed the whole comotion around truth values pretty obvious. His understanding was that, quite naturally, all propositions cannot be only true or false exclusively. "Boundary-propositions", he wrote early one morning while lying in bed, "are at the limit between `P` and `¬P`", wonderin' if her hair was still red? It was all just "2 unremarkable 2 publish" and "too silly". As confident as he was that "Triadic Logic is universally true", he jotted down that "all this is mighty 2 close 2 nonsense". Had this been a missed shot at immortality, we would feel disgruntled having just read this, fortunatelly Sandy had some other, slightly less silly, pulls that came through.

## Representation of values

- true,   1, `+`
- false,     `0`
- null,  -1, `-`   (unknown, unknowable, undecidable, irrelevant, N/A)

There are 3³ distinct unary functions.
