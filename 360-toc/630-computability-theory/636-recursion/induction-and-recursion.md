# Induction and Recursion

`Induction and Recursion for Numbers`, Gert Smolka, 2017

*Inductive proofs on numbers* are obtained with an *induction lemma* 
established with a recursive function known as *recursor*.

The recursor also provides for 
  the definition 
    of structurally recursive 
      functions on numbers.

We may say that 
  the recursor provides
for inductive proofs 
  through its type and 
for recursive computation 
  through its conversion rules.

We also consider 
  equational specifications of recursive functions 
and touch the notion of 
  functional extensionality.

## Induction Lemma for ℕ

The *induction tactic*, like all tactics, constructs a partial term contributing to the proof of the current goal. Things are arranged such that the induction tactic applies a so-called *induction lemma* that can established automatically for the inductive type underlying the inductive proof. For now, all inductions and all recursions are on numbers. The induction lemma for numbers looks as follows:

>∀p : ℕ → P. p0 → (∀n. p n → p (S n)) → ∀n. p n

To apply the induction lemma, 
the induction tactic 
first derives a predicate `p` 
such that the claim converts to `pn`. 
The predicate `p` may be derived 
with the *tactic pattern*.

Next, the induction tactic 
reverts the var `n` 
to obtain the claim `∀n.pn`.

Now the induction lemma is applied, creating
- a subgoal for `p0` (the base case) and
- a subgoal for `∀n. pn → p(Sn)` (the step case)

For the step case, 
the induction tactic intros `n`, and 
the inductive hypothesis `pn`, 
which yields the claim `p(Sn)`

It is important that you can explain the effect of the induction tactic in terms of more primitive operations involving the application of the induction lemma.

The function

```coq hs
λ p a f. fix g n. match n
      [ 0    => a
      | S n' => f n' (g n')
      ]
```

is obviously a proof of the induction lemma (do the type checking). 

Informally, we may say that the function proving the induction lemma is given a proof `a` of `p0`, and a function `f` that, for every `n` and every proof of `pn`, yields a proof of `p(Sn)`. By recursion on `n` the function proving the induction lemma then constructs a proof of `pn`.

You have just seen an explanation of inductive proofs for numbers based on first principles. The essence of inductive proofs is captured by the induction lemma, which has a simple proof using recursion on numbers. Thus *inductive proofs* turn out to be *recursive proofs*.


## Recursor for ℕ

The function proving the induction lemma can be typed more generally by generalising the type of the argument `p` to `ℕ → T`:

```coq hs
Rec :  ∀p : ℕ -> T. p0 -> (∀n. p n -> p (S n)) -> ∀n. p n
    := λ p a f. fix g n. match n
                          [ 0    => a
                          | S n' => f n' (g n')
                          ]
```

We call `Rec` the **recursor** for ℕ. 

Since `ℕ → P` is a subtype of `ℕ → T`, 
the function `λp : Rec p` is 
a proof of the induction lemma.

Interestingly, the recursor also provides 
for the definition of computational functions 
such as addition and multiplication.

We first define a *simply typed version of the recursor*:

```coq hs
R :  ∀X. X -> (X -> X) -> ℕ -> X
  := λX. Rec (λ _ : X)
```

The following equations hold by conversion 
and are called conversion rules for `R`:

```coq hs
-- Coq
R a f    0  = a
R a f (S n) = f n (R a f n)

-- Haskell
rec z f    0  = z
rec z f (S n) = f n (rec z f n)
```

The advantage of the simply typed recursor `R` over the full recursor `Rec` is that the first argument can be provided by type inference. 

We can now obtain many arithmetic functions with `R`

```coq hs
x + y = R y (λ _ z . S z)     x
x * y = R 0 (λ _ z . y + z)   x
n !   = R 1 (λ k z . S k * z) n
```
