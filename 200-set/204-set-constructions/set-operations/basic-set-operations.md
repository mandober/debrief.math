# Basic set operations

* Basic set operations
  + complementation,          A̅ = 𝓤 ∖ A
  + union,                    A ⋃ B
  + intersection,             A ⋂ B
  - relative difference on A, A \ B
  - relative difference on B, B ∖ A
  - absolute difference,      A Δ B = A\B ⋃ B∖A


Each of the basic set operations have a corresponding logical operation, and, in most cases, a corresponding arithemtical operation.


Set op              | Symbol | Logical op   | Connective | Aritmetic op
--------------------|--------|--------------|------------|---------------
complementation     | A̅      | negation     | ¬A         | - A
union               | A ⋃ B  | disjunction  | A ⋁ B      | A + B
intersection        | A ⋂ B  | conjunction  | A ⋀ B      | A * B
symetric difference | A ⊖ B  | xor          | A ⊕ B      | A + B
relative difference | A \ B  |              |            | A - B



These basic operations on two sets are basically just mergers that pick some particular elements from the sets and dump them in the resulting set. These operations might not even bother sifting through the resulting set to weed out the duplicates, leaving it to the intrinsic property of element uniqueness to sort out any such issues automatically. These issues are not of much concern in math anyway, which, unlike CS, doesn't have to deal with the actual implementation of sets and their efficient storage.


Setop     | 4 | 3 | 2 | 1 | 0 | Bin
----------|---|---|---|---|---|-----------
A         | a | b | c | . | . | 11100
A - B     | a | . | . | . | . | 10000
A - B̅     | . | b | c | . | . | 01100
A Δ B     | a | . | . | d | . | 10010
A ∩ B     | . | b | c | . | . | 01100
A ∩ B̅     | a | . | . | . | . | 10000
A ∪ B     | a | b | c | d | . | 11110
A ∪ B̅     | a | b | c | . | e | 11101
A̅         | . | . | . | d | e | 00011
A̅ - B     | . | . | . | . | e | 00001
A̅ - B̅     | . | . | . | d | . | 00010
A̅ ∩ B     | . | . | . | d | . | 00010
A̅ ∩ B̅     | . | . | . | . | e | 00001
A̅ ∪ B     | . | b | c | d | e | 01111
A̅ ∪ B̅     | a | . | . | d | e | 10011
B         | . | b | c | d | . | 01110
B - A     | . | . | . | d | . | 00010
B - A̅     | . | b | c | . | . | 01100
B̅         | a | . | . | . | e | 10001
B̅ - A     | . | . | . | . | e | 000011
B̅ - A̅     | a | . | . | . | . | 10000
U         | a | b | c | d | e | 11111
¬(A - B)  | . | b | c | d | e | 01111
¬(A Δ B)  | . | b | c | . | e | 01101
¬(A ∩ B)  | a | . | . | d | e | 10011
¬(A ∪ B)  | . | . | . | . | e | 00001
¬(B - A)  | a | b | c | . | e | 11101


## 0-7 8-15 16-23 24-31

Nr.| Bop       | a | b | c | d | e | Hex  | Binary
---|-----------|---|---|---|---|---|------|-------
00 | U̅         | . | . | . | . | . | 0x00 | 0 0000
01 | ¬(A ∪ B)  | . | . | . | . | e | 0x01 | 0 0001
01 | A̅ ∩ B̅     | . | . | . | . | e | 0x01 | 0 0001
01 | A̅ - B     | . | . | . | . | e | 0x01 | 0 0001
01 | B̅ - A     | . | . | . | . | e | 0x01 | 0 0001
02 | B - A     | . | . | . | d | . | 0x02 | 0 0010
02 | A̅ ∩ B     | . | . | . | d | . | 0x02 | 0 0010
02 | A̅ - B̅     | . | . | . | d | . | 0x02 | 0 0010
03 | A̅         | . | . | . | d | e | 0x03 | 0 0011
04 | .         | . | . | c | . | . | 0x04 | 0 0100
05 | .         | . | . | c | . | e | 0x05 | 0 0101
06 | .         | . | . | c | d | . | 0x06 | 0 0110
07 | .         | . | . | c | d | e | 0x07 | 0 0111
---|-----------|---|---|---|---|---|------|-------
08 | .         | . | b | . | . | . | 0x08 | 0 1000
09 | .         | . | b | . | . | e | 0x09 | 0 1001
10 | .         | . | b | . | d | . | 0x0a | 0 1010
11 | .         | . | b | . | d | e | 0x0b | 0 1011
12 | A ∩ B     | . | b | c | . | . | 0x0c | 0 1100
12 | B - A̅     | . | b | c | . | . | 0x0c | 0 1100
12 | A - B̅     | . | b | c | . | . | 0x0c | 0 1100
13 | ¬(A Δ B)  | . | b | c | . | e | 0x0d | 0 1101
14 | B         | . | b | c | d | . | 0x0e | 0 1110
15 | ¬(A - B)  | . | b | c | d | e | 0x0f | 0 1111
15 | A̅ ∪ B     | . | b | c | d | e | 0x0f | 0 1111
---|-----------|---|---|---|---|---|------|-------
16 | A - B     | a | . | . | . | . | 0x10 | 1 0000
16 | A ∩ B̅     | a | . | . | . | . | 0x10 | 1 0000
16 | B̅ - A̅     | a | . | . | . | . | 0x10 | 1 0000
17 | B̅         | a | . | . | . | e | 0x11 | 1 0001
18 | A Δ B     | a | . | . | d | . | 0x12 | 1 0010
19 | ¬(A ∩ B)  | a | . | . | d | e | 0x13 | 1 0011
19 | A̅ ∪ B̅     | a | . | . | d | e | 0x13 | 1 0011
20 | .         | a | . | c | . | . | 0x14 | 1 0100
21 | .         | a | . | c | . | e | 0x15 | 1 0101
22 | .         | a | . | c | d | . | 0x16 | 1 0110
23 | .         | a | . | c | d | e | 0x17 | 1 0111
---|-----------|---|---|---|---|---|------|-------
24 | .         | a | b | . | . | . | 0x18 | 1 1000
25 | .         | a | b | . | . | e | 0x19 | 1 1001
26 | .         | a | b | . | d | . | 0x1a | 1 1010
27 | .         | a | b | . | d | e | 0x1b | 1 1011
28 | A         | a | b | c | . | . | 0x1c | 1 1100
29 | ¬(B - A)  | a | b | c | . | e | 0x1d | 1 1101
29 | A ∪ B̅     | a | b | c | . | e | 0x1d | 1 1101
30 | A ∪ B     | a | b | c | d | . | 0x1e | 1 1110
31 | U         | a | b | c | d | e | 0x1f | 1 1111
