# Combinations

- Combinatorics studies the problems concerning counting and ordering, such as *partitioning* and *enumerations*.
- In combinatorics (combinations), we are selecting objects and *the order is irrelevant*.
- If we have a set of $$n$$ objects and we want to choose $$r$$ objects from the set, we write $$C(n,r)$$ or $$_nC_r$$.
- Given $$n$$ distinct objects, the number of ways to select $$r$$ objects from the set: $$C(n,r) = \frac{n!}{r!(n-r)!}$$
- Each combination $$C(n,r)$$ has a certain frequency and freq. ratio
- All freq. ratios sum up to 1


In combinatorics, the formula for `n-choose-r`

$$$
\quad {n \choose k} = {n \choose n - k}
$$$

shows that the resulting number is the same, either if we `n-choose-r` or `n-choose-(n-r)`.

$$$
{10 \choose 3} = {10 \choose 7} = \frac{10!}{3!7!} = \frac{10!}{7!3!}
$$$


## Partitions

https://en.wikipedia.org/wiki/Partition_(number_theory)
https://artofproblemsolving.com/wiki/index.php/Partition_(combinatorics)

In combinatorics, `C(n,r)`, since r must be `0 <= r <= n`, we can consider all the cases of `C(n,r[i])` where `i` iterates from `0` to `n`.

For example, `C(3,r)` can be *partitioned* into 4 partitions: 
`C(3,0)`, `C(3,1)`, `C(3,2)`, `C(3,3)`. Each partition has a certain *frequency*.

Adding these frequencies together we get the total number of partitions possible for a set of `n` elements (with variable `r` i.e. variable partition size): `C(3,0)`=1 + `C(3,1)`=3 + `C(3,2)`=3 + `C(3,3)`=1 => 8

In set theory, powerset contains all possible subsets of some particular set. So the number 8 obtained above, is the number of elements in the powerset (of a set with 3 elements), $$2^n = 8$$, i.e. if a set has 3 elements, then the cardinality of its powerset is 8.

A particular partition frequency can be divided by the number of all possible partitions to get the ratio of those combos accounted for by that particular partition. E.g. C(3,1)=3, so its frequency ratio is 3/8. Adding all freq. ratios amounts to 1. E.g. 1/8 + 3/8 + 3/8 + 1+8 = 1





## Examples

### List all 2-element partitions of a 4-element set

The number of 2-element partitions: C(4,2) = 4!/2!2! = 12/2 = 6

Let set A={a,b,c,d}, then there are 6 two-element subsets of P(A):     
ab, ac, ad, bc, bd, cd     
(incorrect but convenient notation)


### How many ways to choose 2 out of 4

$$n=4,\ \ r=2$$

$$
\frac{n!}{r!(n-r)!} 
= \frac{4!}{2!(4-2)!} 
= \frac{4!}{2!·2!}
= \frac{4·3·\not 2!}{2!·\not 2!} 
= 6
$$




### How may distinct pairs can be made with 4 elements

$$
{n \choose k} = 
{4 \choose 2} = 
\frac{4!}{2!} = 
\frac{4·3·2!}{2!} = 
6
$$

Check:
X={a,b,c,d}     
n=4     
6 pairs: ab, ac, ad, bc, bd, cd
