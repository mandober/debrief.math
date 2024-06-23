# Programming Computable Functions

https://en.wikipedia.org/wiki/Programming_Computable_Functions

## Logic of Computable Functions

*Logic of Computable Functions* is a deductive system for computable functions proposed by Dana Scott in 1969 in a memorandum unpublished until 1993 which inspired:
- *Logic for Computable Functions (LCF)*, theorem proving logic by Robin Milner.
- Programming Computable Functions (PCF), small theoretical programming language by Gordon Plotkin.


Timeline
- 1969 Logic of Computable Functions (LCF), Dana Scott
- 1973 Logic for Computable Functions (LCF), Robin Milner
- 1977 Logic for Computable Functions (PCF), Gordon Plotkin

Papers
- Dana S. Scott. `A type-theoretical alternative to ISWIM, CUCH, OWHY`. Theoretical Computer Science, __1969__, (published in 1993). Annotated version of the 1969 manuscript: https://www.cs.cmu.edu/~kw/scans/scott93tcs.pdf
- Robin Milner. __1973__. `Models of LCF`. http://i.stanford.edu/TR/CS-TR-73-332.html
- Plotkin, Gordon D. __1977__. `LCF considered as a programming language`. http://homepages.inf.ed.ac.uk/gdp/publications/LCF.pdf

Wikilinks
- https://en.wikipedia.org/wiki/Logic_of_Computable_Functions
- https://en.wikipedia.org/wiki/Logic_for_Computable_Functions
- https://en.wikipedia.org/wiki/Programming_Computable_Functions


## PCF

In computer science, Programming Computable Functions (PCF) is a typed functional language introduced by Gordon Plotkin in __1977__,[1] based on previous unpublished material by Dana Scott.[note 1] It can be considered to be an extended version of the typed lambda calculus or a simplified version of modern typed functional languages such as ML or Haskell.

A fully abstract model for PCF was first given by Robin Milner.[2] However, since Milner's model was essentially based on the syntax of PCF it was considered less than satisfactory.[3] The first two fully abstract models not employing syntax were formulated during the 1990s. These models are based on game semantics[4][5] and Kripke logical relations.[6] For a time it was felt that neither of these models was completely satisfactory, since they were not effectively presentable. However, Ralph Loader demonstrated that no effectively presentable fully abstract model could exist, since the question of program equivalence in the finitary fragment of PCF is not decidable.[7]

## Contents

- 1. Syntax
- 2. Semantics
  - 2.1. Denotational semantics
- 3. Notes
- 4. References
- 5. External links


## Syntax

The types of PCF are inductively defined as
- `nat` is a type
- for types `σ` and `τ`, there is a type `σ → τ`

A context is a list of pairs `x : σ`, where `x` is a variable name and `σ` is a type, such that no variable name is duplicated. One then defines typing judgments of terms-in-context in the usual way for the following syntactical constructs:
- variables: if `x : σ` is part of a context `Γ`, then `Γ ⊢ x : σ`
- application: of a term of type `σ → τ` to a term of type `σ`
- λ-abstraction
- Y fixpoint combinator: making terms of type` σ` out of terms of type `σ → σ`
- successor (succ) and predecessor (pred) operations on nat and the constant 0
- conditional `if` with the typing rule:

```hs
Γ ⊢ t : nat
Γ ⊢ s₀ : σ
Γ ⊢ s₁ : σ
---------------------- IF
Γ ⊢ if t s₀ s₁ : σ
```

nats will be interpreted as booleans here with a convention like zero denoting truth, and any other number denoting falsity.


## Semantics

### Denotational semantics

A relatively straightforward semantics for the language is the Scott model. In this model,

* Types are interpreted as certain domains.
  * [[nat]] := N⊥
    the natural numbers with a bottom element adjoined, with the flat ordering.
  * [[σ→τ]]
    is interpreted as the domain of Scott-continuous functions from [[σ]] to [[τ]], with the pointwise ordering.
* A context `x₁ : σ₁, …, xₙ : σₙ` is interpreted as the product 
`[[σ₁]] × … × [[σₙ]]` 
* Terms in context `Γ ⊢ x : σ` are interpreted as continuous functions 
[[Γ]] → [[σ]]
  * Variable terms are interpreted as projections.
  * Lambda abstraction and application are interpreted by making use of the cartesian closed structure of the category of domains and continuous functions.
  * Y is interpreted by taking the least fixed point of the argument.

This model is not fully abstract for PCF; but it is fully abstract for the language obtained by adding a parallel or operator to PCF. 

## Notes

"PCF is a programming language for computable functions, based on LCF, Scott's logic of computable functions."[1] Programming Computable Functions is used by (Mitchell 1996). It is also referred to as Programming with Computable Functions or Programming language for Computable Functions.


## References

Plotkin, Gordon D. (1977). "LCF considered as a programming language" (PDF). Theoretical Computer Science. 5 (3): 223-255. doi:10.1016/0304-3975(77)90044-5.

Milner, Robin (1977). "Fully abstract models of typed λ-calculi" (PDF). Theoretical Computer Science. 4: 1-22. doi:10.1016/0304-3975(77)90053-6. hdl:20.500.11820/731c88c6-cdb1-4ea0-945e-f39d85de11f1.

Ong, C.-H. L. (1995). "Correspondence between Operational and Denotational Semantics: The Full Abstraction Problem for PCF". In Abramsky, S.; Gabbay, D.; Maibau, T. S. E. (eds.). Handbook of Logic in Computer Science. Oxford University Press. pp. 269-356. Archived from the original on 2006-01-07. Retrieved 2006-01-19.

Hyland, J. M. E. & Ong, C.-H. L. (2000). "On Full Abstraction for PCF". Information and Computation. 163 (2): 285-408. doi:10.1006/inco.2000.2917.

Abramsky, S., Jagadeesan, R., and Malacaria, P. (2000). "Full Abstraction for PCF". Information and Computation. 163 (2): 409-470. doi:10.1006/inco.2000.2930.

O'Hearn, P. W. & Riecke, J. G (1995). "Kripke Logical Relations and PCF". Information and Computation. 120 (1): 107-116. doi:10.1006/inco.1995.1103.

Loader, R. (2001). "Finitary PCF is not decidable". Theoretical Computer Science. 266 (1-2): 341-364. doi:10.1016/S0304-3975(00)00194-8.

Scott, Dana S. (1969). "A type-theoretic alternative to CUCH, ISWIM, OWHY" (PDF). Unpublished Manuscript. Appeared as Scott, Dana S. (1993). "A type-theoretic alternative to CUCH, ISWIM, OWHY". Theoretical Computer Science. 121: 411-440. doi:10.1016/0304-3975(93)90095-b.

Mitchell, John C. (1996). "The Language PCF". Foundations for Programming Languages. ISBN 9780262133210.

## External links

- Introduction to RealPCF
  http://www.cs.bham.ac.uk/~mhe/papers/RNC3.pdf

- Lexer and Parser for PCF written in SML
  https://web.archive.org/web/20071213234103/http://www.cs.pomona.edu/classes/cs131/Parsers/parsePCF.sml
  