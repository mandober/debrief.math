# Prefix grammar

In theoretical computer science and formal language theory, a **prefix grammar** is a type of *string rewriting system*, consisting of a set of *string rewriting rules*, similarly to a *formal grammar* or a *semi-Thue system*. What distiguishes a prefix grammar from other grammars is not the shape of the rules, but the way in which they are applied: **only prefixes are rewritten**.

Prefix grammars describe exactly all *regular languages*.

## Formal definition

A prefix grammar `G` is a 3-tuple, `(Σ, S, P)`, where
- `Σ` is a finite alphabet
- `S` is a finite set of *base strings* over `Σ`
- `P` is a finite set of production rules of the form `u → v`, 
   where `u` and `v` are strings over `Σ`, i.e. `u,v ∈ Σ⋆`


For strings `x` and `y`, we write `x →ɢ y` - and say that *`G` can derive `y` from `x` in one step* - if there are strings u, v, w such that `x=vu`, `y=wu`, and `v → w ∈ P`.

Note that `→ɢ` is a *binary relation* on the strings of `Σ`.

The language of `G`, denoted `L(G)`, is the set of strings derivable from `S` in zero or more steps.

Formally, it is the set of all strings `w`, such that for some base string `s`, belonging to the set `S`, the relation `sRw` holds, where `R` is the transitive closure of `→ɢ`.

`w ∈ Σ⋆ | ∃s ∈ S. sRw`

## Example

The prefix grammar `G`
- Σ = { 0, 1 }
- S = { 01, 10 }
- P = { 0 → 010, 10 → 100 }

describes the language defined by the regular expression `01 (01)∗ ⋃ 100∗`.

Example derivations
- 10 ⇒² 100 ⇒² 1000 ⇒² 10000 ⇒² 100000
- 10 ⇒¹ 1010 ⇒¹ 101010 ⇒¹ 10101010 ⇒¹ 1010101010
- 01 ⇒¹ 0101 ⇒² 01001 ⇒¹ 0101001 ⇒² 01001001 ⇒¹ 0101001001


## Refs

* M. Frazier and C. D. Page. `Prefix grammars: An alternative characterization of the regular languages`. Information Processing Letters, 51(2):67-71, 1994.
http://portal.acm.org/citation.cfm?id=185820
