# Introduction

- [1.1 Using type theory for programming](#11-using-type-theory-for-programming)
- [1.2 Constructive mathematics](#12-constructive-mathematics)
- [1.3 Different formulations of type theory](#13-different-formulations-of-type-theory)
- [1.4 Implementations of programming logics](#14-implementations-of-programming-logics)


In recent years several formalisms for program construction have been introduced. One such formalism is the Martin-Lof type theory, which is well suited as a theory for program construction, since it is possible to express both specifications and programs within the same formalism. Also, the proof rules can be used to derive a correct program from a specification as well as to verify that a given program has a certain property.

This book is an introduction to type theory as a theory for program construction.

As a programming language, type theory is similar to typed functional languages such as Haskell, but the major difference is that the evaluation of a well-typed program always terminates.

In type theory it is possible to write specifications of programming tasks as well as to develop provably correct programs. Type theory is therefore more than a programming language and it should not be compared with programming languages, but with formalized programming logics such as LCF.

Type theory was originally developed with the aim of being a clarification of constructive mathematics, but unlike most other formalizations of mathematics type theory is not based on first order predicate logic. Instead, predicate logic is interpreted within type theory through the *correspondence between propositions and sets*.

A *proposition* is interpreted as a set whose elements represent the proofs of the proposition. Hence, a false proposition is interpreted as the empty set and a true proposition as a non-empty set.

Type theory contains rules for making judgements of the following 4 forms:
- A is a set,                                 `A : Set`
- A₁ and A₂ are equal sets,                   `A₁ ≡ A₂`
- a is an element in the set A,               `a : A`
- a₁ and a₂ are equal elements in the set A,  `a₁ ≡ a₂ : A`

The semantics of type theory explains what judgements of these forms mean. Since the meaning is explained in a manner quite different from that which is customary in CS, let us first describe the context in which the meaning is explained.

When defining a PL, one often explains its notions in terms of mathematical objects like sets and functions, and such a definition takes for granted their existence and understanding.

Since type theory is intended to be a fundamental conceptual framework for the basic notions of constructive mathematics, it is infeasible to explain the meaning of type theory in terms of some other mathematical theory.

Thus, the meaning of type theory is explained *in terms of computations*. This is done by defining the syntax of programs and the way they are computed. This process begins by introducing the *canonical forms*, which are forms that cannot be further reduced, and thus are the suitable form for the final results (values) of programs.

Once they are defined, it becomes feasable to explain *judgements*, first the *assumption-free judgements* and then the *hypothetical judgements*. A set is explained in terms of canonical objects and their equality relation. Once the notion of set is understood, the explanation is extended to the remaining judgement forms.

## 1.1 Using type theory for programming

Type theory can be used as a theory for program construction.

The programming development process starts with the task of the program, which often exists implicitly (in the mind of the programmer), but sometime also explicitly, as a specification that expresses what is expected from the program.

The programmer then either directly writes down a program and proves that it satisfies the given specification, the method called *program verification* (proofs of correctness), or she successively derives a program from the specification, the method called *program derivation*. Type theory supports both methods.

In the process of formal program development, there are two different stages and usually two different languages involved. First, we have the specification process and the specification language, and then the programming process and the programming language.

The *specification process* is the activity of finding and formulating the problem which the program is trying to solve. In type theory, a specification is expressed as a set of correct programs satisfying the specification.

The *programming process* is the activity of finding and formulating one realization of the program that satisfies the specification. Type-theoreticaly, this means that the programmer constructs an element in the set which is expressed by the specification. Programs are expressed in a pure FPL (no assignments, side effects and dirt).

The process of finding a program satisfying a specification can be formalized in a *programming logic*, which has the rules necessary for deducing correctness of programs. Therefore, the formal language of type theory is used as a programming language, specification language, and programming logic.

The language for sets in type theory is similar to the type system in PLs, except that it is much more expressive. 

Besides offering the usual set forming operations, found in type systems of many PLs (Bool, A+B, A → B, A×B, List A), it also has advanced features that make it possible to express properties of programs using logical connectives of predicate logic. Moreover, it is possible to write a program specification without knowing if there is a program satisfying such specs at all. It is feasable that a specification is satisfied by several different programs, andthen it becomes important to find the most efficient one.

Important problems, the constraints of which become possible to express, include the infamous length-indexed lists, all sorts of the sorting problems, maintaining some total order of elements in a collection, expressing array indices in a way that is always within the bounds, finding a shortest path in a graph, and many others.

The PL that best expresses type-theoretical concepts is a statically typed FPL with lazy evaluation (although eager evaluation also works fine, e.g. Agda). The program-forming operations are divided into constructors and selectors.

*Constructors* are used to construct objects in a set from other objects (suc, pair, inl, λ). *Selectors* are used as a generalized pattern-matching.

```hs
-- case-expression in Haskell
case p of
  (x,y) -> d

-- case-expression in type theory (?)
split(p, (x,y)d)


-- disjoint union in Haskell
data a + b where
  Inl : a -> a + b
  Inr : b -> a + b

-- Sum eliminator (case-expression) in Haskell
case p of
  inl(x) -> d
  inr(y) -> e

-- Sum eliminator in type theory (?)
when(p, (x)d, (y)e)
```

General recursion is not available. *Iteration* is expressed by using the selectors associated with the inductively defined sets (ℕ, List A). For inductively defined sets, the selectors work as operators for *primitive recursion* over the set.

For example, to find a program `f n` on the natural numbers, we can use the `natRec` selector associated with the natural numbers.

```hs
-- primitive recursion, ρ(f,g) = h

-- primitive recursion over the first arg, ρ(f⁰,g²) = h¹
-- with h as a unary funcation
h    0  = f
h (S n) = g n (h n)

-- primitive recursion over the first arg, ρ(f¹,g³) = h²
-- with h as a binary funcation
h    0  y = f 0
h (S x) y = g x (h x y) y

-- defining addition
h    0  y = f 0
h (S x) y = g x (h x y) y

h = ρ(f, g) = add
f = id
g = succ ∘ ³π₂  -- where ³π₂(a, b, c) = b
add = ρ(id, succ ∘ ³π₂)

-- primitive recusrsive functions
-- (1) ζ zero (const fn, always returns 0)
zero(_) = 0
-- (2) σ successor
suc(n) = n + 1
-- (3) π projection (returns the ith out of n elements)
ⁿπᵢ(a₁, a₂, …, aₙ) = aᵢ
```

For example, to find a program `h(n)` on the natural numbers, `n : ℕ`, 
we can use the `NatRec` selector associated with the natural numbers.

```hs
-- The equations…
h(0)   = f
h(S n) = g(n, h(n))

-- …are solved by making the definition
h(n) ≡ NatRec(n, h, (x, y)g(x, y))
```

In order to solve recursive equations which are not primitive recursive, one must use the selectors of inductive types together with higher-order functions.

Examples of how to obtain *recursion schemas* other than primitive recursion are discussed in Paulson[^1] and Nordstrom[^2].

[^1]: Lawrence C. Paulson. Constructing Recursion Operators in Intuitionistic Type Theory, 1986.
[^2]: Bengt Nordstrom. Terminating General Recursion. 1988.


Programs in type theory are computed using lazy evaluation. This means that a program is considered to be evaluated if it is on the form `c(e₁, …, eₙ)`, where `c` is a constructor and `eᵢ` are expressions. Notice that there is no requirement that the expressions `eᵢ` must be evaluated. So, for instance, the expression `succ(2 + 5)` is considered to be evaluated, although it is not fully evaluated.

If a program is of the form `s(e₁, …, eₙ)` where `s` is a selector, it is usually computed by first computing the value of the first argument. The constructor of this value is then used to decide which of the remaining arguments of `s` is used to compute the value of the expression.

When a user wants to derive a correct program from a specification, she uses a programming logic. The activity of deriving a program is similar to proving a theorem in mathematics.

In the top-down approach, the programmer starts with the task that is the entire program and divides it into subtasks such that the programs solving the subtasks can be combined into a program for the given task. For instance, the problem of finding a program satisfying B can be reduced to finding a program satisfying A and a function taking an arbitrary program satisfying A to a program satisfying B. (It's like the old saying: instead of returning the solution, you return the function that computes the solution).

Similarly, a mathematician starts with a proposition he wants to prove, and divides it into subpropositions, such that their proofs can be combined into the proof of the initial proposition. For instance, the proposition `B` may be derived if we have proofs of propositions `A` and `A → B` (modus ponens aka function application).

Type theory is designed to be a logic for mathematical reasoning, and it is through the *computational content of constructive proofs* that it can be used as a programming logic (by identifying programs and proof objects).

The logic is rather strong; it is possible to express general mathematical theorems. This is important for a logic intended to work in practice as we want to have a language as powerful as possible to reason about programs.

The formal system of type theory is inherently open in that it is possible to introduce new type-forming operations and their rules. The rules have to be justified using the semantics of type theory.

## 1.2 Constructive mathematics

Constructive mathematics arose as an independent branch of mathematics out of the foundational crisis in the beginning of this century, mainly developed by Brouwer under the name *intuitionism*.

It did not get much support because of the general belief that important parts of mathematics were impossible to develop constructively. Bishop's work has proven this belief wrong: in his book "Foundations of Constructive Analysis", Bishop rebuilds constructively central parts of classical analysis. He does it in a way that demonstrates that constructive mathematics can be as elegant as classical mathematics.

Constructive mathematics has some fundamental notions in common with computer science, above all the notion of computation. This means that constructive mathematics could be an important source of inspiration for computer science.

The notion of a function is a primitive in constructive mathematics, and a function from a set `A` to a set `B` can be viewed as a program, which when applied to an element in `A` gives an element in `B` as output.

All functions in constructive mathematics are computable. The notion of constructive proof is also closely related to the notion of computer program.

To prove a proposition `∀x ∈ A. ∃y ∈ B. P(x,y)` constructively means to give a function `f`, which when applied to an element `a: A` gives an element `b: B`, such that `P(a,b)` holds. So, if this proposition expresses a specification, then the function `f` obtained from the proof, is a program satisfying the specification.

>A constructive proof could therefore be seen as a computer program, and the process of computing the value of a program then corresponds to the process of normalizing a proof.

However, there is a disadvantage of using constructive proofs as programs because the proof contains a lot of *computationally irrelevant information*. Different techniques are developed to synthesize a computer program from a constructive proof, while getting rid of the excess computation, under the concept named *proof irrelevance*. Goad has used the correspondence between proofs and programs to specialize a general program to efficient instantiations.

## 1.3 Different formulations of type theory

One of the ideas that the Martin-Lof's type theory relies upon is the **Curry-Howard interpretation** (CHI) of propositions as types (or sets; although there are significant differences betyween types and sets).

This view of propositions is related both to Heyting's explanation of intuitionistic logic, called **BHK interpretation**, as well as, on a more formal level, to the **Kleene's realizability** interpretation of intuitionistic arithmetic.

Another source for type theory is *proof theory*. Using the identification of propositions as sets, *normalizing a derivation* is closely related to computing a value of a proof term that corresponds to a derivation. Tait's computability method from 1967 has been used to prove normalization for many different theories.

One of Martin-Lof's original aims with his type theory was that it could serve as a framework in which other theories could be interpreted. And a normalization proof for type theory would then immediately give normalization for a theory expressed in type theory.

In Martin-Lof's first formulation of type theory from 1971, theories like first order arithmetic, Godel's T, second order logic and simple type theory could easily be interpreted. However, this formulation contained a *reflection principle* expressed by a universe `V` and including the axiom `V ∈ V` (type in type), which was shown by Girard to be inconsistent.

Coquand and Huet's *Theory of Constructions* escapes Girard's paradox by introducing the types `Prop` and `Type`, along with the axiom `Prop ∈ Type`.

Martin-Lof's formulation of type theory in 1972, "An Intuitionistic Theory of Types" [^66] is similar to the polymorphic and intensional set theory in this book. Here, *intensional* means that *judgemental equality* is understood as a *definitional equality*; in particular, that the *equality is decidable*. In the formulation used in this book, the judgemental equality, `a ≡ b : A`, depends on the set (type) `A` and is meaningful only when both `a` and `b` are elements in `A`.

In [^66], Martin-Lof defined equality for any two arbitrary terms in a universe of untyped terms. And equality is *convertibility* in the sense of combinatory logic. A consequence of this approach is that the *Church-Rosser property* (confluence, i.e. different evaluation strategies amount to the same final expression) must be proved for the convertibility relation. In contrast to Coquand and Huet's *Theory of Constructions*, this formulation of type theory is *predicative*, thus, second order logic and simple type theory cannot be interpreted in it.

Although the equality between types in [^66] is *intensional equality*, the *term model* obtained from the *normalization proof* has an extensional equality on the interpretation of the types. *Extensional equality* means the same as in set theory: two sets are equal iff they have the same elements (identity by extension). To remedy this problem, Martin-Lof has made several changes to his theory, resulting in the formulation from 1973, "An Intuitionistic Theory of Types: Predicative Part" [^68].

This theory is **strongly monomorphic** in that a new constant is introduced in each application of a rule. Also, conversions under lambda are disallowed, i.e. the rule of ξ-conversion [sic? did they meant η-conversion?] is abandoned. In this formulation of type theory, type checking is decidable. The concept of models for type theory and definitional equality are discussed in [^67].

The formulation of type theory from 1979 in "Constructive Mathematics and Computer Programming" [^69] is *polymorphic* and extensional. One important difference from Martin-Lof's earlier treatments of type theory is that normalization is not obtained by metamathematical reasoning, but the direct semantics is presented, based on Tait's computability method. A consequence of the semantics is that a term, which is an element in a set, can be computed to its *normal form*.

For the semantics of this theory, *lazy evaluation* is essential. Because of a strong elimination rule for a set that expresses extensional equality, judgemental equality is not decidable. This theory is also the one published in the "Intuitionistic Type Theory" [^70] in 1970. (We deal with this theory in this book). The theory is obtained if the equality sets are expressed by the rules for `Eq`. (The same theory is used in the *Nuprl* system).

In 1986, Martin-Lof put forward a framework for type theory. The framework is based on the notion of *type*, and one of the primitive types is *the type of sets*. The resulting set theory is *monomorphic* and type checking is decidable.


[^64]: `A Theory of Types`. Per Martin-Lof, 1971.

[^65]: `Hauptsatz for the Intuitionistic Theory of Iterated Inductive Definitions`. Per Martin-Lof, 1971.

[^66]: `An Intuitionistic Theory of Types`. Per Martin-Lof, 1972

[^67]: `About models for intuitionistic type theories and the notion of definitional equality`. Per Martin-Lof, 1975

[^68]: `An Intuitionistic Theory of Types: Predicative Part`. Per Martin-Lof, 1975 (from "Logic Colloquium" 1973)

[^69]: `Constructive Mathematics and Computer Programming`. Per Martin-Lof, 1982. In "Logic, Methodology and Philosophy of Science VI", 1979.

[^70]: `Intuitionistic Type Theory`. Per Martin-Lof. Bibliopolis, 1984.

[^71]: `Truth of a Proposition, Evidence of a Judgement, Validity of a Proof`.Per Martin-Lof. Transcript of a talk at the workshop "Theories of Meaning" at Florence in June 1985.


## 1.4 Implementations of programming logics

Proofs of program correctness and formal derivations of programs can become very long and tedious, making it easier to make a mistake. So, we are always interested in formalizing the proofs in order to submit them for a mechanical check, and to have then constructed in digital form by tools.

Several *proof checkers* for formal logics have been implemented. An early example is the `AUTOMATH` system designed and implemented by de Bruijn et al, and intended for checking the proofs of mathematical theorems.

Another system, intended as a *proof assistant* is the Edinburgh (Cambridge) `LCF` system. Users could construct proofs in Scotts's logic for computable functions. The proofs were constructed in a goal-directed fashion, starting from the proposition the user wants to prove, followed by the use of tactics to divide it into simpler propositions. The LCF system also introduced the notion of metalanguage (`ML`) in which the user could implement her own proof strategies. Based on the LCF system, a similar system for Martin-Lof's type theory was implemented in Goteborg 1982 [86].

Another, more advanced system for type theory was developed by Constable et al at Cornell University [25]. In contrast with these systems, which were only suited for one particular logical theory, logical frameworks have been designed and implemented.

Harper, Honsell and Plotkin have defined a logical framework called `Edinburgh LF` [48]. This theory was then implemented, using the Cornell Synthesizer.

Paulson has implemented a general logic proof assistant, `Isabelle` [83], and type theory is one of the logics implemented in this framework. 

Huet and Coquand at INRIA Paris also have an implementation of their *Calculus of Constructions* [56].
