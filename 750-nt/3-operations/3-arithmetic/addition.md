# Addition

https://en.wikipedia.org/wiki/Addition

- operation name: *addition*
- operation short name: add
- operation abbreviation: add
- definitions
  - in lambda calculus: `ADD := λabfx.af(bfx)`
  - as anonymous function: λ a b → a + b (if `+` available as a primitive op)
  - as section: `(+)`, e.g. (+)(2) = λ b → 5 + b; (+)(2)(3) = 5; ((+) ∘ (+))
  - as partially applied section: `(+ k)` or `(k +)`; e.g. (5 +)(3) = 8
  - as PRF: `ρ(id, S ∘ P³₂)`
- symbolic name: `+` (plus, add)
  - plus sign `+` is a skewed ligature of Latin "et" (`Et` → `&` → `+`)
- operation arity: binary
- operation verb: adding, ("summing", "to sum up" is for polyadic add Σ)
- operand types: quantities (variables, objects, concrete numbers)
- primitive component: successor (defined recusrively in terms of suc)
- addition is one of the 4 basic operations of arithmetic (+, -, ×, ÷)
- values to be added are collectively referred to as terms, addends, summands
- in `a + b`, sometimes `a` is called the *augend* and `b` the *addend*
- addition is interpreted as combining sets, or extending lengths
- derived operations:
  - subtraction, x - y = x + (-y)
- generalizations:
  - summation: polyadic addition (+ 3 5 12 -4)
  - sigma notation (addition of descrete values), `Σ`
  - integration (summation of continuous values), `∫`



# Interpretations of addition

*The binary view* of the sum `a + b` is the algebraic interpretation of addition as a binary operation that combines `a` and `b`.

λ(a,b). a + b

*The unary view* of the sum `a + b` is interpreted as the addition of `b` more units to `a`. Under this interpretation, the parts of the sum `a + b` play asymmetric roles: operation `a + b` is viewed as applying the unary operation `+b` to `a`. Instead of calling both `a` and `b` *addends*, it is more appropriate to call `a` the *augend* in this case, since `a` plays a passive role. The unary view is also useful when discussing subtraction, because each unary addition operation has an inverse unary subtraction operation, and vice versa, `a + b = a + (+b)` vs `a + (-b) = a - b`.

λa.λb. a + b



## Properties

Properties
- Commutativity
- Associativity
- Identity
- Successor


* Commutativity
The fact that addition is commutative is known as the "commutative law of addition" or "commutative property of addition".

* Associativity
When addition is used together with other operations, the order of operations becomes important. In the standard order of operations, addition is a lower priority than exponentiation, nth roots, multiplication and division, but is given equal priority to subtraction.

* Identity
When adding zero to any number, the quantity does not change; zero is the identity element for addition, also known as the additive identity.

* Successor
The value of a + b can also be seen as the bth successor of a, making addition iterated succession.

Misc properties
- The ordering is preserved under addition of the same number:   
`∀abc. a < b -> a + c < b + c`
- Given any two distinct elements, the larger is the smaller plus another:    
`∀ab. a < b -> ∃!c. a + c = b`



## Defining addition

To prove the usual properties of addition, one must first define addition for the context in question. Addition is first defined on the natural numbers. In set theory, addition is then extended to progressively larger sets that include the natural numbers: integers, rationals, reals. In math education, positive fractions are considered before negative numbers (also the historical route).

### Addition of natural numbers

* Set-theoretic definition: with natural numbers are defined as cardinalities of finite sets, addition is defined as the union of two disjoint sets (or, if the sets overlap then as disjoint union). Define 0 as ∅ and the successor operator as `S(n) = n ∪ {n}`.

* Addition is a function that maps two natural numbers to another; defined recursively, following Peano axioms: `m + 0 = a` and `m + S(n) = S(m + n)`
- The structure (ℕ, +) is a *commutative monoid* with identity element 0
- The structure (N, +) is a *cancellative magma*, and thus embeddable in a group. The smallest group embedding ℕ is the integers.

* Let `n+` be the successor of `n`. Define `a+0=a` and define the general sum recursively by `a+(b+) = (a+b)+`. Then, `1+1 = 1+0+ = (1+0)+ = 1+ = 2`

* Addition can also be defined using primitive recursive functions. It can be build from σ (successor), π (projection) and ρ (primitive recursion) basic function: `add = ρ (π 1 1) (σ . (π 3 3))`


### Addition of integers

The simplest conception of an integer is that it consists of an absolute value (which is a natural number) and a sign (generally either positive or negative). The integer zero is a special third case, being neither positive nor negative.

    | z > 0      + |z|
z = | z < 0      - |z|
    | z = 0        0

The corresponding definition of addition, `a + b`, must proceed by cases. 
Let `|n|` be the absolute value of an integer `n`, and `a` and `b` be integers:

- If either `a` or `b` is 0, treat addition as the identity: 
  - if a = 0 then a + 0 = a
  - if b = 0 then 0 + b = b

- If `a` and `b` are both positive, define `a + b = |a| + |b|`
  - if a > 0 and b > 0 then a + b = |a| + |b|

- If `a` and `b` are both negative, define `a + b = −(|a| + |b|)`
  - if a < 0 and b < 0 then a + b = -(|a| + |b|)

- If `a` and `b` have different signs, define `a + b` to be the difference between `|a|` and `|b|`, with the sign of the term whose absolute value is larger.
  - sgn (n) = n < 0 ? -1 : n > 0 ? 1 : 0
  - s = sgn (max(|a|, |b|))
  - if a > 0 and b < 0 then s * (|a| - |b|)
  - if a < 0 and b > 0 then s * (|a| - |b|)


Although this definition can be useful for concrete problems, the number of cases to consider complicates proofs unnecessarily. So the following method is commonly used for defining integers. It is based on the remark that every integer is the difference of two natural integers and that two such differences, a-b and c-d are equal iff `a + d = b + c`. So, one can define formally the integers as the equivalence classes of ordered pairs of natural numbers under the equivalence relation: `(a, b) ~ (c, d) <=> a + d = b + c`. The equivalence class of (a, b) contains either (a-b, 0) if a ≥ b, or (0, b-a) otherwise. If n is a natural number, one can denote +n the equivalence class of (n, 0), and by -n the equivalence class of (0, n). This allows identifying the natural number n with the equivalence class +n.

Addition of ordered pairs is done component-wise: (a,b)+(c,d) = (a+c,b+d). A straightforward computation shows that the equivalence class of the result depends only on the equivalences classes of the summands, and thus that this defines an addition of equivalence classes, that is integers. Another straightforward computation shows that this addition is the same as the above case definition.

This way of defining integers as equivalence classes of pairs of natural numbers, can be used to embed into a group any commutative semigroup with cancellation property. Here, the semigroup is formed by the natural numbers and the group is the additive group of integers. The rational numbers are constructed similarly, by taking as semigroup the nonzero integers with multiplication.

This construction has been also generalized under the name of Grothendieck group to the case of any commutative semigroup. Without the cancellation property the semigroup homomorphism from the semigroup into the group may be non-injective. Originally, the Grothendieck group was, more specifically, the result of this construction applied to the equivalences classes under isomorphisms of the objects of an abelian category, with the direct sum as semigroup operation.


### Addition of rationals (fractions)
### Addition of real numbers
### Addition of complex numbers

## Generalizations

## Related operations
### Arithmetic
### Ordering
### Other ways to add



https://en.wikipedia.org/wiki/Parallel_(operator)


---

* ASSOC: ℕ ℤ ℚ ℝ ℂ Vec Mat
* COMM
* IDENTITY
* INVERSE
* ZERO
* ONE


Addition, denoted by the symbol `+`, along with subtraction, multiplication and division makes the four basic arithmetic operations.

Addition is defined over the fundamental sets of numbers (ℕ, ℤ, ℚ, ℝ, ℂ), but it is also generalized to other mathematical structures, like sets, vectors, matrices, categories, etc..

---

Potential properties of addition:
- commutative (frequently, but not always)
- associative meaning that when one adds more than two numbers, the order in which addition is performed does not matter
- Repeated addition of 1 is the same as counting;
- addition of 0 does not change a number.
- Addition also obeys predictable rules concerning related operations such as subtraction and multiplication.


----


```
` ¬ ↦
1 ∧ ↑
2 ∨ ⊕
3 → ⇒
4 ↔ ≡
5 ∈ ∉
6 ⊆ ⊂
7 ∅ ⊥
8 ∪ ⊗
9 ∩ ⟹
0 ╳ ⟼
_ ∀ ⇔
= ∃ ∄ 
/ ⊨ ℕ

𝔹 ℕ ℤ ℚ ℝ ℂ ℍ 𝕆
```
