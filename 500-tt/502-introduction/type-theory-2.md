# Overview

- Syntax
- Semantics
- Types
- Type Safety
- Church, Curry, Howard, Hoare

# Type Theory

https://en.wikipedia.org/wiki/Type_theory

> The fundamental idea behind type theory is to gain the ability to distinguish between different types of objects.

In mathematics, logic, and computer science, a type system is a formal system in which every term has a "type" which defines its meaning and the operations that may be performed on it. Type theory is the academic study of type systems.

Some type theories serve as alternatives to set theory as a foundation of mathematics. Two well-known such theories are Alonzo Church's typed λ-calculus and Per Martin-Löf's intuitionistic type theory.

Type theory was created to avoid paradoxes in previous foundations such as naive set theory, formal logics and rewrite systems.

Type theory is closely related to, and in some cases overlaps with, computational type systems, which are a programming language feature used to reduce bugs.


## Type theory

Type theory encapsulates each mathematical theory into a universe. For example, one universe may satisfy the law of excluded middle, but another may not. Type theory can describe them both.

Type theory models objects and relations between them with types.

A type can be, e.g. a theorem, and proving that theorem boils down to constructing a term of the theorem type.

Construction in type theory is not synonym of constructivism in Brouwer's intuitionism, which is what is usually meant by constructive mathematics. Suppose that we have proved that assuming 10 is the biggest number leads to a contradiction. In other words, the claim that there is no number bigger than 10 is false. Then, **Brouwer's intuitionism** asserts that this proof cannot construct a number bigger than 10, and the proof is thus useless. But we can add the law of excluded middle to type theory as a function which (type-theoretically) constructs a number bigger than 10 from the proof by contradiction. Conversely though, type theory without excluded middle will not enable that construction of x from a proof by contradiction.

Proofs in type theory are sequences of instructions, which can be implemented and checked computationally, hence guaranteeing their validity.


## Homotopy type theory

Homotopy type theory studies a type theory universe with a single axiom (as opposed to the 8 axioms of ZF theory) called the **univalence axiom**. Loosely, it asserts that equivalent types are identical.

http://www.science4all.org/article/type-theory/

Type Theory and Functional Programming - Simon Thompson 1999


## Syntax

The syntax tells us what sentences are legal in the language. The syntax comprises a set of terms, which are the basic building blocks of a language. Syntax is usually stated in BNF, e.g.:

$$
t ::= \\
\quad  true \\
\quad  false \\
\quad  \mathrm{if}\ t_1\ \mathrm{then}\ t_2\ \mathrm{else}\ t_3 \\
\quad  0 \\
\quad  \mathrm{succ} \ t \\
\quad  \mathrm{pred} \ t \\
\quad  \mathrm{iszero} \ t \\
$$

Wherever the symbol $$t$$ appears (with or without the subscript, which helps differentiate between distinct terms) we man substitute any term. The set of all terms is commonly denoted by $$\tau$$.

The $$if$$ on its own is not a term, but a token (here, it is a keyword token). The term is the if-expression: 

$$\mathrm{if}\ t_1\ \mathrm{then}\ t_2\ \mathrm{else}\ t_3$$

Terms are expressions that can be evaluated, and the final result of an evaluation in a well-formed environment should be a value.

Values are a subset of terms. Above, the values are: $$true$$, $$false$$, $$0$$, together with the values that can be created by repeated application of $$succ$$ to $$0$$ e.g. $$succ\ succ\ succ\ 0$$ and similar.


## Semantics

Semantic assigns meaning to the terms in the language. There are different ways of defining what a program means - the two most used are operational and denotational semantics.

In **denotational semantics** the meaning of a term is taken to be some mathematical object (e.g. number, function, etc.) in some preexisting semantic domain, and an interpretation function that maps terms in the language to their equivalents in the target domain (so we are specifying what each term denotes in the domain).

**Operational semantics** is the most common, and it defines the meaning of a program by giving set of rules for how the terms may be evaluated by an abstract machine. The meaning of a term $$t$$ is the final state, i.e. the value, that the machine reaches when started with $$t$$ as its initial state.

Some authors refer to "small-step" and "big-step" operational semantics; these refer to how big a leap the abstract machine makes with each rule that it applies.

In **small-step semantics** terms are rewritten bit-by-bit, one small step at a time, until eventually they become values.

In small-step semantics notation may look like this: $$t_1 \rightarrow t_2$$ (read as $$t_1$$ evaluates to $$t_2$$). This is known as a **judgement**. The arrow, $$\rightarrow$$, represents a single evaluation step.

$$t_1 \rightarrow^{*} t_2$$ means that $$t_1$$ eventually evaluates to $$t_2$$ by repeated application of a single-step evaluation.

In **big-step semantics**, or **natural semantics**, we can go from a term to its final value in one step.

Big-step semantics uses a different arrow, $$t \Downarrow v$$, to mean that the term $$t$$ evaluates to the final value $$v$$. If we had both small-step and big step semantics for the same language, then $$t \rightarrow^{*} v$$ and $$t \Downarrow v$$ would both denote the same thing.

By convention, **evaluation rules** are given in capital letters, prefixed with "E-", e.g.

$$\mathrm{if}\ true\ \mathrm{then}\ t_2\ \mathrm{else}\ t_3$$ (E-IFTRUE)

Evaluation rules are commonly specified in the style used for inference rules, e.g. for E-IF:

$$
\displaystyle
\frac
{t_1\ \rightarrow t'_{1}}
{
  \mathrm{if}\ t_1\ \mathrm{then}\ t_2\ \mathrm{else}\ t_3
  \rightarrow 
  \mathrm{if}\ t'_1\ \mathrm{then}\ t_2\ \mathrm{else}\ t_3
}
$$

means, in general, that given the things above the line, then we can conclude the thing below the it. Speciafically, here, it means that given that $$t_1$$ evaluates to $$t'_{1}$$ then $$(\mathrm{if}\ t_1\ \mathrm{then}\ t_2\ \mathrm{else}\ t_3)$$ evaluates to $$(\mathrm{if}\ t'_1\ \mathrm{then}\ t_2\ \mathrm{else}\ t_3)$$.


## Types

> "_A type system is a tractable syntactic method for proving the absence of certain program behaviours by classifying phrases according to the kinds of values they compute_" - B.Pierce in "Types and Programming Languages"

Colon indicates that a given term has a particular type, e.g. $$t:T$$.

A term is **well-typed**, or **typable**, if there is some $$T$$ such that $$t:T$$.

Typing rules are specified similarly to the evaluation rules, but prefixed with a "T-" instead, as in (T-IF):

$$
\displaystyle
\frac{
t_1:\mathrm{Bool} \ \ t_2:\mathrm{T}\ \ t_3:\mathrm{T}
}{
\mathrm{if}\ t_1 \ \mathrm{then}\ t_2\ \mathrm{else}\ t_3:\mathrm{T}
}
$$

maning: given term $$t_1$$ with Bool type, terms $$t_2$$ and $$t_3$$ with $$T$$ type, then the term $$(\mathrm{if}\ t_1 \ \mathrm{then}\ t_2\ \mathrm{else}\ t_3)$$ has $$T$$ type.


In typed lambda calculus, we can annotate the type of bound variables in abstractions, e.g. $$\lambda x:\mathrm{T_1} . t_2$$

The type of a lambda abstraction is denoted by $$\mathrm{T_1} \rightarrow\ \mathrm{T_2}$$, meaning that it takes an argument of type $$\mathrm{T_1}$$ returning a result of type $$\mathrm{T_2}$$.


The turnstile symbol, $$\vdash$$, often appears in inference rules, e.g. $$P \vdash Q$$, meaning that, given P, we can infer (prove, conclude) Q.

For example, $$x:\mathrm{T_1} \vdash t_2 : \mathrm{T_2}$$, denotes that, given that $$x$$ has type $$T_1$$, it follows that $$t_2$$ has type $$T_2$$.


**Typing context** or **typing environment**, denoted by $$\Gamma$$, keeps the track of variable bindings for the types of the free variables in a function. This is similar to binding environment that tracks variable-names-to-values mappings (symbol table), only here it tracks mappings of variable names to types.

The frequently encountered three place relation has the form: $$\Gamma \vdash t : \mathrm{T}$$, mmeaning that, from the typing context $$\Gamma$$ it follows that term $$t$$ has type $$T$$.

A comma extends the typing context by adding a new binding on the right, e.g. $$\Gamma, x:\mathrm{T}$$.

For example, defining the type of a lambda abstraction:

$$
\displaystyle \frac{\Gamma, x : \mathrm{T_1} \vdash t_2 : \mathrm{T_2}}{\Gamma \vdash \lambda x:\mathrm{T_1}.t_2\ : \mathrm{T_1} \rightarrow \mathrm{T_2}}
$$

means that, 
_if_ (the part above the line), 
from a typing context with $$x$$ bound to $$T_1$$ it follows that $$t_2$$ has type $$T_2$$, 
_then_ (the part below the line) 
in the same typing context, the expression $$\lambda x:\mathrm{T_1}.t_2$$ has the type $$\mathrm{T_1} \rightarrow \mathrm{T_2}$$.


## Type Safety

A type system is safe if well-typed terms never put us in position that we still don't have a final value, but we cannot progress further. 

Following a chain of inference rules, we should never get stuck in a place 
where we don't have a final value, but neither do we have any rules we can match to make further progress.

To show that well-typed terms don't get stuck, it suffices to prove progress and preservation theorems.

**Progress**: a well-typed term is not stuck - either it is a value or it can take a step according to the evaluation rules.

**Preservation**: if a well-typed term takes a step of evaluation, then the resulting term is also well typed.


## Church, Curry, Howard, Hoare

- In a **Curry-style** language definition, semantics comes before typing; the terms are defined first, then a semantics is given, showing how the terms behave, and finally a type system is layered on top, which "rejects some terms whose behaviours we don't like". 
- In a **Church-style** language definition typing comes before semantics, so we never have to ask what the behaviour of an ill-typed term is.
- **The Curry-Howard correspondence** is a mapping between type theory and logic in which propositions in logic are treated like types in a type system - "propositions as types". The correspondence can be used to transfer developments between the fields, e.g. linear logic and linear type sytems.
- **Hoare logic**, with Hoare triples, refers to statements of the kind $$\{P\}C\{Q\}$$, maining that if the pre-condition $$P$$ is true, then when $$C$$ is executed (and if it terminates), the post-condition $$Q$$ will be true.




---

https://en.wikipedia.org/wiki/Programming_language_theory
https://en.wikipedia.org/wiki/Type_theory
https://en.wikipedia.org/wiki/Simply_typed_lambda_calculus
https://en.wikipedia.org/wiki/Hindley%E2%80%93Milner_type_system

https://blog.acolyer.org/2018/01/26/a-practitioners-guide-to-reading-programming-languages-papers/

https://hmemcpy.com/2020/01/functional-programming-in-haskell-stepik-course-notes-module-2/

https://cs.stackexchange.com/questions/92701/understanding-the-reasoning-behind-these-typing-rules/92708

https://medium.com/better-programming/understanding-typescripts-type-system-a3cdec8e95ae

https://www.hedonisticlearning.com/posts/understanding-typing-judgments.html

https://blog.acolyer.org/2018/01/26/a-practitioners-guide-to-reading-programming-languages-papers/
