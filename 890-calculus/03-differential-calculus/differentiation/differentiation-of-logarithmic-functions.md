# Differentiation of logarithmic functions

## Natural logarithm

>d/dx (ln u) = u′/ u
>d/dx (ln x) = 1 / x
>d/dx (ln f(x)) = f′(x) / f(x)

- ln(a×b) = ln a + ln b
- ln(a/b) = ln a - ln b
- ln(aᵇ) = b × ln a

## Logarithms

>d/dx (logₐ u) = u′/ u ln a
>d/dx (logₐ x) = 1 / x ln a

- logⱼ (aᵇ) = b logⱼ a
- logₐ x = logⱼ x / logⱼ a *change of base*


## Examples

```js
// Ex.
d/dx (ln x) = 1/x

// Ex.
d/dx (ln x²) = 2x/x² = 2/x

// Ex.
d/dx (ln x³)
= d/dx (3 ln x)
= 3 ∙ d/dx (ln x)
= 3 ∙ 1/x
= 3/x

// Ex.
d/dx (ln (x² + 4)) = 2x/(x²+4)

// Ex.
d/dx (ln (x + 5)) = 1/(x+5)

// Ex.
d/dx (ln(sinx)) = cosx/sinx = tan⁻¹x = cotx

// Ex.
d/dx (ln(⁷√x)) 
= d/dx (ln(x¹′⁷))
// approach#1
= 1/7 d/dx (ln x)
= 1/7 × 1/x
= 1/7x
// approach#2
= d/dx (ln(x¹′⁷))
// derivative of x¹′⁷ is 1/7 x⁻⁶′⁷
   1    x⁻⁶′⁷    1     1     1       1
= ---- ------ = ---- ----- ------ = ---- = 1/7x
   7    x¹′⁷     7    x¹′⁷  x⁶′⁷     7x

// Ex.
d/dx (³√(ln x))
= d/dx ((ln x)¹′³) // chain rule applies
= 1/3(ln x)⁻²′³ × 1/x
= 1/3x³√(lnx)²

      1
= ------------
  3x ³√(ln x)²
```

## Logarithms examples

```js
// derivative
              u′
(logₐ u)′ = -------
            u ln u

// change of base (from base 'a' to base 'j')
         logⱼ x
logₐ x = -------
         logⱼ a

// Ex.
d/dx (log₃x) = 1/x ln 3

// Ex.
d/dx (log₄ x²) =
d/dx (2 × log₄ x) =
2 × (1 / x ln 4) =
2/xln4

// Ex.
d/dx (log₇(5-2x)) = -2/(5-2x)ln7

```
