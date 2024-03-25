# Brief history of λ-calculus (SEP)

https://plato.stanford.edu/entries/lambda-calculus/#BriHisLCal


λ-calculus arose from the study of functions as rules.

Already the essential ingredients of the subject can be found in **Frege**'s pioneering work (Frege, 1893). Frege observed that in the study of functions it is sufficient to focus on *unary functions*. 

The procedure of viewing a polyadic operation as a sequence of abstractions that yield an equivalent unary operation is called *currying*. Perhaps it would be more historically accurate to call the operation *fregeing* or even *schönfinkeling*, since both man have discovered it before Curry, making this yet another case of too frequently encountered misattribution of ideas.

In the 1920s, the mathematician **Moses Schönfinkel** took the subject further with his study of so-called combinators. As was common in the early days of the subject, Schönfinkel was interested in the kinds of transformations that one sees in formal logic, and his combinators were intended to be a contribution to the foundations of formal logic.

By analogy with the Sheffer's minimization of the necessary logical operations to define a functionally complete set, Schöfinkel managed to prove the remarkable result that all the combinators are derivable from the two essential ones, K and S.

Curry has promoted Schönfinkel's work, being intrested in the combinatory logic himself. Although he has contributed the discovery of currying to Frege and Schöfinkel after him, the history decided to name it after Curry.

After the invention of λ-calculus, the correspondence between CL and LC was established, realizing that the terms of CL can be expressed in LC and (almost) vice versa.

Although today we have more clearly delimited systems of abstraction and rewriting, in its early days λ-calculus and combinatory logic (à la Schönfinkel) were bound up with investigations of foundations of mathematics.

In the hands of Curry, Church, Kleene, and Rosser (some of the pioneers in the subject) the focus was on defining mathematical objects and carrying out logical reasoning inside the these new systems.

It turned out that these early attempts at so-called *illative λ-calculus and combinatory logic* were inconsistent. Curry isolated and polished the inconsistency - the result now known as *Curry's paradox*.

The λ-calculus earns a special place in the history of logic because it was the *source of the first undecidable problem*. The problem was: given λ-terms `M` and `N`, determine if `M = N`. This problem was shown to be undecidable (the theory of equational reasoning about λ-terms has not yet been defined).

Another early problem in the λ-calculus was *whether it is consistent* at all.

In this context, inconsistency means that all terms are equal: one can reduce any λ-term `M` to any other λ-term `N`. That this is not the case is an early result of λ-calculus. Initially one had results showing that certain terms were not interconvertible (e.g. K and S). Later, a much more powerful result, the so-called *Church-Rosser theorem*, helped shed more light on *β-conversion* and could be used to give quick proofs of the non-inter-convertibility of whole classes of λ-terms.

The λ-calculus was a somewhat obscure formalism until the 1960s, when, at last, a mathematical semantics was found. Its relation to programming languages was also clarified. Till then the only models of λ-calculus were syntactic, that is, were generated in the style of Henkin and consisted of equivalence classes of λ-terms (for suitable notions of equivalence).

Applications in the semantics of natural language, thanks to developments by Montague and other linguists, helped popularize it. Since then, λ-calculus enjoys a respectable place in mathematical logic, CS, linguistics and other fields.
