# Brouwer-Heyting-Kolmogorov interpretation

https://en.wikipedia.org/wiki/Brouwer-Heyting-Kolmogorov_interpretation

The **Brouwer-Heyting-Kolmogorov interpretation** of intuitionistic logic is the standard explanation of intuitionistic logic.

This interpretation was proposed by L.E.J. Brouwer and Arend Heyting, and independently by Andrey Kolmogorov.

The BHK interpretation is also called the *realizability interpretation* because of its close connection to the realizability theory of Stephen Kleene.


## Interpretation

The interpretation states what is intended to be a proof of a given formula. This is specified by induction on the structure of that formula:
- A proof of `P ⋀ Q` is a pair `⟨a,b⟩`, where `a` is a proof of `P`, and `b` is a proof of `Q`.
- A proof of `P ⋁ Q` is either `⟨0,a⟩`, where `a` is a proof of `P`, or a pair `⟨1,b⟩`, where `b` is a proof of `Q`.
- A proof of `P → Q` is a function `f` that converts a proof of `P` into a proof of `Q`.
- A proof of `∃x ∈ S.P(x)` is a pair `(x,a)` where `x` is an element of `S` and `a` is a proof of `P`.
- A proof of `∀x ∈ S.P(x)` is a function `f` that converts an element `x` of `S` into a proof of `P`.
- The formula `¬P` is defined as `P → ⊥`, so a proof of it is a function `f` that converts a proof of `P` into a proof of `⊥`.
- There is no proof of `⊥` (absurdity, bottom type), that is used to represent nontermination in some FPLs.

The disjunction is interpreted as a disjoint union type (sum type), and the terms of this type are pairs that have a tag as their first component, which is usd to distinguish terms and to specify which disjunct is present in the term (which disjunct is a pair's component proof of). In the example, `0` is used to tag the left disjunct (left variant), i.e. it is a `P`, while `1` tags the right disjunct, i.e. it is a `Q`. Instead of 0 and 1, the tags which are often used are "left" and "right", despite being more verbose. In fact, we say that a sum type (set) is indexed by the Boolean type (or another 2-set, they are all isomorphic).

The interpretation of a primitive proposition is supposed to be known from context. In the context of arithmetic, a proof of the formula `x=y` is a computation reducing the two terms to the same numeral.

Kolmogorov followed the same lines but phrased his interpretation in terms of problems and solutions. To assert a formula is to claim to know a solution to the problem represented by that formula. For instance, `P → Q` is the problem of reducing `Q` to `P`; to solve it requires a method to solve problem `Q` given a solution to problem `P`.


## Examples

*The identity function* is a proof of `P → P`, no matter what `P` is.

*The law of non-contradiction*, `¬(P ∧ ¬P)`, expands to `(P ∧ (P → ⊥)) → ⊥`:
- A proof of `(P ∧ (P → ⊥)) -> ⊥` 
  is a function `lnc` that converts 
  a proof of `(P ∧ (P → ⊥))` 
  into a proof of `⊥`.
- A proof of `P ⋀ (P → ⊥)` 
  is a pair of proofs `(a,  b)`, 
  where `a` is a proof of `P`, 
  and `b` is a proof of `(P → ⊥)`.
- A proof of `P -> ⊥` is a function `b` that 
  converts a proof of `P` into a proof of `⊥`.


```
(P -> ⟘) ⋁ P                        (2)
¬P ⋁ P                 ≅
----------------------------------
P ⋁ (P -> ⟘)           ≅            (1)
P ⋁ ¬P                 ≅  ↑  (LEM)
----------------------------------
¬(P ⋀ ¬P)              ≅  ↓  (LNC)
¬(P ⋀ (P -> ⟘))        ≅
(P ⋀ (P -> ⟘)) -> ⟘    ≅
¬(P ⋀ ¬P)              ≅
(P ⋀ (P -> ⟘))  ->  ⟘  ≅
(P -> (P -> ⟘)) ->  ⟘  ≅
----------------------------------
(P -> P -> ⟘)   ->  ⟘               (3)



lnc converts a proof of "P ⋀ ( P -> ⟘ )"
       │       into a proof of ⟘
       │              │
┌──────┴─────────┐   ┌┴┐
( P ⋀ ( P -> ⟘ ) ) →  ⟘
    │   └─┬───┘
    │     │  │
    │ f converts
    │ a proof of P
    │        │
    │     into a proof of ⟘
  (p,f)
```

There is a function `lnc` that does this, where `lnc (a,b) = b(a)`, proving the law of non-contradiction, no matter what `P` is.

```hs
--    (P ⋀ (P -> ⟘)) -> ⟘
lnc : (P ⨉ (P -> ⟘)) -> ⟘
lnc (a, b) = b a
```

The same reasoning provides a proof for `(P ∧ (P → Q)) → Q` as well, where `Q` is any proposition.

On the other hand, *the law of excluded middle*, `P ∨ ¬P`, expands into the formula `P ∨ (P → ⊥)` and, in general, has no proof. 
According to the BHK interpretation, 
a proof of `P ∨ ¬P` is a pair `(a, b)` 
where `a` is 0 (left) and `b` is a proof of `P`, 
or, `a` is 1 (right) and `b` is a proof of `P → ⊥`. 
Thus, if neither `P` nor `P → ⊥` is provable 
then neither is `P ∨ ¬P`.


## Absurdity

In general, it's not possible for a logical system to have a formal negation operator such that there is a proof of "not P" exactly when there isn't a proof of "P" (see Gödel's incompleteness theorems).

The BHK interpretation instead takes `¬P` to mean that `P` leads to absurdity, designated `⊥`, so that a proof of `P` is a function converting a proof of `P` into a proof of absurdity, i.e. `¬P` := `P → ⊥`.

A standard example of absurdity is found in dealing with arithmetic. 

Consider the equation `m = n`, 
and its instance where `m = 0` and `n = 1 = S 0`, 
that is, `0 = 1` or `0 = S 0`.

Using mathematical induction on `n`:
- `(P 0 ⋀ (P n -> P (S n))) -> P n`, 
  we get that `P` is `(0 =)` so 
  `(0 = 0 ⋀ (0 = n -> 0 = S n)) -> 0 = n`
       ↑       ↑       ↑          ↑
- We first prove the base case, `0 = 0`, i.e. that `P 0` holds.
  We invoke the axiom of equality ("refl") to prove this.
- Then we consider the inductive case, `0 = n -> n = S n`.
  That is, assuming the case `P(n)` holds, 
  we need to prove that `P(Sn)` holds, `P(n) -> P(S n)`, 
  so it amounts to the formula `0 = n -> 0 = S n`
- Now induction hypothesis, 
  if 0 were equal to a certain natural number `n`, 
  then `n` (or 0?) would be equal to `S n`, 
  (Peano axiom: `S m = S n ⇔ m = n`), 
  But since `0 = 1`, thus 0 would also be equal to `S n`. 
  By induction, 0 is equal to all numbers, 
  and therefore any two natural numbers become equal.


Therefore, there is a way to go from a proof of `0 = 1` to a proof of any basic arithmetic equality, and thus to a proof of any complex arithmetic proposition. Furthermore, to get this result it was not necessary to invoke the Peano axiom that states that 0 is "not" the successor of any natural number.

This makes `0 = 1` suitable as `⊥` in *Heyting arithmetic* (and the Peano axiom is rewritten `0 = S n -> 0 = S 0`). This use of `0 = 1` validates the principle of explosion.


## What is a function

The BHK interpretation will depend on the view taken about what constitutes a *function* that converts one proof to another, or that converts an element of a domain to a proof. Different versions of [constructivism][24] will diverge on this point.

Kleene's [realizability][25] theory identifies the functions with the [computable functions][26]. It deals with Heyting arithmetic, where the domain of quantification is the natural numbers and the primitive propositions are of the form *x* = *y*. A proof of *x* = *y* is simply the trivial algorithm if *x* evaluates to the same number that *y* does (which is always decidable for natural numbers), otherwise there is no proof. These are then built up by induction into more complex algorithms.

If one takes [lambda calculus][27] as defining the notion of a function, then the BHK interpretation describes the [correspondence][28] between natural deduction and functions.

## References\[[edit][29]\]

-   [Troelstra, A.][30] (1991). ["History of Constructivism in the Twentieth Century"][31] (PDF).
-   Troelstra, A. (2003). "Constructivism and Proof Theory (draft)". [CiteSeerX][32] [10.1.1.10.6972][33].

[1]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[2]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[3]: https://en.wikipedia.org/wiki/L._E._J._Brouwer "L. E. J. Brouwer"
[4]: https://en.wikipedia.org/wiki/Arend_Heyting "Arend Heyting"
[5]: https://en.wikipedia.org/wiki/Andrey_Kolmogorov "Andrey Kolmogorov"
[6]: https://en.wikipedia.org/wiki/Realizability "Realizability"
[7]: https://en.wikipedia.org/wiki/Stephen_Kleene "Stephen Kleene"
[8]: https://en.wikipedia.org/wiki/Brouwer%E2%80%93Heyting%E2%80%93Kolmogorov_interpretation#cite_note-1
[9]: https://en.wikipedia.org/w/index.php?title=Brouwer%E2%80%93Heyting%E2%80%93Kolmogorov_interpretation&action=edit&section=1 "Edit section: The interpretation"
[10]: https://en.wikipedia.org/wiki/Formula_(mathematical_logic) "Formula (mathematical logic)"
[11]: https://en.wikipedia.org/wiki/Induction_on_the_structure "Induction on the structure"
[12]: https://en.wikipedia.org/w/index.php?title=Brouwer%E2%80%93Heyting%E2%80%93Kolmogorov_interpretation&action=edit&section=2 "Edit section: Examples"
[13]: https://en.wikipedia.org/wiki/Law_of_non-contradiction "Law of non-contradiction"
[14]: https://en.wikipedia.org/wiki/Law_of_excluded_middle
[15]: https://en.wikipedia.org/w/index.php?title=Brouwer%E2%80%93Heyting%E2%80%93Kolmogorov_interpretation&action=edit&section=3 "Edit section: What is absurdity?"
[16]: https://en.wikipedia.org/wiki/Logical_system "Logical system"
[17]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorems
[18]: https://en.wikipedia.org/wiki/Mathematical_induction "Mathematical induction"
[19]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[20]: https://en.wikipedia.org/wiki/Peano_arithmetic "Peano arithmetic"
[21]: https://en.wikipedia.org/wiki/Heyting_arithmetic "Heyting arithmetic"
[22]: https://en.wikipedia.org/wiki/Principle_of_explosion "Principle of explosion"
[23]: https://en.wikipedia.org/w/index.php?title=Brouwer%E2%80%93Heyting%E2%80%93Kolmogorov_interpretation&action=edit&section=4 "Edit section: What is a function?"
[24]: https://en.wikipedia.org/wiki/Constructivism_(mathematics) "Constructivism (mathematics)"
[25]: https://en.wikipedia.org/wiki/Realizability "Realizability"
[26]: https://en.wikipedia.org/wiki/Computable_function
[27]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[28]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence "Curry-Howard correspondence"
[29]: https://en.wikipedia.org/w/index.php?title=Brouwer%E2%80%93Heyting%E2%80%93Kolmogorov_interpretation&action=edit&section=5 "Edit section: References"
[30]: https://en.wikipedia.org/wiki/A._S._Troelstra "A. S. Troelstra"
[31]: http://www.illc.uva.nl/Research/Publications/Reports/ML-1991-05.text.pdf
[32]: https://en.wikipedia.org/wiki/CiteSeerX_(identifier) "CiteSeerX (identifier)"
[33]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.10.6972
