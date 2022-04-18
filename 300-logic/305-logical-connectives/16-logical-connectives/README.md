# 16 binary logical connectives

0000 | BOT    | 1111 | TOP
0001 | NOR    | 1110 | OR

0010 | NCON   | 1101 | CONV
0011 | ¬P     | 1100 | P

0100 | NIMP   | 1011 | IMP
0101 | ¬Q     | 1010 | Q

0110 | XOR    | 1001 | IFF
0111 | NAND   | 1000 | AND





0000 | 0 | falsum, falsity, contradiction, ⟘
0001 | 1 | alternative denial, NOR
0010 | 2 | converse non-implication
0011 | 3 | negated proposition P, ¬P
0100 | 4 | non-implication
0101 | 5 | negated proposition Q, ¬Q
0110 | 6 | exclusive disjuntion
0111 | 7 | joint denial, NAND
1000 | 8 | conjunction, AND
1001 | 9 | biconditional, IFF, ⟺
1010 | a | proposition Q
1011 | b | implication
1100 | c | proposition P
1101 | d | converse implication
1110 | e | inclusive disjuntion
1111 | f | verum, veracity, tautology


p | q | F | ∧ | ⇷ |¬p | ⇸ |¬q | + | ↑ | ∧ | ↔ | q | → | p | ← | ∨ | T
--|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|----
0 | 0 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 1
0 | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 1 | 1
1 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 1 | 1 | 1 | 1
1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1


p | q | F | ↓ | ⇷ |¬p | ⇸ |¬q | + | ↑ | ∧ | ↔ | q | → | p | ← | ∨ | T
--|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|----
1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1
1 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 1 | 1 | 1 | 1
0 | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 1 | 1
0 | 0 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 1





0011 Proposition P
0101 Proposition Q
0001 Conjunction

↑ Alternative denial 1110
∨ Disjunction  0111
↓ Joint denial 1000
→ Material conditional 1101
↮\nleftrightarrow Exclusive or  0110
↔ Biconditional  1001
← Converse implication 1011
