# Partition

https://artofproblemsolving.com/wiki/index.php/Partition_(combinatorics)


A partition of natural number is a way of expressing it as an *unordered sum* of other positive integers.

For example, there are 3 partitions of number 3: $$3 = 2 + 1 = 1 + 1 + 1$$. Each of the summands is a part of the partition.

**Partition function** $$P(n)$$ gives the number of partitions of $$n$$.

- $$P(0) = 1$$, the empty partition is the only partition of 0
- $$P(1) = 1$$, the only partition of 1 is 1
- $$P(2) = 2$$, since 2 = 1+1
- $$P(3) = 3$$, since 3 = 1+1+1
- $$P(4) = 5$$, since 4 = 1+1+1+1   = 2+1+1   = 2+2   = 3+1
- $$P(5) = 7$$, since 5 = 1+1+1+1+1 = 2+1+1+1 = 2+2+1 = 3+1+1 = 3+2 = 4+1
