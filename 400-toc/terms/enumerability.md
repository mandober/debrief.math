# Enumerability

from `Computability and Logic Edition` - 5th edition. George S. Boolos, John P. Burgess, Richard C. Jeffrey. 2007

A goal of computability theory is to derive theorems about inherent limits on what can be computed and on what can be proved. Before such theorems can be established, analysis of computability and provability had to be conducted, which involves natural numbers in the former case and sequences of symbols from an alphabet (A, B, C, …) in the latter. However, the analysis of both computability and provability requires the understanding of the relation between the natural numbers and sequences of symbols and some familiarity with the background of that relation. Namely, a topic of particular interest here is enumerability of sets, and the famous finding of Cantor that not all infinities are the same. The distinction is made between two different kinds of infinite sets: enumerable and nonenumerable. This topic is a part of set theory, but here we only expose those results important for computability and provability.

Naively, an *enumerable* or *countable* set is a set whose members can be enumerated; that is, arranged in a list with a first entry, a second entry, and so on, such that every member of the set appears sooner or later on the list. For this purpose we usually employ the set of countable numbers, which is usually just another name for the set ℕ, sometimes also called whole numbers (𝕎) or the set of positive integers, ℤᐩ. What is important is that this is a set used to label another set, whose cardinality we wish to establish, by pairing the elements from both sets. We know we can pair all elements on the set ℕ with the set ℕ, so we take the set ℕ as a means of counting or labelling other sets.

However, we quickly forego lists in favor of functions and determine whether a set is enumerabe by finding a bijection - a function and its inverse - between the two sets. In fact, bijection is an overkill - it is sufficient to find two injections, one from ℕ to the target set A, and one from A into ℕ - in order to declare the set A as denumerable.

The requirement is that every element of the set being enumerated be associated with some natural, not that every natural has an element of the set associated with it.

For example, set ℤ is denumerable since there is a function which maps each natural number to an integer, `f : ℕ → ℤ`; there is also a function `g` which is the inverse of `f`:

```hs
f : ℕ → ℤ
f n | even n = n / 2
    | odd  n = -((n + 1) / 2)

g : ℤ → ℕ
g z | z < 0  = z * (-2) - 1
    | z == 0 = 0
    | z > 0  = z * 2

n | f n | g (f n)
0 |  0  | 0
1 | -1  | -1 * (-2) - 1 = 2 - 1 = 1
2 |  1  | 2
3 | -2  | -2 * (-2) - 1 = 4 - 1 = 3
4 |  2  | 4
5 | -3  | -3 * (-2) - 1 = 6 - 1 = 5
6 |  3  | 6
7 | -4  | -4 * (-2) - 1 = 8 - 1 = 7
8 |  4  | 8
```

It will be seen in the next chapter that although every set of positive integers is enumerable, there are sets of others sorts that are not enumerable.

To say that a set `A` is *enumerable* is to say that there is a function all of whose arguments are positive integers and all of whose values are members of `A`, and that each member of `A` is a value of this function: for each member `a` of `A`, there is at least one positive integer `n` to which the function assigns `a` as its value.

Notice that nothing in this definition requires `A` to be a set of positive integers  or of numbers of any sort. Instead, `A` might be a set of people; or a set of linguistic expressions; or a set of sets, e.g. `A = {ℕ, 𝔼, ∅}`. Here `A` is a set with 3 members, each of which is itself a set. One member of `A` is the infinite set ℕ , another member is the infinite set `𝔼` of even naturals, and the third member is the empty set, ∅. The set `A` is certainly enumerable, e.g. by the following finite list: [P, E, ∅]. Each entry in this list names a member of A, and every member of A is named sooner or later on this list. This list determines a function `f` which can be defined by these 3 statements: `f 1 = P`, `f 2 = 𝔼`, `f 3 = ∅`, whic means `f` is a partial function of positive integers undefined for arguments greater than 3.

A set is enumerable iff it is the range of some function of positive integers. We said earlier we wanted to count `∅` as enumerable. Therefore, we have to count as a partial function *the empty function* `e` of positive integers that is undefined for all arguments. Its domain and its range are both `∅`.

    e : ℕ → 𝟘

N/A: hmm, can this function exist? It cannot because the function type `ℕ → 𝟘` is inhabited by precisely `0ᴺ = 0` members, i.e. this type is uninhabited. The function that these two authors suggest as the one needed to enumerate the empty set does not exist. The only function into `𝟘` is `absurd : 𝟘 → 𝟘`, whose existence is justified by `0⁰ = 1`. Similarly for each type (set) `A`, there is a single function from the empty type `𝟘` into the type `A` with the type `𝟘 → A`, since `A⁰ = 1` (for any number `A ∈ ℕ` and `A > 0`, i.e. `A ∈ ℕᐩ` for short). As for the enumeration of the empty set - it can be enumerated by the `absurd` function whose domain and codomain are the same as the set it enumarates, i.e. `𝟘` (aka `∅`).

## Hilbert's hotel

While an ordinary hotel has to turn away people due to fullfilled capacity, an infinite hotel, aka Hilbert's hotel, that has an enumerable infinity of rooms, would always have room for new guests.

To accomodate a new guest, the hotel manager could put the client in the room number 1 by first freeing that room by shifting all other guests one room up (so guest from room 1 moves to room 2, 2 ⟼ 3, 3 ⟼ 4, …).

However, a manager with some foresight can issue rooms in a way that even a bus-load of a countably-infinite number of new arrivals can *always* be accomodated - even without making the existing guests switch rooms. The strategy is thus: the people that arrive on the first day are placed in every other room (ocupying odd-numbered rooms, 1,3,5,7,9,11,…); second day arrivals are placed in every other room among the remaining vacant rooms (2,6,10,…); third day arrivals are placed in every other room among the remaining vacant rooms (4, ); and so on. By the way, this desciptions corresponds to the construction of *the Cantor set* (in each pass removes every other number).

```
1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28  ⁰ᴿ
1   3   5   7   9    11    13    15    17    19    21    23    25    27     ¹
  2   4   6   8   10    12    14    16    18    20    22    24    26    28  ¹ᴿ
  2       6       10          14          18          22          26        ²
      4       8         12          16          20          24          28  ²ᴿ
      4                 12                      20                      28  ³
              8                     16                      24              ³ᴿ
              8                                             24              ⁴
```

`nR` = remaining rooms after day `n`


Include room 0 and do the same… no, no, no!   
Do this instead (with of without the room number 0):
- day 1 arrivals get rooms s.t. remaining vacant rooms are divisible by 2
- day 2 arrivals get rooms s.t. remaining vacant rooms are 4
- day 3 arrivals get rooms s.t. remaining vacant rooms are 8
- day 4 arrivals get rooms s.t. remaining vacant rooms are 16
- day n arrivals get rooms s.t. remaining vacant rooms are 2ⁿ


n=day | remaining vacant rooms
  1   |    2∣n (all odd-numbered rooms are occupied)
  2   |    4∣n 
  3   |    8∣n
  4   |   16∣n
  5   |   2ⁿ∣n


```
0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29
0   2   4   6   8   10    12    14    16    18    20    22    24    26    28
  1       5       9          13          17          21          25          29
      3                11                      19                      27
              7                    15                      23

...looks like a BS tree

                       15
            /                    \
           7                      23
      /        \              /        \
     3          11           19         27
   /   \       /   \       /   \       /   \
  1     5     9    13    17     21    25    29
 / \   / \   / \   / \   / \   / \   / \   / \
0   2 4   6 8  10 12 14 16 18 20 22 24 26 28 30
```


To apply this thought to enumerating pairs, let us use up every other place in listing the pairs (1, n), every other place then remaining in listing the pairs (2, n), every other place then remaining in listing the pairs (3, n), and so on. The result will look like this:

(1,1), (2,1), (1,2), (3,1), (1,3), (2,2), (1,4), (4,1), (1,5), (2,3), …

Given a function `f` enumerating the pairs of positive integers, such as `G` or `g` above, an `a` such that `f a = (m, n)` may be called a *code number* for the pair `(m, n)`.

Applying the function `f` may be called *decoding*, while going the opposite way, from a pair to a code may be called *encoding*.

It is possible to derive formulas for the encoding functions `J` and `j` that go with the decoding functions `G` and `g` above (possible, but not necessary: what we have said so far more than suffices as a proof that the set of pairs is enumerable). We want `J(m, n)` to be the number `p`, such that `G(p) = (m, n)`.

    J(m, n) = p
    G(p) = (m, n)

Consulting the list of pairs we described above, before we arrive at the pair `(m, n)`, we have to pass pairs whose entries sum to 2, the two pairs whose entries sum to 3, the three pairs whose entries sum to 4, and so on, up to `m + n − 2` pairs whose entries sum to `m + n − 1`. The pair `(m, n)` will appear in the `m`th place after all of these pairs. So the position of the pair `(m, n)` is given by

    (1 + 2 + … + (m + n − 2)) + m
    = (m + n − 2)(m + n − 1)/2 + m

    J(m, n) = (m² + 2mn + n² − m − 3n + 2) / 2

For instance, the pair (3, 2) should come in the place 9. And `G(9) = (3, 2)`.

Turning now to `j`, we find matters a bit simpler. 

* The pairs with first entry 1 will appear in the places whose numbers are odd, with `(1, n)` in place `2ⁿ − 1`.

* The pairs with first entry 2 will appear in the places whose numbers are twice an odd number, with `(2, n)` in place `2(2ⁿ − 1)`.

* The pairs with first entry 3 will appear in the places whose numbers are 4 times an odd number, with `(3, n)` in place `4(2ⁿ − 1)`.

* In general, in terms of the powers of two, `(m, n)` will appear in place `j(m, n)` = `2ᵐ⁻¹(2ⁿ − 1)`. 

e.g. (3, 2) should come in the place 12, as indeed it does: g(12) = (3, 2).
