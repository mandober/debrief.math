# Type Theory :: Set Theory vs Type Theory

Set theory, specifically ZF, is considered by the majority of mathematicians as the foundational language of modern mathematics. However, this is not a tenured position and the support for ZF can, and already is, dropping, with the advancement of other theories positioning themselves as a better fit for the foundations.


Mathematicians, however, are not interested in the foundations at all and would be happy to delegate that mess to logicians, as they once did (it didn't work). They are content just knowing that there is a theory at the foundations that works well enough, with formalists particularly delighted that set theory got the honors, with constructivists pushing for a better, more suitable theory as the cornerstone of all mathematical knowledge.

A notable candidate is *category theory* as a general, and *univalent foundations with homotopy type theory* as a particular, approach to type theory, which amounts to establishing *constructive type theory* as a new foundational language of math. Univalent foundations are closely tied to the idea of the foundation of mathematics as implemented in proof assistants software.

In introducing type thery, and specifically **Homotopy Type Theory (HoTT)**, it pays to make a comparison between set theory, in general, and with ZF(C) as a particular representative, and type theory, in general, along with MLTT and HoTT as particular representatives.

Although both set theory and type theory are branches of mathematical logic and TCS, type theory is different from set theory in very important ways.

## Theories of sets and types

*Axiomatic set theory*, particularly ZF, fundamentally has two layers: first, there is the deductive system of first-order logic with propositions (statements that have a truth value) as the main objects of interest, and then, there are the ZF axioms, formulated within this logic system, where the notion of sets is established.

This shows that set theory needs another, external structure (superstructure), such as FOL, to provide a deductive system within which it can be formulated. By contrast, type theory is its own deductive system and doesn't need anything else.

This also means that set theory has two basic notions - not jsut the notion of sets, but also the notion of propositions, which are necessary in order to formulate sets. On the other hand, type theory has only one basic notion - that of types.

-----

If we compare objects of set theory with terms of type theory, and set themselves with types, one of the biggest diferences between the two theories is that in set theory, an object can belong to many sets, but in type theory, a term belongs to exactly one type.

In type theory, unlike in set theory, objects are classified using the *primitive notion of type*, similar to data types used in PLs.

-----

The Curry-Howard isomorphism (CHI) associates a term in the simply typed lambda calculus with each natural-deduction proof in intuitionistic propositional logic.

In CTT, propositions are identified with types, via the CHI; that is, propositions are types. Proving a proposition, thus amounts to constructing an object that represents a proof of that proposition; an object that is a term of that type/proposition.

In type theory, a *proposition* is a statement susceptible to a proof, and a *theorem* is a proven statement; it has a proof (witness, evidence). Thus, `0=1` and `¬(0=1)` are propositions, but only the latter is a theorem.

A *deductive system* is a collection of (inference) rules for deriving judgments. We can also think of a deductive system as a sort of algebraic theory, in which case, judgments are the elements (e.g. elements of a group) and the deductive rules are the operations (e.g. group multiplication).

From the point of view of logic, judgments may be considered as *"external" statements*, living in the metatheory, as opposed to *"internal" statements* that live in the theory proper.

FOL as a deductive system of set theory has only one kind of judgment - that a given proposition has a proof. That is, each proposition "A" gives rise to a judgment "A has a proof", and all judgments are of this form. A FOL rule like "from A and B infer A ∧ B" is actually a rule of "proof construction" which says that given the judgments "A has a proof" and "B has a proof", we may deduce that "A ∧ B has a proof". Note that the judgment "A has a proof" exists at a different level from the proposition A itself, which is an internal statement of the theory.

The basic judgment of type theory, analogous to "A has a proof", is denoted by `a : A` and means that the term `a` has type `A`, or, more loosely, that `a` is an element of `A`; in hott, is means that `a` is a point of space `A`.

When `A` is a type representing a proposition, then `a` may be called
- a *witness to the provability of `A`*
- or an *evidence of the truth of `A`*
- or even, a *proof of `A`*

In this case, judgment `a : A` is derivable in type theory precisely when the analogous judgment "A has a proof", mutatis mutandis, is derivable in FOL. On the other hand, if type `A` is treated more as a set than proposition, then `a:A` may be regarded as analogous to the set-theoretic statement `a ∈ A`. An essential difference is that `a : A` is a *judgement*, while `a ∈ A` is a *proposition*.

When working internally in type theory, we cannot make statements such as "if `a:A`, then it is not the case that `b:B`", nor can we "disprove" the judgement `a:A`. A way to think about it, is that in set theory, the membership is a relation which may or may not hold between two objects `a` and `A`, while in type theory, we cannot talk about an element `a` in isolation: every element, by its very nature, is an element of some type, and, generally speaking, that type is uniquely determined.

Thus, when we say informally "let `x` be a natural number", in set theory this is shorthand for "let `x` be a thing and assume that `x ∈ N`", e.g. `∀x(x ∈ S -> P(x))`; whereas, in type theory, "let `x : N`" is an *atomic statement* - we cannot introduce a variable without specifying its type. This seems like an uncomfortable restriction, but it is arguably closer to the intuitive mathematical meaning of "let x be a natural number" as a wholesome statement.

In practice, it seems that whenever we need `a ∈ A` to be a proposition, rather than a judgment, there is always an ambient set `B` of which `a` is known to be an element, and `A` is known to be a subset.


This situation can be represented in type theory by taking `a` to be an element of the type `B`, and `A` to be a predicate on `B`, a:B ⊢ 

## Propositional equality

The last difference between type theory and set theory is the treatment of equality.

In mathematics, the notion of equality is a proposition 
(so we can disprove an equality or assume an equality as a hypothesis).

In type theory, 
*propositions are types* 
which means that 
*equality is a type*: 
for elements `a,b : A`, 
we have a type `a =ᴀ= b`. 
When `a =ᴀ= b` is inhabited, 
then `a` and `b` are 
*propositionally equal*.


## Definitional equality

However, in type theory there is also a need for an equality judgment that exists at the same level as the judgment `x : A`. This is **judgmental equality** or **definitional equality** denoted by `a ≡ b : A` or by `a ≡ b`.

It is helpful to think of it as meaning *equal by definition*.

For instance, 
if we define a function `f : N → N` by the equation `f(x) = x²` 
then the expression `f(3)` is equal to `3²` *by definition*.

Inside the theory, 
it doesn't make sense to negate 
or assume equality-by-definition; 
we cannot say: 
"if `x` is equal to `y` by definition, 
then `z` is not equal to `w` by definition". 

*Whether or not two expressions are equal by definition is just a matter of expanding out the definitions*.

This process is algorithmically decidable (though the algorithm is necessarily meta-theoretic, that is, it is not internal to the theory).

Alternatively, if we regard a deductive system as an algebraic theory, then judgmental equality is the equality in that theory, analogous to the equality between elements of a group - the only confusion being that there's also an object inside the deductive system of type theory (namely the type `a = b`) which behaves internally as a notion of "equality".

The reason we want a judgmental notion of equality 
is so that it can control the other form of judgment, `a : A`. 
For instance, suppose we have given a proof that `3² = 9`, 
i.e. we have derived the judgment `p : (3² = 9)`. 
Then the same witness `p` ought to count as a proof 
that `f(3) = 9`, since `f(3)` is `3²` by definition.
The best way to represent this 
is with a rule saying that, 
given the judgments `a : A` and `A ≡ B`, 
we may derive the judgment `a : B`.

```
a : A      A ≡ B
-----------------
     a : B
```


Type theory is a deductive system based on 2 forms of judgment:
1. `a : A` means `a` is an object of type `A`.
2. `a ≡ b : A` means `a` and `b` are definitionally equal objects of type `A`.


When introducing a definitional equality, i.e. defining one thing to be equal to another, we will use the symbol `:≡`. Thus, the above definition of the function `f` would be written as `f(x) :≡ x²`.

Because judgments cannot be put together into more complicated statements, `:` and `≡` bind more loosely than anything else. For instance, `p : x = y` is parsed as `p : (x = y)` since `x = y` is a type, and not as "(p : x) = y", which is senseless since "p : x" is a judgment and cannot be equal to anything. Similarly, `A ≡ x = y` can only be parsed as `A ≡ (x = y)`.

Judgments may depend on assumptions of the form `x : A`, where `x` is a variable and `A` is a type. For example, we may construct an object `m + n : N` under the assumptions that `m, n : N`. Another example is that assuming `A` is a type, `x, y : A`, and `p : x =ᴀ= y`, we may construct elem `p⁻¹ : y =ᴀ= x`.

The collection of all such assumptions is called the *context*; from a topological point of view it may be thought of as a "parameter space".

Technically, the context must be an ordered list of assumptions, since later assumptions may depend on previous ones: the assumption `x : A` can only be made after the assumptions of any variables appearing in the type `A`.

If the type `A`, in the assumption `x : A`, represents a proposition, then the assumption is a type-theoretic version of a hypothesis: we assume that the proposition `A` holds.

When types are regarded as propositions, we may omit the names of their proofs. Thus, in the second example above we may instead say that assuming `x =ᴀ= y`, we can prove `y =ᴀ= x`.

However, since we are doing "proof-relevant" mathematics, we will frequently refer back to proofs as objects. In the example above, for instance, we may want to establish that `p⁻¹` together with the proofs of transitivity and reflexivity behave like a groupoid.

Note that under this meaning of the word *assumption*, we can assume a propositional equality (by assuming a variable `p : x = y`), but we cannot assume a judgmental equality, `x ≡ y`, since it is not a type that can have an element.

However, we can do something else which looks kind of like *assuming a judgmental equality*: if we have a type or an element which involves a variable `x : A`, then we can substitute any particular element `a : A` for `x` to obtain a more specific type or element. We will sometimes use language like "now assume `x ≡ a`" to refer to this process of substitution, even though it is not an assumption in the technical sense introduced above

By the same token, *we cannot prove a judgmental equality either*, since it is not a type in which we can exhibit a witness. Nevertheless, we will sometimes state judgmental equalities as part of a theorem, e.g. "there exists f : A → B such that f(x) ≡ y". This should be regarded as the making of two separate judgments: first we make the judgment `f : A → B` for some element `f`, and then we make the additional judgment that `f(x) ≡ y`.


Aside from some fairly obvious rules (such as the fact that judgmentally equal things can always be substituted for each other), *the rules of type theory can be grouped into type formers*.

Each type former consists of a way to construct types (possibly making use of previously constructed types), together with rules for the construction and behavior of elements of that type.


Type theory consists entirely of rules, without any axioms.

In the description of deductive systems in terms of judgments, the rules are what allow us to conclude one judgment from a collection of others, while the axioms are the judgments we are given at the outset.


In set theory, the only rules are the rules of FOL (such as the rule allowing us to deduce "A ∧ B has a proof" from "A has a proof" and "B has a proof"): all the information about the behavior of sets is contained in the axioms.

By contrast, in type theory, it is usually the rules which contain all the information, with no axioms being necessary. For instance, there is a rule allowing us to deduce the judgment `"(a, b) : A × B"` from `"a : A"` and `"b : B"`, whereas in set theory the analogous statement would be (a consequence of) the pairing axiom.

The advantage of formulating type theory using only rules is that *rules are procedural*. In particular, this property is what makes possible the good computational properties of type theory, such as *canonicity*.
