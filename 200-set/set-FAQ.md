# Set theory :: FAQ

## Which set

What set is `{(a, b) | a ∈ A ∧ b ∈ B}`?

In set-builder notation, variables should be universally quantified, so for both `a` and `b` it is: ∀a(a ∈ A) and ∀b(b ∈ B), which then makes this set a Catrtesian product. However, the same notation is given for any relation from A to B, R ⊆ A⨯B which would imply existential quantification of both variables: 
`{(a, b) | ∃a∃b(a ∈ A ∧ b ∈ B)}`
vs
`{(a, b) | ∀a∀b(a ∈ A ∧ b ∈ B)}`

∀A ∀B (∃C (∀a ∀b (a ∈ A ∧ b ∈ B) ⇒ ⟨a, b⟩ ∈ C))
∀A ∀B ∃C ((∀a ∈ A ∧ ∀b ∈ B) ⇒ ⟨a, b⟩ ∈ C)

It's better to write relations as a truth set `T` that makes `R(a, b)` true:
`{(a, b) ∈ A×B | R(a, b)}`
then
- if R(a, b) is false for every a ∈ A and for every b ∈ B, then T = ∅
- if R(a, b) is true  for every a ∈ A and for every b ∈ B, then T = A×B
- if R(a, b) is true  for some  a ∈ A and for some  b ∈ B, then T ⊆ A×B
- if R(a, b) is true  for every a ∈ A and for some  b ∈ B, then T : A → B iff 
  (a₀, b₀) ∈ T and (a₀, b₁) ∈ T then b₀ = b₁


## Computability of infinite sets

A wealth of problems of interest have the following form: given a set `K` and a property `P`, check whether or not all elements of `K` satisfy `P`.

We say that K is exhaustible if this problem can be algorithmically solved in finite time, for any decidable property p, uniformly in p.

Thus, the input of the algorithm is p and the output is the truth value of the statement that all elements of K satisfy p.



## Selecting distinct set elements

To construct a disjoint union of two sets A and B, we need to tag each element in set A with a tag pulled from the indexing set I = {0,1}, e.g. with 0, and each element in set B with the other index, i.e. with 1. In general, how do we select elements from the indexing set such that each selection is a different element from all the previous selections (without testing for equality)?


* How do we make sure to use 0 for elements of A, and 1 for elements of B?
* How to pick the element `0` from set `{0,1}`, and than pick the element `1` (and not again `0`)?
* In general, how do we select an element from a set, and then select another element different from the previous selection(s)?

* In brief, how do we operationally construct a disjoint union?

### Example

- Union, A₀ ∪ A₁ = {1,2,3}
- N-ary union, `⋃{i∈I}Aᵢ`, I = {0,1}
- Disjoint union: X ⊎ Y = { (1,f), (2,f), (2,t), (3,t) }
- N-ary disjoint union `⨄{i∈I}Aᵢ`, I = {0,1}
- ∪ ⊎ ⩁ ⩅ ⋓ ⩂ ⋃ ⨄ ⨃ ⨆ ⩏

```
I = {0,1}
A₀ = {1,2} = X
A₁ = {2,3} = Y
A = {A₀, A₁} = {{1,2}, {2,3}}
A₀ ∪ A₁ = {1,2} ∪ {2,3} = {1,2,2,3} = {1,2,3}


(X⨯I) = {1, 2} ⨯ {f, t} = { (1,f), (1,t), (2,f), (2,t) }
(Y⨯I) = {2, 3} ⨯ {f, t} = { (2,f), (2,t), (3,f), (3,t) }
----
(X⨯I) ⋃ (Y⨯I) = { (1,f), (1,t), (2,f), (2,t), (2,f), (2,t), (3,f), (3,t) }





(X ⨯ 𝔹) ⋃ (Y ⨯ 𝔹)
  = ({1,2} ⨯ {f,t}) ⋃ ({2,3} ⨯ {f,t})
  = { (1,f), (1,t), (2,f), (2,t) } ⋃ { (2,f), (2,t), (3,f), (3,t) }
  = { (1,f), (1,t), (2,f), (2,t)   ,   (2,f), (2,t), (3,f), (3,t) }


X ⨯ 𝔹 = {1,2} ⨯ {f} = { (1,f), (2,f) }
Y ⨯ 𝔹 = {2,3} ⨯ {t} = { (2,t), (3,t) }
                 ↑
how to select each element distinctly?
cast to list? then run through some counter?
what's the math notation?
seems this is not possible...

```


### GPT answer (bing)

To construct a disjoint union of two sets A and B, we need to tag each element in set A with a tag pulled from the indexing set I = {0,1}, e.g. with 0, and each element in set B with the other index, i.e. with 1 ¹. 

To select elements from the indexing set such that each selection is a different element from all the previous selections (without testing for equality), we can use the **Cantor pairing function** ². The Cantor pairing function is defined as follows:

`π(i,j) = ((i+j) * (i+j+1) * 0.5) + j`

where `i` and `j` are non-negative integers. The function maps a pair of non-negative integers to a unique natural number. We can use this function to map each pair `(a, b)` to a unique natural number `n` and then use the binary representation of `n` to select elements from the indexing set `I`.

For example, suppose we want to construct the disjoint union of two sets A and B, where A has 3 elements and B has 2 elements. We can use the Cantor pairing function to map each pair `(a, b)` to a unique natural number `n` as follows:

```
(0,0) ⟼ 0
(0,1) ⟼ 1
(1,0) ⟼ 2
(2,0) ⟼ 3
(1,1) ⟼ 4
(2,1) ⟼ 5
```

We can then use the binary representation of `n` to select elements from the indexing set `I` as follows:

```
dec bin elem
0 =   0 ⟼ 0
1 =   1 ⟼ 1
2 =  10 ⟼ 0
3 =  11 ⟼ 1
4 = 100 ⟼ 0
5 = 101 ⟼ 1
```

Therefore, we can tag each element in set A with 0 or 1 depending on whether its corresponding binary digit is 0 or 1, respectively. Similarly, we can tag each element in set B with 0 or 1 depending on whether its corresponding binary digit is the opposite of that for its corresponding element in set A.

I hope this helps!

Source: Conversation with Bing, 10/16/2023

(1) Disjoint union - Wikipedia. https://en.wikipedia.org/wiki/Disjoint_union
(2) Disjoint Union -- from Wolfram MathWorld. https://mathworld.wolfram.com/DisjointUnion.html
(3) What is Disjoint Set: Definition, Examples, and Venn Diagram. https://www.geeksforgeeks.org/disjoint-sets/
(4) Union And Intersection Of Sets - BYJU'S. https://byjus.com/maths/union-and-intersection-of-sets-cardinal-number-practical-problems/
(5) Disjoint Set - Definition & Examples | Pairwise Disjoint Set - BYJU'S. https://byjus.com/maths/disjoint-set/
(6) Introduction to Disjoint Set (Union-Find Algorithm). https://www.geeksforgeeks.org/introduction-to-disjoint-set-data-structure-or-union-find-algorithm/.
(7) Disjoint Set Union with Randomized Linking - University of Pennsylvania. https://www.cis.upenn.edu/~sanjeev/papers/soda14_disjoint_set_union.pdf.
(8) How to get list of all elements from a 'Disjoint Sets'. https://stackoverflow.com/questions/26814381/how-to-get-list-of-all-elements-from-a-disjoint-sets.
(9) Imperative Data Structures: Disjoint Sets - Department of Computer Science. https://www.cs.cornell.edu/courses/cs3110/2011sp/Lectures/lec11-union-find/union-find.htm.


https://zyngapoker.com/play/index.html?source_caller=ui&shortlink=PokerDL&c=pokerzp&pid=Deeplink&deep_link_value=ck%3Dd7bfe5c0-0cb1-4d46-9fcb-d6c5b7f25427&af_force_deeplink=true
https://math.libretexts.org/Courses/Monroe_Community_College/MTH_220_Discrete_Math/4%3A_Sets/4.3%3A_Unions_and_Intersections
https://www.geeksforgeeks.org/introduction-to-disjoint-set-data-structure-or-union-find-algorithm/
https://math.stackexchange.com/questions/2453542/union-of-sets-as-disjoint-union
https://cp-algorithms.com/data_structures/disjoint_set_union.html
https://www.geeksforgeeks.org/disjoint-set-data-structures/
https://www.codingninjas.com/studio/library/disjoint-set-unions-union-find-algorithm
https://en.wikipedia.org/wiki/Disjoint_union
