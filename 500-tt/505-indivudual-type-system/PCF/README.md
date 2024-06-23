# Programming Computable Functions

## Principles of Programming Languages

Principles of Programming Languages - Robert Harper [2/4]
https://www.youtube.com/watch?v=2LyESkJPxCQ&list=PL0DsGHMPLUWXiPzmP9Ti2NVPcapIZETzQ&index=8
Oregon Programming Languages Summer School (OPLSS)
Foundations of Programming and Security
https://is.gd/OPLSS2021
June 14-26, 2021
Topic: Principles of Programming Languages
Lecturer: Robert Harper (Carnegie Mellon University)

## Plotkin's PCF

Gordon Plotkin's PCF is widely studied proto programmng language.

Previously we studied Gödel's System T extended with various programmng cunstructs, and now we explore Plotkin's PCF.

It replaces bounded recursion with general recursion, so exps may diverge (have no value), `rec ~~> ifz(e, e₀, x.e₁)`.

Key idea is to solve recurion equations. For example, to define a factorial

    fac : nat ⇀ nat
    fac = λ(x : nat). ifz(x, 1, x'. x * fac x')

the solution we are looking for is a fixpoint of this equation:

    FAC ≝ λ fac : nat ⇀ nat. ifz(x, 1, x'. x * fac x')

whose type is

    FAC : (nat ⇀ nat) ⇀ nat ⇀ nat

that is, the equation:

  fac = FAC(fac)

  fac ≝ fix(FAC)

where `⇀` denotes a partial function (it may diverge).










## Refs

https://www.youtube.com/watch?v=2LyESkJPxCQ&list=PL0DsGHMPLUWXiPzmP9Ti2NVPcapIZETzQ&index=8
