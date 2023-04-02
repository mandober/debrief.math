# Operational semantics

## Evaluation

The operational semantics of a language (e.g. a language of boolean exps): we specify the grammar defining two sets of expressions: terms and values.

The *syntax of terms* specifies the legal ways to form expressions in the language.

The *syntax of values*, with the set of values being a subset of expresions, are the final forms of evaluation. In a simple language like ULC, values are abstractions - this actually makes an implementation more difficult because abstractions are at the same time both expressions and values, i.e. expressions are not cleanly delineated from values. Normally, we are treat an abstraction as a value when we cannot reduce it no more. LC may be extended with proper values - constants liek Booleans and numbers - in which case the boundary between expressions and values is clearly demarked.

When defining the grammar for a language, metavariables are used to range over the legal terms of the object language, thereby making the rule schemes instead of concrete, specific rules. Substituting a metavariable for terms of the appropriate syntactic category, specializes a rule schema into a concrete rule.

Although the terms "reduction" and "evaluation" are usually used interchangibly, strictly speaking, the term "evaluation" refers to a process that reduces an expressions down to some kind of value. This also means that the small-step semantics defines a *reduction* procedure because, most of the time, it produces only a simplified form of the input expression (not a value). On the other hand, the big-step semantics is actually an *evaluation* procedure since it normally produces a value.

The small-step **evaluation relation** on terms is written `t -> t′` and read as `t` evaluates to `t′` in one step. It means that if `t` is the state of the abstract machine at a given moment, then it can perform a step of computation, switching to the state `t′`. The small-step evaluation may also be equated with the machine completing a single instruction.

The interplay between the inference rules determines a particular *evaluation strategy*, corresponding to an *order of evaluation* in PLSs. Some rules can only fire after some other rules, that result in an expression being fully evaluated, have completed. Some rules do the real work of evaluation and they are called **computation rules**, while other only indicate where the work is to be done, and they are called **congruence rules**. A rule is *satisfied* by a relation if, for each instance of the rule, either the conclusion is in the relation, or one of the premises is not.

* The **one-step evaluation relation** `->` is the smallest binary relation on terms satisfying a set of inference rules.
* When the pair `(t, t′)` is in the evaluation relation, we say that the *evaluation statement (judgment)* `t -> t′` is *derivable*.
* The fact that an *evaluation statement* `t -> t′` is derivable iff there is a derivation tree with `t -> t′` as the label at its root is often useful when reasoning about properties of the *evaluation relation*. In particular, it leads directly to a proof technique called *induction on derivations*.
* Determinacy of one-step evaluation: `(t -> t′ ⋀ t -> t′′) => (t′ = t′′)`.
