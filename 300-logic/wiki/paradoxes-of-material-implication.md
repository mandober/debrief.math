## Paradoxes of material implication

https://en.wikipedia.org/wiki/Paradoxes_of_material_implication

- `(P ∧ ¬P) → Q`
- `P → (Q ∧ ¬Q)`

The *paradoxes of material implication* are a group of true formulae involving *material conditionals* whose translations into natural language are intuitively false when the conditional is translated as if-then statements.

A conditional formula `P → Q` is true in all cases, except when `P` is true and `Q` is false; particularly, conclusion `Q` is true whenever the antecedent `P` is false, due to the principle of explosion (anything follows from falsity).

If natural language conditionals were understood in the same way, that would mean that the sentence "If the Nazis had won World War Two, everybody would be happy" is *vacuously true*.

Given that such problematic consequences follow from a seemingly correct assumption about logic, they are called paradoxes of material implication. They demonstrate a mismatch between classical logic and robust intuitions about meaning and reasoning.

## Paradox of entailment

Material conditional, like all other logical connectives, is defined by a truth table.

p | q | p → q
1 | 1 |   1
1 | 0 |   0
0 | 1 |   1
0 | 0 |   1


Its truth table is usually not what one would expect. That is, the first two rows are intuitive, the last two rows aren't.

The first row, `1 → 1 = 1` is the epythomy of deduction: if the premises (`p`) are true than the conclusion (`q`) is guaranteed to be true.



`1 → 0 = 0`

```hs
(→) :: Bool → Bool → Bool
true  → true  = true
true  → false = false
false → true  = true
false → false = true
```

In natural languages, an instance of the paradox of entailment arises: "It is raining AND it is not raining, therefore, George Washington is made of cheese".

That is, in a conditional `P → Q`, if the antecedent `P` is false, then the truth value of the conclusion DOES NOT MATTER - the conditional (`P → Q`) proposition will be TRUE either way.



```hs
(→) :: Bool → Bool → Bool
true  → true  = true
true  → false = false
false → _     = true
```



contradictory statement


 like the conjunction of opposing truth values, `P ∧ ¬P`, 


, i.e. if it both affirms and denies the same predicate or if it 


or, simply, 
"FALSE, thus <anything>" i.e. `⊥ → P`). 

This arises from EFQ, a law of classical logic stating that inconsistent premises always make an argument valid; that is, inconsistent premises imply any conclusion at all. This seems paradoxical because although the above is a logically *valid* argument, it is *unsound* (not all of its premises are true).

### Construction

**Validity** is defined in classical logic as follows: an argument (consisting of premises and a conclusion) is valid if and only if there is no possible situation in which all the premises are true and the conclusion is false. However, we can construct an argument in which the *premises are inconsistent (contradictory)*. This would satisfy the test for a valid argument since there would be no possible situation in which all the premises are true and therefore no possible situation in which all the premises are true and the conclusion is false.

For example an argument with inconsistent premises might run:
- It is definitely raining (1st premise; true)
- It is not raining (2nd premise; false)
- George Washington is made of rakes (Conclusion)

As there is no possible situation where both premises could be true, then there is certainly no possible situation in which the premises could be true while the conclusion was false. So the argument is valid whatever the conclusion is; inconsistent premises imply all conclusions.

## Simplification

The classical paradox formulae are closely tied to *conjunction elimination*, `(p ∧ q) → p` which can be derived from the paradox formulae by *importation* (uncurrying). In addition, there are serious problems with trying to use material implication as representing the English "if-then".

For example, the following are valid inferences, but mapping them back to English sentences using "if" gives paradoxes:

1. `(p → q) ∧ (r → s) ⊢ (p → s) ∨ (r → q)` !!
2. `(p ∧ q) → r ⊢ (p → r) ∨ (q → r)`

The first might be read "If John is in London then he is in England, and if he is in Paris then he is in France. Therefore, it is true that either (a) if John is in London then he is in France, or (b) if he is in Paris then he is in England." Using material implication, if John is not in London then (a) is true; whereas if he is in London then, because he is not in Paris, (b) is true. Either way, the conclusion that at least one of (a) or (b) is true is valid.

But this does not match how if-then is used in natural language: the most likely scenario in which one would say "If John is in London then he is in England" is if one does not know where John is, but nonetheless knows that if he is in London, he is in England. Under this interpretation, both premises are true, but both clauses of the conclusion are false.

The second example can be read "If both switch A and switch B are closed, then the light is on. Therefore, it is either true that if switch A is closed, the light is on, or that if switch B is closed, the light is on." Here, the most likely natural-language interpretation of the if-then statements would be "whenever switch A is closed, the light is on," and "whenever switch B is closed, the light is on." Again, under this interpretation both clauses of the conclusion may be false (for instance in a series circuit, with a light that comes on only when both switches are closed).
