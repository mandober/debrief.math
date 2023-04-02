# Pigeonhole principle

https://en.wikipedia.org/wiki/Pigeonhole_principle

The pigeonhole principle states that if `n` items are put into `m` containers, and `n > m`, then at least one container must contain more than one item.

For example, if there are 10 pigeons in 9 pegeonholes, then (since 10 > 9) the pigeonhole principle says that at least one hole houses more than one pigeon.

This seemingly obvious statement can be used to demonstrate possibly unexpected results. For example, given that the population of London `n` is greater than the maximum number of hairs that can be present on a human's head `m`, then the pigeonhole principle requires that there must be at least two people in London who have the same number of hairs on their heads [bullshit!?].

Although the pigeonhole principle appears as early as 1624 in a book attributed to Jean Leurechon, it is commonly called *Dirichlet's box principle* or *Dirichlet's drawer principle* after an 1834 treatment of the principle by Peter Gustav Lejeune Dirichlet under the name Schubfachprinzip ("drawer principle" or "shelf principle").

The principle has several generalizations and can be stated in various ways.

For `q,m ∈ ℕ`, if `q m + 1` objects are distributed among `m` sets, the pigeonhole principle then asserts that at least one of the sets contains at least `q + 1` objects.

For arbitrary `n` and `m` this generalizes to   
`k + 1 = ⌊ (n - 1) / m ⌋ + 1 = ⌈ n / m ⌉`

Though the most straightforward application is to finite sets, it is also used with infinite sets that cannot be put into one-to-one correspondence. To do so requires the formal statement of the pigeonhole principle: *there is no injective function whose codomain is smaller than its domain*. That is,    
If `f` is injective then `|dom(f)| <= |ran(f)| = |cod(f)|`.

## Examples

### Sock-picking

Assume a drawer contains a mixture of unifoot black socks and blue socks, and you're pulling socks from the drawer without looking. What is the minimum number of socks you have to pull to guarantee a pair of the same color?

Using the pigeonhole principle, to pick at least 2 items of the same color (`m=2` holes, one per color), using one pigeonhole per color, you need to pull only 3 socks (`n=3` items).

Either you'll have 3 of the same color, or you'll have 2 of one color and 1 of the other.

 ___ ___
| K | B |
'---'---'

1. k | k <done>
2. b | b <done>
3. b | k | b or k <done>
3. k | b | b or k <done>

thus, 3 picks gets you the same color pair of socks.

### Hand-shaking

If there are `n` people who can shake hands with one another (`n > 1`), the pigeonhole principle shows that there is always a pair of people who will shake hands with the same number of people.

In this application of the principle, the 'hole' to which a person is assigned is the number of hands shaken by that person.

Since each person shakes hands with some number of people from `0` to `n−1`, there are `n` possible holes. However, either the '0' hole or the 'n−1' hole, or both, must be empty, for it is impossible that one person shakes hands with everybody while another shakes hands with nobody. This leaves `n` people to be placed into at most `n−1` non-empty holes, so that the principle applies.

This hand-shaking example is equivalent to the statement that in any graph with more than one vertex, there is at least one pair of vertices that share the same degree. This can be seen by associating each person with a vertex and each edge with a handshake.
