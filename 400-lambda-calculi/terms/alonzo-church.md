# Alonzo Church

Alonzo Church (1903-1995) was an American logician and mathematician who made major contributions to mathematical logic and the foundations of theoretical computer science.

He is best known for invention of the *lambda calculus*, *Frege-Church ontology*, *Church-Rosser theorem*, and for *proving the undecidability of the Entscheidungsproblem*.

In 1936, he and Alan Turing have independently showed that a general solution to the Entscheidungsproblem is impossible, assuming the intuitive notion of *effective calculability*. Turing used his recently invented concept of an abstract machine, later to be known as Turing machine, to show (translated to terms closer to CS) that there cannot exist an algorithm that can say whether another algorithm would halt or run forever.

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
