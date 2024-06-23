# Church's formalism

Church's formalism, originally introduced in 1932 as a set of postulates for the foundation of formal logic, includes conversion, i.e. computational rules, which allow the replacement of terms with intensionally equivalent ones, and rules for asserting certain terms as "true".

The syntax yields a general notation system for functions, based on an applicative language, where there is one basic category of terms (well-formed formulas in Church's terminology).

Some terms are formally provable (or assertable) and are classified as true.

Terms are inductively defined from a set of basic constants and variables by means of application and the characteristic lambda abstraction operator: if `M` is a term containing the variable `x`, then `λx.M` is a term, naming the function defined by `M`.

The basic constants designate logical operations:
- (restricted) formal implication
- existential quantifier
- conjunction
- negation
- description operation
- generalized abstraction, i.e. if `F` is formal logical equivalence, then the `A(F,M)` is "what `M` has in common with any `N` formally equivalent to `M`"


It turns out that Church's logic can interpret naive *class theory* and hence the system is suspiciously strong and expressive; strength and expressivity are inherited by the system which was devised out of *Church's formalism*, called the *lambda calculus*.

https://plato.stanford.edu/entries/lambda-calculus/

Church's hope was that contradictions could be avoided by ensuring the possibility that a propositional function be undefined for some argument.

However, the theories of Curry and Church were almost immediately shown inconsistent in 1934, by Kleene and Rosser, who essentially proved a version of *the Richard paradox* (both systems can provably enumerate their own provably total definable number theoretic functions).

The result was triggered by Church himself in 1934, when he used the Richard paradox to prove a kind of incompleteness theorem (with respect to statements asserting the totality of number theoretic functions).

The reason for the inconsistencies was eventually clarified by Curry's 1941 essay. There he distinguishes two basic completeness notions:

* a system `S` is **deductively complete** if, whenever it derives a proposition `B` from the hypothesis `A`, then it also derives the implication `A -> B` (deduction theorem, introduction rule for implication);

* a system `S` is **combinatorially complete**  if, whenever `M` is a term of the system possibly containing an indeterminate `x`, there exists a term (Church's `λx.M`) naming the function of `x` defined by `M`.

Curry then remarks that the paradox of Kleene-Rosser arises because Church's and Curry's systems satisfy both kinds of completeness, thus showing that the two properties are incompatible.

In the more technical part of the paper, Curry carefully axiomatizes the main ingredients exploited by Kleene and Rosser and carries out a lot of non-trivial work both on the logical side and the mathematical side (e.g. to develop a portion of recursive arithmetic, to define the existence of an enumerator, i.e.a term `T` such that, if `a` is the *Gödel number* of a closed term `M` and `Za` is the term formally representing `a`, then `TZa=M` is provable in `S`, etc.).

Curry's proof of the inconsistencies of combinatory systems is unsatisfactory because it heavily uses a detour through number theory and Gödelization, which, as a matter of fact, is unnecessary as Curry himself soon discovered and presented in a paper with the same title as the one by Kleene and Rosser, "in deference to the original discoverers of the contradiction" (Curry 1942). The main result in it is the following theorem (Curry's paradox, see the entry Curry's Paradox):

…
