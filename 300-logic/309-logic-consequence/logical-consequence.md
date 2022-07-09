# Logical consequence

https://en.wikipedia.org/wiki/Logical_consequence

**Logical consequence**, also **entailment**, 
is a fundamental concept in logic, 
which describes the **consequence relation**, 
which is the relation 
between statements that hold true 
when one statement logically follows 
from one or more statements.

A *valid logical argument* is one in which the conclusion is entailed by the premises, because the conclusion is the consequence of the premises.

The philosophical analysis of logical consequence involves the questions:
- In what sense does a conclusion follow from its premises?
- What does it mean for a conclusion to be a consequence of premises?

All of philosophical logic is meant to provide accounts of the nature of logical consequence and the nature of logical truth.

Logical consequence is *necessary* and *formal*, by way of examples that explain with *formal proof* and *models of interpretation*.

A sentence (called conclusion) is said to be a logical consequence of a set of sentences (called premises), within a given formal language, iff, using only logic (i.e. without the regard to any semantic baggage or personal interpretations of the sentences involved), the conclusion being true necessarily and syntactically follows from the premises being true.

Logicians make precise accounts of logical consequence regarding a given language L, either by constructing a deductive system for L or by formal intended semantics for the language L.

The Polish logician Alfred Tarski identified 3 features of an adequate characterization of entailment:
1. The logical consequence relation relies on the logical form of the sentences
2. The relation is a priori, i.e. it can be determined with or without regard to empirical evidence
3. The logical consequence relation has a modal component

## Formal accounts

The most widely prevailing view on how best to account for logical consequence is to appeal to formality. This is to say that whether statements follow from one another logically depends on the structure itself, i.e. on the logical form of the statements, disregarding their contents.

Syntactic accounts of logical consequence rely on schemes using inference rules. For instance, we can express the logical form of a valid argument as:

All X are Y    
All Y are Z    
Thus, all X are Z

This argument is *formally valid* because every instance of arguments, constructed using this scheme, is valid. This is in contrast to an argument like:

Fred is Mike's brother's son.     (1)
Therefore Fred is Mike's nephew.  (2)

because this argument depends on the contents of the sentences involved (i.e. on the meaning of the words "brother", "son", "nephew", etc.).

The statement (2) is a *material consequence* of the sentence (1), not a *formal consequence*.

A formal consequence must be true in all cases; however, this is an incomplete definition of formal consequence, since even the argument "P is Q's brother's son, therefore P is Q's nephew" is valid in all cases, but it still isn't a formal argument.



---

If an argument with premises `ϕ₁, …, ϕₙ` and conclusion `ψ` is valid, then `ψ` is a logical consequence of `ϕ₁, …, ϕₙ`, which, in sequent calculus, is denoted by `ϕ₁, …, ϕₙ |- ψ`, where the commas (on the left) represent conjunctions.


We can also define logical consequence directly in terms of truth-value assignments: 
$$\psi$$ is a logical consequence of $$\phi_1,…,\phi_n$$ 
iff every truth-value assignment 
that makes $$\phi_1,…,\phi_n$$ true 
also makes $$\psi$$ true.




If you know that Q follows logically from P, then no information about the possible interpretations of P or Q will affect that knowledge. Our knowledge that Q is a logical consequence of P cannot be influenced by empirical knowledge. Deductively valid arguments can be known to be so without recourse to experience, so *they must be knowable a priori*. However, formality alone does not guarantee that logical consequence is not influenced by empirical knowledge. So the a priori property of logical consequence is considered to be independent of formality.

The two prevailing techniques for providing accounts of logical consequence involve expressing the concept in terms of proofs and via models. The study of the syntactic consequence of a logic is called its *proof theory* whereas the study of its semantic consequence is called its *model theory*.


A formula A is a **syntactic consequence** within some formal system Ψ of a set Γ of formulas if there is a formal proof in Ψ of A from the set Γ, `Γ ⊢ᵩ A`. Syntactic consequence does not depend on any interpretation of the formal system.

A formula A is a semantic consequence within some formal system Ψ of a set of statements Γ, `Γ ⊨ᵩ A`, iff there is no model in which all members of Γ are true and A is false. In other words, the set of the interpretations that make all members of Γ true is a subset of the set of the interpretations that make A true.
