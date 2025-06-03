# Limit of a sequence

- limit exists ⇒ sequence converges
- limit exists but it is ±∞ ⇒ sequence diverges
- limit does not exists (DNE)

A limit may exists and be a constant value in which case the sequence converges to that value. Technically, a sequence also converges to negative or positive infinity, but in those cases we say it diverges. The third possibility is that a limit does not exist (e.g. 1,-1,1,-1,…).

# Limits of a sequence

>What is the limit of a sequence as the index `n` tends to infinity?

The variable `n` indexes the sequence, so to say that `n` tends to infinity means: as the index `n` gets bigger and bigger.

If a sequence has a limit, it is denoted by `lim{n→∞} {aₙ}`, where `{aₙ}` is some sequence. `lim{n→∞} {aₙ} = L` means that limit is `L`, which may be a constant (like 0 or some other finite number), or it may be `-∞` or `∞`, which indicates that the sequence diverges to positive or negative infinity. The third possibility is that a sequence has no limit, in which case we say the limit is DNE (does not exist). 

The limit of a sequence is typically taken as the index `n` approaches infinity, i.e. as it gets arbitrarily large. However, it need not always be the index `n` that is tracked; in general, it could be some other variable, e.g. `k`, that tends to some limiting value `a`, `lim{k→a}`.

An infinite sequence has no final term - there is always another term. However, we can still discuss the notion of convergence: *As we consider further and farther terms, do they tend to some finite value?*

With `n` denoting the positions (indices) of terms in a sequence: as `n` tends to infinity, does the "last" term - and thus the sequence itself - approach some finite value or not?

If new terms just seem to keep getting bigger toward +∞ (or smaller toward -∞), we say that the sequence *diverges* (goes toward ±∞). Otherwise, we say the sequence *converges* (to some constant). Some sequence neither converge nor diverge, they do not have a limit (limit does not exist, abbreviated as DNE).

Types of limits
- infinity, ±∞
- constant, `c` (0 included)
- no limit

aₙ = {1, 7, 13, 19, 25, …}
- limit is positive infinity, `∞` as terms keep getting larger
- `lim{n→∞} aₙ = ∞`
- 10¹⁰ → ∞

bₙ = {-1, -7, -13, -19, -25, …}
- limit goes to negative infinity, `-∞`, as terms keep getting smaller
- `lim{n→∞} bₙ = -∞`
- -10¹⁰ → -∞

cₙ = {1/2, 2/3, 3/4, 4/5, 5/6, …}
- individual terms tend to 0
- seq approaches a constant (i.e. to number 1)
- the limit is `lim{n→∞} cₙ = 1`
- k/(k+1) → `∞ ÷ ∞` (indeterminate form)

dₙ = {1/2, 1/4, 1/8, 1/16, 1/32, 1/64, …}
- limit approaches a constant (0)
- `lim{n→∞} dₙ = 0`
- 1/10¹⁰⁰ ~ 1/∞ --> 0

eₙ = {1,-1,1,-1,1,-1,1,-1,…}
- this sequence has no limit
- limit is undefined
- `lim{n→∞} eₙ = DNE`


## Convergence

Convergence of a particular sequence built whose terms are the same constant `c` raised to an increasing exponent, `cⁿ`, obtaining `{c¹,c²,c³,c⁴,…,cⁿ}`.

For a constant `c`, this sequence:
- *conveges to 0* if `-1 < c < 1`
  - c =  1/2 = {1/2,  1/4, 1/8,  1/16, 1/32,  1/64, …} → 0
  - c = -1/2 = {1/2, -1/4, 1/8, -1/16, 1/32, -1/64, …} → 0
- *diveges to ∞*  if `c > 1`; c=2 : {2,4,8,16,…} → -∞
- *diveges to -∞* if `c < -1`; c=-2: {-2,-4,-8,-16,…} → -∞
- *conveges to 1* if `c = 1`: {1,1,1,1,…} → 1
- *has no limit*  if `c = -1`: {-1, (-1)² = 1, (-1)³ = -1, (-1)⁴ = 1, …} → N/L

Conclusion
- `{cⁿ}` converges (to a const) if `-1 < c ≤ 1`
- `{cⁿ}` diverges if `c < -1` (to -∞) or `c > 1` (to ∞)
- `{cⁿ}` has no limit if `c = -1`
