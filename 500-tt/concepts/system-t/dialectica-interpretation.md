# Dialectica interpretation

https://en.wikipedia.org/wiki/Dialectica_interpretation

In proof theory, the **Dialectica interpretation** is a proof interpretation of intuitionistic logic (Heyting arithmetic) into a finite type extension of primitive recursive arithmetic, the so-called `System T`.

It was developed by Kurt Gödel to provide a consistency proof of arithmetic. The name of the interpretation comes from the journal "Dialectica", where Gödel's paper was published in a 1958 special issue dedicated to Paul Bernays on his 70th birthday [1].

## Contents

- 1. Motivation
- 2. Intuitionistic logic
  - 2.1. Formula translation
  - 2.2. Proof translation (soundness)
  - 2.3. Characterisation principles
  - 2.4. Extensions
    - 2.4.1. Induction
    - 2.4.2. Classical logic
    - 2.4.3. Comprehension
- 3. Linear logic
- 4. Variants
- 5. References

## 1. Motivation

Via the *Gödel-Gentzen negative translation*, the consistency of classical Peano arithmetic had already been reduced to the consistency of *intuitionistic Heyting arithmetic*.

Gödel's motivation for developing the dialectica interpretation was to obtain a relative consistency proof for Heyting arithmetic (and hence for Peano arithmetic).

## 2. Intuitionistic logic

See also: Logic translation
https://en.wikipedia.org/wiki/Logic_translation

The interpretation has two components:
- a formula translation and
- a proof translation

The formula translation describes how each formula `A` of Heyting arithmetic is mapped to a quantifier-free formula `Aᴅ(x;y)` of the system T, where `x` and `y` are tuples of fresh variables (not appearing free in `A`). 

Intuitively, `A` is interpreted as `∃x ∀y Aᴅ(x;y)`. 

The proof translation shows how a proof of `A` has enough information to witness the interpretation of `A`, i.e. the proof of `A` can be converted into a closed term `t` and a proof of `Aᴅ(t;y)` in the system T.

### 2.1. Formula translation

The quantifier-free formula `Aᴅ(x;y)` is defined inductively on the logical structure of `A` as follows, where `P` is an atomic formula:

```
(P)ᴅ                    ≡ P
(A ∧ B)ᴅ(x, v; y, w)    ≡ Aᴅ(x; y) ∧ Bᴅ(v; w)
(A ∨ B)ᴅ(x, v, z; y, w) ≡ (z = 0 → Aᴅ(x; y)) ∧ (z ≠ 0 → Bᴅ(v; w))
(A → B)ᴅ(f, g; x, w)    ≡ Aᴅ(x; fxw) → Bᴅ(gx; w)
(∃z. A)ᴅ(x, z; y)       ≡ Aᴅ(x; y)
(∀z. A)ᴅ(f; y, z)       ≡ Aᴅ(fz; y)
```

### 2.2 Proof translation (soundness)

The formula interpretation is such that whenever `A` is provable in Heyting arithmetic then there exists a sequence of closed terms `t` such that `Aᴅ(t;y)` is provable in the System T.

The sequence of terms `t` and the proof of `Aᴅ(t;y)` are constructed from the given proof of `A` in Heyting arithmetic. 

The construction of `t` is quite straightforward, except for the *contraction axiom* `A → A ∧ A` which requires the assumption that quantifier-free formulas are decidable.

### 2.3. Characterisation principles

It has also been shown that Heyting arithmetic extended with the following principles
- Axiom of choice
- Markov's principle
- Independence of premise for universal formulas

is necessary and sufficient for characterising the formulas of HA which are interpretable by the Dialectica interpretation.

The choice axiom here is formulated for any binary predicate in the premise and an existence claim with a variable of function type in its conclusion.

### 2.4. Extensions

The basic dialectica interpretation of intuitionistic logic has been extended to various stronger systems. Intuitively, the dialectica interpretation can be applied to a stronger system, as long as the dialectica interpretation of the extra principle can be witnessed by terms in the system T (or an extension of system T).

#### 2.4.1. Induction

Given Gödel's incompleteness theorem (which implies that the consistency of PA cannot be proven by finitistic means) it is reasonable to expect that system T must contain non-finitistic constructions. 

Indeed, this is the case.

The non-finitistic constructions show up in the interpretation of mathematical induction. To give a Dialectica interpretation of induction, Gödel makes use of what is nowadays called **Gödel's primitive recursive functionals**, which are higher-order functions with primitive recursive descriptions.

#### 2.4.2. Classical logic

Formulas and proofs in classical arithmetic can also be given a Dialectica interpretation via an initial embedding into Heyting arithmetic followed by the Dialectica interpretation of Heyting arithmetic. 

Shoenfield, in his book, combines the *negative translation* and the *Dialectica interpretation* into a single interpretation of classical arithmetic.

#### 2.4.3. Comprehension

In [3], Spector extended Gödel's Dialectica interpretation of arithmetic to full mathematical analysis, by showing how *the schema of countable choice* can be given a Dialectica interpretation by extending System T with *bar recursion*.

https://en.wikipedia.org/wiki/Bar_recursion


## 3. Linear logic

The Dialectica interpretation has been used to build a model of Girard's refinement of intuitionistic logic known as linear logic, via the so-called Dialectica spaces [3].

Since linear logic is a refinement of intuitionistic logic, the dialectica interpretation of linear logic can also be viewed as a refinement of the dialectica interpretation of intuitionistic logic.

Although the linear interpretation in Shirahata's work [4] validates the weakening rule (it is actually an interpretation of affine logic), de Paiva's dialectica spaces interpretation does not validate weakening for arbitrary formulas.

## 4. Variants

Several variants of the Dialectica interpretation have been proposed since, most notably the Diller-Nahm variant (to avoid the contraction problem) and Kohlenbach's monotone and Ferreira-Oliva bounded interpretations (to interpret weak Kőnig's lemma). Comprehensive treatments of the interpretation can be found at, [5] [6] and [7].


## 5. References

[1]: Kurt Gödel. 1958. Über eine bisher noch nicht benützte Erweiterung des finiten Standpunktes. In Dialectica.

[2]: Clifford Spector. 1962. Provably recursive functionals of analysis: a consistency proof of analysis by an extension of principles in current intuitionistic mathematics.

[3]: Valeria de Paiva. 1991. The Dialectica Categories. University of Cambridge. PhD Thesis. http://www.cl.cam.ac.uk/techreports/UCAM-CL-TR-213.pdf

[4]: Masaru Shirahata. 2006. The Dialectica interpretation of first-order classical affine logic. http://www.tac.mta.ca/tac/volumes/17/4/17-04abs.html  http://www.tac.mta.ca/tac/volumes/17/4/17-04.pdf

[5]: Jeremy Avigad and Solomon Feferman. 1999. Gödel's functional ("Dialectica") interpretation. http://math.stanford.edu/~feferman/papers/dialectica.pdf

[6]: Ulrich Kohlenbach. 2008. Applied Proof Theory: Proof Interpretations and Their Use in Mathematics. https://archive.org/details/appliedprooftheo00ukoh

[7]: Anne S. Troelstra, with C.A. Smoryński, J.I. Zucker, W.A.Howard. 1973. Metamathematical Investigation of Intuitionistic Arithmetic and Analysis.
