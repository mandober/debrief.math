# Signature

https://en.wikipedia.org/wiki/Signature_(logic)

A signature lists and describes the *non-logical symbols* of a formal language.

## Definition

Informally, a signature is about expressing all the symbols of a logic system as succintly as possibly, by shovelling all symbols (logical constants, logical connectives, predicate symbols, function symbols, relation symbols, etc.) into a single formulation build around their respective arites.

Formally, a (single-sorted) signature can be defined as a triple

`σ = (Sꜰɴ, Sʀᴇʟ, ar)`

where `Sꜰɴ` and `Sʀᴇʟ` are disjoint sets not containing any other basic logical symbols
- `Sꜰɴ`, function symbols (`+`, `×`, `0`, `1`, …)
- `Sʀᴇʟ`, relation symbols or predicates (`≤`, `∈`, …)
- function `ar : Sꜰɴ ⋃ Sʀᴇʟ → ℕ` which assigns a natural number called arity to every function or relation symbol. A function or relation symbol is called n-ary if its arity is `n`. A nullary (0-ary) function symbol is called a constant symbol.

* A signature with no function symbols is called a *relational signature*.
* A signature with no relation symbols is called an *algebraic signature*.
* A *finite signature* is a signature such that Sꜰɴ and Sʀᴇʟ are finite.

More generally, the cardinality of a signature `σ = (Sꜰɴ, Sʀᴇʟ, ar)` is defined as `|σ| = |Sꜰɴ| + |Sʀᴇʟ|`.

The language of a signature is the set of all wffs built from the symbols in that signature together with the symbols in the logical system.

In mathematical logic, very often symbols are not allowed to be nullary, so that constant symbols must be treated separately rather than as nullary function symbols. They form a set `Sᴄᴏɴs` disjoint from `Sꜰɴ`, on which the arity function ar is not defined. However, this only serves to complicate matters, especially in proofs by induction over the structure of a formula, where an additional case must be considered. 

Any nullary relation symbol, which is also not allowed under such a definition, can be emulated by a unary relation symbol together with a sentence expressing that its value is the same for all elements. This translation fails only for empty structures (which are often excluded by convention). If nullary symbols are allowed, then every formula of propositional logic is also a formula of first-order logic.

An example for an infinite signature uses 
`Sꜰɴ = {+} ⋃ {fₐ : a ∈ F}` and `Sʀᴇʟ = {=}` 
to formalize expressions and equations about a vector space over an infinite scalar field `F`, where each `fₐ` denotes the unary operation of scalar multiplication by `a`. This way, the signature and the logic can be kept single-sorted, with vectors being the only sort.


In the context of first-order logic, the symbols in a signature are also known as the *non-logical symbols*, because together with the *logical symbols* they form the underlying alphabet over which two formal languages are inductively defined:
- the set of terms over the signature
- the set of wffs over the signature

In a structure, an interpretation ties the function and relation symbols to mathematical objects that justify their names:
* the interpretation of an n-ary function symbol `f` in a structure `a` with domain `a` is a function `fᵃ: aⁿ → a`
* the interpretation of an n-ary relation symbol is a relation `Rᵃ ⊆ Aⁿ`. 
Here `Aⁿ = A ⨯ A ⨯ … ⨯ A` denotes the n-fold cartesian product of the domain `A` with itself, and so `f` is in fact an n-ary function, and `R` an n-ary relation.



## Refs

https://planetmath.org/signature
