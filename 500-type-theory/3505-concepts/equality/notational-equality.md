# Notational equality

In type theory, another subtype of equality is sometimes distinguished, a kind of a subtype of definitional equality, called notational equality that arises in situations when we use definitional abbreviations, e.g.

```hs agda
-- abbreviation
one : Nat ::= S Z
two : Nat
two : Nat ::= S (S Z)
tre : Nat ::= S (S (S Z))

-- vs

-- definition
qua : Nat
qua = S (S (S (S Z)))
```
