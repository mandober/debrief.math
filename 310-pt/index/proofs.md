# PT :: Proofs

https://cs.uwaterloo.ca/~plragde/flaneries/FICS/preludes.html#%28part._.Proofs%29

## Natural numbers

The definition of the natural numbers, i.e. the data type of ℕ, is usually implemented like below. The data ctor `Z` constructs he initial natural zero, and `S` constructs the successor natural of any given natural. This definition is due to Peano.

```agda
data ℕ where
  Z : ℕ
  S : ℕ → ℕ
```

## Operation on naturals

The definition of addition over naturals may be defined in serval ways depending on which of the two arguments is used for recursion. We can even recurse on both arguments to speed up evaluation, but that is rarely used when the goal is to reason about the naturals and their operations.

```agda
-- recursing on the 2nd arg
_+_ : ℕ → ℕ → ℕ
m + Z   = m
m + S n = S (m + n)

-- recursing on the 1st arg
_+_ : ℕ → ℕ → ℕ
Z   + n = m
S m + n = S (m + n)
```

Either choice is fine as long as we only consider addition - they are equivalent becasue addition is asociative operation. Multiplication is also asociative, so it too has two flavors of definition. However, Exponentiation is not associative, meaning it can only be defined by recursing on the second argument. This restriction should also influence the choice of the second argument for recusrion in other operations, for consistency sake.

In fact, the choice between recursing on the first or the second argument will later influence the theorems we need to prove. Namely, if the addition is defined by recursing on the second argument, then we have these two equations:

    m + Z   = m             (ADD1)
    m + S n = S (m + n)     (ADD2)

These equations hold by definition.

The equation (ADD1) holds by definition, but the equation `Z + n = n` does not. It must be proven as a theorem. Similarly, for equation `S m + n = S (m + n)`, which must also be proved. Had we defined addition by recursing on the first argument instead, then these two pairs of equation would be swapped - the latter pair would hold by definition, and we'd have to prove the former pair.

## Equality

However, before proving anything we have to define equality. The symbol `=` used so far is for *definitional (judgemental) equality*, but we also need a symbol for the notion of *propositional equality*. In math, they are usually the same symbol (=), but in PLs (e.g. in Agda) they must be distinct symbols.
