# Peirce's law

https://en.wikipedia.org/wiki/Peirce%27s_law

* In logic, Peirce's law is named after the philosopher and logician Charles Sanders Peirce. It was taken as an axiom in his first axiomatisation of propositional logic.

* Peirce's law can be thought of as the law of excluded middle written in a form that involves only implication as the sole connective. 
(wouldn't `p -> p` do? `¬p ⋁ p` = `p -> p`, eh?)

* In propositional logic, Peirce's law states that 


`((p -> q) -> p) -> p`


* Peirce's law does not hold in intuitionistic logic or intermediate logics and cannot be deduced from the deduction theorem alone.

* Under the Curry-Howard isomorphism, Peirce's law is the type of continuation operators, `cont :: (a -> r) -> r`, e.g. `callCC :: ((r -> a) -> r) -> r`.

* The Peirce's law, `((p -> q) -> p) -> p`, means that `p` must be true if there is a proposition `q`, such that the truth of `p` follows from the truth of `(p -> q)`. In particular, when `q` is taken to be a false formula, the law says that if `p` must be true whenever it implies falsity, then `p` is true. In this way Peirce's law implies the law of excluded middle.


## Explanation

Peirce's law `((p -> q) -> p) -> p` 
is a tautology, which we can show as follows:

1. First, we consider the overall (outermost) implication: 
to make the entire expression false, 
we want to map the antecedent to `1` 
and the consequent (which is `p` alone) to `0`. 
So, we map `p` to `0`. 

2. We now consider the second, inner, implication, i.e. `(p -> q) -> p`. 
We want to map the antecedent, `(p -> q)`, to `true` and the consequent to `0`. We have `p = 0`, so the consequent is already as it should be, i.e. `false`. If we fail to map thing exactly like this, the overall expression will never evaluate to false, no matter what the truth value assiments are.

3. We consider the final, innermost, implication, `p -> q`. 
We want to map the entecedent to `true`… 
alas! it is already mapped to `false`. 
This, no matter the truth value assignments, the expression is always true, i.e. it's a tautology.

```js
  antecedent#1
┌──────┴─────────┐
│ anteced#2      │
│┌────┴───┐      │
││ant#3   │      │
││ │      │      │
(( p -> q ) -> p ) -> p
        │      │      │
consequent#3   │      │
       consequent#2   │
              consequent#1


✱ VALUATION:

                0       the overall expr. is false iff.
                │
          1     │  0    need. A ⟼ 1, p ⟼ 0, have: p = 0
          │     │  │
    1     │  0  │  │    need. B ⟼ 1, p ⟼ 0, have: p = 0
    │     │  │  │  │
 0?!│  0  │  │  │  │    need. p ⟼ 1 (and q ⟼ 0), but `p = 0`!!
  │ │  │  │  │  │  │                              (╯°□°）╯︵ ┻━┻
((p -> q) -> p) -> p    thus. assignment matters not. tautology it is.
    C     B     A
```


ταυτoλoγια
- `p -> (q -> p)`                 : τ
- `((p -> q) -> p) -> p`          : τ
- `(((p -> (q -> p)) -> p) -> p)` : τ
