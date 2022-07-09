# Lambda Calculus: Church encoding: Numerals

* Church numerals are the representations of natural numbers in LC
* The HOF that repr Nat `n` is a function that maps any function `f` to its `n`-fold composition
* The "value" of the numeral is equivalent to the number of times the function encapsulates its argument (folds n times on itself
* All Church numerals are functions that have 2 parameters.
* 0 means not applying the function at all
* 1 means applying the function once
* 2 means applying the function twice
* 3 means applying the function trice, and so on
* n | n f x = fⁿ(x) | n = λf. λx. f⁰ⁿ x
* f⁰ⁿ = f ∘ f ∘ ... ∘ f   fold `f` n times on itself
        \   n times  /



Z  :=     λs. λz. z
S₁ := λn. λs. λz. s (n s z)
S₂ := λn. λs. λz. n s (s z)

IsZero := λn. n (λx. F) T

Le     := λm. λn. IsZero (Minus m n)
Eq     := λm. λn. (Le m n) (Le n m)

## Arithmetic

add m n     = 0 m
add m (S n) = S (add m n)
Add:  f⁰ᵐᐩⁿ (x) = f⁰ᵐ (f⁰ⁿ (x))
Add   := λm. λn. λf. λx. m f (n f x)
Succ  :=     λn. λf. λx.   f (n f x)      -- equiv. to `Add 1`
Succ: fⁿᐩ¹ x = f(fⁿ x) 
succ: n f x = f (n f x)

Mul:  f⁰ᵐⁿ (x) = (f⁰ⁿ)⁰ᵐ (x)
Mul   := λm. λn. λf. λx. m (n f) x

exp(m, n) = mⁿ
Exp: n h x = hⁿ (x)               
(subst. h by m, x by f)
     m n f = mⁿ (f)
Exp := λm. λn. n m

Pred  := λn. λf. λx. n (λg. λh. h (g f)) (λn. x) (λu. u)
A Church numeral applies a function `n` times. The predecessor function must return a function that applies its parameter `n - 1` times. This is achieved by building a container around `f` and `x`, which is initialized in a way that omits the application of the function the first time.

Minus := λm. λn. (n Pred) m
The subtraction function can be written based on the predecessor function.
sub: fᵐ⁻ⁿ x = (f⁻¹)ⁿ (fᵐ x)
sub m n = (n Pred) m

* In Church encoding: `Pred 0 = 0`, `m < n -> m - n = 0`
  but in fact theresult should be *undefined* coz this breaks things
  as it assumes that `Pred 1` = `Pred 0` = `0` which 
  breaks the axiom for how Pred and Succ relate to each other:
  **S (P n) ≡ P (S n)**   if n = 0 then
    S (P 0) = P (S 0) =
        S 0 = P 1 = 
          1 = 0       ✘
  
