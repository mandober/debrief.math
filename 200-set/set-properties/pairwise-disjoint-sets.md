# Pairwise disjoint sets



## Example proof involving pairwise disjoint sets

https://math.stackexchange.com/questions/1583733/proof-containing-pairwise-disjoint-sets?rq=1

```js
Let
  A,B,C,D be pairwise disjoint sets
ie
  A ∩ B ∩ C ∩ D = ∅

Prove
  |A| = |B| ⋀ |C| = |D| --> |A ∪ C| = |B ∪ D|

Proof by induction

So
  |∅| = 0
If
  x ∈ A
then
  |A ∪ {x}| = |A|
But if
  x ∉ A
then
  |A ∪ {x}| = |A| + 1

Theorem:
If
  A and B are pairwise disjoint
then
  |A ∪ B| = |A| + |B|


Proof by induction on |B|

if
  |B| = 0
then
  A ∪ B = A
proving base_case

Assuming
  |B| <= n
If
  |B| = n + 1
and
  |A ∩ B| = ∅
then
  B = B′ ∪ {x}
where
  x ∉ B′
and
  x ∉ A

Then,
  |A ∪ B|
= |A ∪ B′  ∪ {x}| 
= |A ∪ {x} ∪ B′|
= |A ∪ {x}| + |B′|
= |A| + 1 + |B′|
= |A| + (|B′|+1)
= |A| + |B|
```
