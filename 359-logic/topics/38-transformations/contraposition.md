# Contraposition

https://en.wikipedia.org/wiki/Contraposition

- For contraposition in traditional logic, see [Contraposition][1]
- For contraposition in symbolic logic, see [Transposition][2]
- For a related proof method, see [Proof by contraposition][3]


**Contraposition** refers to the inference of going from a conditional statement into its logically equivalent contrapositive.

The contrapositive of a conditional statement is formed by negating both terms and reversing the direction of inference, `p -> q` ≡ `¬p <- ¬q`.

Or, equivalently, the contrapositive of a conditional statement has the antecedent and consequent swapped and negated, `p -> q` ≡ `¬q -> ¬p`.

`p -> q` ≡ `¬p <- ¬q` ≡ `¬q -> ¬p`


## Square of opposition

The positive, `p -> q`, and its contrapositive, `¬q → ¬p`, are part of the [Square of opposition][4] that relates the following 4 formulas

```
positive       inverse
 p ->  q       q ->  p
          ↖ ↗
          ↙ ↘
¬p -> ¬q      ¬q -> ¬p
converse      contrapositive
```

- `p -> q` ≡ `¬q -> ¬p`
- `q -> p` ≡ `¬p -> ¬q`


## Related formulas

Let
- `p` := "it's raining"
- `q` := "I'm wearing my coat"

Then the positive, the implication, `p -> q`, is

      If it's raining,
      then I'm wearing my coat

And the contrapositive, `¬q -> ¬p`, is

      If I'm not wearing my coat,
      then it's not raining


The contrapositive can be compared with these related statements:
- Implication                            `p ->  q`
- Contrapositive                        `¬q -> ¬p`
- Inversion,   the inverse,             `¬p -> ¬q`
- Conversion,  the converse,             `q ->  p`
- Negation,    the logical complement, `¬(p ->  q)`




## Inversion, conversion, negation


* *Inversion* (the inverse), `¬p -> ¬q`

      If it's not raining,
      then I don't wear my coat.

Unlike the contrapositive, the inverse's truth value is not at all dependent on whether or not the original proposition was true, as evidenced here.

* *Conversion* (the converse), `q -> p`

      If I wear my coat,
      then it is raining.

The converse is actually the contrapositive of the inverse, and so always has the same truth value as the inverse (which as stated earlier does not always share the same truth value as that of the original proposition).

* *Negation* (the logical complement), `¬(p -> q)`

      It is not the case that
        if it's raining
        then I'm wearing my coat.

If the negation is true, then the original implication (and the contrapositive) is false. `(¬(p -> q) -> ⟙) => ((p -> q) -> ⟘)`


If `p -> q` is true, and we have `¬q`, then the logical conclusion that `p` must be also false follows.

```js
p -> q   ¬q
------------ MT
    ¬p
```

This is called the law of contrapositive; it is the *modus tollens* rule of inference.

*The law of contraposition* says that a conditional statement is true iff its contrapositive is true.




[1]: https://en.wikipedia.org/wiki/Contraposition_(traditional_logic)
[2]: https://en.wikipedia.org/wiki/Transposition_(logic)
[3]: https://en.wikipedia.org/wiki/Proof_by_contrapositive
[4]: https://en.wikipedia.org/wiki/Square_of_opposition
