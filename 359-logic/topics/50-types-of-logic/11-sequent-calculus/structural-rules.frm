# Sequent Calculus :: Structural rules

- weakening
- contraction
- permutation
- exchange

*Weakening* (W) allows the addition of arbitrary elements to a sequence.

Intuitively, this is allowed in the antecedent because we can always restrict the scope of our proof (e.g. "if all cars have wheels, then it's safe to say that all black cars have wheels"). 

And it is allowed in the succedent because we can always allow for alternative conclusions (e.g. "if all cars have wheels, then it's safe to say that all cars have either wheels or wings").

*Contraction* (C) and *Permutation* (P) assure that neither the order (P) nor the multiplicity of occurrences (C) of elements of the sequences matters. Thus, one could instead of sequences also consider sets.


```hs
-- LEFT STRUCTURAL RULES           RIGHT STRUCTURAL RULES


Γ    ⊢ Δ                           Γ ⊢    Δ
---------- Wl                      ---------- Weakening-right
Γ, A ⊢ Δ                           Γ ⊢ A, Δ


Γ, A, A ⊢ Δ                        Γ ⊢ A, A, Δ
------------- Cl                   ------------- Contraction-right
Γ, A    ⊢ Δ                        Γ ⊢    A, Δ


Γ, A, B, Γ₂ ⊢ Δ                    Γ ⊢ Δ, A, B, Δ₂
---------------- Pl                ---------------- Permutation-right
Γ, B, A, Γ₂ ⊢ Δ                    Γ ⊢ Δ, B, A, Δ₂
```


Since the rhs of a sequent is interpreted conjunctivelly and since conjunction is *commutative* and *associative*, sequent calculus normally includes structural rules for rewriting a sequent accordingly, i.e. it includes the rule of permutation. There are further structural rules corresponding to the *idempotent* and *monotonic* properties of conjunction, i.e. the rule of contraction and weakening.

## Premise composition

There are numerous ways to compose premises (and in the multiple-conclusion case, conclusions as well). One way is to collect them into a set. But since e.g. {a,a} = {a} we have contraction for free if premises are sets. We also have associativity and permutation (or commutativity) for free as well, among other properties. In substructural logics, typically premises are not composed into sets, but rather they are composed into more fine-grained structures, such as trees or multisets (sets that distinguish multiple occurrences of elements) or sequences of formulae. For example, in linear logic, since contraction fails, the premises must be composed in something at least as fine-grained as multisets.
