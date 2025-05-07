# Addition 

Addition is an elementary arithemtic operation.

Addition is like an abstract concept - an abstract operation of adding two numbers - and it is then expressed in various ways.

Addition is actually a function (all functions are operations). All operators are really functions with some specific properties and the rules of use (as dictated by grammar).

As a function, addition may be defined by `f(x,y) = x + y`, although we have here a problem of infinite regress since the `+` symbol is undefined. However, this can be resolved by first defining the natural numbers, ℕ, using the Peano axioms, then we'd get the successor as well as the addition operation.

```hs
-- A Nat is either zero or a successor of another nat
data Nat = Z | S Nat

-- 1) there exits an object Z (zero) which is a member of set ℕ
∃Z ∈ ℕ -- ∃Z(Z ∈ ℕ)

-- 2) if n is an element of set ℕ, then its successor is also a member of ℕ
∀n ∈ ℕ. S n ∈ ℕ

-- 3) zero is successor of no element
∀n ∈ ℕ. S n ≠ 0

-- 4) successor is injective
∀nm ∈ ℕ. S n = S m ⇒ n = m

-- 5) induction: if a predicate P holds for Z, and
-- assuming that, if P holds for n then it also holds for n+1,
-- then P holds for all elements of set ℕ
(P(Z) ∧ ∀n(P(S(n)) P(n))) ⇒ ∀n.P(n)
```

We then have the *successor function*, `S : ℕ → ℕ`, it takes any number in ℕ and produces its successor:
- S Z = S Z
- S (S Z) = S S Z
- S (S (S Z)) = S S S Z

Practically, whatever argument `S` receives it just slaps another `S` on it. Here, `S` is both function and a tag, i.e. it is a *tagging function*. A tagging function receives an argument and tags it, i.e. leaves it in the form of application, `S Z ⟼ S (S Z)`. An expresion of the form like `S Z` cannot be reduced further, just like, e.g. expression `Z` (at least not in this context). So, `S Z` is at the same time an application of the function `S` to an argument (`Z`), but it is also the form of the number one. In this system, the natural numbers are represented in *unary notation*:
- Z
- S Z ≡ S(Z) ≡ SZ
- S S Z ≡ S (S Z) ≡ S(S(Z)) ≡ SSZ
- S S S Z ≡ S (S S Z) ≡ S(S(S(Z))) ≡ SSSZ

Other unary notation for representing the natural numbers:
- 0: ⨉ or (nothing), ∙
- 1: │, 1
- 2: ││, 11
- 3: │││, 111
- 4: ││││, 1111
- 5: │││││ or ┼┼┼┼, 11111


SSZ + SSSZ = S S Z + S S S Z = S S S S S Z = SSSSSZ


## Plus operator

Addition is a *binary operation* - it takes two arguments and computes their sum. Addition is actually a *function*, albeit with a symbolic name - functions that have symbolic names are called *operators* and they can appear in various positions within the expression.

In math, addition is represented as the plus operator, `+`. The origin of the plus symbol is similar to that of the ampersand symbol, as they both stem from the Latin word "et" (meaning "and"): `et`, `🙰`, `🙲`, `🙵`, `🙴`, `&`. The two letters in "et" have fused as this frequent word was often written as a ligature as a mean to shorten it. At a point when it was written as `🙲`, its evolution has forked with one branch developing into the ampersand sign, and the other into the plus sign.

The plus is an *infix* operator - it is placed between two operands, `a + b`. Besides fixity, operators also have the properties of associativity and commutativity. Plus is left-associative which doesn't mean musch since it is also commutative.



produces the result called *sum*.

`x + y = z`

Addition: binary operation
- term + term = sum
- addend + addend = sum
- summand + summand = sum
- augend + addend = sum

Summation: n-ary addition
- term + term + … = sum
- summand + summand + … = sum
