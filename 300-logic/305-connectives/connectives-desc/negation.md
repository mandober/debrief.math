# Negation

https://en.wikipedia.org/wiki/Negation

**Logical negation** (logical complement) is a unary logical connective that flips the truth value of its single input, `P ⟼ ¬P`.

Logical negation as a unary operation takes a proposition `P` to the proposition "not P", denoted by `¬P`. It may be interpreted as being true when `P` is false, and false when `P` is true.

In general, negation may be applied to truth values, propositions, terms, atomic formulas, wffs, semantic values.

In classical logic, negation is normally identified with the truth function that flips the truth values of its input, `NOT(x) = ¬x`. Moreover, `¬T ≡ F`, `¬F ≡ T`,`¬¬T ≡ T`, `¬¬F ≡ T`.

In intuitionistic logic, however, according to the Brouwer-Heyting-Kolmogorov interpretation, the negation of a proposition `P` is the proposition whose proofs are the refutations of `P`, i.e. `(¬) := P -> ⟘`, i.e. negation is defined in terms of contradiction.

## Definition

"No agreement exists as to the possibility of defining negation, as to its logical status, function and meaning, as to its field of applicability, and as to the interpretation of the negative judgment." -- F.H. Heinemann, 1944

Classical negation is an operation on one logical value, typically the value of a proposition, that produces a value of true when its operand is false, and a value of false when its operand is true. Thus if statement `P` is true, then `¬P` ("not P") would then be false; and conversely, if `¬P` is false, then `P` would be true.

The truth table of negation:

p | ¬p
--|----
1 | 0
0 | 1


### Negation in terms of other connectives

Negation can be defined in terms of other logical operations. For example, `¬P` can be defined as `P → ⟘` (where `→` is logical consequence and `⟘` is absolute falsehood). Conversely, one can define `⟘` as `P ⋀ ¬P` for any proposition `P`.

The idea here is that any contradiction is false, and while these ideas work in both classical and intuitionistic logic, they do not work in paraconsistent logic, where contradictions are not necessarily false. In classical logic, we also get the identity `P -> Q` ≡ `¬P ⋁ Q`.

```js
    ¬P := P -> ⟘
     ⟘ := P ⋀ ¬P
P -> Q := ¬P ⋁ Q
```

Algebraically, classical negation corresponds to complementation in a Boolean algebra, and intuitionistic negation to pseudocomplementation in a Heyting algebra. These algebras provide a semantics for classical and intuitionistic logic, respectively.
