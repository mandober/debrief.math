# Interpretation

https://en.wikipedia.org/wiki/Interpretation_(logic)

An **interpretation** is an assignment of meaning to the symbols of a formal language.

Many formal languages are defined only in syntactic terms, and as such do not have any meaning until they are given some by an interpretation.

The general study of interpretations of formal languages is called *formal semantics*.

The most commonly studied formal logics are propositional logic, predicate logic and their modal analogs, and they have standard ways of presenting an interpretation. In these contexts, an *interpretation is a function* that maps the symbols to the concepts in an object language.

For example, an interpretation function could take the predicate `T` (for "tall") and assign it the extension `{a}` (for "Abraham Lincoln"). Note that all our interpretation does is assign the extension `{a}` to the non-logical constant `T`, and does not make a claim about whether `T` is to stand for tall and `a` for Abraham Lincoln; nor does logical interpretation have anything to say about logical connectives like 'and', 'or', 'not'. Though we may take these symbols to stand for certain things or concepts, this is not determined by the interpretation function.

An interpretation often (but not always) provides a way to determine the truth values of sentences in a language. If a given interpretation assigns the value "True" to a sentence or theory, the interpretation is called a *model* of that sentence or theory.

## Formal languages

A formal language consists of a possibly infinite set of sentences, called formulas, built from a fixed set of symbols. The inventory from which these symbols are taken is called the alphabet over which the language is defined.

However, since not every randomly built string of symbols is valid, we need the formal grammar that will specify which formulas are actually well-formed formulas (wff).

The essential feature of formal, especially symbolic, languages is that the syntax can be defined without referencing an interpretation. So, for example, the grammar may determine that (P or Q) is a wff without even knowing, or needing to know, its truth value.

## Example

A formal language `𝓛` can be defined with the alphabet `A = {△,◻}`, and with a word being in `A` if it begins with a `△`, whch is then optionally followed with the symbols `△` and `◻`. A possible interpretation of this language could interpret △ as 1 and ◻ as 0. Then the sequance `△◻△` would denote decimal number 101 under this particular interpretation of the language `𝓛`.

## Logical constants

Commonly, a formal language has an alphabet divided into two sets:
- the logical symbols i.e. logical constants
- the non-logical symbols

The rationale behind this terminology is that the set of *logical symbols* (that includes logical constants, logical connectives, quantifiers, even punctuation like parentheses) remains pretty much constant and keeps the same meaning regardless of the subject matter, while the set of *non-logical symbols* changes with the subject matter. The equality symbol should belong to the later set, but over the years it has managed to switch membership.

## Truth-functional interpretations

Many interpretations of propositional and first-order logic are truth-functional, associating each sentence in a formal language with a truth value (either True or False).

The sentences that are made true by a particular assignment are said to be *satisfied* by that assignment.

In classical logic, no sentence can be made both true and false by the same interpretation, although this is not true of glut logics such as LP. Even in classical logic, however, it is possible that the truth value of the same sentence can be different under different interpretations.

A sentence is **consistent** if it is true under at least one interpretation; otherwise it is **inconsistent**.

A sentence `φ` is said to be logically **valid** if it is satisfied by every interpretation; if `φ` is satisfied by every interpretation that satisfies `ψ`, then `φ` is said to be a *logical consequence* of `ψ`, or that `ψ` entails `φ`.

## Logical connectives

Some of the logical symbols of a language (other than quantifiers) are truth-functional connectives that represent *truth functions* - functions that take truth values as arguments and return truth values as outputs (in other words, these are operations on truth values of sentences).

The truth-functional connectives enable compound sentences to be built up from simpler sentences. In this way, the truth value of the compound sentence is defined as a certain truth function of the truth values of the simpler sentences. The connectives are usually taken to be logical constants, meaning that the meaning of the connectives is always the same, independent of what interpretations are given to the other symbols in a formula.

A common way to define logical connectives in propositional logic is by structural induction:
- `¬Φ` is True iff `Φ` is False.
- `(Φ ⋀ Ψ)` is True iff `Φ` is True and `Ψ` is True.
- `(Φ ⋁ Ψ)` is True iff at least one of `Φ` and `Ψ` is True
- `(Φ → Ψ)` is False only if `Φ` is True and `Ψ` is False; else it is True.
- `(Φ ↔ Ψ)` is True iff `(Φ → Ψ)` is True and `(Ψ → Φ)` is True.

So under a given interpretation of all the sentence letters Φ and Ψ (i.e. after assigning a truth-value to each sentence letter), we can determine the truth-values of all formulas that have them as constituents, as a function of the logical connectives.

The following table shows how this kind of thing looks. The first two columns show the truth-values of the sentence letters as determined by the 4 possible interpretations. The other columns show the truth-values of formulas built from these sentence letters, with truth-values determined recursively.

i | Φ | Ψ |¬Φ |(Φ ⋀ Ψ)|(Φ ⋁ Ψ)|(Φ → Ψ)|(Φ ↔ Ψ)
--|---|---|---|-------|-------|-------|--------
1 | T | T | F |   T   |   T   |   T   |   T
2 | T | F | F |   F   |   T   |   F   |   F
3 | F | T | T |   F   |   T   |   T   |   F
4 | F | F | T |   F   |   F   |   T   |   T


- `i` is interpretation number
- there are 4 possible interpretations

Now it is easier to see what makes a formula logically valid. 
Take the formula `F: (Φ ⋁ ¬Φ)`. 
If our interpretation function makes `Φ` True, then `¬Φ` is made False by the negation connective. 
Since the disjunct `Φ` of `F` is True under that interpretation, `F` is True. Now the only other possible interpretation of `Φ` makes it False, and if so, `¬Φ` is made True by the negation function. 
That would make `F` True again, since one of Fs disjuncts, `¬Φ`, would be true under this interpretation. 
Since these two interpretations for `F` are the only possible logical interpretations, and since `F` comes out True for both, we say that it is *logically valid* or *tautologous*.
