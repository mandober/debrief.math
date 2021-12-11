# Idempotence

https://en.wikipedia.org/wiki/Idempotence

**Idempotence** is the property of certain operations that, when applied multiple times, don't change the output result, beyond the result of their initial application.

The concept of idempotence arises in a number of places in abstract algebra (in particular, in the theory of projectors and closure operators) and functional programming (where it is connected to the property of referential transparency).

The term was introduced by Benjamin Peirce in the context of elements of algebras that remain invariant when raised to a positive integer power.

The term *idempotent* literally means "(the quality of) having the same power", from *idem* + potence i.e. same + power. Something is *nullipotent* if it has no power (no effect, no impact).

An idempotent operation has the same effect whether applied once or many times.

## Definitions

(in terms of an element under an operation)    
An element `x` of a set `S` equipped with a binary operator `•` is said to be idempotent under `•` if `x • x = x`

(in terms of an operation)    
A binary operation `•` over a set `S` is said to be idempotent if     
`∀x ∈ S. x • x = x`

So, an operation may be idempotent wrt to all elements of a certain set, or some elements may be idempotent wrt to a particular operation over that set.


## Examples

1. In the monoid `(ℕ, ×)` of the natural numbers with multiplication, only `0` and `1` are idempotent. Indeed, `0 × 0 = 0` and `1 × 1 = 1`, which does not hold for other natural numbers.

2. In a magma `(M, •)`, an identity element `ϵ` or an absorbing element `χ`, if it exists, is idempotent. Indeed, `ϵ • ϵ = ϵ` and `χ • χ = χ`.

3. In a group (G, •), the identity element e is the only idempotent element. Indeed, if x is an element of G such that x • x = x, then x • x = x • e and finally x = e by multiplying on the left by the inverse element of x.

4. In the monoids (𝒫(E), ∪) and (𝒫(E), ∩) of the power set of the set E with set union ∪ and set intersection ∩ respectively, ∪ and ∩ are idempotent. Indeed, ∀x, x ∪ x = x, and ∀x, x ∩ x = x.

5. In the monoids ({0, 1}, ∨) and ({0, 1}, ∧) of the Boolean domain with logical disjunction ∨ and logical conjunction ∧ respectively, ∨ and ∧ are idempotent. Indeed, ∀x, x ∨ x = x, and ∀x, x ∧ x = x.

6. In a Boolean ring, multiplication is idempotent.

7. In a Tropical semiring, addition is idempotent.

8. Application of a function `f` is idempotent wrt to an arg `x` if   
  `f (f x) = f x`   
that is, iterating a function `n` times, for `n > 0`, is idempotent if    
  `fⁿ x = f x`  (for n > 0)    
A fixpoint of function `f` is such arg `x` for which `f(x) = x`.


```
f⁰ x = x
f¹ x = f x
f² x = (f ∘ f)     (x) = (f x)          = f x
f³ x = (f ∘ f ∘ f) (x) = f (f (f x))    = f x
fⁿ x = (f ∘ … ∘ f) (x) = f (… (f x) … ) = f x
       └───┬────┘
         n times
```


* potentially idempotent operations:
  - {⋃, ⋂}
  - {⋀, ⋁}
  - {max, min}
  - iteration of function composition


```js
// ⋃ and ⋂
A ⋃ A = A
A ⋂ A = A

// ⋀ and ⋁
p ⋀ p = p
p ⋁ p = p

// abs
abs(a) = abs(…abs(a)…)

// min and max
a `max` a = a
a `min` a = a
```
