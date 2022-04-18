# Connectives

F  ↓  ⇷ ¬P  ⇸ ¬Q  +  ↑  ∧  ↔  Q  →  P  ←  ∨  T

F | ↓ | ⇷ |¬p | ⇸ |¬q | + | ↑ | ∧ | ↔ | q | → | p | ← | ∨ | T


## Horizontal list binary16

- L2R means P = 1100, Q = 1010, so AND = 1000
- RTL means P = 0011, Q = 0101, so AND = 0001

ω | R2L ←  | bin  | L2R →  | notes
--|--------|------|--------|-------------
0 | bot    | 0000 | BOT    | palindromic
1 | and    | 0001 | NOR    |
2 | nimp   | 0010 | NCON   |
3 | P      | 0011 | ¬P     |
4 | ncon   | 0100 | NIMP   |
5 | Q      | 0101 | ¬Q     |
6 | xor    | 0110 | XOR    | palindromic
7 | OR     | 0111 | NAND   |
8 | nor    | 1000 | AND    |
9 | iff    | 1001 | IFF    | palindromic
a | non-q  | 1010 | Q      |
b | con    | 1011 | IMP    |
c | non-p  | 1100 | P      |
d | imp    | 1101 | CONV   |
e | nand   | 1110 | OR     |
f | TOP    | 1111 | TOP    | palindromic
