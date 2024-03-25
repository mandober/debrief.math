# TT ∷ Inference rules

{conjunction,disjunction,implication,negation,truth,falsity,forall,exists}
{formation,introduction,elimination,computation}

```js
// 1. Conjunction (∧)
// 1.1 Conjunction formation    (∧F)
// 1.1 Conjunction introduction (∧I)
// 1.1 Conjunction elimination  (∧E)
// 1.1 Conjunction computation  (∧C)

Γ |- A type    B type
------------------ ∧F
(A ∧ B) type

p : A    q : B
--------------- (∧I)
(p, q) : A ∧ B

```
