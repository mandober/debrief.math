# Tarski's axiomatization of the reals

https://en.wikipedia.org/wiki/Tarski%27s_axiomatization_of_the_reals

In 1936, Alfred Tarski gave an axiomatization of the real numbers and their arithmetic, consisting of only the 8 axioms and 4 primitive notions.

Primitives:
1. The set of reals, `ℝ`
2. A binary relation over ℝ, denoted by infix `<`
3. A binary operation of addition over ℝ, denoted by infix `+`
4. The constant `1`

Tarski's axiomatization, which is a *second-order theory*, can be seen as a version of the more usual definition of real numbers as the *unique Dedekind-complete ordered field*. However, it is made much more concise by avoiding multiplication altogether and using unorthodox variants of standard algebraic axioms and other subtle tricks.

Tarski did not supply a proof that his axioms are sufficient, or a definition for the multiplication of real numbers in his system.

Tarski also studied the first-order theory of the structure `(ℝ, +, ×, <)`, leading to a set of axioms for this theory and to the concept of real closed fields. Tarski also stated an axiomatization of geometry, and a theory of truth, among other works.

## The axioms

### Axioms of order

- primitives: `ℝ`, `<`

1. Axiom Nº1
- `∀x∀y(x < y => ¬(y < x))`
- meaning that `<` is asymmetric
- this implies that `<` is irreflexive, i.e. `∀x.¬(x < x)`

2. Axiom Nº2
- ∀x∀z(x < z ⇒ ∃y(x < y ∧ y < z))
- between any two numbers there is another number

3. Axiom Nº3

```
∀X(X ⊆ ℝ ⇒
  ∀Y(Y ⊆ ℝ ⇒
    ∀x(x ∈ X ⇒ 
      ∀y(y ∈ Y ⇒ 
        x < y)) ⇒
          ∃z(∀x(x ∈ X ⇒
            ∀y(y ∈ Y ⇒
              (x≠z ∧ y≠z) ⇒
                (x<z ∧ z<y))))))
```

- ∀X∀Y ⊆ ℝ.(∀x ∈ X ∧ ∀y ∈ Y). x < y ⇒ 
         ∃z(∀x ∈ X ∧ ∀y ∈ Y). (x ≠ z ∧ y ≠ z) ⇒ (x < z ∧ z < y)

- for all subsets `X,Y ⊆ ℝ`, 
  if, for all `x ∈ X` and `y ∈ Y`, we have `x < y`, 
  then there exists a `z` such that for all `x ∈ X` and `y ∈ Y`, 
  if `x ≠ z` and `y ≠ z`, then `x < z` and `z < y`.
- in other words, `<` is Dedekind-complete
- informally, if a set of reals `X` precedes another set of reals `Y`, 
  then there exists at least one real number `z` separating the two sets.
- this is a second-order axiom as it refers to sets and not just elements.


### Axioms of addition

- primitives: `ℝ`, `<`, `+`

4. Axiom Nº4
- ∀x∀y∀z(x + (y + z) = (x + z) + y)
- this is an unorthodox mixture of associativity and commutativity

5. Axiom Nº5
- ∀x∀y(∃z(x + z = y))
- for all `x`, `y`, there exists a `z` such that `x + z = y`
- this allows subtraction and also gives a *0*

6. Axiom Nº6
- ∀x∀y∀z∀w((x + y < z + w) ⇒ (x < z ∨ y < w))
- if `x + y < z + w`, then `x < z or y < w`
- this is the contrapositive of a standard axiom for ordered groups

### Axioms for element `1`

- primitives: `ℝ`, `<`, `+`, *1*

7. Axiom Nº7
- `1 ∈ R`
- *1* is an element of set ℝ
- or, there is an element *1* in set ℝ

8. Axiom Nº8
- `1 < 1 + 1`
- 1 is less then 1 plus 1
