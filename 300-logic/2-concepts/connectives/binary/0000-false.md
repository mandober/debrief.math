# BOTTOM

- bottom is a binary `0000₂` or unary `00₂` connective corresponding to the "always false" Boolean function.
- bottom, aka contradiction (falsum), denoted by `⟘`
- bottom is a constant function, ignores both inputs
- bottom, like top, scales beautifully: it just returns 0 no matter the arity
- bottom is symmetric
- bottom is P-symmetric: whether P = 1100 or P = 0011, ⟘(P) = 0000
- bottom is rarely used as an operator
- bottom is commonly used to denote a contradictory formula
- bottom can be defined as `⟘ := P ⋀ ¬P` (always false)
- in IL, negation of a proposition `P` is defined as `¬P := P -> ⟘`
- bottom symbol (as contradiction) is seen in inference rules in classic logic
  `P ⋯ ¬P ==> ⟘`




```
Negation

 [p]¹
  ⫶
  ⟘               p  ¬p
------ ¬I¹       ------- ¬E
 ¬p                 ⟘


  ⟘
----- ⊥I (Absurdity)
  p


  p            ⟘              ¬p -> ⟘
----- ID     ----- CTR       --------- RAA
  p            p                p
```
