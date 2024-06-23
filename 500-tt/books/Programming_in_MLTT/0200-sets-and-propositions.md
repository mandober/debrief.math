# 2. The identification of sets, propositions and specifications

- [2.1 Propositions as sets](#21-propositions-as-sets)
  - [Implication](#implication)
  - [Conjunction](#conjunction)
- [2.2 Propositions as tasks and specifications of programs](#22-propositions-as-tasks-and-specifications-of-programs)


The judgement `a : A` in type theory can be read in at least 4 ways:
- `a` is an element in the set `A`, (like a ∈ A)
- `a` is a proof object for the proposition `A`
- `a` is a program satisfying the specification `A`
- `a` is a solution to the problem `A`

The reason for this is that the concepts of sets, propositions, specifications and problems can be explained in the same way.

## 2.1 Propositions as sets

In order to explain how propositions can be expressed as sets, we first explain the intuitionistic meaning of the logical constants according to the **BHK interpretation**.

Classically, a proposition is thought of as being true or false independently of whether we can prove or disprove it. Constructively, on the other hand, a proposition is true only if we have a method of proving it (and thereby constructing a witness).

Classically, the Law of Excluded Middle (LEM), `A ∨ ¬A`, holds because in classical logic any proposition is either true or false, not both and not neither.

Constructively, any disjunction is true only if we can prove one of the disjuncts (also specifing which disjunct the proof is for). Since we have no method of proving or disproving an arbitrary proposition, we cannot accept that `A ∨ ¬A` holds, therefore, intuitionistically, LEM is not valid.

Constructive math is done in terms of concerete proofs and doesn't symphatize with the view that a world of mathematical objects exists independently of us.

### Implication

A logical implication, `A ⊃ B`, is interpreted as a function that converts the proofs of `A` into the proofs of `B`.

For example, in order to prove `A ⊃ A`, we have to write the function that to each proof of `A` gives a proof of `A`. This is trivially solved with the identity function, `λ x → x`, that just returns the input.

### Conjunction

A logical conjunction, `A ∧ B`, is interpreted as a pair of proofs, such that its first component is a proof of `A` and its second component is a proof of `B`. A pair is denoted `(A, B)` or `⟨A, B⟩`.

If we denote the left projection by `fst`, such that `fst a b = a`, then the fucntion, `λ p . fst p`, that takes a pair `p` and returns its first component, is the proof of `(A ∧ B) ⊃ A`.

The idea behind propositions-as-sets is to identify a proposition with a set of its proofs. A proposition that is true means that the proposition is identified by a nonempty set. A proposition that is false corresponds to the empty set. In type theory, falsity (a false proposition) is denoted by the type `⊥` (bottom), whcih is empty (it has no constructors). The truth is denoted by the type called unit and symbolized by `⊤` (top), which corresponds to a singleteon set, but here it is a type with a single constructor, usually named `tt` or `*`.

For implication and conjunction we get:
- `A ⊃ B` is identified with `A → B`, the set of functions from A to B
- elements in set `A → B` have form `λx.b(x)`, where `b(x) ∈ B` when `x ∈ A`
- `A ∧ B` is identified with `A × B`, the cartesian product of A and B
- elements in set `A × B` have the form (a,b) where `a ∈ A` and `b ∈ B`

### Disjunction

A disjunction is constructively true only if we can prove one of the disjuncts. So a proof of `A ∨ B` is either a proof of `A` or a proof of `B` together with the information which is it (which of A or B we have the proof of).

`A ∨ B` is identified with `A + B`, the disjoint union of A and B.

The elements in `A + B` are of the form `inl(a)` and `inr(b)`, where `a ∈ A` and `b ∈ B`.

### Negation

Using `:=` for definitional equality, we can define the negation of a proposition `A` as `¬A := A ⊃ ⊥`, where `⊥` stands for absurdity, i.e. a proposition which has no proof. If we let `∅` denote the empty set, we have `¬A` is identified with the set `A → ∅`, using the interpretation of implication.

A logical negation, `¬P`, is represented in IL and type theory as a function that transforms the proofs of the type (proposition ~ type ~ set) `P` into the proofs of the bottom type (of which there are none), `¬P := P -> ⊥`. Because the type `⊥` is empty, this is the way to prove the negation of a theorem, e.g. `P₁ : 1 ≡ 2 → ⊥`, but `P₂ : 1 ≡ 2 → ⊤` (althought the latter says that a proof exists but it doesn't specify it explicitly - which goes against the spirit of the lot, doesn't it?).

### Quantifiers

Sets (types) are enough to express propositional logic, but to deal with the quantifiers we need operations defined on the *families of sets*.

`B(x)` denotes a type that depends on the elements `x` of a type `A`. A dependent function is denoted by `f : (x : A) → B(x)`, where `B(x)` means that `x` occurs in the type `B` i.e. that type `B` depends on `x` (where x is an element of type A). A non-dependent funciton is the familiar `A → B`.

### Existential quantifier

Heyting's explanation of the existential quantifier:

A proof of `∃x ∈ A.B(x)` consists of the construction of an element `a` (`x` denotes a variable, `a` denotes a constant) in the set `A` together with the proof of `B(a)`. So, the *existential instantiation* (EI) is required. There exists, `∃`, an `x` such that x is an element of set A, `x ∈ A`, **and** it satisfies the property B, `B(x)`. In fact, the proper logical expression of this statement is `∃x(x ∈ A ∧ B(x))`, which shows where the conjuction comes from. An even "more proper" formula is `∃x(A(x) ∧ B(x))`, where the predicate `A` means "is a member of set A", while `B` denotes a predicate whose interpretation is currently unknown.

A proof of `(∃x ∈ A)B(x)` is a pair whose first component `a` is an element in the set `A`, and whose second component is a proof of `B(a)`. The set corresponding to this is a disjoint union of a set family, `(Σx ∈ A)B(x)`. The elements in this set are pairs (a,b) where a ∈ A and b ∈ B(a).

The interpretation of existential quantifier:    
`(∃x ∈ A)B(x)` is identified with the set `(Σx ∈ A)B(x)`

### Universal quantifier

A proof of `(∀x ∈ A)B(x)` is a function which to each element `a` in the set `A` gives a proof of `B(a)`.

The set corresponding to universal quantification is the cartesian product of a family of sets, denoted by `(Πx ∈ A)B(x)`.

Elements of this set are functions which, when applied to an element `a` in the set `A`, give an element in the set `B(a)`.

Thus `(∀x ∈ A)B(x)` is identified with the set `(Πx ∈ A)B(x)`.

The elements in `(Πx ∈ A)B(x)` are of the form `λx.b(x)` where `b(x) ∈ B(x)` for `x ∈ A`.

### Atomic propositions

Except the empty set, we have not yet introduced any sets that correspond to atomic propositions.

One such set is the equality set `a =ᴀ= b` , which expresses that `a` and `b` are equal elements in the set A (of the type `A`). This set is nonempty iff `a` and `b` are indeed equal.

If `a` and `b` are equal elements in the set `A`, we postulate that the constant `id(a)` is an element in the set `a =ᴀ= b`.

This is similar to recursive realizability interpretations of arithmetic where one usually lets the natural number 0 realize a true atomic formula.


## 2.2 Propositions as tasks and specifications of programs

`(∀x ∈ A)B(x)` is a specification of programs which, when executed, yields λx.b(x), where b(x) is a program for B(x) under the assumption that x is an object of A. This means that when a program for the problem (∀x ∈ A)B(x) is applied to an arbitrary object x of A, the result will be a program for B(x).

`(∃x ∈ A)B(x)` specifies programs which, when executed, yields (a, b), where a is an object of A and b a program for B(a). So, to solve the task (∃x ∈ A)B(x) it is necessary to find a method which yields an object a in A and a program for B(a).

To make this into a specification language for a programming language, naturally, it is necessary to implemnt the program forms (constructs) for the different language entities (at least for function definition and application, possibly more).
