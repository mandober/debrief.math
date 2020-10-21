# Separation logic

https://en.wikipedia.org/wiki/Separation_logic

Separation logic is an extension of [Hoare logic](), a way of reasoning about programs.

The assertion language of separation logic is a special case of the [logic of bunched implications](./bunched-logic.md) (BI).

Separation logic facilitates reasoning about:
- programs that manipulate pointer data structures—including information hiding in the presence of pointers
- "transfer of ownership" (avoidance of semantic frame axioms)
- virtual separation (modular reasoning) between concurrent modules

Separation logic supports the developing field of research described by Peter O'Hearn and others as *local reasoning*, whereby specifications and proofs of a program component mention only the portion of memory used by the component, and not the entire global state of the system.

Applications include *automated parallelization of software*, and *automated program verification*, where an algorithm checks the validity of another algorithm.

Separation logic assertions describe states consisting of a store and a heap, roughly corresponding to the state of local, stack-allocated, variables and dynamically-allocated objects.

A store s is a function mapping variables to values. A heap ℎ is a partial function mapping memory addresses to values. Two heaps ℎ and ℎ′ are disjoint, denoted ℎ ⊥ ℎ′, if their domains do not overlap; i.e. for every memory address ℓ, at least one of ℎ(ℓ) and ℎ′(ℓ) is undefined.

The logic allows to prove judgements of the form s,ℎ ⊨ P, where s is a store, ℎ is a heap, and P is an assertion over the given store and heap. Separation logic assertions (denoted as P, Q, R) contain the standard boolean connectives and, in addition, `emp`, e ↦ e', P ∗ Q, and P −∗ Q, where e and e′ are expressions.

The constant `emp` asserts that the heap is empty, i.e. s,ℎ ⊨ emp when ℎ is undefined for all addresses.

The binary operator ↦ takes an address and a value and asserts that the heap is defined at exactly one location, mapping the given address to the given value.

s,ℎ ⊨ e ↦ e′ when ℎ $${\displaystyle h([\![e]\!]_{s})=[\![e']\!]_{s}}$$,   
where $${\displaystyle [\![e]\!]_{s}}$$ denotes the value of expression e evaluated in store s, and ℎ is otherwise undefined.

The binary operator ∗ ($$\ast$$)   
(pronounced star or separating conjunction) asserts that the heap can be split into two disjoint parts where its two arguments hold, respectively.

s,ℎ ⊨ P ∗ Q when there exist 
$${\displaystyle h_{1},h_{2}}$$ such that    
$${\displaystyle h_{1}\,\bot \,h_{2}}$$ and 
$${\displaystyle h=h_{1}\cup h_{2}}$$ and 
$${\displaystyle s,h_{1}\models P}$$ and 
$${\displaystyle s,h_{2}\models Q}$$

The binary operator −∗     
(pronounced magic wand or separating implication) asserts that extending the heap with a disjoint part that satisfies its first argument results in a heap that satisfies its second argument.

$${\displaystyle s,h\models P-\!\!\ast \,Q}$$    
when for every heap 
$${\displaystyle h'\,\bot \,h}$$ 
such that 
$${\displaystyle s,h'\models P}$$, also 
$${\displaystyle s,h\cup h'\models Q}$$ holds.
