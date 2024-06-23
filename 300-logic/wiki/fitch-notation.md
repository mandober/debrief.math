# Fitch notation

https://en.wikipedia.org/wiki/Fitch_notation

**Fitch notation**, aka **Fitch diagrams**, is a notational system named after Frederic Fitch for constructing formal proofs used in sentential logics and predicate logics. 

**Fitch-style proofs** arrange the sequence of sentences that make up the proof into rows. A unique feature of Fitch notation is that the degree of indentation of each row conveys which assumptions are active for that step.

## Example

Each row in a Fitch-style proof is either:
- an assumption or subproof assumption
- a sentence justified by the citation of
  - a rule of inference
  - the prior line or lines of the proof that license that rule

Introducing a new assumption increases the level of indentation, and begins a new vertical "scope" bar that continues to indent subsequent lines until the assumption is discharged. This mechanism immediately conveys which assumptions are active for any given line in the proof, without the assumptions needing to be rewritten on every line (as with *sequent-style proofs*).

The following example, `P ⇔ ¬¬P`, displays the main features of Fitch notation:

```
0 ├─                         [ass, want P ⇒ ¬P]
1 │  ├─ P                    [ass, want ¬P]
2 │  │  ├─ ¬P                [ass for RAA]
3 │  │  │  P ∧ ¬P            [⊥I 1,2]
4 │  │  ¬¬P                  [¬I 2]
5 │  ├─ ¬¬P                  [ass, want P]
6 │  │   P                   [¬E 5]
7 │  P ⇔ ¬¬P                [⇔I 1-4, 5-6]
```

To prove a biconditional (`P ⇔ ¬¬P`), we need to prove both sides:    
`P ⇒ ¬¬P` and `¬¬P ⇒ P`, so there will be (at least) two subproofs.

0. the null assumption indicates that we are proving a tautology.
1. first subproof: we assume lhs (P) to show rhs (¬P) follows
2. subsubproof: we can assume what we want; we aim for RAA here by assuming ¬P
3. contradiction from lines 1 and 2
4. meaning our assumption (¬P) was false, so negate it to get `¬¬P`
5. second subproof: we assume `¬¬P` to show `P`
6. double-negation elimination, from `¬¬P` to `P`
7. biconditional intro based on the lines 1-4 showing `P ⇒ ¬¬P`, and the lines 5-6 showing that `¬¬P ⇒ P`.
