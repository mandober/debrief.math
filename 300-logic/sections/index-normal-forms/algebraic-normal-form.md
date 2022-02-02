# Algebraic normal form

https://en.wikipedia.org/wiki/Algebraic_normal_form

Algebraic Normal Form (ANF) or
- Ring sum normal form (RSNF or RNF)
- Zhegalkin normal form
- Reed-Muller expansion

Formulas written in ANF are also known as Zhegalkin polynomials and Positive Polarity (or Parity) Reed-Muller expressions (PPRM).

In Boolean algebra, the **algebraic normal form** (ANF) is a way of writing logical formulas in one of 3 subforms:
* The entire formula is purely true, `1`, or false, `0`
* One or more variables are AND-ed together into a term, `ab` or `abc`, 
  then one or more terms are XOR-ed together into ANF. NOT's are disallowed.
  e.g. `a ⊕ b ⊕ ab ⊕ abc`
* The previous subform with a purely true term: `1 ⊕ a ⊕ b ⊕ ab ⊕ abc`

ANF is a normal form, which means that two equivalent formulas will convert to the same ANF, easily showing *whether two formulas are equivalent* for automated theorem proving.

Unlike other normal forms, it can be represented as a simple *list of lists of variable names*. On the other hand, CNF and DNF forms require recording whether each variable is negated or not; and NNF is unsuitable for that purpose, since it doesn't use equality as its equivalence relation: `a ⋁ ¬a` isn't reduced to the same thing as `1`, even though they're equal.

Putting a formula into ANF also makes it easy to identify linear functions (used, for example, in linear-feedback shift registers): a linear function is one that is a sum of single literals. Properties of nonlinear-feedback shift registers can also be deduced from certain properties of the feedback function in ANF.

## Identities

```
1 ⊕ 1 = 0
0 ⊕ 0 = 0
0 ⊕ 1 = 1 = 1 ⊕ 0

a ⊕  a = 0
a ⊕ ¬a = 1

¬(a ⊕ a) = 1 ⊕ (a ⊕ a) = 1 ⊕ a ⊕ a = 1 ⊕ 0 = 1

¬0 = 1 = ¬¬1
¬1 = 0 = ¬¬0

1 ⊕ a = ¬a   …so (1 ⊕) is negation (inverse)
0 ⊕ a =  a   …so (0 ⊕) is identity

a ⊕ b ⊕ b = a

a ⋁ b = a + b ≡ a ⊕ b ⊕ ab

x ⋀ y = xy
  if (x = a ⊕ b) and (y = c ⊕ d) then
  (a ⊕ b)(c ⊕ d) = ac ⊕ ad ⊕ bc ⊕ bd
```

* NOT-equivalence:  `¬a = 1 ⊕ a`
* AND-equivalence:  `(a ⊕ b)(c ⊕ d) = ac ⊕ ad ⊕ bc ⊕ bd`
* OR-equivalence-1: `a + b = a ⊕ b ⊕ ab`
* OR-equivalence-2: `a + b = 1 ⊕ (1 ⊕ a)(1 ⊕ b)`
  (easier when both operands have purely true terms)


## Operations over ANFs

There are straightforward ways to perform the standard boolean operations on ANF inputs in order to get ANF results.

* XOR is performed directly:

```rs
(1 ⊕ x) ⊕ (1 ⊕ x ⊕ y)      for ⊕ is associative
 1 ⊕ x  ⊕  1 ⊕ x ⊕ y       for ⊕ is commutative
1 ⊕ 1 ⊕ x ⊕ x ⊕ y           for a ⊕ a = 0
    0 ⊕ x ⊕ x ⊕ y            for a ⊕ b ⊕ b = a
        0 ⊕ 0 ⊕ y             for a ⊕ a = 0
            0 ⊕ y              for 0 ⊕ a = a
                y
```

* NOT is XOR-ing 1, (1 ⊕):   
`¬a` = `1 ⊕ a`

```rs
¬(1 ⊕ x ⊕ y)                for ¬a = 1 ⊕ a
1 ⊕(1 ⊕ x ⊕ y)              for ⊕ is associative
1 ⊕ 1 ⊕ x ⊕ y                for a ⊕ a = 0
    0 ⊕ x ⊕ y                 for 0 ⊕ a = a
        x ⊕ y
```

* AND is distributed algebraically (`ab` is conjunction):    
`(a ⊕ b)(c ⊕ d)` = `ac ⊕ ad ⊕ bc ⊕ bd`

```rs
(1 ⊕ x)(1 ⊕ x ⊕ y)
1(1 ⊕ x ⊕ y) ⊕ x(1 ⊕ x ⊕ y)
(1 ⊕ x ⊕ y) ⊕ (x ⊕ x ⊕ xy)
1 ⊕ x ⊕ x ⊕ x ⊕ y ⊕ xy
1 ⊕ x ⊕ y ⊕ xy
```

* OR uses either    
`a + b = 1 ⊕ (1 ⊕ a)(1 ⊕ b)`   
easier when both operands have purely true terms, or    
`a + b = a ⊕ b ⊕ ab` easier otherwise

```rs
(1 ⊕ x) + (1 ⊕ x ⊕ y)
1 ⊕ (1 ⊕ 1 ⊕ x)(1 ⊕ 1 ⊕ x ⊕ y)
1 ⊕ x(x ⊕ y)
1 ⊕ x ⊕ xy
```

 p ⋀  q = ¬(¬p ⋁ ¬q)
 p ⋀ ¬q = ¬(¬p ⋁  q)
¬p ⋀  q = ¬( p ⋁ ¬q)
¬p ⋀ ¬q = ¬( p ⋁  q)



p ⋀ q = pq
p = 0 ⊕ p
q = 0 ⊕ q
pq = (0 ⊕ p)(0 ⊕ q)
pq = 00 ⊕ 0q ⊕ p0 ⊕ pq
pq = 0 ⊕ 0 ⊕ 0 ⊕ pq
pq = pq

pq =
= p ⋀ q
= ¬(¬p ⋁ ¬q)
= ¬(¬p + ¬q)
= 1 ⊕ (¬p + ¬q)
= 1 ⊕ ((1 ⊕ p)(1 ⊕ q))

pq =
= 1 ⊕ (p + q)
= 1 ⊕ (p ⊕ q ⊕ pq)
= 1 ⊕ p ⊕ q ⊕ pq
