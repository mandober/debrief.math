# Recursive types :: Iteration

## Iteration

Iteration is the process of applying a function `f` on an argument `x` n-number of times, in math denoted by `fⁿ x`. This is also called folding as it folds a function `f` n times over an arg `x`. `f⁰ x` evaluates to just `x`. Mathematically, it evaluates to a nullary function `𝟙 -> x`, which is isomorphic to `x` alone. In cases where n > 0, the domain is type `A`, which is also the codomain, i.e. the iteration function type is `A → A`. So, it the case n = 0, the domain is either the unit type, or the function is dependent, with the codomain's type depending on the *domain's type* (in cases n > 0), and, in the case n = 0, on the *domain's value* as well. This may be denoted as a dependent function type `a : A  ⊢ B a`. However, usually we don't go that far - we just let the function value `() → x` be isomorphic to `x`, like in the category theory, where the unit type is the terminal type with a single element `⋆` or `()`.

```
𝟙 → A
() → x
```

Iteration is used to define the naturals. The so-called Church naturals are a way to encode them in LC.

Iteration may be represented as a function of 3 arguments: n, f, x, where
- `n` the number of iterations, i.e. the number of times
- `f` to apply a function to
- `x` an initial argument

Iteration function, `iter`, only has access to all 3 arguments (n, f, x), and the function that is iterated on the arg, i.e. function `f` has access only to the argument `x` (usually a number like nat).


### Representing Natural Numbers

Iteration schema is associated with the representation of natural numbers in lambda calculus. Namely, the Church numerals represent a natural number `n` as iterating a function arg `f` `n`-times over an argument `x`:

    λ n f x . n f x  =  fⁿ x

The natural numbers are generated from zero by repeated application of the successor function. Since we want a closed representations, we start with two abstractions: one (`z`) that stands for zero, and one (`s`) that stands for the successor function:

⌈0⌉ = λs. λz. z
⌈1⌉ = λs. λz. s z
⌈2⌉ = λs. λz. s (s z)
⌈3⌉ = λs. λz. s (s (s z))
⌈n⌉ = λs. λz. s (… (s z) …)

The representation `⌈n⌉` iterates its first argument (f) `n` times over its second argument (x): `⌈n⌉ f x = fⁿ x`.

To define the succ function, `succ ⌈n⌉ = ⌈n + 1⌉`, in LC, we need take a representation of a natural number `n` and return `n + 1`, i.e. we need to iterate a function `f` n+1 times over the arg `x`, `fⁿᐩ¹ x`

- number `n` is `fⁿ x`
- suc of `n` is `fⁿᐩ¹ x` = fⁿ (f¹ x) = f¹( fⁿ x)

Expressed as composition, we have `fⁿ ∘ f = f ∘ fⁿ`, which in LC may be expressed as `f (fⁿ x)`, i.e. `f(n f x)`. Or as fⁿ(f x), i.e. `n f(f x)`.

So we have these two definitions of the succ:
- succ₁ := λnfx.f(nfx)
- succ₂ := λnfx.nf(fx)

### Operation on naturals

Using the iteration property we can now define other operations on naturals. 

Add of `n` and `k` (n+k) iterates `succ` function `n` times over `k`:

    add := λn. λk. n succ k

Mul of `n` and `k` (nk) iterates `add k` function `n` times over `zero`:

    mul  := λn. λk. n (add k) zero

Exp of `n` to `k` (nᵏ) iterates the `mul n` function `k` times over `one`:

    exp  := λn. λk. k (mul n) (succ zero)


Church naturals
- succ  := λn. λs. λz. s (n s z)
- zero  :=     λs. λz.         z
- one   :=     λs. λz.       s z
- two   :=     λs. λz.    s (s z)
- three :=     λs. λz. s (s (s z))

Some ops on Church naturals:
- add  := λn. λk. n succ    k
- mul  := λn. λk. n (add k) zero
- exp  := λn. λk. k (mul n) (succ zero)

## Iteration schema

A natural number `n` is represented by a function `⌈n⌉` that iterates its first argument (f) `n` times over the second arg (x): `⌈n⌉ f x = fⁿ x`.


>`fⁿ x` is `n`-fold of `f` over `x`.


              ┌ this many times
              │ ┌ apply this function
              │ │ ┌ to this value
              │ │ │
    iter := λ n f x . n f x = fⁿ x
                      │ │ │
                      │ │ └ to this value
                      │ └ apply this function
                      └ this many times



We can write an iteration function is Haskell as

```hs
data Nat = Zero | Succ Nat

iter :: Nat -> (Nat -> Nat) -> Nat
iter n f x = case n of
  Z   -> x
  S n -> f (iter n f x)
```

So
- iter 0 f x = x
- iter 1 f x = f x
- iter 2 f x = f (f x)
- iter 3 f x = f (f (f x))
- etc.

It build the results from the inside out: 
an application of `f` is "pulled out" on every recursive call.

- iter 0 f x = x
- iter 1 f x = iter (S 0) f x = f (iter 0 f x) = f          x
- iter 2 f x = iter (S 1) f x = f (iter 1 f x) = f (f       x)
- iter 3 f x = iter (S 2) f x = f (iter 2 f x) = f (f (f    x))
- iter 4 f x = iter (S 3) f x = f (iter 3 f x) = f (f (f (f x)))

For any nat of the form `S n` (n + 1), function `f` is applied once and then `n` times more over the arg `x`. Each recursive call generates one additional application of `f`.

The function `f` being iterated has access to number `n` when the current input is `S n` (n + 1). That is, `f` only has access to the predecessor of the current input number.

```hs
-- without destructuring the input in the pattern match on
-- the left side, iter must decrement the input on the right side:
iter :: Int -> (Int -> Int) -> Int
iter 0 f x = x
iter n f x = f (iter (n - 1) f x)
-- We are expresing naturals in decimal notation, so we use Int.
-- (Negative numbers are disallowed by convention)

-- succ or (+ 1) in terms of iter:
-- iter 1 (+ 1) n = succ n = n + 1
add1 n = iter 1 (+ 1) n
-- (+ 2) in terms of iter:
-- add2 0 = iter 2 (+ 1) 0 = (+ 1) 0 = 0 + 1 = 1
-- add2 1 = iter 2 (+ 1) 1 = (+ 1) (+ 1) 0 = 0 + 1 = 1
-- add2 2 = iter 2 (+ 1) 2 = (+ 1) (+ 1)(+ 1) 0 = 0 + 1 = 1

-- add2 0 = iter 2 (+ 1) 0 = 0 + 1 + 1
-- add2 3 = iter  (+ 1) 0 = 0 + 1 + 1 + 1
add2 n = iter 2 (+ 1) n


-- add in terms of iter
-- iter 0 succ k = k
-- iter 1 succ k = succ k = k + 1
-- iter 2 succ k = succ (succ k) = k + 2
-- iter 3 succ k = succ (succ (succ k)) = k + 3
add n k = iter n succ k

-- mul in terms of iter, n ∙ k = n + n + …(k times)… + n
mul₁ n k = iter k (add n) 0
mul₂ n k = iter (k - 1) (add n) n
```

If a function satisfies such a schema of iteration then it can be defined in λ-calculus on Church numerals as: `g = λn. n f x` (λnfx.nfx). The class of function definable this way is *total* if `f` and `x` are (`x` represents a natural number, but it is a function, like everything else in LC), which can be proved by induction on `n`.

### Addition

Addition, `n + k`, conforms nicely to the iteration schema with `f = succ` and `x = k`. So `iter n succ k` applies `succ` n times on `k`, which descibes addition as the repeated application of the successor function to arg `n`:

    n + k = iter k (+ 1) n

    n + k = n + (1 + 1 + … + 1)
                 └─────┬─────┘
                   k times


### Mul

Multiplication, `n ∙ k`, can be expressed in term of iteration as applying
- `(+ n)` function `k` times over `0`
- `(+ n)` function `k-1` times over `n`

```hs
-- mul n k = n ∙ k

-- mul on second arg
n ∙ 0       = 0
n ∙ (k + 1) = (n +) (n ∙ k)
--------------------


----------
0 ∙ k = 0


-- mul on first arg

--------------------
S n ∙ k = n ∙ k + k

```


    n ∙ k = iter (k - 1) (+ n) n

    n ∙ k = n + (n + n + … + n)
                 └────┬──────┘
                    k-1 times

    n ∙ k = n + n + n + … + n
            └──────┬────────┘
                k times






`g = λn. n f x` 
So even if the function argument `f` of `iter` takes only a single argument (over which it iterates n times), this fits nicely with the iteration scheme.

However, other operations 

so it iterates `succ` n times over `k`, which 

, but most operations on naturals take two. 



- add  := λn. λk. n succ    k
- mul  := λn. λk. n (add k) zero
- exp  := λn. λk. k (mul n) (succ zero)

## Schema of iteration

A natural number `n` is represented by a function `⌈n⌉` that iterates its first argument `g` n-times over the second arg `c`: `⌈n⌉ g c = gⁿ c`, i.e.

    ⌈n⌉ g c   =    g (… (g x)…)   =   gⁿ c   =    g ∘ g ∘ … ∘ g
                  └─────┬────┘                   └─────┬─────┘
                 n applications                 g composed with
                      of g                       itself n times

We can also specify iteration function schematically as

    iter 0       = c
    iter (n + 1) = g (iter n)

where
- `g` is a function we apply `n` times to
- `c` arg constant

`iter` works by scrutinizing its input:
- if it is 0, we return `c`
- if it has the form `S n`, for some number `n`, we apply `g` to the recursive call `iter n`. This case may also be defined:

    iter 0 = c
    iter n = g (iter (n - 1))

where we decrement the input number by 1 in before doing the recursive call.

>In the schema of iteration, the argument `g` is a unary function that only has access to the result of the recursive call, `iter n`, when the input is `n+1`.


If a function satisfies such a schema of iteration then it can be defined in the λ-calculus on Church numerals as

    f = λ n . n g c

The class of function definable this way is total - that is, defined on all natural numbers if `c` and `g` are - which may be proved by induction on `n`.

### Multiplication

Consider multiplication again:

    mul 0       k = 0
    mul (n + 1) k = k + mul n k

Multiplication does not exactly fit the iteration schema because `k` is an extra parameter. To avoid generalizing the schema now, `mul` can instead return a function that abstracts over `k`.

    mul 0       = λk. 0
    mul (n + 1) = λk. k + mul n k

We read off the definitions of the constant `c` and the function `g` from this schema as their corresponding lambda expressions:

    c := λk. zero                       zero := λn. λk. k
    g := λr. λk. add k (r k)             add := λn. λk. n succ k

to obtain another definition of multiplication as a corresponding lambda exp:

    mul := λn. n (λr. λk. add k (r k)) (λk. zero)
              └┬┘└─────────┬─────────┘ └───┬────┘
               n           g               c


This solution is more complicated than the one we constructed previously:

    mul := λn. λk. n (add k) zero
                  └┬┘└─┬───┘ └┬─┘
                   n   g      c

because this definition (above) takes advantage of the fact that `k` (second arg of `mul`) never changes during the iteration, so it can be specified as a constant quantity that is being added each time to `n`, as part of farg `g`.

Like `mul`, `add` also has a similar choice between two versions (short and long).

## Schema of primitive recursion

Fast-growing functions are easy to define by iteration, such as the exponential function `exp`, or the `stack` function that iterates the exponential.

      exp := λb. λe. e (times b) (succ zero)
    stack := λb. λn. n (exp b)   (succ zero)

Most functions seems to be definable in terms of iteration until we consider one of the simplest functions - the *predecessor* - as defined by:

    pred 0 = 0
    pred (n + 1) = n


The problem is we need to remove one application of `s` rather than add it like in other functions. That is, we need to go from    
`λs. λz. s (… (s z)…)` to   
`λs. λz.   (… (s z)…)`, or to   
`λs. λz. s (… (  z)…)`.

A possible solution is to change the representation and redefine `n` differently, so that predecessor becomes easy to define. However we then run the risk of other functions being more difficult to define or becoming even more inefficient. Nevertheless, we'll stick with the current representation and try to define the `pred` in terms of it.


The schema of iteration does not immediately apply - the problem is that in

    iter 0 = c
    iter (n + 1) = g (iter n)

the function arg `g` only has access to the result of the recursive call of `iter n`, but not to the input `n` itself. What we need is the *schema of primitive recursion*:

    primrec 0 = c
    primrec (n + 1) = g n (primrec n)

where `g`, in addition to the result of the rec call also has access to `n`.

>In the schema of iteration, the argument `g` is a unary function that only has access to the result of the recursive call, `iter n`, when the input is `n+1`.

>In the schema of primitive recursion, the argument `g` is now a binary function that has access to the current input `n`, as well as to the result of the recursive call, `primrec n`, when the input is `n+1`.

For example, for the predecessor function we have `c = 0`, since we consider that the pred of 0 is 0, and `g = λx.λy.x` (which is the definition of `zero`), since we do not need the result of the recursive call, just `n` which is the first argument to `g`.

### Defining the Predecessor Function

To define the `pred` function in LC, the idea is to gain access to `n` in the schema of primitive recursion by rebuilding it during the iteration. This requires pairs and some additional utilities.

The specification is `pred₂ n = ⟨n, n ∸ 1⟩`. The key step in its implementation in the λ-calculus is to express the definition by a schema of iteration rather than primitive recursion. 

The start is easy: `pred₂ 0 = ⟨0; 0⟩`. For `n + 1` we need to use the value of `pred n`. For this purpose we assume we have a function `letpair` where `letpair ⟨e1; e2⟩ k = k e1 e2`. In other words, letpair passes the elements of the pair to a continuation `k`. Using `letpair` we start as:

    pred₂ (n + 1) := letpair (pred₂ n) (λx. λy. {! !})

If `pred₂` satisfies its specification then reduction will substitute `n` for `x` and `n ∸ 1` for `y`. From these we need to construct the pair `⟨n + 1, n⟩` which we can do, e.g. with `⟨x + 1, x⟩`. This gives us

    pred₂ 0 := ⟨0, 0⟩
    pred₂ (n + 1) := letpair (pred₂ n) (λx. λy. ⟨x + 1, x⟩)
    pred n := letpair (pred₂ n) (λx. λy. y)

### Defining pairs

The next question is how to define pairs and `letpair`. The idea is to simply abstract over the continuation itself. Then `letpair` isn't really needed because the functional representation of the pair itself will apply its arg to the 2 components of the pair, but if want to write it, it would be the `id`.

    ⟨x, y⟩  :=         λk. k x y
    ⟨_, _⟩  := λx. λy. λk. k x y
    pair    := λx. λy. λk. k x y
    letpair := λp. p


Summarizing the above and expanding the definition of `letpair` we get `pred`:

    pred₂ := λn. n (λp. p (λx. λy. pair (succ x) x)) (pair zero zero)
    pred  := λn. pred₂ n (λx. λy. y)


>An interesting consequence of the Church-Rosser Theorem is that if `e =ᵦ= e′`, where `e′` is in normal form, then `e ⟶ᵦ∗ e′`.

## General Primitive Recursion

The general case of primitive recursion follows by a similar argument:
