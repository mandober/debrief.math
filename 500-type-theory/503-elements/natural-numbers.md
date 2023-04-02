# Natural numbers

In the end of XIX century, Guiseppe Peano, an Italian mathematician from Torino, first came up with the precise definition of the natural numbers in the setting of predicate logic. Today, albeit in a somewhat abbreviated form that excludes axioms about the properties of equality, they are called Peano axioms in his honor. The fundamental Peano's idea was that a natural number is either the zero (base case), or the successor of another natural number (inductive case), which may be stated as a pair of inference rules:

```
                   n : Nat
-------- (1)     ---------- (2)
Z : Nat          S n : Nat
```

These two inference rules translate almost verbatim to Agda and, mutatis mutandis (':' to '::'), to Haskell.

```hs agda
data Nat : Set where
  zero : Nat
  suc  : Nat → Nat
```

We can view the inferences as formation rules, telling us how to produce the natural numbers: on the day _0_, only the first axiom is active (we get to examine both axioms "at once"); the second axiom is inactive because we have no numbers at that point. Referring to the first axiom, the very first natural number, known as zero or `Z` for short, pops into existence.

An axiom that has no premises (nothing above the inference line) always holds; however such axioms are usually one-hit wonders (or one-offs), becoming static after that initial bang - after it, whether considered retired or still active (so it keeps producing the same number Z over and over again, even though once was quite enough), makes no practical difference; that is, at least not in the instance above; perhaps it's possible to concieve some highly unlikely example with an assumption-less base case that nevertheless remains effectful (slim or none and slim's split the dodge).

form the first Nat, called `Z`; having produced the most important number entirly from the thin air, mind you, its job is over. 

but then the second axiom makes effect (and it never stops): it allows us to form a new Nat called "S Z"; thus, on day 1 we have 2 Nats, Z and S Z. 

On the day 2, we check that Z and S Z are still there, and then we get to form the third Nat, "S S Z". And so it goes. On the day 42, we'll get the new number `S⁴² Z`, our 43rd Nat.


D | Ax| New number | Total | Nats so far                           | Range
--|---|-----------:|-------|--------------------------------------:|---------
0 | b |      Z (0) | 1     |                                     Z | (0,0)
1 | i |     SZ (1) | 2     |                                 SZ, Z | (0,1)
2 | i |    SSZ (2) | 3     |                            SSZ, SZ, Z | (0,2)
3 | i |   SSSZ (3) | 4     |                      SSSZ, SSZ, SZ, Z | (0,3)
4 | i |  SSSSZ (4) | 5     |               SSSSZ, SSSZ, SSZ, SZ, Z | (0,4)
5 | i | SSSSSZ (5) | 6     |       SSSSSZ, SSSSZ, SSSZ, SSZ, SZ, Z | (0,5)
n | i | Sⁿ   Z (n) | n + 1 | Sⁿ Z, SSSSSZ, SSSSZ, SSSZ, SSZ, SZ, Z | (0,n)


The predecessor function, `pred`, is problematic in case the input is `Z` since it is undefined in that case, `pred 0 = ⟘`, where bottom signals the undefined case. In Haskell, it looks like

```hs
data Nat where
  Z :: Nat
  S :: Nat → Nat

pred :: Nat → Nat
pred (S n) = n
pred  Z    = error "pred is undefined for input Z"
```

because it can since Haskell allows diverging functions which amountto the same thing as directly specifying `undefined`, emitting an error message, or just winding up in an infinite loop.

## Naturals in Agda

Unlike Haskell, **Agda** is a total PL and functions must terminate, they must use well-founded recursion, so bottom (of any kind) as the output won't work.

Instead, we must make the function `pred` total, and one of the ways to do it is by returning an arbitrary, in-band, value in the problematic case. People usually use 0, but even if it's seems ok, it is still incorrect because it breaks injectivity - it makes `P 0 === P 1 === 0`, that is, the pred of 0 becomes the same as the pred of 1.

```hs
pred : Nat → Nat
pred zero = zero
pred (suc n) = n
```

Returning `zero` above may seem undramatic, but that little change may bring about trouble later on.
* First, this change makes the `pred` function, from being injective and partial, into a function that is surjective and total, `pred 0 = 0 = pred 1`.
* Second, it introduces an *artificial fixpoint* with `pred 0 = 0`. So zero becomes the least fixpoint for the function which shouldn't have a fixpoint.

Another option that would make `pred` a total function is altering its output type to return a `Maybe A`. Of course, this change affects all the input cases, not just the problematic one, so we're forced to `just` re/un/wrap the values in and out of `Maybe`.

```hs agda
data Maybe (A : Set) : Set where
  none : Maybe A
  just : A → Maybe A

pred : Nat → Maybe Nat
pred zero    = none
pred (suc n) = just n
```

The `pred` function above is the inverse of the function created by rolling both of the Nat's ctors into a single function:

```hs agda
zero+suc : Maybe Nat → Nat
zero+suc none     = zero
zero+suc (just n) = suc n
```

Evidently, `pred` and `zero+suc` are exactly each other's inverses.

```hs agda
double : ℕ → ℕ
double 0 = 0
double (suc n) = suc (suc (double n))

half : ℕ → ℕ
half 0 = 0
half 1 = 0
half (suc (suc n)) = suc (half n)


-- Ackermann
ack : ℕ → ℕ → ℕ → ℕ
ack 0 m n = suc n
ack 1 m 0 = m
ack 2 m 0 = 0
ack 3 m 0 = 1
ack (suc (suc (suc (suc l)))) m      0  = m
ack                (suc l)    m (suc n) = ack l m (ack (suc l) m n)

-- less comples but equivalent
ack : ℕ → ℕ → ℕ → ℕ
ack 0 m n = suc n
ack 1 m 0 = m
ack 2 m 0 = 0
ack 3 m 0 = 1
ack (suc (suc (suc (suc l)))) m      0  = m
ack                (suc l)    m (suc n) = ack l m (ack (suc l) m n)
```

## Iterator and recursor

In general, we define a function out of Nat, `f : Nat → A`, by (primitive) recursion over the naturals.

```hs
-- postulate
variable A B M : Set

h : Nat → A
h  zero   = z
h (suc n) = f (h n)
  where
    z : A
    f : A → A
```

### Iteration

Taking `z : A` and `f : A → A` and rolling them into a single function gets us the higher-order function called the **iterator**.

```hs agda
iter : A → (A → A) → Nat → A
iter z f  zero   = z
iter z f (suc n) = f (iter z f n)
```

In category theory, `iter z f : Nat → A` is the universal morphism from the initial algebra. In FP it is called a *fold* or *catamorphism*.

We call `A` the **motive**, and `z` and `f` the **methods** (but really, `z` is an initial value and `f` is a function that we fold `n` times over itself).

> `iter x f n` ≈ `f ⁿ x`

This is the way Church numerals are expressed in λ-calculus, that is, natural numbers are encoded as iterators.


We can express recursion over the naturals in terms of the iterator. For example, we can express `double` (from above) using the iterator:

```hs agda
dbl : Nat → Nat
dbl = iter 0 (λ f → suc (suc f))
```

### Primitive recursion

The **recursor** function, `R`, defines primitive recursion over the natural numbers. Similarly to iterator, `R` takes two functions, `z` and `f`, along with natural number `n`. However, unlike `iter`'s second farg (which is a unary function `f`), `R`'s second arg is binary function `f` that has an extra parameter - it takes the same `Nat` that is passed into the `R` function.

```
iter : A → (      A → A) → Nat → A
prec : A → (Nat → A → A) → Nat → A
             │              │
             └──┬───────────┘
              same nat
```



```hs agda
-- | The prim rec function
R : A → (Nat → A → A) → Nat → A  -- prim rec
--  A → (      A → A) → Nat → A  -- iterator
R z f  zero   = z
R z f (suc n) = f n (R z f n)

iter : A → (A → A) → Nat → A
iter z f  zero   = z
iter z f (suc n) = f (iter z f n)


-- | iter in terms of primrec (1)
iter = R z  f          n
iter = R z (λ _ x → x) n

-- | iter in terms of primrec (2)
iter'' f g = R f (const g)
```



## Refs

* Building the non-negative integers from scratch, Lean, 2017
https://xenaproject.wordpress.com/2017/10/31/building-the-non-negative-integers-from-scratch/
