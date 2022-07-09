# Traditional first-order logic

https://web.archive.org/web/20060225052821/http://www.earlham.edu/~peters/courses/logsys/nonstbib.htm

In standard first-order logics:
- Wffs are finite in length (although there may be infinitely many of them)
- Rules of inference take only finitely many premises
- There are only two truth values
- Truth-values of given proposition symbols do not change within a given interpretation, only between or across interpretations
- All propositional operators and connectives are truth-functional
- `p ∨ ¬p` is provable even if we do not have `|- p` or `|- ¬p` separately; that is, the principle of excluded middle holds
- Contradictions are always false (as opposed to being both true and false)
- Contradictions imply everything (ex falsum quidlibet). If the axioms contain an inconsistency, then all wffs are theorems
- `|-` is monotonic - if the set of premises is enlarged, the set of derivable conclusions doesn't shrink
- Inferences are from wffs to wffs, or from truth-values to truth-values (by means of rules), not from meanings to meanings. Rules of inference refer to syntactic features of wffs or to semantic truth-values, but not to other semantic features beyond truth-value such as meaning or intension
- There are individual variables (as opposed to none)
- There are quantifiers (as opposed to none)
- Predicates take only individuals as arguments (as opposed to other predicates)
- Quantifiers bind only individual variables (as opposed to binding predicates)
- Domains are non-empty by default, or at least one individual exists in every interpretation
- Universal quantifiers lack existential import (hence, Aristotle is non-standard)
- all structure inside predicates, in a natural language, is ignored (e.g. tense, adverbs, adjectives, etc.), except the order of args and quantifiers, which can help us distinguish the subject from the objects of the verb
