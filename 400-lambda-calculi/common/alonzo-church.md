# Lambda calculi :: Common terms and topics :: Alonzo Church

Church's contributions:
- lambda calculus
- original lambda calculus (logic system found inconsistent)
- revised lambda calculus (formalish of functions)
- Church encodings for representing data structures in λ-calculus
  - Church Booleans
    - Boolean constants (encoding 'true' and 'false')
    - logical connectives (and, not, or)
    - Boolean predicates (equality)
  - Church Pair
  - Church List
  - Church Numerals
    - Church natural numbers
      - zero, isZero, successor
      - Kleen's predecessor
    - Church ℤ (as pairs of ℕ)
    - Church ℚ
- Simply-typed lambda calculus
  - Church-style type system (explicit type annotations)
- Church-Rosser theorem
- Church thesis
- Church-Turing thesis
- Frege-Church ontology


## Alonzo Church

Alonzo Church (1903-1995) was an American logician and mathematician who made major contributions to mathematical logic and the foundations of theoretical computer science. He is perhaps best known for the invention of *lambda calculus*, which he invented during the course of investigating into the foundations of mathematics and the notion of computability.

Church has invented lambda calculus some time before Turing came up with his Turing Machine, but both of these models of computation where later found to be equivalent, and both were used by their respective authors in order to prove the undecidability of the Entscheidungsproblem. In fact, both Church and Turing managed to do so, which is the subject of their joint *Church-Turing thesis* about the notion of pure computability.

Church is also known for *Frege-Church ontology* and for his work associated with λ-calculus such as the *Church-Rosser theorem* (confluence).

Church worked at Princeton; some of his students:
- Rosser
- Kleen

Church was Turing's mentor when Turing was at Princton as part of the work towards his diploma.

## Lambda calculus


## Church and computability


In 1936, Church and Alan Turing have independently showed that a general solution to the Entscheidungsproblem is impossible, assuming the intuitive notion of *effective calculability*. Turing used his recently invented concept of an abstract machine, later to be known as Turing machine, to show (translated to terms closer to CS) that there cannot exist an algorithm that can say whether another algorithm would halt or run forever.

The notion of effective calculability was captured by the notion of computable functions, expressed in terms of Turing machine by Turing, and in terms of lambda calculus by Church. These two notions of calculability were later showed equivalent, which is now known as the **Church-Turing thesis**.

The **Church-Rosser theorem** is a theorem of lambda calculus, now also called the property of *confluence*, which states that the eventual result of a lambda expression doesn't depend on the ordering of reductions.

In lambda calculus, the Church-Rosser theorem states that, when applying reduction rules to terms, the ordering in which the reductions are chosen does not make a difference to the eventual result. More precisely, if there are two distinct reductions (or sequences of reductions) that can be applied to the same term, then there exists a term that is reachable from both results, by applying (possibly empty) sequences of additional reductions.

The theorem was proved in 1936 by Alonzo Church and J. Barkley Rosser, after whom it is named.

The theorem is symbolized by a diamond-shape diagram: if term `a` can be reduced to both `b` and `c`, then there must be a further term `d` (possibly equal to either `b` or `c`) to which both `b` and `c` can be reduced.

```
     a
    / \
   /   \
  /     \
 /       \
b         c
 \       /
  \     /
   \   /
    \ /
     d
```

Viewing the lambda calculus as an abstract rewriting system, the Church-Rosser theorem states that the reduction rules of the lambda calculus are *confluent*.

As a consequence of the theorem, *a term in the lambda calculus has at most one normal form*, justifying the use of the phrase "the normal form" for a given *normalizable term*.
