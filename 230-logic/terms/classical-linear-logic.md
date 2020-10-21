# Classical linear logic

https://en.wikipedia.org/wiki/Linear_logic


The language of *classical linear logic* (CLL) is defined inductively by the BNF notation:

```
A ::= p ∣ p ⊥
∣	A ⊗ A ∣ A ⊕ A
∣	A & A ∣ A ⅋ A
∣	1 ∣ 0 ∣ ⊤ ∣ ⊥
∣	 !A ∣ ?A
```

Here p and p⊥ range over logical atoms. For reasons to be explained below, the connectives ⊗, ⅋, 1, and ⊥ are called multiplicatives, the connectives &, ⊕, ⊤, and 0 are called additives, and the connectives ! and ? are called exponentials. We can further employ the following terminology:

⊗ is called "multiplicative conjunction" or "times" (or sometimes "tensor")
⊕ is called "additive disjunction" or "plus"
& is called "additive conjunction" or "with"
⅋ is called "multiplicative disjunction" or "par"
! is pronounced "of course" (or sometimes "bang")
? is pronounced "why not"
Binary connectives ⊗, ⊕, & and ⅋ are associative and commutative; 1 is the unit for ⊗, 0 is the unit for ⊕, ⊥ is the unit for ⅋ and ⊤ is the unit for &.

Every proposition A in CLL has a dual A⊥, defined as follows:
