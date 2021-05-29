# Fitch notation

https://en.wikipedia.org/wiki/Fitch_notation

*Fitch diagrams*, or Fitch notation (named after Frederic Fitch), is a notational system for constructing formal proofs. Fitch-style proofs arrange the sequence of propositions that make up the proof into numbered rows. A unique feature of Fitch notation is that the degree of indentation of each row conveys which assumptions are active.

Introducing a new assumption increases the level of indentation, and begins a new vertical "scope" bar that continues to indent subsequent lines until the *assumption is discharged*. This mechanism immediately conveys which assumptions are active for any given line in the proof, without the assumptions needing to be rewritten on every line (as with sequent-style proofs).

Fitch-style proof is tabular arrangement of numbered rows. The given propositions are first stated, each on its own row (possibly justified by writing "proposition #"). The following rows lay out the proof: each row contains a proposition obtained either by an assumption (in which case the row is indented) or by an application of an inference rule to previous rows, followed by its justification and the numbers of rows engaged.

┌──┬──────────────────────┬────────────────────────┐
│1 │ ((a -> b) -> r) -> r │ proposition 1          │
│2 │ (a -> r) -> r        │ proposition 2          │
│3 │ b -> r               │ proposition 3          │
├──┼──────────────────────┼────────────────────────┤
│  │ r                    │ conclusion             │
╞══╪══════════════════════╪════════════════════════╡
│4 │ ┌ (a -> b)¹          │ assumption¹            │
│5 │ │ ┌ a²               │ assumption²            │
│6 │ │ │ b                │ MP 4,5                 │
│7 │ │ │ r                │ MP 3,6                 │
│8 │ │ a² -> r            │ →i 5-7                 │
│9 │ │ r                  │ MP 2,8                 │
│10│ (a -> b)¹ -> r       │ →i 4-9                 │
│11│ r                    │ MP 1,10                │
└──┴──────────────────────┴────────────────────────┘


## Example 1

a -> c |- a -> (b -> c)

1 | a -> c             premise
2 | | a                assumption
3 | | | b              assumption
4 | | | c              ->e 1,2
5 | | b -> c           ->i 3-4
6 | a -> (b -> c)      ->i 2-5


## Example 2

a v b |- ¬(¬a ∧ ¬b)

1  | a v b          premise
2  | | ¬a ∧ ¬b      assumption
3  | | | a          assumption
4  | | | ¬a         ∧e 2
5  | | | #          #i 3,4
6  | | | b          assumption
7  | | | ¬b         ∧e 2
8  | | | #          #i 6,7
9  | | #            ∨E 1,3-5,6-8
10 | ¬(¬a ∧ ¬b)     ¬I 2-9


## Example 3

(A v (Ex)Fx) |- (Ex)(A v Fx)

1   |_  (A v (Ex)Fx)        Premise
2   | |_  A                 Assumption
3   | |   (A v Fa)          2  vI
4   | |   (Ex)(A v Fx)      3  EI
5   | |_  (Ex)Fx            Assumption
6   | | |_  Fa              Assumption
7   | | |   (A v Fa)        6  vI
8   | | |   (Ex)(A v Fx)    7  EI
9   | |   (Ex)(A v Fx)      5,6-8  EE
10  |   (Ex)(A v Fx)        1,2-4,5-9  vE


## Example 4

|- (Ax)(Ay)((Fx & ~Fy) -> ~x=y)

1   |_  a                            Flag
2   | |_  b                          Flag
3   | | |_  (Fa & ~Fb)               Assumption
4   | | | |_  a=b                    Assumption
5   | | | |   Fa                     3  &E
6   | | | |   ~Fb                    3  &E
7   | | | |   Fb                     4,5  =E
8   | | | |   #                      6,7  #I
9   | | |   ~a=b                     4-8  ~I
10  | |   ((Fa & ~Fb) -> ~a=b)        3-9  ->I
11  |   (Ay)((Fa & ~Fy) -> ~a=y)      2-10  AI
12    (Ax)(Ay)((Fx & ~Fy) -> ~x=y)    1-11  AI
