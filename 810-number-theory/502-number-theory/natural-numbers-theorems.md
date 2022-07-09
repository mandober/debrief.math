# Natural number

1. 0 ∈ N                                  (at least one element exists)
2. ∀n(n ∈ N -> S(n) ∈ N)                     (closure of S over N)
3. ∀n(n ∈ N -> S(n) ≠ 0)                        (exclude negative nums)
4. ∀n,m ∈ N. (n = m ⇔ S n = S m)                     (S is injective)
5. ∃K(K ⊆ N ⋀ 0 ∈ K ⋀ (∀n (n ∈ K -> S n ∈ K))) -> K = N     (induction)

1. There is a unique first natural number.
2. Every natural number has a unique immediate successor.
3. Every natural number except the first has a unique immediate predecessor.
4. If two numbers are equal then their successor are too.
5. Every natural number is an eventual successor of the first.


Successor and predecessor
- ∀n ∈ ℕ.          P(Sn) = n
- ∀n ∈ ℕ. n ≠ 1 -> S(Pn) = n

Order
- ∀n,m ∈ ℕ. (n < m -> Sn < Sm)
- ∀n,m ∈ ℕ. (n ≠ m ⋁ n < m ⋁ m < n)          …trichotomy
- ∀n,m ∈ ℕ. (n ≠ m -> n < m ⋁ m < n)
- ∀n,m ∈ ℕ. (n < m -> m < n ⋁ n ≠ m)
- ∀n,m ∈ ℕ. (n <= m -> n < m ⋁ n = m)
- ∀n,m ∈ ℕ. (n <= m ⋀ m <= n -> n = m)

Addition
- ∀n,m ∈ ℕ. (n < n + m )                 …whole is greater than the part
- ∀n,m,k ∈ ℕ. (k + n) + m = k + (n + m)  …associativity of addition
- ∀n ∈ ℕ. n+0 = n = 0+n                  …identity of addition
- ∀n,m,k ∈ ℕ. n < m -> n + k < m + k         …addition respects the order
- ∀n,m ∈ ℕ. (n + m = m + n )             …commutativity of addition
- ∀n,m ∈ ℕ. (n < m -> ∃k(k + n = m))     …conditional subtraction
- ∀n,m,k ∈ ℕ. n + k = m + k -> n = m         …cancellation property of addition
- ∀n,m,k ∈ ℕ. n + k < m + k -> n < m         …cancellation property of addition

Multiplication
- ∀n,m,k ∈ ℕ. (k∙n)∙m = k∙(n∙m)          …associativity of mult
- ∀n,m ∈ ℕ. (n∙m = m∙n)                  …commutativity of mult
- ∀n ∈ ℕ. n∙1 = n = 1∙n                  …identity of mult
- ∀n,m,k ∈ ℕ. n < m -> n ∙ k < m ∙ k         …mult respects the order
- ∀n,m,k ∈ ℕ. k(n+m) = kn + km            …distributivity of mult over add
- ∀n,m,k ∈ ℕ. nk = mk -> n = m            …cancellation property of mult
- ∀n,m,k ∈ ℕ. nk < mk -> n < m            …cancellation property of mult


## Natural numbers: basic properties and theorems

- There is a first natural number, which we call 0
- There is an order on the natural numbers
- The order is transitive
- The order has trichotomy
- For any two naturals n and m, there is a unique natural number n + m
- This addition is associative
- This addition is commutative
- If m and n are natural numbers, then n < n + m
- If k, m, and n are natural numbers and n < m, then n + k < m + k
- If n and m are naturals with n < m, then ∃ unique natural k s.t. m = n + k
- If k, n, and m are natural numbers with n + k = m + k, then n = m
- If k, n, and m are natural numbers with n + k < m + k, then n < m
- For any two natural numbers n and m, there is a unique natural number n ⋅ m
- This multiplication is associative
- This multiplication is commutative
- The natural number 1 is a multiplicative identity
- If k, m, and n are natural numbers and n < m, then n ⋅ k < m ⋅ k
- If k, n, and m are natural numbers with n ⋅ k = m ⋅ k, then n = m
- If k, n, and m are natural numbers with n ⋅ k < m ⋅ k, then n < m
- If m and n are naturals and n ≤ m ≤ n + 1, then either m = n or m = n + 1
- Multiplication distributes over addition

## Further theorems

Let `S` be a set of nats. Nat `m` is the **minimum** of the set `S` if `m ∈ S`, and, if, for all `x ∈ S`, then `m <= x`:    
`m` is the minimum ⇔ `∃m(m ∈ ℕ ⋀ ∀x(x ∈ ℕ -> m <= x)`

The **well-ordering principle** for natural numbers: 
if `S` is a subset of natural numbers 
with at least one element, 
then `S` has a minimum.    
`S ⊆ ℕ ⋀ S ≠ ∅) -> S has a minimum`

The complete set of the basic principles that characterize ℕ
* There is a unique first natural number.
* Every natural number has a unique immediate successor.
* Every natural number except the first has a unique immediate predecessor.
* Every natural number is an eventual successor of the first.
* If `S` is a nonempty subset of naturals, then `S` has a minimum.


The natural numbers form a set ℕ with the following properties:
1. There is an element of ℕ (ℕ is a nonempty set)
2. There is an order on the natural numbers such that
   a) If k < m and m < n, then k < n
   b) If n, m ∈ ℕ, then n < m ⊕ m < n ⊕ n = m
3. If S is a set of naturals with at least one element, then S has a minimum
4. If n and m are two natural numbers, then there is a unique natural n + m
5. If k, n, m ∈ ℕ, then k + (n + m) = (k + n) + m
6. If n, m ∈ ℕ, then n + m = m + n
7. If n, m ∈ ℕ, then n < n + m
8. If k, n, m ∈ ℕ and n < m, then n + k < m + k
9. If n, m ∈ ℕ with n < m, then there is a unique natural k so that m = n + k
10. If k, n, m ∈ ℕ with n + k = m + k, then n = m
11. If k, n, m ∈ ℕ with n + k < m + k, then n < m
12. If n and m are two natural numbers, then there is a unique natural n ⋅ m
13. If k, n, m ∈ ℕ, then k ⋅ (n ⋅ m) = (k ⋅ n) ⋅ m
14. If n, m ∈ ℕ, then n ⋅ m = m ⋅ n
15. If we write 1 for the minimum natural, then if n ∈ ℕ, then 1∙n = n = n∙1
16. If k, n, m ∈ ℕ with n < m, then n ⋅ k < m ⋅ k
17. If k, n, m ∈ ℕ with n ⋅ k = m ⋅ k, then n = m
18. If k, n, m ∈ ℕ with n ⋅ k < m ⋅ k, then n < m
19. If we write 1 for the minimum natural number, 
    then if n,m ∈ ℕ and (n <= m <= n + 1), then (m = n) ⋁ (m = n + 1)
20. If k, n, m ∈ ℕ, then k ⋅ (n + m) = k ⋅ n + k ⋅ m

Some of these can be derived from others, e.g. the cancellation properties of multiplication follow from the uniqueness of multiplication and trichotomy.
