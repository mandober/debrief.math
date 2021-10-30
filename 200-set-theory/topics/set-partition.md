# Set partition

https://en.wikipedia.org/wiki/Partition_of_a_set

*A partition of a set* is a grouping of its elements into non-empty subsets, in such a way that every element is included in exactly one subset.

- Every equivalence relation on a set defines a partition of that set.
- Every partition of a set defines an equivalence relation on that set.
- A **setoid** is a set equipped with an equivalence relation or a partition.

## Definition and Notation

(…)

## Examples

- The empty set, `∅`, has exactly one partition, `P = ∅`; 
  this is *the* partition, `P = ∅`, not a member of the partition, `P ≠ {∅}`

- Each singleton set, `{a}`, has exactly one partition, `{{a}}`

- Each non-empty set `X` has a *trivial partition*, `P = {X}`

- for any non-empty proper subset `A` of a set `U`, `A ⊂ U`,   
  the set `A` together with its complement `A'`   
  i.e. `U = A ⋃ A'`, so `A' = U ∖ A`   
  form a partition of `U`, viz. `{A, U ∖ A}`   
  (∀A. A : Set ⋀ A ≠ ∅). `A ⊂ U` => `𝙋(U) = {A, U \ A }`

- The set `{1,2,3}` has these 5 partitions:
  - `{ {1}, {2}, {3} }` or `1 | 2 | 3`
  - `{ {1, 2}, {3} }`   or `1 2 | 3`
  - `{ {1, 3}, {2} }`   or `1 3 | 2`
  - `{ {1}, {2, 3} }`   or `1 | 2 3`
  - `{ {1, 2, 3} }`     or `123` (when there's no confusion with the number)


## Refinement of partitions

(…)


## Noncrossing partitions

(…)


## Counting partitions

Bell number, `B(n+1)` = `Sum [k=0..n] n-choose-k B(k)`

Bell numbers satisfy the recursion:

$$
\displaystyle
\Huge
B_{n+1}=\sum _{k=0}^{n}{n \choose k}B_{k}
$$

and have the exponential generating function:

$$
\displaystyle
\Huge
\sum _{n=0} ^{\infty}
{\frac {B_{n}} {n!}} 
z ^{n} = e^ { e^ z - 1 }
$$


The first several Bell numbers are

```
B(0) = 1
B(1) = 1
B(2) = 2
B(3) = 5
B(4) = 15
B(5) = 52
B(6) = 203
```

**Bell triangle**

```
 1
 1  2
 2  3  5
 5  7 10  15
15 20 27  37  52
52 67 87 114 151 203
```

The number of partitions of an `n`-element set into exactly `k` non-empty parts is the Stirling number of the second kind `S(n, k)`.

The number of noncrossing partitions of an `n`-element set is the Catalan number `Cɴ`, given by

$$
\displaystyle
\Huge
C_{n}={1 \over n+1}{2n \choose n}
$$


## Ref

https://en.wikipedia.org/wiki/Equivalence_relation
https://en.wikipedia.org/wiki/Equivalence_class
