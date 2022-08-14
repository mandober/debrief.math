# Type theory versus set theory

1. Foundations
  1.1. Type theory
    1.1 Type theory versus set theory

Homotopy type theory (HoTT) is also seen as a foundational language for mathematics - an alternative to Zermelo-Fraenkel set theory; however, HoTT behaves differently from set theory in several important ways.

A set-theoretic foundation has two layers:
1. the deductive system of first-order logic
2. the axioms of a particular theory (e.g. ZFC) formulated inside this system

Thus, set theory is not only about sets, 
but rather about the interplay between 
*sets* (the objects of the 2. layer) and 
*propositions* (the objects of the 1. layer).

By contrast, *type theory* is its own deductive system: 
it need not be formulated inside any superstructure (such as FOL). 

Instead of the two basic notions of set theory (sets and propositions), 
type theory has only one basic notion - that of *types*.

*Propositions* (statements with a truth value) 
are identified with particular types, via the CHI.

Thus, mathematical activity of proving a theorem 
is identified with a special case of 
mathematical activity of constructing an object, 
in this case, 
*an inhabitant of a type that represents a proposition*.


The meaning of the term "proposition" in type theory:
- a **proposition** is a statement susceptible to proof
- a **theorem** (lemma, corollary) is a proven statement


Thus `0 = 1` and its negation `¬(0 = 1)` are 
propositions, but only the latter is a theorem.


This leads us to another difference between type theory and set theory, but to explain it we must discuss deductive systems in general.

A *deductive system* is a collection of *rules* 
for deriving things called *judgments*.

We can also think of a deductive system as 
a sort of algebraic theory, in which case, 
the judgments are the elements (like the elements of a group) and 
the deductive rules are the operations (like the group multiplication).

From a logical point of view, 
the judgments can be considered to be 
the *"external" statements*, 
living in the metatheory, as opposed to 
the *"internal" statements* 
that live in the theory proper.

FOL as a deductive system of set theory 
has only one kind of judgment: 
*that a given proposition has a proof*.

That is, each proposition "A" 
gives rise to a judgment "A has a proof", 
and all judgments are of this form.

```
A   B           A has a proof       B has a proof
------ ⋀I  ≅   ----------------------------------- ⋀-proof-construction
A ⋀ B                   A ⋀ B has a proof
```

A FOL rule such as `from A and B infer A ⋀ B` 
is actually a rule of "proof construction" 
which says that given the judgments `A has a proof` and 
`B has a proof`, we may deduce that `A ⋀ B has a proof`.

Note that the judgment `A has a proof` exists at a different level from the proposition `A` itself, which is an internal statement of the theory.


The basic judgment of type theory, 
analogous to "A has a proof", 
is denoted by `a : A`

It means that the term `a` has type `A`, 
or more loosely "`a` is an element of `A`", 
or, in hott, that "`a` is a point of `A`".

When `A` is a type representing a proposition, 
then `a` may be called a *witness to the provability* of `A`, 
or an evidence of the truth of `A` (or even, a proof of `A`).

In this case, the judgment `a : A` is derivable in type theory 
precisely when the analogous judgment `A has a proof` is derivable in FOL. 
(modulo differences in the axioms assumed and in the encoding of mathematics)

On the other hand, 
if type `A` is being treated 
more as a set than as a proposition 
then `a : A` may be regarded as analogous 
to the set-theoretic statement `a ∈ A`.

However, there is an essential difference: 
`a : A` is a judgment, 
whereas `a ∈ A` is a proposition.

When working internally in type theory, 
we cannot make statements such as 
"if `a : A` then it is not the case that `b : B`", 
nor can we "disprove" the judgment `a : A`.


A way to think about it, is that in set theory, the membership is a relation which may or may not hold between two pre-existing objects `a` and `A`, 
while in type theory, we cannot talk about an element `a` in isolation: 
every element, by its very nature, is an element of some type, 
and, generally speaking, that type is uniquely determined.


Thus, when we say informally 
"let `x` be a natural number", 
in set theory this is shorthand for 
"let `x` be a thing and assume that `x ∈ N`", 
whereas, in type theory, 
"let `x : N`" 
is an **atomic statement**: 
we cannot introduce a variable 
*without specifying its type*.

At first glance, this may seem an uncomfortable restriction, but it is arguably closer to the intuitive mathematical meaning of "let x be a natural number".

In practice, it seems that whenever 
we need `a ∈ A` to be a proposition, 
rather than a judgment, 
there is always an ambient set `B` 
of which `a` is known to be an element 
and `A` is known to be a subset. 

This situation is also easy 
to represent in type theory by taking 
`a` to be an element of the type `B`, and 
`A` to be a predicate on `B`.

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


## Definitional (judgmental) equality

In type theory, there's also a need for an equality judgments 
that exist at the same level as the judgment `x : A`. 

This is **judgmental equality** or **definitional equality** 
denoted by `a ≡ b : A` or `a ≡ b`.


It is helpful to think of it as meaning *equal by definition*.


For instance, if we define `f : N → N` by the equation `f(x) = x²` 
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
