# Logical equivalence

<!-- TOC -->

- [Logical Equivalence](#logical-equivalence)
- [Logical equivalences](#logical-equivalences)
- [Logical equivalences with conditionals](#logical-equivalences-with-conditionals)
- [Relation to material equivalence](#relation-to-material-equivalence)
- [Logical equality](#logical-equality)

<!-- /TOC -->


* Logical equivalences
  * Identity laws
    - p ⋀ ⟙ ≡ p
    - p ⋁ ⟘ ≡ p
  * Domination laws
    - p ⋀ ⟘ ≡ ⟘
    - p ⋁ ⟙ ≡ ⟙
  * Idempotent laws
    - p ⋀ p ≡ p
    - p ⋁ p ≡ p
  * Negation laws
    - p ⋀ ¬p ≡ ⟘
    - p ⋁ ¬p ≡ ⟙
  * Double negation law
    - ¬¬p ≡ p
  * De Morgan's laws
    - ¬(p ⋀ q) ≡ ¬p ⋁ ¬q
    - ¬(p ⋁ q) ≡ ¬p ⋀ ¬q
  * Commutative laws
    - p ⋀ q ≡ q ⋀ p
    - p ⋁ q ≡ q ⋁ p
  * Associative laws
    - p ⋀ (q ⋀ r) ≡ (p ⋀ q) ⋀ r
    - p ⋁ (q ⋁ r) ≡ (p ⋁ q) ⋁ r

  * Distributive laws
    * Left distributivity
      * over __⋀__
        - p `⋀` (q _⋀_ r) ≡ (p `⋀` q) _⋀_ (p `⋀` r)    [⋀_over_⋀]
        - p `⋁` (q _⋀_ r) ≡ (p `⋁` q) _⋀_ (p `⋁` r)    [⋁_over_⋀]
        - p `⟶`(q _⋀_ r) ≡ (p `⟶`q) _⋀_ (p `⟶`r)    [→_over_⋀]
      * over __⋁__
        - p `⋁` (q _⋁_ r) ≡ (p `⋁` q) _⋁_ (p `⋁` r)    [⋁_over_⋁]
        - p `⋀` (q _⋁_ r) ≡ (p `⋀` q) _⋁_ (p `⋀` r)    [⋀_over_⋁]
        - p `⟶`(q _⋁_ r) ≡ (p `⟶`q) _⋁_ (p `⟶`r)    [→_over_⋁]

    * Right distributivity
      - (p ⋁ q) ⟶ r ≡ (p ⟶ r) ⋀ (q ⟶ r)
      - (p ⋀ q) ⟶ r ≡ (p ⟶ r) ⋁ (q ⟶ r)

  * Absorption laws
    - p ⋀ (p ⋁ q) ≡ p
    - p ⋁ (p ⋀ q) ≡ p

* Logical equivalences with conditionals
  -   p ⟶  q  ≡ ¬p  ⋁  q
  -  ¬p ⟶  q  ≡  p  ⋁  q
  -   p ⟶  q  ≡ ¬q ⟶ ¬p   contrapositive
  - ¬(p ⟶ ¬q) ≡  p  ⋀  q
  - ¬(p ⟶  q) ≡  p  ⋀ ¬q




The following statements are logically equivalent:
- If Lisa is in France, then she is in Europe.
  `f ⟶ e`
- If Lisa is not in Europe, then she is not in France.
  `¬e ⟶ ¬f`

Syntactically, these two and are derivable from each other via the rules of *contraposition* and *double negation*.

Semantically, they are true in exactly the same models (interpretations, valuations), namely, those in which either "Lisa is in France" is false or "Lisa is in Europe" is true (this example wroks in classical logic - some non-classical logics do not deem these two sentences logically equivalent).


## Relation to material equivalence

Logical equivalence is different from material equivalence.

Formulas `p` and `q` are logically equivalent iff the statement of their material equivalence (i.e. `p ⟺ q`) is a tautology.

The *material equivalence* of `p` and `q`, written `p ⟺ q`, is itself a statement in the *object language*, as are `p` and `q`; this statement expresses the idea "`p` if and only if `q`". In particular, the truth value of `p ⟺ q` can change from one model to another.

On the other hand, the claim that two formulas are *logically equivalent* is a statement in the *metalanguage*, expressing a relation between two statements. The statements are logically equivalent if, in every model, they have the same truth value.

## Logical equality

*Logical equality* is a logical operator that corresponds to equality in Boolean algebra and to the logical *biconditional* in propositional calculus. It gives the functional value true if both functional arguments have the same logical value, otherwise false.
