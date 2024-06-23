# Pure type system

https://en.wikipedia.org/wiki/Pure_type_system

In proof theory and type theory, a **pure type system (PTS)** (previously known as a generalized type system), is a form of typed lambda calculus that allows an arbitrary number of sorts and dependencies between them.

The framework can be seen as a generalisation of *Barendregt's lambda cube*, in the sense that all corners of the cube can be represented as instances of a PTS with just two[1] sorts[2]. In fact, Barendregt (1991) framed his cube in this setting[3].

Pure type systems may obscure the distinction between types and terms and collapse the type hierarchy, as is the case with the calculus of constructions, but this is not generally the case, e.g. the simply typed lambda calculus allows only terms to depend on terms.

Pure type systems were independently introduced by Stefano Berardi (1988) and Jan Terlouw (1989). Barendregt discussed them at length in his subsequent papers[4].

In his PhD thesis[5], Berardi defined a cube of constructive logics akin to the lambda cube (these specifications are non-dependent).

A modification of this cube was later called the `L-cube` by Geuvers, who in his PhD thesis[6] extended the Curry-Howard correspondence to this setting.

Based on these ideas, Barthe and others defined **classical pure type systems (CPTS)** by adding a double negation operator[7].

Similarly, in 1998, Tijn Borghuis[8] introduced **modal pure type systems (MPTS)**.

Roorda has discussed the application of pure type systems to functional programming; and Roorda and Jeuring have proposed a programming language based on pure type systems.

The systems from the lambda cube are all known to be *strongly normalizing*. Pure type systems in general need not be, for example `System U` from Girard's paradox is not (roughly speaking, Girard found pure systems in which one can express the sentence "the types form a type").

Furthermore, all known examples of pure type systems that are not strongly normalizing are not even (weakly) normalizing: they contain expressions that do not have normal forms, just like the untyped lambda calculus. 

It is a major open problem in the field whether this is always the case, i.e. whether a (weakly) normalizing PTS always has the strong normalization property. This is known as the **Barendregt-Geuvers-Klop conjecture** [10] (named after Henk Barendregt, Herman Geuvers, and Jan Willem Klop).

## Definition

A pure type system is defined by a triple `(S,A,R)` where
- `S` is the set of sorts, {sort}
- `A` is the set of axioms, `A ⊆ S²`, axiom = {(sort, sort)}
- `R` is the set of rules, `R ⊆ S³`, rule = {(sort, sort, sort)}

Typing in pure type systems is determined by the following rules, where `s` is any sort [4]:

```hs
(s₁, s₂) ∈ A
------------- (Axiom)
⊢ s₁ : s₂


Γ ⊢ A : s    x ∉ dom(Γ)
------------------------ Start Rule
Γ, x : A ⊢ x : A


Γ ⊢ A : B     Γ ⊢ C : s     x ∉ dom(Γ)
---------------------------------------- Weakening
Γ, x : C ⊢ A : B


Γ ⊢ A : s₁    Γ, x : A ⊢ B : s₂     (s₁, s₂, s₃)  ∈ R
------------------------------------------------------ PI Rule (Product)
Γ ⊢ Π x : A. B : s₃


Γ ⊢ C : Π x : A. B       Γ ⊢ a : A
------------------------------------------------------ Application
Γ ⊢ C a : B[x:=a]


Γ, x : A ⊢ b : B        Γ ⊢ Π x : A. B : s
--------------------------------------------- Abstraction
Γ ⊢ λx : A.b : Π x : A. B


Γ ⊢ A : B     Γ ⊢ Bʹ : s    B =ᵦ= Bʹ
-------------------------------------- Conversion
Γ ⊢ A : Bʹ
```


https://www.rbjones.com/rbjpub/logic/cl/tlc004.htm


## Implementations

The following programming languages have pure type systems:
- Henk 2000, https://github.com/mishun/henk2000/
- Yarrow, https://www.cs.ru.nl/~janz/yarrow/
- SAGE, http://sage.soe.ucsc.edu/

## Refs

[1]: Pierce, Benjamin (2002). Types and Programming Languages.
[2]: Kamareddine, Fairouz D.; Laan, Twan; Nederpelt, Rob P. (2004). Section 4c: Pure type systems from A modern perspective on type theory: from its origins until today.
[3]: Barendregt, H. P. (1991). Introduction to generalized type systems.
[4]: Barendregt, H. (1992). Lambda calculi with types.
[5]: Berardi, S. (1990). Type dependence and Constructive Mathematics. (PhD thesis)
[6]: Geuvers, H. (1993). Logics and Type Systems (PhD thesis). 
[7]: Barthe, G.; Hatcliff, J.; Sørensen, M. H. (1997). "A Notion of Classical Pure Type System".
[8]: Borghuis, Tijn (1998). "Modal Pure Type Systems". 
[9]: Jan-Willem Roorda; Johan Jeuring. "Pure Type Systems for Functional Programming". 2011. https://web.archive.org/web/20111002055103/http://people.cs.uu.nl/johanj/MSc/jwroorda/. Roorda's masters' thesis (linked from the cited page) also contains a general introduction to pure type systems.
[10]: Sørensen, Morten Heine; Urzyczyn, Paweł (2006). "Pure type systems and the lambda cube § 14.7". Lectures on the Curry-Howard isomorphism


## Further reading

- Berardi, Stefano (1988). Towards a mathematical analysis of the Coquand-Huet calculus of constructions and the other systems in Barendregt's cube (Technical report).
- Schmidt, David A. (1994). "§ 8.3 Generalized Type Systems". The structure of typed programming languages. MIT Press

## External links

- Pure type system at the nLab
  https://ncatlab.org/nlab/show/pure+type+system
- Jones, Roger Bishop (1999). "Pure Type Systems overview".
  http://www.rbjones.com/rbjpub/logic/cl/tlc004.htm
