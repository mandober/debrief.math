# Hyperoperations

Hyperoperations
- Primary
  - Successor (0)
  - Addition (1)
  - Multiplication (2)
  - Exponentiation (3)
  - Tetration (4)
  - Pentation (5)
  - Hexation (6)
- Inverse for left argument
  - Predecessor (0)
  - Subtraction (1)
  - Division (2)
  - Root extraction (3)
  - Super-root (4)
- Inverse for right argument
  - Predecessor (0)
  - Subtraction (1)
  - Division (2)
  - Logarithm (3)
  - Super-logarithm (4)
- Related
  - Ackermann function
  - Conway chained arrow notation
  - Grzegorczyk hierarchy
  - Knuth's up-arrow notation
  - Steinhaus-Moser notation

1  3  5  7   9
1  2  4  8  16


1   4 → 8   40 → 64
↓   ↑   ↓   ↑     ↓
1 → 2  16 → 24  104 → …

1 4  8 40  64
1 2 16 24 104

1 3 5 21 34
1 2 8 13 55


↓ ↓       ↓
0 1 2 3 4 5 6  7  8  9 10
0 1 1 2 3 5 8 13 21 34 55


n | n² |  n³ | n⁴ | n⁵ | n⁶ | n⁷ | n⁸ | n⁹ | n¹⁰| F | 2ⁿ |2³|nⁿ |
--|----|-----|----|----|----|----|----|----|----|---|----|--|---|
0 |  0 |   0 |  0 |  0 |  0 |  0 |  0 |  0 |  0 | 0 |   1|  |   1
1 |  1 |   1 |  1 |  1 |  1 |  1 |  1 |  1 |  1 | 1 |   2|  |   1
2 |  4 |   4 |  4 |  4 |  4 |  4 |  4 |  4 |  4 | 1 |   4|  |   4
3 |  9 |   9 |  9 |  9 |  9 |  9 |  9 |  9 |  9 | 2 |   8|  |  27
4 | 16 |  16 | 16 | 16 | 16 | 16 | 16 | 16 | 16 | 3 |  16|  | 256 4 16  64
5 | 25 |  25 | 25 | 25 | 25 | 25 | 25 | 25 | 25 | 5 |  32|  | 725 5 25 125
6 | 36 |  36 | 36 | 36 | 36 | 36 | 36 | 36 | 36 | 8 |  64|  |     6 36 216
7 | 49 |  49 | 49 | 49 | 49 | 49 | 49 | 49 | 49 |13 | 128|  | 
8 | 64 |  64 | 64 | 64 | 64 | 64 | 64 | 64 | 64 |21 | 256|  | 
9 | 81 |  81 | 81 | 81 | 81 | 81 | 81 | 81 | 81 |34 | 512|  |
10|100 | 100 |100 |100 |100 |100 |100 |100 |100 |55 |1024|  |

n | 2ⁿ | 3ⁿ | 4ⁿ | 5ⁿ | 6ⁿ | 7ⁿ | 8ⁿ | 9ⁿ | 10ⁿ|
--|----|----|----|----|----|----|----|----|----|


0 |   1|  |   1
1 |   2|  |   1
2 |   4|  |   4
3 |   8|  |  27
4 |  16|  | 256 4 16  64
5 |  32|  | 725 5 25 125
6 |  64|  |     6 36 216
7 | 128|  | 
8 | 256|  | 
9 | 512|  |
10|1024|  |



F 0 = 0
F 1 = 1
F n = F n-1 + F n-2

F 5 = F 5-1 + F 5-2
F 5 = F 4   + F 3
F 4 = F 3   + F 2
F 3 = F 2   + F 1
F 2 = F 1   + F 0
F 2 = 1     + 0
F 2 = 1
