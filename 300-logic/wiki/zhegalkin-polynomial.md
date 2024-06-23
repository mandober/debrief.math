# Zhegalkin polynomial

https://en.wikipedia.org/wiki/Zhegalkin_polynomial

**Zhegalkin polynomials**, aka **algebraic normal form**, are a representation of functions in Boolean algebra.

Introduced by the Russian mathematician Ivan Ivanovich Zhegalkin in 1927, they are the polynomial ring over the integers modulo 2.

The resulting degeneracies of modular arithmetic result in Zhegalkin polynomials being simpler than ordinary polynomials, requiring neither coefficients nor exponents. 

Coefficients are redundant because 1 is the only nonzero coefficient. Exponents are redundant because in arithmetic mod 2, `x² = x`. Hence a polynomial such as `3x²y⁵z` is congruent to, and can therefore be rewritten as, `xyz`.

## Contents

- 1. Boolean equivalent
- 2. Formal properties
- 3. Method of computation
  - 3.1. The method of indeterminate coefficients
    - 3.1.1. Example
  - 3.2. Using the canonical disjunctive normal form
  - 3.3. Using tables
  - 3.4. The Pascal method
  - 3.5. The summation method
    - 3.5.1. Lattice-theoretic interpretation
  - 3.6. Using a Karnaugh map
- 4. Möbius transformation
  - 4.1. Example
- 5. Related work

## 1. Boolean equivalent

Prior to 1927, Boolean algebra had been considered a calculus of logical values with the usual logical operations (conjunction, disjunction, negation, etc.).

Zhegalkin showed that all Boolean operations could be written as ordinary numeric polynomials, representing the false and true values as 0 and 1, the integers mod 2.

Logical conjunction is written as `xy`, and logical exclusive-or as arithmetic addition mod 2, written here as `x⊕y` to avoid confusion with the common use of `+` as a synonym for inclusive-or `∨`. The logical complement `¬x` is `x⊕1`.

- conjunction: `xy`
- disjunction: `x ⊕ y` (addition mod 2)
- negation:    `x ⊕ 1`

Since `∧` and `¬` form a basis for Boolean algebra, all other logical operations are compositions of these basic operations, and so the polynomials of ordinary algebra can represent all Boolean operations, allowing Boolean reasoning to be performed using elementary algebra.

For example, the Boolean *2-out-of-3 threshold* or *median* operation is written as the Zhegalkin polynomial `xy ⊕ yz ⊕ zx`.

## 2. Formal properties

Formally, a **Zhegalkin monomial** is the product of a finite set of distinct vars (hence square-free), including the empty set whose product is denoted 1.

There are `2ⁿ` possible Zhegalkin monomials in `n` variables, since each monomial is fully specified by the presence or absence of each variable.

A Zhegalkin polynomial is the sum (exclusive-or) of a set of Zhegalkin monomials, with the empty set denoted by 0. 

A given monomial's presence or absence in a polynomial corresponds to that monomial's coefficient being 1 or 0 respectively. 

The Zhegalkin monomials, being linearly independent, span a 2ⁿ-dimensional vector space over the Galois field `GF(2)` (NB: not GF(2ⁿ), whose multiplication is quite different). 

The 2^2ⁿ vectors of this space, i.e. the linear combinations of those monomials as unit vectors, constitute the Zhegalkin polynomials. 

The exact agreement with the number of Boolean operations on `n` variables, which exhaust the `n`-ary operations on `{0,1}`, furnishes a direct counting argument for completeness of the Zhegalkin polynomials as a Boolean basis.

This vector space is not equivalent to the free Boolean algebra on `n` generators because it lacks complementation (bitwise logical negation) as an operation (equivalently, because it lacks the top element as a constant). 

This is not to say that the space is not closed under complementation or lacks top (the all-ones vector) as an element, but rather that the linear transformations of this and similarly constructed spaces need not preserve complement and top. 

Those that do preserve them correspond to the Boolean homomorphisms, e.g. there are four linear transformations from the vector space of Zhegalkin polynomials over one variable to that over none, only two of which are Boolean homomorphisms.

## 3. Method of computation

There are various known methods generally used for the computation of the Zhegalkin polynomial:
- Using the method of indeterminate coefficients
- By constructing the canonical disjunctive normal form
- By using tables
- Pascal method
- Summation method
- Using a Karnaugh map

### 3.1 Method of indeterminate coefficients

### 3.2 By constructing the canonical disjunctive normal form

### 3.3 By using tables

### 3.4 Pascal method

### 3.5 Summation method

### 3.6 Using a Karnaugh map

## 4. Möbius transformation

## 5. Related work

In 1927, in the same year as Zhegalkin's paper,[2] the American mathematician Eric Temple Bell published a sophisticated arithmetization of Boolean algebra based on Richard Dedekind's ideal theory and general modular arithmetic (as opposed to arithmetic mod 2).[6] 

The much simpler arithmetic character of Zhegalkin polynomials was first noticed in the west (independently, communication between Soviet and Western mathematicians being very limited in that era) by the American mathematician Marshall Stone in 1936[7] when he observed while writing up his celebrated Stone duality theorem that the supposedly loose analogy between Boolean algebras and rings could in fact be formulated as an exact equivalence holding for both finite and infinite algebras, leading him to substantially reorganize his paper over the next few years.
