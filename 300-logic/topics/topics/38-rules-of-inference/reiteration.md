# Reiteration

Reiteration (R) is a virtual rule of inference, where an already available formula is merely restated on a line.

In practice, reiteration is only necessary in a subproof, when you want to discharge the assumption (that will be the antecedent in the newly obtained implication formula), but you don't want the most recent formula, but another one to be the subsequent in the implication you:re about to obtain. In this situation, you can simply reiterate another reachable formula (so that it is restated by itself on a line) and obtain the implication with the discharged assumtion as the antecedent and the reiterated formula as the consequent.

For example, here's the derivation that `|- p -> (q -> p)` that uses reiteration in the 3rd step.

```js
1 assume p                AS
2   assume q              AS
3     p                   R 1
4   thus q -> p           →I 2-4
5   thus p -> (q -> p)    →I 1-5
```
