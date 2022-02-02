---
downloaded:       2022-01-15
page-url:         https://blog.tchatzigiannakis.com/structural-rules-and-substructural-logics/
page-title:       Structural rules and substructural logics - Mature Pessimizations - A programming blog by Theodoros Chatzigiannakis
article-title:    Structural rules and substructural logics
---
# Structural rules and substructural logics - Mature Pessimizations - A programming blog by Theodoros Chatzigiannakis

There is a family of unusual type systems called substructural type systems. Many programmers have never encountered them, while other have encountered them without realizing what they are or what’s the idea behind them.

We will try to shed some light on where substructural type systems come from, by giving a quick tour of their theoretical background, which comes from sequent calculus. To keep this short enough, we will go only over the parts that are useful for examining type systems.
There is a family of unusual type systems called substructural type systems. Many programmers have never encountered them, while other have encountered them without realizing what they are or what’s the idea behind them.

We will try to shed some light on where substructural type systems come from, by giving a quick tour of their theoretical background, which comes from *sequent calculus*. To keep this short enough, we will go only over the parts that are useful for examining type systems.

## [][1]Sequent calculus

Sequent calculus is a kind of proof calculus. A sequent looks like this:

A⊢B

The ⊢ symbol is called a turnstile. Terms on the left hand side of the turnstile are called hypotheses and terms on the right hand side of the turnstile are called conclusions. The above sequent can be read as “A implies B” (or “B can be proven using A”).

The terms A and B are called atomic clauses and they represent zero or more logical statements. Because A is on the left hand side of the turnstile, its sentences are connected with a conjunction (∧), which represents the logical “and”. Conversely, because B is on the right hand side of the turnstile, its sentences are connected with a disjunction (∨), which represents the logical “or”. Then, the above sequent can be interpreted as:

a1∧a2∧a3∧…⟹b1∨b2∨b3∨…

The comma operator can appear in a sequent, on either side of the turnstile, to connect the atomic clauses with analogous conjuction/disjunction semantics:

A,C⊢B,D

This sequent says that from A∧C we can prove that B∨D.

### [][2]Structural rules

There are many rules that govern sequent calculus, but I won’t get into them in this post. Namely, there is the identity axiom, the cut rule, logical rules (rules about how to apply conjuction, disjuction, and negation) and structural rules (rules that operate on the sequents themselves).

The last category is of interest, so we will try to outline three of them that are usual in classical logic.

#### [][3]Exchange

One structural rule is *exchange,* also called *permutation*. It states that from this sequent:

A,C⊢B,D

We can deduce any of the following sequents:

C,A⊢B,D

A,C⊢D,B

C,A⊢D,B

In other words, changing the order of the terms yields other sequents that logically follow from the initial one, and this applies to either side of the turnstile.

#### [][4]Contraction

Another structural rule is *contraction*. It states that from this sequent:

A⊢B

We can deduce any of the following sequents:

A,A⊢B

A⊢B,B

A,A⊢B,B

In other words, adding more occurences of a term yields other sequents that logically follow from the initial one, and this applies to either side of the turnstile.

#### [][5]Weakening

The remaining structural rule is *weakening* and it is a bit more interesting. It states that from this sequent:

A⊢B

We can deduce this sequent:

A,C⊢B

Let’s see what this means. The first sequent gives us the conclusion B, and requires the hypothesis A to reach that conclusion. The second sequent gives us the same conclusion B, but requires both A and C to reach it. Therefore, the second sequent is *more demanding* to us than the first. Because more demands are less easily met, it is obvious that the second sequent is generally applicable in fewer cases than the first one. We can say that the second sequent is *weaker* than the first.

If we have a toolbox of sequents that we can use to construct proofs, we are allowed to restrict ourselves by using a more demanding sequent. We are generally not allowed to replace a weaker sequent with a stronger one, because we’d have to prove why the stronger one holds, but replacing a stronger sequent with a weaker one is allowed.

This is called weakening on the left hand side of the turnstile. What about the right hand side? Turns out we can go from this sequent:

A⊢B

To this one:

A⊢B,D

But how? It sounds like we replaced a sequent that has fewer conclusions with one that has more conclusions. In other words, it sounds like we went from a weaker sequent to a stronger one, which is not correct in the general case. It might look like that’s what we did, but it’s not.

Remember, the right hand side of the turnstile has different semantics from the left hand side: in a sequent with multiple conclusions, at least one of them holds. Therefore, the first sequent promises B, while the second sequent promises either B or D (or both). The second promise is weaker than the first, because we’re not sure anymore whether B holds. This is how weakening works on the right hand side of the turnstile.

Weakening, then, is the rule that allows us to basically ignore certain clauses in our proofs, whether they are hypotheses or conclusions.

### [][6]Substructural logics

Many axioms and rules of classical logic can be omitted to create new kinds of logics. By omitting one or more of the structural rules outlined above, one can arrive to what are called *substructural logics*. Namely:

-   *Affine logic* disallows contraction, which means that we cannot add more occurrences of a clause than we already had.
-   *Relevant logic* disallows weakening, which means that we cannot leave any clauses unused.
-   *Linear logic* disallows contraction and weakening, which means we can neither add more occurrences of a clause than we already had, nor leave any clauses unused.
-   *Ordered logic* disallows all three structural rules – contraction, weakening and exchange. We cannot add more occurrences of a clause, we cannot leave a clause unused, and we can’t change their order.

When we say we can’t do this or that, what we mean exactly is that doing any of these things will yield a sequent that does not follow from the one we started from. It doesn’t mean that it’s *false*, just that it’s not a logical consequence. For example, if we intend to use a weaker sequent in a logic that inherently disallows weakening, we need to obtain that weaker sequent otherwise, not by deducing it from a stronger one.

#### [][7]Substructural type systems

If clauses of a sequent are understood as variables, then we can come up with type systems that are analogous to the above substructural logics:

-   *Affine type systems* disallow contraction, which means that variables can be used at most once. In an affine type system, functions such as x⇒1 and x⇒x are typable, while functions such as x⇒x+x are untypable.
-   *Relevant type systems* disallow weakening, which means that variables must be used at least once. In a relevant type system, functions such as x⇒x and x⇒x+x are typable, while functions such as x⇒1 are untypable.
-   *Linear type systems* disallow both contraction and weakening, which means that variables must be used exactly once. In a linear type system, functions such as x⇒x and x⇒x+1 are typable, while functions such as x⇒1 or x⇒x+x are untypable.
-   *Ordered type systems* disallow contraction, weakening, and exchange. Variables must be used exactly once, and in the order they were declared in.

## [][8]Next

Logic is interesting on its own, but it’s even more interesting to tinker with it to come up with new kinds of restricted logics with special properties. Substructural type systems are an application of this kind of tinkering.

Such type systems might even seem too restrictive to be useful, especially when coming from the mindset of mainstream programming languages. At first glance, they don’t seem to model anything practical in the way computer programs are written. In a [future post][9], we will explore their ability to help us solve practical problems that we have today.

[1]: https://blog.tchatzigiannakis.com/structural-rules-and-substructural-logics/#sequent-calculus
[2]: https://blog.tchatzigiannakis.com/structural-rules-and-substructural-logics/#structural-rules
[3]: https://blog.tchatzigiannakis.com/structural-rules-and-substructural-logics/#exchange
[4]: https://blog.tchatzigiannakis.com/structural-rules-and-substructural-logics/#contraction
[5]: https://blog.tchatzigiannakis.com/structural-rules-and-substructural-logics/#weakening
[6]: https://blog.tchatzigiannakis.com/structural-rules-and-substructural-logics/#substructural-logics
[7]: https://blog.tchatzigiannakis.com/structural-rules-and-substructural-logics/#substructural-type-systems
[8]: https://blog.tchatzigiannakis.com/structural-rules-and-substructural-logics/#next
[9]: https://blog.tchatzigiannakis.com/applications-of-substructural-typing/
