# Necessary and sufficient conditions

* A condition `Q` is *necessary* for condition `P` 
  iff the *absence* of `Q` guarantees the absence of `P`.

* A condition `P` is *sufficient* for condition `Q` 
  iff the *presence* of `P` guarantees the presence of `Q`.

* A set of conditions may be *jointly sufficient* 
  without being *individually necessary*.

* Sometimes it is easier to specify sufficient conditions than necessary ones.


## Converse relations

Two binary relations, `R` and `S`, 
are *each other's converses* iff 
`xRy` ⇔ `ySx`, 
i.e. `xRy` guarantees `ySx` AND 
     `ySx` guarantees `xRy`. 

For example, 
Telma is taller than Louise (`xRy`) iff 
Louise is shorter than Telma (`ySx`), 
where `R` is "taller than", and `S` is "shorter than".

Some converse relations:
- "is a parent of" and "is a child of"
- "is taller than" and "is shorter than"
- "is above"       and "is below"
- "loves"          and "is loved by"


>Are "is a necessary condition for" and "is a sufficient condition for" converse relations?
Yes. If `Q` is a necessary condition for `P`, then `P` is a sufficient condition for `Q`. And, equivalently, If `P` is a sufficient condition for `Q`, then `Q` is a necessary condition for `P`.

For example, Since having a microscope is necessary for seeing viruses, then seeing viruses guarantees that one has a microscope (i.e. suffices for having a microscope).

## Four possible combinations

4 possible combinations between any two conditions `P` and `Q`
1. `P` is a necessary but not sufficient condition for `Q`.
2. `P` is a sufficient but not necessary condition for `Q`.
3. `P` is both a necessary and sufficient condition for `Q`.
4. `P` is neither a necessary nor sufficient condition for `Q`.




## Implication

* In an implication `P → Q`, 
  *consequent* `Q` is a *necessary* condition for antecedent `P`; 
  *antecedent* `P` is a *sufficient* condition for consequent `Q`.


In an implication `P → Q`
- when `P` is present, `Q` is present, `P → Q,  P ⊢  Q`,  `P → Q`
- when `P` is absent,  `Q` is unknown, `P → Q, ¬P ⊢ ?Q`
- when `Q` is present, `P` is unknown, `P → Q,  Q ⊢ ?P`
- when `Q` is absent,  `P` is absent,  `P → Q, ¬Q ⊢ ¬P`, `¬Q → ¬P`

In an implication `P → Q`
- when `P` is true,  `Q` is true,    `P → Q, P true  ⊢ Q true`  ✔
- when `P` is false, `Q` is unknown, `P → Q, P false ⊢ Q ?`     ?
- when `Q` is true,  `P` is unknown, `P → Q, Q true  ⊢ P ?`     ?
- when `Q` is false, `P` is false,   `P → Q, Q false ⊢ P false` ✔

This means that if there is `P` (if `P` is true), we automatically have `Q`. If there is no `P` (if `P` is false), then we have `¬P`. All in all, `¬P ∨ Q`. Either `P` is false or `P` is true, `¬P ∨ P`, but if `P` is true, then we automatically have `Q`. So when `P → Q`, `¬P ∨ P` sorta implies `¬P ∨ Q`.


```
------------------------------------------------
P → Q     ⊢  P → Q
P → Q     ⊢ ¬P ∨ Q
P → Q     ⊢ ¬P, Q
P → Q, P  ⊢ Q
------------------------------------------------
P → Q     ⊢  P → Q
P → Q     ⊢ ¬P ∨ Q
P → Q     ⊢ ¬P, Q
P → Q, ¬Q ⊢ ¬P
------------------------------------------------
```

Thus, we have all these:
- `P → Q     ⊢  P → Q` (ID)
- `P → Q     ⊢ ¬P ∨ Q`
- `P → Q     ⊢ ¬P, Q`
- `P → Q,  P ⊢  Q`     (P → Q)
- `P → Q, ¬Q ⊢ ¬P`     (¬Q → ¬P)
