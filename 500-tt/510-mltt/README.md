# Martin Lof type theory (Intuitionistic type theory) ∷ Terms

* key concepts
  - dependent types
    - dependent pairs
    - dependent functions
  - identity type
  - universe types
  - inductive types
  - canonical terms

* ITT types
  * Base types
    - 𝟘 type, `⟘`, bottom, the empty type
    - 𝟙 type, `()`, the unit type
    - 2 type, …
  * Type ctors
    - `Σ`-types: dependent ordered pairs, existential quantification
    - `Π`-types: dependent functions, universal quantification
    - `=`-types: reflection
    - inductive types
  * Universe types
    - predicative hierarchy of universes:
      - `𝒰₀, 𝒰₁, 𝒰₂, …`
      - `𝒰₀ : 𝒰₁`, `𝒰₁ : 𝒰₂`, …
    - predicative universes
    - impredicative universes
    - super universes
    - Mahlo universes

* general concepts
  - Girard's paradox
  - constructive logic
  - dependent types
  - inductive types
  - unbounded data structures
  - judgement, context, conclusion, turnstile

* type theory
  - Per Martin-Löf's dependent type theory
  - Intuitionistic type theory (ITT) [MLTT75]
  - Constructive type theory (CTT)
  - Martin-Löf type theory (MLTT)
    - [MLTT71]
    - [MLTT72]
    - [MLTT73]
    - [MLTT75]
    - [MLTT79]
  * synonyms


```bash
echo {intuitionistic,constructive,Martin-Löf}\ \
{in,ex}tensional\ {im,}predicative\ type\ theory
```


## Martin-Löf publications

[ML82] Per Martin-Lof. `Constructive mathematics and computer programming`.
In "Logic, Methodology and Philosophy of Science VI". Proceedings of the 6. International Congress of Logic, Methodology and Philosophy of Science, Hannover 1979. Volume 104 of "Studies in Logic and the Foundations of Mathematics", p. 153-175. North-Holland, 1982.

[ML84] Per Martin-Lof. `Intuitionistic type theory`. 
Volume 1 of "Studies in Proof Theory". Bibliopolis, 1984. 
Notes by Giovanni Sambin of a series of lectures given in Padua, June 1980.

[ML98] Per Martin-Lof. `An intuitionistic theory of types`. 
In "25 years of constructive type theory", Venice, 1995. Volume 36 of Oxford Logic Guides, p. 127-172. Oxford University Press, 1998.

[ML06] Per Martin-Lof. `100 years of Zermelo's axiom of choice: what was the problem with it?`. The Computer Journal, 49(3):345-350, 2006.
