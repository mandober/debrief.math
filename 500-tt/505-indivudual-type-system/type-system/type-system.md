# Type System

`Type Systems`, 1996, Luca Cardelli
http://lucacardelli.name/papers/typesystems.pdf

## Summary (chapter 1 and 2)

- type soundness: absence of execution errors.
- typing judgments: formal assertions about the typing of programs.
- typing rules: implications between judgments.
- typing derivations: deductions based on typing rules.
- variable: ranges over values of specific type.
- type of variable: upper bound of such a range.
- typed languages: langs where variables can be given (nontrivial) types.
- untyped languages: langs that don't restrict the range of variables.
- type system: keeps track of types of vars and expressions in a program.
- well-behaved programs: in compliance with the type system
- explicitly typed: if types are part of the syntax
- implicitly typed: if types are not part of the syntax
- execution errors: ill program states during execution
- trapped errors: cause the computation to stop immediately
- untrapped errors: go unnoticed and later cause arbitrary behavior
- type safety: untrapped errors are not caused to occur
- static checks: checks during compiletime
- dynamic checks: checks during runtime
- forbidden errors: untrapped errors and a subset of trapped errors.
- well-behaved program: does not cause forbidden error to occur.
- well-behaved program is safe
- ill-behaved program: may cause forbidden error to occur.
- strongly checked lang: all legal programs are well-behaved.
- safety guarantee: no untrapped errors occur, only trapped.
- statically checked langs: perform compile time checks.
- dynamically checked langs: perform runtime checks.
- typechecking: the process of checking the types.
- typechecker: algorithm that performs type checking.
- well-typed program: passes the typechecker.
- ill-typed program: does not passes the typechecker.
- well-behaved program is safe
- safety is more primitive property than well-behavedness
- type system goal: ensure lang safety by always ruling out untrapped errors.
- weakly-typed langs: do not ensure type safety
- decidably verifiable TS: typechecking algorithm ensures programs well-behave.
- TS transparency: whether a program will typecheck can be predicted.
- enforceable TS: type declarations are statically checked.
- well-typedness: approximation of good behavior, including safety.
- formal ts: mathematical characterizations of the informal type systems.
- type soundness: well-typed programs are well-behaved.
- type soundness: well-behaved programs do not go wrong.
- types: express static knowledge about programs
- terms and expressions: express algorithmic behavior.
- scoping rules: associate occurrence of identifier with its binding location.
- static scoping: binding locations of identifiers determined before runtime.
- lexical scoping: binding locations determined from the source code
- dynamic scoping: lack of static scoping.
- typing rules: describe typing relations between terms nad types, e : τ.
- subtyping relation: between types, τ <: σ.
- type equivalence relation: between types, τ = σ.
- set of typing rules of a language forms the type system.
- static typing environment (context): records the types of free variables
- typing relation, Γ ⊢ e : τ, is associated with a static typing env.
- soundness theorem: types of a term and its result should be the same.
- type equality: determines if two type expressions are equivalent.
- nominal type systems: have by name type equality
- structural type systems: have structural type equality
- judgements: formal assertions about a type system.
- typing judgment: Γ ⊢ e : τ
- context judgment: environment is well-formed, Γ ⊢ ∙
- judgments are valid or invalid.
- validity formalizes the notion of well-typed programs.
- validity of judgements is based on typing rules.
- typing rule: asserts validity of judgments on the basis of valid judgments.
- typing rule: set of premise judgments with a single conclusion judgment.
- typing derivation: tree of typing judgments.
- valid judgment: obtained as the root of a derivation in a type system.
- valid judgment: obtained by correctly applying the type rules.
- well-typedness of terms: if type `τ` exists so `Γ ⊢ M : τ` is valid judgment.
- type inference: determining the type of an expression.
- typing error: no applicable rules for a certain expression.
- typeable exp: exp that can be assigned a type.
- typeability: property of being able to receive a type, of being well-typed.
- type soundness theorem: asserts well-typed programs execute without errors.




## 1. Introduction

>The fundamental purpose of a type system is to prevent the occurrence of run-time errors.

The absence of execution errors is a nontrivial property, and when such a property holds for all program runs that can be expressed within a programming language, we say that the language is type sound (it has the property of *type soundness*), with the classification, description, and study of type systems emerging as formal disciplines.

In this introductory section we present an informal nomenclature for typing, execution errors and related concepts. We discuss the expected properties and benefits of type systems, and we review how type systems can be formalized.

- Type soundness: absence of execution errors.
- Typing judgments: formal assertions about the typing of programs.
- Typing rules: implications between judgments.
- Typing derivations: deductions based on typing rules.

We present the type rules for a simple but complete imperative language. We discuss the type rules for some advanced type constructions: polymorphism and data abstraction; explain how type systems can be extended with a notion of subtyping; discuss the type inference problem, and we present type inference algorithms for the main type systems that we have considered.

### Typed and untyped languages

- variable: ranges over values of specific type.
- type of variable: upper bound of such a range.
- typed languages: langs where variables can be given (nontrivial) types.
- untyped languages: langs that don't restrict the range of variables.
- type system: keeps track of types of vars and expressions in a program.
- well-behaved programs: in compliance with the type system
- explicitly typed: if types are part of the syntax
- implicitly typed: if types are not part of the syntax


A program **variable** can assume a range of values during the execution of a program. An upper bound of such a range is called a **type of variable**. For example, a variable `x` of type Boolean is supposed to assume only boolean values during every run of a program. If `x` has type Boolean, then the boolean expression `not x` has a sensible meaning in every run of the program. Languages where variables can be given (nontrivial) types are called **typed languages**.

Languages that do not restrict the range of variables are called **untyped languages**: they do not have types or, equivalently, have a single universal type that contains all values. 

In these languages, operations may be applied to inappropriate arguments: the result may be a fixed arbitrary value, a fault, an exception, or an unspecified effect. The pure λ-calculus is an extreme case of an untyped language where no fault ever occurs: the only operation is function application and, since all values are functions that operation never fails.

A **type system** is that component of a typed language that keeps track of the types of variables and, in general, of the types of all expressions in a program.

Type systems are used to determine whether programs are **well-behaved**. Only program sources that comply with a type system should be considered real programs of a typed language; the other sources should be discarded before they are run.

A language is typed by virtue of the existence of a type system for it, whether or not types actually appear in the syntax of programs.

Typed languages are **explicitly typed** if types are part of the syntax, and **implicitly typed** otherwise.

Almost all imperative languages are explicitly typed, but languages such as ML and, especially Haskell, support writing programs where type annotations are completely omitted, having the type system automatically infer all the types.

### Execution errors and safety

- execution errors: ill program states during execution
- trapped errors: cause the computation to stop immediately
- untrapped errors: go unnoticed and later cause arbitrary behavior


It is useful to distinguish between two kinds of execution errors:
- **trapped errors**: cause the computation to stop immediately
- **untrapped errors**: go unnoticed and later cause arbitrary behavior

Trapped errors include division by zero, accessing an illegal address. Untrapped errors include accessing data past the end of an array in absence of run time bounds checks, jumping to the wrong address.

**Type safety**: a program fragment is safe if it does not cause untrapped errors to occur. Langs where all program fragments are safe enjoy type safety. Therefore, safe languages rule out the most insidious form of execution errors: the ones that may go unnoticed.

Typed languages may enforce safety by statically rejecting all programs that are potentially unsafe. They may use a mixture of **runtime and static checks**. Untyped languages may enforce safety by performing runtime checks.

Although safety is a crucial property of programs, it is rare for a typed language to be concerned exclusively with the elimination of untrapped errors. Typed languages usually aim to rule out also large classes of trapped errors, along with the untrapped ones.

### Execution errors and well-behaved programs

- forbidden errors: untrapped errors and a subset of trapped errors.
- well-behaved program: does not cause forbidden error to occur.
- well-behaved program is safe
- ill-behaved program: may cause forbidden error to occur.
- strongly checked lang: all legal programs are well-behaved.
- safety guarantee: no untrapped errors occur, only trapped.
- statically checked langs: perform compile time checks.
- dynamically checked langs: perform runtime checks.
- typechecking: the process of checking the types.
- typechecker: algorithm that performs type checking.
- well-typed program: passes the typechecker.
- ill-typed program: does not passes the typechecker.


For any given language, we may designate a subset of the possible execution errors as **forbidden errors**, which should include all of the untrapped errors, along with a subset of trapped errors.

A program fragment is said to be **well-behaved**, as opposed to be **ill-behaved**, if it does not cause any forbidden error to occur.

In particular, a *well-behaved fragment is safe*. A language where all (legal) programs are well-behaved is called **strongly checked**.

*Properties of a strongly checked languages* with respect to a type system:
- no untrapped errors occur (safety guarantee)
- none of the trapped errors designated as forbidden errors occur
- other trapped errors may occur, and it is programmer's responsibility to avoid them.


Typed languages can enforce good behavior (including safety) by performing static or compile-time checks to prevent unsafe and ill-behaved programs from ever running. These languages are **statically checked**; the checking process is called *typechecking*, and the algorithm that performs this checking is called the *typechecker*.

A program that passes the typechecker is said to be **well-typed**; otherwise, it is **ill-typed**, which means that it is actually ill-behaved, or simply that it could not be guaranteed to be well-behaved.

Untyped languages can enforce good behavior (including safety) by performing sufficiently detailed runtime checks to rule out all forbidden errors. The checking process in these languages is called **dynamic checking**; LISP is an example of such a language. These languages are strongly checked even though they have neither static type checking, nor a type system.

Even statically checked languages usually need to perform runtime tests to achieve safety. For example, array bounds must, in general, be tested dynamically. The fact that a language is statically checked does not necessarily mean that execution can proceed entirely carelessly.

### Lack of safety

- well-behaved program is safe
- safety is more primitive property than well-behavedness
- type system goal: ensure lang safety by always ruling out untrapped errors.
- weakly-typed langs: do not ensure type safety


By these definitions, a well-behaved program is safe. Safety is a more primitive, and perhaps more important, property than being well-behaved.

>The primary goal of a type system is to ensure language safety by ruling out all untrapped errors in all program runs.

However, most type systems are designed to ensure the more general good behavior property, and implicitly, safety. Thus, 
>the declared goal of a type system is usually to ensure that program are well-behaved by distinguishing between well-typed and ill-typed programs.

In reality, certain statically checked languages do not ensure safety. That is, their set of forbidden errors does not include all untrapped errors. These languages are called weakly-checked or **weakly-typed**, meaning that some unsafe operations are detected statically and some are not detected at all. Languages in this class vary widely in the extent of their weakness. 

Some PLs (Modula-3, Rust) supports unsafe features, but only in modules that are explicitly marked as unsafe, and prevents safe modules from importing unsafe interfaces.

Most untyped languages are, by necessity, completely safe (LISP). Otherwise, programming would be too frustrating in the absence of both compile time and runtime checks to protect against corruption.

Assembly languages belong to the unpleasant category of untyped unsafe languages.

PL     | typed   | untyped
safe   | Haskell | LISP
unsafe | C       | Assembly

Lack of safety in a language design is motivated by performance considerations (when not introduced by mistake). The runtime checks needed to achieve safety are sometimes considered too expensive.

Safety, however, is cost effective according to different measures. Safety produces *fail-stop behavior* in case of execution errors, reducing debugging time. Moreover, safety guarantees the integrity of run time structures, and therefore enables *garbage collection*. In turn, garbage collection considerably reduces code size and code development time, at the price of some performance.

Thus, the choice between a safe and unsafe language may be ultimately related to a tradeoff between development time and execution time. Although undeniable, the advantages of safety have not yet caused a widespread adoption of safe languages. Instead of regarding lack of safety as bad, many developers consider almost-safety as good enough, trading correctness for performance, then live with the regularly-occurring disasters that result in huge monetary (or worse) losses.

### Properties of type systems

- decidably verifiable TS: typechecking algorithm ensures programs well-behave.
- TS transparency: whether a program will typecheck can be predicted.
- enforceable TS: type declarations are statically checked.


Types, as normally intended in programming languages, have pragmatic characteristics that distinguish them from other kinds of program annotations.

In general, annotations about the behavior of programs can range from informal comments to formal specifications subject to theorem proving. 

Types sit in the middle of this spectrum - they are more precise than comments, and more easily mechanizable than formal specifications.

Basic properties expected of any type system:

* Type systems should be *decidably verifiable*: there should be an a typechecking algorithm that can ensure that a program is well behaved. The purpose of a type system is not simply to state programmer intentions, but to actively capture execution errors before they happen. (Formal specifications do not have these properties).

* Type systems should be *transparent*: a programmer should be able to predict easily whether a program will typecheck. If it fails to typecheck, the reason for the failure should be self-evident. (Automatic theorem provers do not have this property).

* Type systems should be *enforceable*: type declarations should be statically checked as much as possible, and otherwise dynamically checked. The consistency between type declarations and their associated programs should be routinely verified. (Comments and conventions are not enforceable).

### Type system formalization

- well-typedness: approximation of good behavior, including safety.
- formal ts: mathematical characterizations of the informal type systems.
- type soundness: well-typed programs are well-behaved.
- type soundness: well-behaved programs do not go wrong.
- types: express static knowledge about programs
- terms and expressions: express algorithmic behavior.
- scoping rules: associate occurrence of identifier with its binding location.
- static scoping: binding locations of identifiers determined before runtime.
- lexical scoping: binding locations determined from the source code
- dynamic scoping: lack of static scoping.
- typing rules: describe typing relations between terms nad types, e : τ.
- subtyping relation: between types, τ <: σ.
- type equivalence relation: between types, τ = σ.
- set of typing rules of a language forms the type system.
- static typing environment (context): records the types of free variables
- typing relation, Γ ⊢ e : τ, is associated with a static typing env.
- soundness theorem: types of a term and its result should be the same.



Type systems are used to define the notion of **well-typedness**, which is itself a static approximation of good behavior (including safety).

But how can we guarantee that well-typed programs are really well-behaved? That is, how can we be sure that the typing rules do not accidentally allow ill-behaved programs to slip through?

*Formal type systems* are the mathematical characterizations of the informal type systems that are described in programming language manuals.

Once a type system is formalized, we can attempt to prove type soundness.
>*Type soundness* states that well-typed programs are well-behaved.
If type soundness holds, we say the type system is sound. (Good behavior of all programs of a typed language and soundness of its type system mean the same).

In order to formalize a type system and prove a soundness theorem we must, in essence, formalize the entire language.

The first step in formalizing a PL is to describe its *syntax*. For most PLs this reduces to describing the syntax of types and terms. **Types** express static knowledge about programs, whereas **terms** (statements, expressions, and other program fragments) express the algorithmic behavior.

The next step is to define the **scoping rules** which associate an occurrence of an identifier to its binding location.

Typed languages invariably have **static scoping**, in the sense that the binding locations of identifiers must be determined before runtime.

Binding locations can often be determined purely from the source code, without any further analysis; static scoping is then called **lexical scoping**.

The lack of static scoping is called **dynamic scoping**.

Scoping can be formally specified by defining the set of *free variables* of a program fragment (which involves specifying how variables are bound by declarations). The associated notion of *substitution* of types or terms for free variables can then be defined.

Next step is to define the **typing rules** of the language, which describe a **typing relation** of the form `e : τ` between a term `e` and type `τ`.

Some languages require a **subtyping relation** of the form `τ <: σ` between types.

Some PLs require a **type equivalence relation** of the form `τ = σ`.


The *collection of typing rules* of a language forms its *type system*. 
A language that has a type system is called a typed language.

The typing rules require another fundamental ingredient that is not reflected in the syntax of the language, that of **static typing environment** or context. **Context** is used to record the types of free variables during the processing of program fragments. The *typing rules* are always formulated with respect to a specific static type environment for the fragment being typechecked.

The **typing relation** `M : A` is associated with a static typing environment `Γ` that contains information about the free variables of `M`, while, possibly another context, records the free type variables in the type `A`.

The relation is written `Γ ⊢ M : A`, meaning that a term `M` has type `A` in the type environment `Γ`.


The final step in formalizing a language is to define its *semantics* as a relation "has-value" between terms and a collection of results. The form of this relation depends strongly on the style of semantics that is adopted.

In any case, the semantics and the type system are interconnected: the types of a term and of its result should be the same (or appropriately related); this is the essence of the **soundness theorem**.

We discuss type systems independently of semantics, but it should be
understood that a type system must be related to a semantics, and that soundness should hold for that semantics.

### Type equivalence

- type equality: determines if two type expressions are equivalent.
- nominal type systems: have by name type equality
- structural type systems: have structural type equality


An important issue when defining a programming language is that of **type equality**, which determines if two type expressions are equivalent.

The notion of type equivalence splits type systems into
- *nominal type systems* with nominal typing
- *structural type systems* with structural typing

We assume structural equivalence in what follows. If by-name equivalence is desired for a language, one should attempt to write the appropriate type rules: the arbitrary nature of by-name equivalence then becomes apparent. Moreover, satisfactory emulation of nominal typing can be obtained within structural equivalence, using the so-called "branding" mechanism.

## 2. Language of type systems

A type system specifies the type rules of a programming language independently of particular typechecking algorithms. This is analogous to describing its syntax by a formal grammar, independently of particular parsing algorithms.

It is both convenient and useful to *decouple type systems from typechecking algorithms*: type systems belong to language definitions, while algorithms belong to compilers. It is easier to explain the typing aspects of a language by a type system, rather than by the algorithm used by a given compiler. Moreover, different compilers may use different typechecking algorithms for the same type system. As a minor problem, it is technically possible to define type systems that admit only unfeasible typechecking algorithms, or no algorithms at all. The usual intent, however, is to allow for efficient typechecking algorithms.

### Judgements

- judgements: formal assertions about a type system.
- typing judgment: Γ ⊢ e : τ
- context judgment: environment is well-formed, Γ ⊢ ∙
- judgments are valid or invalid.
- validity formalizes the notion of well-typed programs.
- validity of judgements is based on typing rules.



The formal description of a type system starts with the description of a set of formal assertions about the type system called **judgements**.

A typical judgment has the form `Γ ⊢ J`, where `J` is a judgement whose free vars are declared in the context Γ. We say that Γ "entails" J.

`Γ` is a static typing environment, realized, e.g as an ordered list of distinct vars and their types: `x₁ : τ₁, …, xₙ : τ`ₙ. The empty env is denoted by `∅`, and the set of vars `x₁ … xₙ` declared in Γ is indicated by `dom(Γ)`.

**Typing judgment**, `Γ ⊢ e : τ`, asserts that an exp `e` has a type `τ` with respect to a static typing environment for the free variables of `e`.

Examples:
- `Γ ⊢ true : Bool`             true has type Bool
- `Γ, x : Nat ⊢ x + 1 : Nat`    x+1 is Nat, if x is Nat


Another judgment asserts that an **environment is well-formed**, i.e. it was properly constructed: `Γ ⊢ ∙`.

A judgment can be regarded as valid or invalid. **Validity** formalizes the notion of well-typed programs. The distinction between valid and invalid judgements could be expressed in a number of ways; however, a highly stylized way of presenting the set of valid judgments has emerged. This presentation style, based on typing rules, facilitates stating and proving technical lemmas and theorems about type systems. Moreover, typing rules are highly modular: rules for different constructs can be written separately (in contrast to a monolithic typechecking algorithm).

### Typing rules

- typing rule: asserts validity of judgments on the basis of valid judgments.
- typing rule: set of premise judgments with a single conclusion judgment.


**Typing rules** assert the validity of certain judgments on the basis of other judgments that are already known to be valid. The process gets off the ground by some intrinsically valid judgment, usually by stating that the empty environment is well-formed, or by the typing rule "Var" which acts liek an axiom.

A typing rule consists of a set of *premise judgments* above the line, with a single *conclusion judgment* below it. When all the premises are satisfied, the conclusion must hold. Premises form a set so it may be empty. Each rule is assigned a name.

```
                    Γ ⊢ n : nat    Γ ⊢ m : nat
------------ Var   ---------------------------- Add
Γ ⊢ n : nat               Γ ⊢ n + m : nat
```

A fundamental rule states the empty env is well-formed, with no assumptions:

```
------ Env-∅
Γ ⊢ ∙
```

A collection of type rules is called a *(formal) type system*. Technically, type systems fit into the general framework of *formal proof systems*: the set of rules used to carry out step-by-step deductions. The deductions carried out in type systems concern the typing of programs.

### Typing derivations

- typing derivation: tree of typing judgments.
- valid judgment: obtained as the root of a derivation in a type system.
- valid judgment: obtained by correctly applying the type rules.

A **typing derivation** in a given type system is a tree of judgments with leaves at the top and a root at the bottom, where each judgment is obtained from the ones immediately above it by some rule of the system.

A fundamental requirement on type systems is that it must be possible to check whether or not a derivation is properly constructed.

A **valid judgment** is one that can be obtained as the root of a derivation in a given type system. That is, a valid judgment is one that can be obtained by correctly applying the type rules.

### Well-typedness and type inference

- well-typedness of terms: if type `τ` exists so `Γ ⊢ M : τ` is valid judgment.
- type inference: determining the type of an expression.
- typing error: no applicable rules for a certain expression.
- typeable exp: exp that can be assigned a type.
- typeability: property of being able to receive a type, of being well-typed.


In a type system, a term `M` is **well-typed** in an env `Γ`, if there is a type `τ` such that `Γ ⊢ M : τ` is a valid judgment, i.e. if the term `M` can be assigned a type.

Determining the typing derivation, and hence the type, for a term is called the **type inference problem**.

**Typing error** occurs if there are no applicable rules for a certain expression. Because of the absence of derivations for an ill-typed exp like `1 + true`, we say it is not **typeable**.

**Type inference algorithm** may be easy, hard, or impossible to find, depending on the type system. Although type systems are expressed and often designed in the abstract, their practical utility depends on the availability of good type inference algorithms. The type inference problem becomes particularly hard in the presence of polymorphism.

### Type soundness

When immersing ourselves in type rules, we should keep in mind that a sensible type system is more than just an arbitrary collection of rules. Well-typing is meant to correspond to a semantic notion of good program behavior. 

It is customary to check the internal consistency of a type system by proving a type soundness theorem. This is where type systems meet semantics.

For *denotational semantics*, we expect that if `∅ ⊢ M : A` is valid, then `[[M]] ∈ [[A]]` holds (value of `M` belongs to the set of values denoted by the type `A`).

For *operational semantics*, we expect that if `∅ ⊢ M : A` and `M` reduces to `M'` then `∅ ⊢ M' : A`.

In both cases the **type soundness theorem** asserts that well-typed programs compute without execution errors.

>Type soundness theorem asserts well-typed programs execute without errors.

## 3. First-order type systems

- first-order TS features: HOF (but no type params and type abstraction).
- second-order TS features: type parameterization and type abstraction.
- syntactically identical terms only differ in the names of bound variables.


Type systems of common procedural languages are first-order, meaning they lack type parameterization and type abstraction (which are second order features). First-order type systems do include higher-order functions. A minimal first-order type system can be given for the untyped λ-calculus.

The first-order typed λ-calculus is *System F*. The main change from the untyped λ-calculus is the addition of type annotations for lambda abstractions, using the syntax `λx:A.M`, where `x` is a formal parameter with the type `A`, and `M` is the lambda's body (in a typed PL we'd likely include the overall type, but this is not necessary here). The step from `λx.M` to `λx:A.M` is typical of any progression from an untyped to a typed language: *binding variable occurrences* are decorated with type annotations.

System F is based mainly on function values; the most interesting types are **function types**: `A → B` is the type of functions with input of type `A` and output of type `B`. To bootstrap we also need **base (atomic) types** over which to build function types.

In the case of the untyped λ-calculus, the *context-free syntax* describes exactly the legal programs. This is not the case in typed calculi, since good behavior is not a context-free property. The task of describing the legal programs is taken over by the type system.

The context-free syntax is still needed, but only in order to define the notions of *free and bound variables*; that is, to define the scoping rules of the language. Based on the scoping rules, terms that differ only in their bound variables are considered **syntactically identical**. This convenient identification is implicitly assumed in the type rules (but we may have to rename bound variables in order to apply certain type rules).

Syntax of F₁

```
types
  τ := B                      base type
     | τ₁ → τ₂                function type

terms
  e := x                      variable
     | λ x : τ . e            abstraction
     | e₁ e2                  application
```

Judgments for F₁

```
Γ ⊢ ∙          Γ is a well-formed environment
Γ ⊢ τ          τ is a well-formed type in Γ
Γ ⊢ e : τ      e is a well-formed term of type τ in Γ
```

The judgment `Γ ⊢ τ` is in a sense redundant, since all syntactically correct types `τ` are automatically well formed in any environment Γ. In second order systems, however, the *well-formedness of types* is not captured by grammar alone, and the judgement `Γ ⊢ τ` becomes essential (so it is convenient to adopt this judgment now).

Rules for F1

```hs
                 Γ ⊢ A     x ∉ dom(Γ)
------ Env-∅    ---------------------- Env-x
∅ ⊢ ∙                Γ, x : A ⊢ ∙


Γ ⊢ ∙                  Γ ⊢ A      Γ ⊢ B
------- T-Base        ----------------- T-Abs
Γ ⊢ B                      Γ ⊢ A → B


x : A ∈ Γ
----------- E-Var
Γ ⊢ x : A


Γ, x : A ⊢ M : B
-------------------- E-Abs
Γ ⊢ λx:A.B : A → B


Γ ⊢ M : A → B      Γ ⊢ N : A
----------------------------- E-App
        Γ ⊢ M N : B
```

The rule `Env ∅` is the only one that does not require assumptions - it is an *axiom* - stating that the empty environment is a valid environment.

The rule `Env x` is used to extend an environment Γ into a longer environment `Γ, x : A`, provided that `A` is a valid type in Γ.

Note that the assumption `Γ ⊢ A` implies, inductively, that Γ is valid. That is, in the process of deriving `Γ ⊢ A` we must have derived `Γ ⊢ ∙`. Another requirement of this rule is that the variable `x` must not be defined in Γ. 

We must be careful to keep vars distinct in envs, so when `Γ, x : A ⊢ M : B` has been derived, we know that `x ∉ dom(Γ)`.
