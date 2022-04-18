# Counting relations

## Number of reflexive relations

The number of reflexive relations on a set with `n` elements: `2^(n² - n)`.

A053763, a(n) = 2^(n² - n) = 2^(n ⨯ (n - 1)) = 1, 1, 4, 64, 4096, 1048576, …

This is the sequence [A053763](https://oeis.org/A053763) in the OEIS (On-Line Encyclopedia of Integer Sequences).


## Number of distinct binary relations

Number of n-element binary relations of different types.

C | any | Tra | Ref | Sym | Pre | Partial | TPre | TOrd | Eq
--|-----|-----|-----|-----|--------|---------|------------|-----------|-----
0 | 2⁰  |   1 | 2⁰  | 2⁰  | 1      | 1       | 1          | 1         |  1
1 | 2¹  |   2 | 2⁰  | 2¹  | 1      | 1       | 1          | 1         |  1
2 | 2⁴  |  13 | 2²  | 2³  | 4      | 3       | 3          | 2         |  2
3 | 2⁹  | 171 | 2⁶  | 2⁶  | 29     | 19      |13          | 6         |  5
4 | 2¹⁶ |3994 | 2¹² | 2¹⁰ | 355    | 219     |75          |24         | 15


The number of relations on a set with `n` elements
- `any` kind of relation:  2^n²
- `Tra` The number of transitive rels cannot be determined still
- `Ref` reflexive relations:   2^(n² - n)
- `Sym` symmetric relations:   2^(n² + n) / 2)
- `Pre` Preorders
- `POrd` Partial orders
- `TPre` Total preorders:       Σ {k=0} {n} k!S(n,k)
- `TOrd` Total orders:          n!
- `Eq` Equivalence relations: Σ {k=0} {n} S(n,k)




## Links

* Counting Relations
https://math24.net/counting-relations.html

* Number of reflexive relations
https://www.cuemath.com/algebra/reflexive-relations/ 

* Number of reflexive relations on a set
https://www.geeksforgeeks.org/number-reflexive-relations-set/

* How many reflexive relation are there on a set with n elements?
https://math.stackexchange.com/questions/1001170/how-many-reflexive-relation-are-there-on-a-set-with-n-elements

* Number of reflexive relations defined on a set A with n elements
https://math.stackexchange.com/questions/88032/number-of-reflexive-relations-defined-on-a-set-a-with-n-elements
