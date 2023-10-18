# Conjunction

Conjunction is an elementary logical connective that is always interpreted by its truth table.

```
p q | p ∧ q
1 1 |   1
1 0 |   0
0 1 |   0
0 0 |   0
```

Conjunction is usually interpreted as a binary function, `∧ : 𝔹 ⨯ 𝔹 -> 𝔹`, that takes two Boolean inputs and produces a Boolean as a result.

Conjunction is true only in case both inputs are true, which makes it an *asymmetric connective*. This implies that we can define it in a PL like (Haskell) by considering only two clauses - one concrete and one "catch-all" (i.e. handle the rest of cases):

```hs
∧ : Bool ⨯ Bool -> Bool
True ∧ True = True
_    ∧ _    = False
```

However, conjunction can also be viewed relationaly in that the 3 variables `p`, `q`, `r` are related such that `p` and `q` stand for inputs and `r` stands for the output, `And(p,q,r)` for `p ∧ q = r`.

```prolog
And(p,q,r) :- 

And(p,q,1): p,q = 1
And(p,0,0): p = 0, 1
And(0,q,0): q = 0, 1
```

The inputs uniquely determine the output - no wonder there - but is to possible to uniquely determine an input knowing the result and the other input? In most cases this is possible, but not in general. Namely, knowing that the result is 0 and that one of the inputs is 0 doesn't uniquely determine the other input:
- in `p ∧ 0 = 0`, `p` could be 0 or 1
- in `0 ∧ q = 0`, `q` could be 0 or 1

This also goes to show that conjunction, viewed as a function, is *irreversable* operation in that we cannot reconstruct the inputs knowing only the output; hell, as we shown, we can't even reconstruct one input if we know the output and the other input.
