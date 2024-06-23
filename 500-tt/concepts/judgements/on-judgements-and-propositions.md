# On judgements and propositions

## Judgement

### Definition

The act of judging; the operation of the mind, involving comparison and discrimination, by which a knowledge of the values and relations of things, whether of moral qualities, intellectual concepts, logical propositions, or material facts, is obtained. Also the conclusion or result of judging.

That act of the mind by which two notions or ideas which are apprehended as distinct are compared for the purpose of ascertaining their agreement or disagreement. The comparison may be threefold: (1) of individual objects forming a concept, (2) of concepts giving what is technically called a judgment, (3) of two judgments giving an inference. Judgments have been further classed as analytic, synthetic, and identical.

Synonyms: discernment, understanding, determination.

Judgments are classed as
- hypothetical (vs atomic?)
- analytic
- synthetic
- identical (?)

### Judgement in type theory

Note: there is no consensus about the use of the terms and their definitions, which often depend on the system in which one is working.

Pertaining to intuitionist type theory (ITT), Pfenning says:

>A judgment is something we may know, that is, an object of knowledge. A judgment is evident if we in fact know it.

On the other hand, according to Martin-Löf, a <proposition is a set of proofs>. In this interpretation, if the set of proofs is empty, then the proposition is false, and otherwise true.

>A proposition is interpreted as a set whose elements represent the proofs of the proposition. (Nordström et al.)

On the other hand, in classical logic and in general, propositions are objects expressed in a language which can be either "true" or "false".

Judgements are metalogical and propositions logical.

---

There is a language, a logical *object-language*, that we are studying. In this language, there are things called "*propositions*" which are supposed to be things that are true or false.

There is a *meta-language*, which is also a logical language, in which we are trying to explain which things in the base language are true or false. The statements we make in this meta-language are called "*judgements*".

Note that all the statements (propositions) of the object language have the status of *data* in the meta-language. They are basically strings of symbols. You can't ask a string whether it is true or false. A judgement is the interpreter that interprets the string as a proposition and decides whether it is true or false.

---

>A verified (proved) judgment is called a *theorem*.

---

(me) Under proposition-as-types setting, types of a PL are/represent propositions. The empty type, `⊥`, represents falsity (false). The unit type, `⊤`, represents truth (true). More precisely, it represents the fact that a proof exists. A more complicated type is needed to represent (encode) an actual proof. There may be many proofs of a proposition, so there may be many inhabitants of a proof-carrying type.



## Proposition vs judgement

A proposition is the expression of a judgment.

```
A ∧ B                        A ∧ B true
------ true  ✔      vs      -----------  ✘
B ∧ A                        B ∧ A true
```

The question why, for `A ∧ B ⇒ B ∧ A true`, we didn't instead write `A ∧ B true ⇒ B ∧ A true`. This boils down to a distinction between propositions and judgements.

When talking about logic, we make a distinction between the *object language* and the *metalanguage*.

>*Propositions* are statements we make in the object language; they are things in the logic proper, whereas *judgements* are statements we make in the metalanguage about things in the object language (like propositions).

For instance, `A` is a proposition, whereas `A true` is a judgement that talks about that proposition.

~~Why would we need a judgement like `A true` in order to introduce a logical cnnective? Shouldn't the truth value of a proposition be decided later, when we consult the DOD? Since `A` is a proposition, it is, by definition, a statement with _a truth value_, not necessarily a stetemnt with _the truth value `true`_ (i.e. a statement that is *necessarily true*). Why can't it be false? Why only tautologies are allowed? Concretely, why do we need to judge that both, `A true` and `B true`, in order to introduce their conjunction. We should be able to introduce it anyway, without any regard to the truth value of the propositions A or B. Maybe later, when we evaluate it the formula, we'll find out the truth about the truth values of A, of B, and of A ∧ B. So what if e.g. `B false`; no problem, then the compound proposition `A ∧ B false`. What in the name of fuck (for fuck's sake)?! Is there a judgement A false anyway? Why not? Why yes? Isn't `A true` the same as not making any judgment? I mean, since A is a metavar, it may be replaced with any proposition, including `¬A`. Hmm, ok, `¬A true` is probably somehow different then straight-up `A false`. Can we assert that "this proposition is false" is a true proposition? "If this implication is true, then its consequent is false?"~~

To clarify the distinction, note that we can have more judgements than `A true`. Consider another judgement, `A prop`, meaning "A is a proposition". As an example of how this judgement would be used, consider the formation of the proposition `A ∧ B`.

```
A prop    B prop               A true    B true
---------------- ∧F            ---------------- ∧I
    A ∧ B prop                     A ∧ B true
```

If we went through and replaced "prop" with "true", we'd get the *∧I rule*. We can have multiple judgements talking about the same propositions.

Ultimately, the answer to the initial question is: expression `A ∧ B ⇒ B ∧ A` is a proposition, and so a part of the object language of the logic. Hence, `A ∧ B` is also a proposition, not a judgement, and it would just be wrong to have a judgement where we need a proposition, which is what we would get if we wrote `A ∧ B true ⇒ B ∧ A true`. To use a popular expression: "it wouldn't typecheck".







## Judgement in Twelf

https://twelf.org/wiki/judgment/

The word judgement refers to a relation that is defined inductively by a collection of inference rules. The *judgments-as-types* principle is a name for the methodology by which judgments are represented in LF.

### Representing the judgements of the natural numbers

https://twelf.org/wiki/proving-metatheorems-representing-the-judgements-of-the-natural-numbers/

We represent an object-language judgement with an LF type, where the inhabitants of this type correspond exactly to derivations of the judgement.

However, to adequately represent judgements, we must generalize from simply-typed LF to dependently-typed LF. A moment's thought reveals why a dependently-typed language is appropriate: Object-language judgements are parametrized by their subjects-for example `even(n)` is parametrized by the number `n` being judged to be even. Consequently, to represent judgements themselves as LF types, we should consider LF types that are parametrized by the subjects of object-language judgements. But the judgement subjects-the syntax of the language-are represented as LF terms. Thus, to represent judgements themselves as LF types, it is natural to consider families of LF types parameterized by LF terms.

We represent the judgement `even(n)` using the following signature:

```elf
even    : nat -> type.
even-z  : even z.
even-s  : {N:nat} even N -> even (s (s N)).
```

The first declaration says that `even` is a family of types indexed by a `nat`. This means that for every term `N : nat`, there is a type `even N`.

The first term constant, even-z, has type even z. This constant represents the derivation that consists of the first inference rule above, which concludes `even(zero)`.
