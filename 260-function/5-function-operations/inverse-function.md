# Inverse function

https://en.wikipedia.org/wiki/Inverse_function

The inverse function of a function `f` (also called the inverse of `f`) is a function that undoes the operation of `f`. The inverse of `f` exists if and only if `f` is bijective, and if it exists, is denoted by `f⁻¹`.

For a function `f : X → Y`, its inverse `f⁻¹ : Y → X` admits an explicit description: it sends each element `y ∈ Y` to the unique element `x ∈ X` such that `f(x) = y`.

For example, consider the function `f : ℝ → ℝ` defined by `f(x) = 5x−7`. It multiplies its input by 5 then subtracts 7 from the result. To undo this operation the inverse of `f` needs to add 7 to the input then divide the result by 5. So, the inverse of `f` is the function `f⁻¹ : ℝ → ℝ` defined by `f⁻¹(y) = (y+7)/5`.

```js
f : ℝ → ℝ
f(x) = x²

f⁻¹ : ℝ → ℝ
f⁻¹(x) = √x

f⁻¹ ∘ f = 1ᴀ
              (f⁻¹ ∘ f)(x) = f⁻¹(f(x)) = f⁻¹(f(2)) = f⁻¹(4) = 2
f ∘ f⁻¹ = 1ʙ
              (f ∘ f⁻¹)(x) = f(f⁻¹(x)) = f(f⁻¹(2)) = f(√2) = (√2)² = 2
```

## Contents

- 1. Definitions
  - 1.1. Inverses and composition
  - 1.2. Notation
- 2. Examples
  - 2.1. Squaring and square root functions
  - 2.2. Standard inverse functions
  - 2.3. Formula for the inverse
- 3. Properties
  - 3.1. Uniqueness
  - 3.2. Symmetry
  - 3.3. Self-inverses
  - 3.4. Graph of the inverse
  - 3.5. Inverses and derivatives
- 4. Real-world examples
- 5. Generalizations
  - 5.1. Partial inverses
  - 5.2. Full inverses
  - 5.3. Trigonometric inverses
  - 5.4. Left and right inverses
    - 5.4.1. Left inverses
    - 5.4.2. Right inverses
    - 5.4.3. Two-sided inverses
  - 5.5. Preimages
- 6. See also
- 7. Notes
- 8. References
- 9. Bibliography
- 10. Further reading
- 11. External links


## Definitions

Let `f : X → Y`. Then `f` is invertible if there exists a function `g : Y → X` such that `∀x ∈ X. g(f(x)) = x` and `∀y ∈ Y. f(g(y)) = y`.

In other words, `f⁻¹ ∘ f = 1x` and `f ∘ f⁻¹ = 1ʏ`. The notation `1x` is for the identity function on set `X`, `1x : X → X`. So composing `f⁻¹` and `f` must give the same result as the identity function `1x`; which it does: any input `x` is first sent to `f(x)` by `f`, the result of which is sent back to `x` by `f⁻¹`, x ⟼ f x ⟼ x. This composition is the left identity, left part of identity.

- `g ∘ f : A ----ᶠ---> B ----ᵍ---> A` = 1ᴀ : A → A
- `f ∘ g : B ----ᵍ---> A ----ᶠ---> B` = 1ʙ : B → B


If `f` is invertible, then there is *exactly one* function `g` satisfying this property. The function `g` is called the inverse of `f`, and is usually denoted as `f⁻¹`, a *notation introduced by John Frederick William Herschel in 1813*.


The function `f` is invertible if and only if it is *bijective*. This is because the condition `g(f(x)) = x` for all `x ∈ X` implies that `f` is injective, and the condition `f(g(y)) = y` for all `y ∈ Y` implies that `f` is surjective (i.e. covers the entire codomain).

The inverse function `f⁻¹` to `f` can be explicitly described as the function f⁻¹(y) = (the unique element x ∈ X such that f(x) = y).

    f⁻¹ = { y | ∃!x ∈ X. f(x) = y }

### Inverses and composition

Recall that if `f : X → Y` is an invertible function, then

    ∀x ∈ X. f⁻¹(f(x)) = x, or (f⁻¹ ∘ f)(x) = x
    ∀x ∈ x. f(f⁻¹(x)) = x, or (f ∘ f⁻¹)(x) = x

Using the composition of functions, this statement can be rewritten to the following equations between functions:

    f⁻¹ ∘ f = 1x
    f ∘ f⁻¹ = 1ʏ

where `1x` is the identity function on the set `X`; that is, the function that leaves its argument unchanged. In category theory, this statement is used as the definition of an *isomorphism* (inverse morphism).

Considering function composition helps to understand the notation `f⁻¹`. Repeatedly composing a function `f : X → X` with itself is called iteration. If `f` is applied `n` times, starting with the initial value `x`, then this is written as `fⁿ(x)`; e.g. `f²(x) = (f ∘ f)(x) = f(f(x))`.

Since `f ⁻¹(f(x)) = x`, composing `f⁻¹` and `fⁿ` yields `f⁻¹fⁿ = f⁻¹ᐩⁿ = fⁿ⁻¹`, "undoing" the effect of one application of `f`.

Then `f¹(x) = f(x)`, and `f⁰(x)` means not applying the function at all.

```js
// succ fn
S(x) = x + 1
S(x) = S(x)
// point-free style
S ∘ S
S ∘ S ∘ S
// point-full style
(S ∘ S)(x) = S(S(x))
(S ∘ S ∘ S)(x) = S(S(S(x)))
// then
S(x) = x + 1
P(x) = x - 1 = S⁻¹(x)  [for x > 0]
(S ∘ P)(x)
(S ∘ P)(1) = S(P(1)) = S(0) = 1
(P ∘ S)(1) = P(S(1)) = P(1) = 0
(P ∘ P)(1) = P(P(1)) = P(0) = undefined

S⁻¹(x) = x - 1                         S⁻¹(1) = 1 - 1 = 0 (x=0 is undefined)
S⁰(x) = x                              S⁰(0) = 0
S¹(x) = S(x)                           S¹(0) = S(0) = 1
S²(x) = S ∘ S = S(S(x))                S²(0) = S ∘ S = S(S(0)) = 2
S³(x) = S ∘ S ∘ S = S(S(S(x)))         S³(0) = S ∘ S ∘ S = S(S(S(0))) = 3
S⁴(x) = S ∘ S ∘ S ∘ S = S(S(S(S(x))))  S⁴(0) = S ∘ S ∘ S ∘ S = S(S(S(S(0)))) = 4
```

#### Inverse element

See also: Inverse element
https://en.wikipedia.org/wiki/Inverse_element

The concept of *inverse element* generalizes the concepts of opposite, `−x` and reciprocal, `1/x`, of numbers.

∃!ε ∈ S. ∀a ∈ S. ∀a⁻¹ ∈ S.
- ε ✱ a = a = a ✱ ε (id)
  - ε ✱ a = a (left id)
  - a = a ✱ ε (right id)
- inverse
  - a ✱ b = ε (a is left inverse of b, b is right inverse of a)
  - a⁻¹ ✱ a = ε (left inverse)
  - a ✱ a⁻¹ = ε (right inverse)
  - a⁻¹ ✱ a = ε = a ✱ a⁻¹ (inverse)

Given an operation denoted here `✱`, and an identity element denoted `ε`, if `a ∗ b = ε`, one says that `a` is a left inverse of `b`, and that `b` is a right inverse of `a`. An identity element is an element such that `a * ε = a` (right identity) and `ε * a = a` (left identity) for all `a` for which the left-hand sides are defined.

When the operation `✱` is associative, if an element `a` has both a left inverse and a right inverse, then these two inverses are equal and unique; they are called *the inverse element* or simply the *inverse*. Often an adjective is added for specifying the operation, such as in *additive inverse*, *multiplicative inverse*, and *functional inverse*.

Also, in the case of associative operation, an *invertible element* is an element that has an inverse.

In a ring, an invertible element, also called a *unit*, is an element that is invertible under multiplication (this is not ambiguous, as every element is invertible under addition).

### Notation

While the notation `f ⁻¹(x)` might be misunderstood, `(f(x))⁻¹` certainly denotes the **multiplicative inverse** of `f(x)` and *has nothing to do with the inverse function* of `f`. The notation `f⟨−1⟩` might be used for the inverse function to avoid ambiguity with the multiplicative inverse.

In keeping with the general notation, some English authors use expressions like sin−1(x) to denote the inverse of the sine function applied to x (actually a partial inverse; see below).[8][6] Other authors feel that this may be confused with the notation for the multiplicative inverse of sin (x), which can be denoted as (sin (x))−1.[6] To avoid any confusion, an inverse trigonometric function is often indicated by the prefix "arc" (for Latin arcus).[9][10] For instance, the inverse of the sine function is typically called the arcsine function, written as arcsin(x).[9][10] Similarly, the inverse of a hyperbolic function is indicated by the prefix "ar" (for Latin ārea).[10] For instance, the inverse of the hyperbolic sine function is typically written as arsinh(x).[10] The expressions like sin−1(x) can still be useful to distinguish the multivalued inverse from the partial inverse: 
sin
−
1
⁡
(
x
)
=
{
(
−
1
)
n
arcsin
⁡
(
x
)
+
π
n
:
n
∈
Z
}
sin−1(x)={(−1)narcsin(x)+πn:n∈Z}. Other inverse special functions are sometimes prefixed with the prefix "inv", if the ambiguity of the f −1 notation should be avoided.[11][10]
