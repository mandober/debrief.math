# Reiteration

**Reiteration (R)** is the rule of inference which allows us to restate any formula that is already present and undischarged in the proof.

In a sense, reiteration allows us to reuse any assumptions, or formulas derived from assumptions, without having to introduce a new dependency with another assumption.

For example, `|- p -> (q -> p)`

```
1 assume p                  A¹
2   assume q                A²
3     p                     R 1      <- REITERATION
4   therefore (q -> p)      =>I 2-3
5 therefore p -> (q -> p)   =>I 1-4
```
