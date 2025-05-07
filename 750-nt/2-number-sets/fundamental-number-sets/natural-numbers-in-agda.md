# Natural numbers in Agda

# Definition of the set of the natural numbers

ℕ-definition

```agda hs
-- ℕ-definition
data ℕ : Set where
  zero : ℕ
  suc : ℕ → ℕ
```

## Induction

### Defining induction over ℕ, version 1

A *predicate* is a dependent function from some set, `A`, into the set of types, `Set` (in Agda the set of all types is denoted `Set` rather then `Type`). We say that the predicate indexes types (`Set`) using some arbitrary set `A`.

A *dependent function* may depend on the value of the argument, unlike non-dependent functions which may only depend on the argument's type. Thus, the syntax is not `f : A → B` but `f : (a : A) → B` instead, where `a` is the value of the argument of type `A`. Now we can use this argument (by value) in the body of the function, even though we are really at the type level (as opposed to being on the value level like in most programming languages). We plan to use the type ℕ as the indexing set to index types, which is required in order to realize the prototypical example of dependent programming - vector type. 

Plain lists hold elements of some arbitrary type `T`, and they are usually denoted specially, e.g. in Haskell, [a] denotes a list of some type `a`, which is still unspecified (`a` is a type variable). The type of a concrete list, like a list of integers is `[Int]`, and its value may be, e.g. `[1, 2, 3]`. In Haskell, we may denote the type following a value as `[1, 2, 3] :: [Int]`, which is known as annotating a value (with a type). In Agda, some aspects of the surface syntax are more strict, especially regarding the use of whitespace, so a list of natural numbers may look like, `1 ∷ 2 ∷ 3 ∷ []` (which is how lists look in Haskell when desugared). The type of this list is `List ℕ`.

List do not track the number of their elements, requiring frequuent checks to verify whether a list is empty or not before we can proceed to operate on it.


impose any restriction 
List Vectors are like lists, consisting of elements of some type `T`

Introduction to Higher Mathematics - Unit 6 Number Theory


Here, in the context of natural numbers, `ℕ`, the predicate `P` is defined as a dependent function that indexes the set of all types, `Set`, using the set of natural numbers, `ℕ` (define above, so `ℕ : Set`).

Induction is defined by a predicate `P`.




```agda hs
-- ℕ-induction v.1
--
-- (P 0 ∧          if predicate P holds for zero,
-- ∧              and,
-- ∀n ∈ ℕ.        for all n in ℕ
-- P n ⇒          if P holds for n
-- P (S n)) ⇒     then it holds for the successor of n,
-- ∀n ∈ ℕ. P n    then, P holds for all n in ℕ
--
-- ind-ℕ : (P : (n : ℕ) → Set) →
--   (f : P 0) → (g : (n : ℕ) → P n → P (suc n)) → (n : ℕ) → P n
--       (P 0  ∧      ∀n ∈ ℕ.   P n ⇒ P (suc n)) ⇒ ∀n ∈ ℕ.  P n
--
--
ind-ℕ : (P : (n : ℕ) → Set)
      → (f : P 0)
      → (g : (n : ℕ) → P n → P (suc n))
      ----------------------------------
      → (n : ℕ) → P n
```


### Defining induction over ℕ, version 2

This is more in line with the way induction is defined with PRFs.

```agda hs
-- ℕ-induction v.2
ind-ℕ P f g = h
  where
  h : (n : ℕ) → P n
  h zero    = f
  h (suc n) = g n (h n)
```

```agda hs

rec-ℕ : {A : Set}
      → (f : A)
      → (g : ℕ → A → A)
      → ℕ
      ------------------
      → A
rec-ℕ {A} f g n = ind-ℕ (\ _ → A) f g n

-- ------------------------------------------------------------------
iter : {A : Set} → (A → A) → A → ℕ → A
iter f x zero    = x
iter f x (suc n) = f (iter f x n)


-- ------------------------------------------------------------------
-- ℕ as inference rules

           n ∈ ℕ
-----     --------
0 ∈ ℕ     S n ∈ ℕ
```
