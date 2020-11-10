# Combinations

https://www.youtube.com/watch?v=0iMtlus-afo&list=TLPQMjQxMDIwMjBfeWCl0eYdng&index=30
https://en.wikipedia.org/wiki/Pascal%27s_triangle
https://en.wikipedia.org/wiki/Binomial_theorem
https://en.wikipedia.org/wiki/Binomial_distribution
https://rosettacode.org/wiki/Combinations_and_permutations
https://en.wikipedia.org/wiki/Combination
https://en.wikipedia.org/wiki/Permutation
https://rosettacode.org/wiki/Gamma_function
https://rosettacode.org/wiki/Evaluate_binomial_coefficients
https://en.wikipedia.org/wiki/Twelvefold_way
https://en.wikipedia.org/wiki/Multiset
https://en.wikipedia.org/wiki/Partition_of_a_set
https://en.wikipedia.org/wiki/Partition_(number_theory)






**Combinatorics** studies the problems concerning *counting* and *ordering*, such as *partitioning* and *enumerations*. The number of ways to select $$k$$ objects from the set containing $$n$$ objects is denoted and calculated by:

$$
\displaystyle{
C(n,k) = \ _nC_k = 
{n \choose k} = 
{n \choose n - k} = 
\frac {n!} {k!(n - k)!}
}$$

The expression $$n\choose k$$ is read "n choose k".

This formula shows that the number of ways to select 3 elements from the 10-element set is the same as the number of ways to select 7:

$$
\displaystyle{
{10 \choose 3} = {10 \choose 7} = \frac{10!}{3!7!} = \frac{10!}{7!3!}
}$$



Each combination $$C(n,r)$$ has a certain *frequency* and *frequency ratio* and all frequency ratios sum up to 1.


## Combinations, Pascal's triangle, Powers of 2, Powerset, Binomial coefficient

In combinations, the order in which we select objects is irrelevant. We're only interested in the subsets that we can form out of a given set and/or number of subsets.

If a given set A contains 5 elements, A = {a,b,c,d,e}, we might as well imagine the set A as an opaque bag that contains 5 marbles (labelled with letters a-e). Then, we might be interested, for example, in finding out the number of ways we can pick 3 distinct elements from A (with the order in which the individual elements are picked is immaterial).

These types of problems have their own form of expression, $$n\choose k$$ (read "n choose k"), with n being the total number of elements and k the number of elements we'd like to select.











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
