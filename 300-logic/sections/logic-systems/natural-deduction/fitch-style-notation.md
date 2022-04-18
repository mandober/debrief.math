# Fitch notation

https://en.wikipedia.org/wiki/Fitch_notation

*Fitch notation*, or Fitch diagrams 
(named after Frederic Fitch), 
is a notational system 
for constructing formal proofs used in 
propositional and predicate logics.

Fitch-style proofs 
arrange the sequence of sentences 
that make up the proof into rows. 
A unique feature of Fitch notation 
is that the degree of indentation of each row 
conveys which assumptions are active for that step.

## Example

Each row in a Fitch-style proof is either:
- a (main) assumption or a subproof assumption
- a formula justified by citing
  1. a rule of inference invoked
  2. the lines that justify it

Introducing a new assumption increases the level of indentation, and begins a new vertical "scope" bar that continues to indent subsequent lines until the assumption is discharged. This mechanism immediately conveys which assumptions are active for any given line in the proof, without the assumptions needing to be rewritten on every line (as with *sequent-style proofs*).

The following example displays the main features of Fitch notation:

```js
Prove: P <=> ¬¬P

1 assume P
2   assume ¬P
3     ⟘                      ⟘I 1,2
4   thus ¬¬P                 ¬I 2
5 


0 |__                        [assumption, want P <=> ¬¬P]
1 |   |__ P                  [assumption, want not not P]
2 |   |   |__ not P          [assumption, for reductio]
3 |   |   |   contradiction  [contradiction introduction: 1, 2]
4 |   |   not not P          [negation introduction: 2]
5 |   |__ not not P          [assumption, want P]
6 |   |   P                  [negation elimination: 5]
7 |   P iff not not P        [biconditional introduction: 1 - 4, 5 - 6]
```

0. The null assumption, i.e., we are proving a tautology
1. Our first subproof: we assume the l.h.s. to show the r.h.s. follows
2. A subsubproof: we are free to assume what we want. Here we aim for a reductio ad absurdum
3. We now have a contradiction
4. We are allowed to prefix the statement that "caused" the contradiction with a not
5. Our second subproof: we assume the r.h.s. to show the l.h.s. follows
6. We invoke the rule that allows us to remove an even number of nots from a statement prefix
7. From 1 to 4 we have shown if P then not not P, from 5 to 6 we have shown P if not not P; hence we are allowed to introduce the biconditional



## References

* Frederic Brenton Fitch, `Symbolic Logic: An introduction`, 1952.
* Jon Barwise and John Etchemendy, `Language, Proof and Logic` 1st edition as *PDF*, Seven Bridges Press and CSLI, 1999.
https://web.archive.org/web/20130903114953/http://ssdi.di.fct.unl.pt/~pb/cadeiras/lc/0102/lpl%20textbook.pdf

* Natural deduction and sequent proofs, Gentzen-style
https://www.logicmatters.net/latex-for-logicians/nd/




## Links

* FitchJS: An open source web app to construct proofs in Fitch notation (and export to LaTeX)
https://mrieppel.github.io/fitchjs/
https://github.com/mrieppel/fitchjs

* LemmoNaDe: web app to construct proofs in Lemmon style proof constructor
https://mrieppel.github.io/LemmoNaDe/
https://github.com/mrieppel/LemmoNaDe

## Resources

* Fitch's Paradox of Knowability
http://plato.stanford.edu/entries/fitch-paradox/

* Natural deduction proof editor and checker in Fitch notation
http://proofs.openlogicproject.org/

* An online Java application for proof building
http://logik.phl.univie.ac.at/~chris/gateway/formular-uk-fitch.html

* A Web implementation of Fitch proof system (propositional and first-order) at proofmod.mindconnect.cc
https://proofmood.mindconnect.cc/

* The Jape general-purpose proof assistant
http://japeforall.org.uk/
https://en.wikipedia.org/wiki/Jape_(software)

* Resources for typesetting proofs in Fitch notation with LaTeX
http://www.logicmatters.net/latex-for-logicians/nd/

* Sequent Calculus in Natural Deduction Style
https://www.jstor.org/stable/2694976

* Sequent Calculus at nlab
http://nlab-pages.s3.us-east-2.amazonaws.com/nlab/show/sequent+calculus

* Proving a sequent in natural deduction sequent style
https://math.stackexchange.com/questions/2325050/
