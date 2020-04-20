# Implementation of mathematics in set theory

https://en.wikipedia.org/wiki/Implementation_of_mathematics_in_set_theory

## Preliminaries

The following sections carry out certain constructions in the two theories ZFC and NFU and compare the resulting implementations of certain mathematical structures (such as the natural numbers).

Mathematical theories prove theorems, nothing more.

So saying that a theory allows the construction of a certain object means that it is a theorem of that theory that that object exists.

This is a statement about a definition of the form "the x such that ϕ exists", where ϕ is a formula of our language: the theory proves the existence of "the x such that ϕ" just in case it is a theorem that "there is one and only one x such that ϕ".
(See Bertrand Russell's theory of descriptions.)

Loosely, the theory "defines" or "constructs" this object in this case. If the statement is not a theorem, the theory cannot show that the object exists; if the statement is provably false in the theory, it proves that the object cannot exist; loosely, the object cannot be constructed.


ZFC and NFU share the language of set theory, so the same formal definitions "the x such that ϕ" can be contemplated in the two theories.

A specific form of definition in the language of set theory is set-builder notation:
- $$\{ x \mid \phi \}$$ 
means the set A such that for all x, 
$$\{ \forall x \mid x \in A \iff \phi \}$$ where A is not free in ϕ
- $$\{ x \in B \mid \phi \}$$ means $$\{ x \mid x \in B ∧ \phi \}$$
- $$\{ f(x_{1}, \ldots, x_{n}) \mid \phi \}$$ is defined as    
$$\{z\mid \exists x_{1},\ldots ,x_{n}\, (z=f(x_{1},\dots ,x_{n}) \wedge \phi )\}$$    
where $$f(x_{1},\ldots ,x_{n})$$ 
is an expression already defined.


## Empty set, singleton, unordered pairs and tuples

These constructions appear first because they are the simplest constructions in set theory, not because they are the first constructions that come to mind in mathematics (though the notion of finite set is certainly fundamental!) 


Even though NFU also allows the construction of set ur-elements yet to become members of a set, the empty set is the unique set with no members:
