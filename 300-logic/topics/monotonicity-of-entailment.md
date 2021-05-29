# Monotonicity of entailment



When a sequent `p |- p` is ∧I with a sequent `q |- q`, their antecedents will be united (set union), while the consequnt becomes the conjunction of `p ∧ q`, so the resulting sequent is `p, q |- p ∧ q`.

Now, if we immediately eliminate the right conjunct `q` from that sequent, the resulting sequent's conclusion will contain just `p` but its antecedent will still contain `q`'s premises: `p, q |- p`

```js
------ AS¹   -------- AS²
p |- p        q |- q
--------------------- ∧I
    p, q |- p ∧ q
--------------------- ∧Eʟ
    p, q |- p
```
