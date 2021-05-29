# Church-Rosser theorem

https://en.wikipedia.org/wiki/Church%E2%80%93Rosser_theorem

The Church-Rosser theorem states that, when applying reduction rules to terms in some variants of the lambda calculus, the ordering in which the reductions are chosen does not make a difference to the eventual result.

Completely informally, if two lambda expressions are reducable (e.g. they don't throw a tantrum) to some term, then the reduction strategy (applicative or normal order) is immaterial.

More precisely, if there are two distinct sequences of reductions that can be applied to a term, then there exists some other term that is reachable by both paths by applying additional reductions.

The theorem was proved in 1936 by Alonzo Church and J. Barkley Rosser (Church's student).

a-------------->b
|               |
|               |
↓               ↓
c-------------->d

The theorem is symbolized by a diagram: if term `A` can be reduced to both `B` and `C`, then there must be a further term `D` (possibly equal to either B or C) to which both B and C can be reduced.

Viewing LC as an abstract rewriting system, the Church-Rosser theorem states that the reduction rules of LC are *confluent*.

> As a consequence of the theorem, a term in LC has at most one normal form.
