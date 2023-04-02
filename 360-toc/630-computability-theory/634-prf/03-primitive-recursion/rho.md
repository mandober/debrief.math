

### Mathematical induction

To better understand the induction principle, it pays to remind ouraselves of the regular mathematical induction. It is used for proving a predicate `P`, which in the (classical) context amount to a truth value. To prove `P` we need to prove 2 cases:
1. the base case says that we need to prove that `P` holds for `0`, `P 0`
2. the inductive case says, assuming that `P` holds for some `n`, `P(n)`, we need to prove `P` also holds for `S n`, `P(S n)`. The inductive case allows us to rely on the *inductive hypothesis* that `P` holds for some `n`.
Proving both cases amounts to proving that `P` holds for all natural numbers.

(Ax.9) The axiom of induction:
1. if `K` is a set such that
2. `0` is in `K`, and
3. for every natural number `n`
4. `n` being in `K` implies `S(n)` is in `K`
5. then `K` contains every natural number

```hs
∃K(0 ∈ K ⋀ (∀n (n ∈ K -> S n ∈ K))) -> K = ℕ     (Ax.9)

P(0) ⋀ (∀x(P(x) -> P(S x))) ⊢ ∀x.P(x)            (InductionScheme.9)
```

(AxSch.9) The induction scheme: to elide the problem of having to assert the set `K`, the axiom of induction is sometimes stated as an axiom schema, where the predicate `P(x)` means that `x ∈ K`.
1. If `P` is a unary predicate such that
2. `P(0)` is true and
3. for every natural number `n`
4. `P(n)` being true implies that `P(S n)` is true
5. then `P(n)` is true for every natural number `n`

In Peano's original formulation, the induction axiom is a second-order axiom. It is now common to replace this second-order principle with a weaker, first-order induction scheme.

### Primitive recursion

The scheme of primitive recursion also has a lot to do with mathematical induction. Primitive recursion is the fundamental recursion scheme on the natural numbers. We can also express iteration in terms of primitive recursion.

Primitive recursion is function `ρ(f,g) = h`. It takes 2 functions `f` and `g`, where `f`'s arity is one less than `h`'s arity, and `g`'s arity is one more than `h`'s arity. As a result, it produces a function `h`; this `h` will later be identified with various operations over the naturals (e.g. add, mul, pow, etc.).

Primitive recursion can be defined in two principal ways depending on which argument we choose to recurse over. Choosing the first argument is conventient for assiciative operations, but then defining exponentiation (that is right-assiciative, unlike most others left-assiciative ops) will be a challenge. For that reason, it is better to pick the last arg for recursion.

Besides the argument that is used to recurse over, the other arguments are not as important. These additional arguments represent extra, immutable information, possibly referenced during recursion.

The simplest case of primitive recursion is when there are no additional args.

```hs
h    0  = f
h (S y) = g y (h y)
```

Other intereseting cases - if there is one or more additional arguments - are folded into one case in which the parameters are denoted by `x̅` that abbreviates a list of params, i.e. `x̅ := x₀, x₁,...,xₙ`.

```hs
-- multiple params, recursing on the last param
h    0  x̅ = f x̅
h (S y) x̅ = g x̅ y (h x̅ y) -- (1)
h (S y) x̅ = g y (h y x̅) x̅ -- (2)

-- multiple params, recursing on the fist param
h x̅    0  = f x̅
h x̅ (S y) = g x̅ y (h x̅ y) -- (1)
h x̅ (S y) = g x̅ (h x̅ y) y -- (2)
```



Compared to iter's `g` function, primrec's `g` function takes an extra argument that is the same natuaral that is passed into the `primrec` function:

```hs
h x̅    0  = f x̅
h x̅ (S y) = g x̅ y (h x̅ y)


iter    :: a -> (       a -> a) -> Nat -> a
primrec :: a -> (Nat -> a -> a) -> Nat -> a




h    0  x = f x
h (S y) x = g (y - 1) x (h (y x))
```

---
