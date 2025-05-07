# Archimedes' axiom

https://en.wikipedia.org/wiki/Archimedes_axiom
https://mathworld.wolfram.com/ArchimedesAxiom.html

Archimedes' axiom, aka the *continuity axiom* or *Archimedes' lemma*, survives in the writings of Eudoxus, but the term was first coined by the Austrian mathematician Otto Stolz in 1883.

>**Archimedes' axiom** states that, given two magnitudes having a ratio, one can find a multiple of either which will exceed the other.

This principle was the basis for the *method of exhaustion*, which Archimedes used to calculate areas (area of circle) and volumes of various geometric objects.

Symbolically, the axiom states that `a/b = c/d` iff the appropriate one of following conditions is satisfied for integers `m` and `n`:

    a/b = c/d ⇔ ∀m ∈ ℤ. ∀n ∈ ℤ.
      ma < nb ⇒ mc < nd
      ma = nb ⇒ mc = nd
      ma > nb ⇒ mc > nd

Formally, Archimedes' axiom states that if `AB` and `CD` are two line segments, then there exist a finite number of points `A₁, A₂, …, Aₙ` on `A ∪ B` such that

    CD = AA₁ = A₁A₂ = … = Aₙ˗₁Aₙ

and `B` is between `A` and `Aₙ` (Itô 1986, p. 611).

A geometry in which Archimedes' lemma does not hold is called a **non-Archimedean Geometry**.
