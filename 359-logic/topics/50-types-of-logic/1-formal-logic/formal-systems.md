# Formal systems

https://perry.alexander.name/blog/coq/2015/12/25/Formal-Systems.html

Our task is to define formal systems that describe systems and reason about those systems to determine correctness. One application of this is verifying language properties, but that represents a tiny fraction of the kinds of verification we can do. We would like a predictive mathematics for computer systems systems.

Formal System system consists of three parts:
1. Formal language
  - alphabet
  - grammar
2. Inference rules (inference system)
  - set of axioms
  - set of inference rules
3. Semantics

A **formal language** is an alphabet describing a set of atomic tokens, along with a formal grammar that defines proper ordering of those tokens and with that determines which formulas are wffs.

Consider a language `L` defining strings of letters:
- alphabet: `{a,b,c}`
- grammar: `L := empty | aL | bbL | cccL`
- examples of strings in L:
  - ϵ (empty string)
  - a, aa, aaa, aaaa ("a" can occur any number of times)
  - bba, bb, bbbb, bbabbaaa, bbcccbb ("b" must occur in pairs)
  - ccca, cccbbbbcccc ("c" must occur in triples)
- examples of strings not in L: bbb, cbc, acca


An **inference system** is a collection of inference rules and axioms. Inference rules define immediate consquences of known facts.

Inference rules can be presented in at least these equivalent forms:

* sequent calculus style (entailment): `A₀, A₁, A₂, …, Aₙ |- C`

* antecedent/consequent rule style (above/below the inference line)

```js
A₀, A₁, A₂, …, Aₙ
----------------- [Inference_ID]
        C
```

The `Aₖ` are called antecedents and `C` is a consequent. The rule states that if all `Aₖ` are known to be true, then `C` is an immediate consequence.

Consider this inference rule example: `∀x⋅P(x) |- P(a)`. It states that says if we know `P` is true for all `x`, then it is true for a specific value `a` (`x` instantiated as `a`).

An inference rule with no antecedents is an *assumption* (or an axiom) and it is true by definition (introduction), since `a -> a` is a tautology (any formula implies itself). A set of well-known, frequently occuring, but ultimately arbitrary, rules may be called *axioms*.

A proof derivation applies inference rules starting from a set of assumptions, attempting to derive a particular (preset) conclusion.

Finally, the third component, **semantics**, links symbols to their meainings.


A **model** is simply a collection of definitions in a formal system. Using the formal system, one can reason about properties of those definitions - what they imply, how they are related, what properties they exhibit.

There are many logics for many purposes, but most are rooted in propositional and predicate logic.

## Propositional Logic

Propositional logic is the arithmetic of logical systems and where we will start.

```
P := A,B,C,…
   | P ∧ P
   | P ∨ P
   | ¬P
   | P -> P
   | P <=> P
```

*Logical variabes* repr statements that are joined using logical conectives.

We have a collection of rules that describe how these operators work. Specifically, rules that introduce and eliminate operations.

## Predicate Calculus

Predicate calculus adds variables and quantifiers to propositional logic.

```
Q := P
   | ∀x : T ⋅ P(x)
   | ∃x : T ⋅ P(x)
```

where `x` is a variable and `T` is the type of that variable. Just like propositional logic, we have introduction and elimination rules for predicate operations.
