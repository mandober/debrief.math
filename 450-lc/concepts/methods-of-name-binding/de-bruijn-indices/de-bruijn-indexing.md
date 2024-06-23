# De Bruijn index

https://en.wikipedia.org/wiki/De_Bruijn_index

**De Bruijn indexing** is a method for avoiding naming bound variables in lambda calculus.

The *de Bruijn index* is a methadology, invented by the Dutch mathematician Nicolaas Govert de Bruijn, for representing variables in lambda terms with integers, called *de Bruijn indices*, thus avoiding many complications around their renaming.

Instead of giving arbitrary names to formal parameters, variables are represented using integers. The usual convention is to start counting indices from 0, although some implementation use 1 as the smallest index.

Terms written using de Bruijn indices are invariant with respect to *α-conversion*, so the check for α-equivalence is the same as that for *syntactic equality*.

Each de Bruijn index is a natural number that represents an occurrence of a variable in a term, and denotes the number of binders that are in scope between that occurrence and its corresponding binder.

Examples (indexing starts at 1)
- I:  λx. x = (λ 1)
- K:  λx. λy. x = (λ λ 2)
- KI: λx. λy. y = (λ λ 1)
- S:  λx. λy. λz. x z (y z) = λ λ λ 3 1 (2 1)
- λz. (λy. y (λx. x)) (λx. z x) = λ (λ 1 (λ 1)) (λ 2 1)

## Formal definition

The formal syntax of lambda terms with de Bruijn indices:

    e := n | λ e | e₁ e₂

where `n` (natural numbers ≥ 1) are variables.

- Var (x)    = 0
- Abs (λx.B) = λ B
- App (M A)  = (λ B) A

A variable `n` is bound if it is in the scope of at least `n` binders; else it is free.

The binding site for a variable `n` is the `n`th binder it is in the scope of, starting from the innermost binder.

The most primitive operation on terms is *substitution*: replacing free variables in a term with other terms.

For example, in App, in β-reduction `(λ B) A`, we proceed as follows:

1. *Find all instances of bound vars*, `n₁, …, nₖ`, in the body `B`, that are bound by the (outermost) binder (their binder), i.e. binder in abs `λ B`.

That is, mark bound vars that are bound by the first (outermost) λ-binder. We have an app `(λx.B)A`, so we mark all free `x`'s in `B` (these `x`'s are bound by the binder `λx`). We mark these instances (they are the same var, `x`, bound by the binding instance of `x` in `λx.`) that will be replaced by the arg `A`.

2. *Decrement by 1* the free vars of `B` to account for the removal of the outer λ-binder (their - or rather its - binder), in expectation of subst.

3. *Replace* each occurrence `n₁, …, nₖ` with arg `A`, each time suitably *incrementing* the free vars in arg `A`, so as to match the number of binders under which the corresponding variable occurs when `A` substitutes one of the `nᵢ` var; (so as to match the number of binders they will find themselves under when substituted).

### Example

To illustrate, consider the application which corresponds to the term below modulo renaming.

  (λx. λy. `z` x (λu. u x)) (λx. `w` x)
  (λ   λ   `4` 2 (λ   1 3)) (λ   `5` 1)
  (λ   λ    4  2 (λ   1 3))               mark bound vars with □
   λ        4  □ (λ   1 □)                decrement free vars -1
           -1
   λ        3  □ (λ   0 □)
   λ        3  □       (λ   0 □)          □ := (λ 5 1)
               +1             +2          free vars inc by nr of binders
   λ        3  (λ 6 1) (λ   0 (λ   7 1))
   λ        3  (λ 6 1) (λ   1 (λ   7 1))
  λy.       z (λx.w x) (λu. u (λx. w x))


Step 1. In app, `(λ B) A`, we locate all the instances of the var (`x`) in the term `B` (body); these are all `x`'s in `B` bound by the binder (`λ B`), except they are not names (strings) but numbers in `B`.

which is here `(λ λ 4 2 (λ 1 3))`. In this term the vars 2 and 3 are bound by the outermost λ-binder.
- Vars 2 and 3 are the same var `x`
- Var 1 (u) is bound by its own nested binder
- Var 4 (z) is free

After step 1, we obtain the term

    λ 4 □ (λ 1 □)

where vars destined for substitution (2 and 3, i.e. `x`) are replaced with boxes.

Step 2 decrements free vars, giving

    λ 3 □ (λ 1 □)

Finally, in step 3, we replace the boxes with the argument, namely `λ 5 1`

- the first box is under 1 binder, 
  so we replace it with `λ 6 1` 
  (which is `λ 5 1` with the free vars increased by 1)

- the second is under 2 binders, 
  so we replace it with `λ 7 1` 
  (which is `λ 5 1` with the free vars increased by 2)

The final result is `λ 3 (λ 6 1) (λ 1 (λ 7 1))`.


## Operations

Given a closed exp, all vars in it are bound, which means the greatest index cannot be bigger then the number of binders (nob).

- λx.x             = λ 1
- λx.z             = λ 2            open exp (index = nob + 1 = 1+1 = 2)
- λx.λx.x          = λ λ 1
- λx.λy.x          = λ λ 2
- λx.λy.y          = λ λ 1
- λx.λy.z          = λ λ 3          open exp (index = nob + 1 = 2+1 = 3)
- (λx.x)(λy.y)     = (λ 1)(λ 1)
- (λx.x)(λy.z)     = (λ 1)(λ 2)     open
- (λx.λy.y x)(λy.y) = 
  (λ  λ  1 2)(λ  1)
- (λx.λy.(λy.x y) y x) (λa. a)
  (λ  λ  (λ  3 1) 1 2) (λ   1)



The **cutoff** integer `c` keeps track of the vars bound in the orginal exp - the vars which should not be shifted. The cutoff starts at 0. After examining the exp, the cutoff int `c` should be = or ≥ (?) then the highest index.

### Shift

Operation to increment (shift up) the indices of free variables above a cutoff `c` by `i`:

```hs
ᶜ↑ⁱ (n)     = { n < c ? n : n+i }       -- (Var)
ᶜ↑ⁱ (λ.e)   = λ.(ᶜᐩ¹↑ⁱ e)               -- (Abs)
ᶜ↑ⁱ (e₁ e₂) = (ᶜ↑ⁱ e₁) (ᶜ↑ⁱ e₂)         -- (App)
```

App distributes as usual. Abs pulls shifting in the body, but with `c` incremented by 1 (meaning 1 binder inwards). In Var case, we have a variable as an index `n`: if `n < c` we do nothing (leave it alone, just return `n`); otherwise, i.e. if `n ≥ c` we increment `n` by `i`.


```hs
type Index = Int
type Cutoff = Int

shift :: Term -> Term
shift exp = aux 0 0 exp
  where
  shift :: Index -> Cutoff -> Term -> Term
  aux i c exp = case exp of
    -- Var n, e.g. Var 0
    Var n     -> Var (if n < c then Var n else Var (n + 1))
    -- Abs λ e, e.g. λ 0 or λ λ 1
    Abs b     -> Abs (aux i (c + 1) b)
    App e1 e2 -> App (aux i c e1) (aux i c e2)
```

## Substitution, formally

Formally, a substitution is an unbounded list of terms, written `M₁.M₂…`, where `Mᵢ` is the replacement for the `i`th free variable. The increasing operation in step 3 is sometimes called *shift* and written `↑ᵏ` where `k` is a natural number indicating the amount to increase the variables, and is defined by

    ↑ᵏ = (k+1). (k+2). …

For example, `↑⁰` is the identity substitution, leaving a term unchanged.

A finite list of terms `M₁.M₂…Mₙ` abbreviates the substitution `M₁.M₂…Mₙ.(n+1).(n+2)…` leaving all variables greater than `n` unchanged.

The application of a substitution `s` to a term `M` is written `M[s]`.

The *composition of substitutions* `s₁` and `s₂` is written `s₁ s₂` and is defined by

    (M₁.M₂…) s = M₁[s].M₂[s]…

satisfying the property

    M [s₁ s₂] = (M [s₁]) [s₂]


>Substitution on terms is defined as follows:

```
n[N₁ … Nₙ …] = Nₙ
(F A)[s] = (F[s]) (A[s])
(λ B)[s] = λ (B[1.s′]) where s′ = s ↑¹
```


The steps outlined for β-reduction above are thus more concisely expressed as:

    (λ M) N ⟶ᵦ M [N]
