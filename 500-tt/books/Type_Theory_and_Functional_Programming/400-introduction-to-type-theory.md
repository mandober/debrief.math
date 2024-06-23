# 4. Introduction to Type Theory


## 4.6 Quantifiers

We now introduce the rules which govern the behaviour of the universal and existential quantifiers in constructive type theory. The differences between classical and constructive logic are most apparent when investigating the meaning of the existential quantifier. To assert `∃x.P` constructively, we need to have some object `x` so that `P` is valid.

Because our language is typed, we shall only concern ourselves with typed or bounded quantifications, of the form `(∃x:A).P` where `A` is a type, the quantifiers being labelled with their domain of discourse.

A proof of an existential statement `(∃x:A).P` consists of two items:
- witness of the property, `w : A`
- proof that `P` holds of the witness, i.e. that P[x:=w] holds

A proof of an existential statement `(∀x:A).P` consists of two items:
- proof of `(∀x:A).P` expresses that P[a:=w] is valid for every `a` in `A`
- proof is a function which takes any `a` in `A` to a proof of P[a:=w]


### Universal quantifier

#### Formation Rule for ∀

```hs
               [x : A]
                  ⋮
A formula     P formula
------------------------- (∀F)
    (∀ x : A) . P formula
```

This is more subtle than formations we have seen so far - it has 2 hypotheses:
- that `A` is a formula, (or a type)
- that `P` is a formula, on the assumption that `x` is a variable of type `A`

This is an analogue, at the level of types, to the rule of λ-abstraction in which the type of the function's body depends on the assumption (that types the bound variable).

We haven't yet seen how to build type expressions (or propositions) that depend on free variables; these are the consequence of introducing *atomic propositions* including equality, and reflection principles, which is consequence of introducing the *universe types*.

If we can prove `P` by a proof `p` 
that may depend on the assumption 
of the existence of a variable `x : A`, 
then we can use *universal generalisation*, 
abstracting over the variable `x`, 
as long as `x` is not free 
in any other assumption 
on which the proof depends.

This is just the condition of being arbitrary. Any remaining occurrences of `x` in the assumptions would be *dangling references* to an out-of-scope object.

#### Introduction Rule for ∀

```hs
        [x : A]
           ⋮
         p : P
------------------------ (∀I)
(λ x : A) . p : (∀ x : A) . P
```

If, in a proof `p` of `P` 
no assumption other than `x : A` has a free `x`, 
then we can infer the *universal generalisation* of `P` 
by means of the lambda abstraction of `p` over `x`. 
The abstraction discharges the assumption `x`.

#### Elimination Rule for ∀

```hs
a : A    f : (∀ x : A) . P
---------------------- (∀E)
    f a : P[x:=a]
```

As expected, when we eliminate a universal quantifier, we get a particular instance (specialization).

#### Computation Rule for ∀

```hs
((λx:A).p) a --> p[x:=a]
```

We saw that the rules above form parametric proofs of universal generalisations and apply such proofs to individual elements of `A`. The result of such appl should be the substitution of `a` for `x` in the parametric proof `p`.

Interestingly, we have naturally viewed some formulas as formulas (e.g. `P`) and others (e.g. `A`) as types. Thus, the dual interpretations (formulas vs types) can be mixed.

Note also how the rules are similar to those of `⇒`. Indeed, if the formula `P` is replaced by `B` in which `x` doesn't occur, the rules are exactly those of `⇒` because we don't need the assumption `x : A` in the proof of `B formula` if `B` has already been established as a formula.

As a type, this gives us a generalization of the function space - the one in which the type of the result, P[a/x] depends on the argument `a : A`. This is disallowed in almost all type systems because it'd break their static nature (in which the type-checking process, done at CT, is separate from the program's execution, at RT).

In our case, the situation is different: even though the statics and dynamics are mixed, we avoid the risk of non-termination. Later we analyse the applications of the *dependent function space*, which is the name of the *universally quantified type*.

Another important use of *dependent product type* is to represent forms of *type polymorphism*. This arises when we have types whose members are themselves types, such types often being called *universes*.

### Existential quantifier

#### Formation Rule for ∃

The formation rule is the exact analogue of the rule for the universal quantifier.

```hs
               [x : A]
                  ⋮
A formula     P formula
------------------------- (∃F)
    (∃ x : A) . P formula
```

#### Introduction Rule for ∃

We can introduce an existential quantifier when we have an object with the appropriate property.

```hs
a : A    p : P[x:=a]
---------------------- (∃I)
(a, p) : (∃ x : A) . P
```

#### Elimination Rule for ∃

The precise formulation of the rule of existential elimination is complicated. The most straightforward version from the point of view of the type `(∃x:A).P` is to view it as a type of pairs. The obvious elimination rules are those which project a pair onto its first and second components.

```hs
p : (∃ x : A) . P
---------------- (∃E₁)
Fst p : A

p : (∃ x : A) . P
--------------------- (∃E₂)
Snd p : P[x:=Fst p]
```

This rule is unusual coz it mentions a proof (`p`) on the rhs of the judgement.


#### Computation Rule for ∃

The computation rules for `Fst` and `Snd` generalise the rules for conjunction.

```hs
Fst (p, q) ---> p

Snd (p, q) ---> q
```

If formula `P` doesn't contain (free) variable `x`, then these rules are the same (modulo trivial syntactic changes) to those of conjunction. We can even read `A ∧ B` as a syntactic shorthand for `(∃x:A).B`, in case that `B` doesn't depend on `x`.

#### `(∃x:A).P` as a type

How do we interpret `(∃x:A).P` as a type?

* A generalisation of the binary product type: the type of the second component, P[x:=a], depends on the value of the first component, `a`.

* An (infinitary) sum type: union of the types P[x:=a] for all `a` in `A`, in which objects in the type P[x:=a] are paired with the tag `a` which indicates the origin of the summands. This interpretation gives rise to the nomenclature *dependent sum type* which is the name of this type.

* A subset of the type `A` consisting of those elements `a` which have the property `P`. In keeping with the constructivist philosophy, we pair each object `a` with the evidence P[x:=a] that it belongs to the subset.

* A type of modules, each of which provides an implementation (of type `A`) of the specification `P`, together with evidence that the implementation meets the specification.
