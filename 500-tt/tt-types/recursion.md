# Recursion

## General recursion

Lecture Notes on General Recursion and Recursive Types
https://www.cs.cmu.edu/~fp/courses/15814-f18/lectures/

In this lecture we first complete our development of recursion: from *iteration* through *primitive recursion* to *full recursion*. Then we will introduce simple types to sort out our data representations.

Schema of iteration:

```hs
f    Z  = c
f (S n) = g (f n)
```

Schema of primitive recursion:

```hs
f    Z  = c
f (S n) = g n (f n)
```

Church encoding: `λnfx.nfx` ≈ `fⁿ x`, in other words, the representation `n̅` iterates its first arg `n` times over its second arg `n̅ f x = fⁿ x`.

- zero := λsz.z
- succ := λnfx.f(nfx)  = f ∘ fⁿ = f¹ × fⁿ = f¹ᐩⁿ
- succ := λnfx.nf(fx)  = fⁿ ∘ f = fⁿ × f¹ = fⁿᐩ¹

Using the *iteration property* we can now define other mathematical functions over the natural numbers.

Addition of `n` and `k` iterates the `succ` function `n` times on `k`:
- add := λnk. n succ k
- add := λmnfx. mf(nfx)                = fᵐ(fⁿ x) = fᵐ ∘ fⁿ = fᵐᐩⁿ

Multiplication of `n` and `k` iterates the `add k` function `n` times on `0`:
- mul := λnk. n (add k) zero           = mf(fⁿ x) = (fⁿ)ᵐ x = fⁿᐩᵐ x
- mul := λmnfx. m(nfx)                 = m(fⁿ x)  = (fⁿ)ᵐ = fⁿᐩᵐ x

Exponentiation of `b` to `e` iterates the `mul b` fn `e` times on `succ 0`:
- exp := λbe. e (mul b) (succ zero) := bᵉ
- exp := λnk. k (mul n) (succ zero) := nᵏ
- exp := λmn. nm                       = nmf = f((ⁿ)ᵐ) = f^(n^m) = f^(nᵐ)
- exp := λmnfx. nmfx                   = n(fᵐ x) = (fⁿ)ᵐ x = fⁿᐩᵐ x
