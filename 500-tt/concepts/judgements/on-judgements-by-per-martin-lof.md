# On propositions, assertions and judgements by Per Martin Löf

`On the Meanings of the Logical Constants and the Justifications of the Logical Laws`, Per Martin Löf, 1983, https://archive-pml.github.io/martin-lof/pdfs/Meanings-of-the-Logical-Constants-1983.pdf

- Proposition vs assertion
- Proposition vs judgement

### Proposition vs assertion

First of all, I shall have to say something about, on the one hand, the things that the *logical operations* operate on, which we normally call *propositions* and *propositional functions*, and, on the other hand, the things that the *logical laws*, by which I mean the *rules of inference*, operate on, which we normally call *assertions*.

We must remember that, even if a logical inference, for instance, conjunction introduction, is written

```
A   B
------ ∧I
A ∧ B
```

which is the way in which we would normally write it, *it does not take us from the propositions A and B to the proposition A ∧ B*.

I guess he means it is not an implication; although sometimes it actually is, e.g. A ⇒ (B ⇒ A) is a formula (K combinator) that encodes ∧E₁.

Rather, it takes us from the *affirmation of A and the affirmation of B to the affirmation of A ∧ B*, which we may make explicit, using Frege's notation, by writing it instead as

```
⊢ A   ⊢ B
---------- ∧I
⊢ A ∧ B
```

Thus we have two kinds of entities here: we have the entities that the logical operations operate on, called *propositions*, and we have those that we prove and that appear as premises and conclusion of a logical inference, called *assertions*.

It turns out that, in order to clarify the meanings of the logical constants and justify the logical laws, a considerable portion of the philosophical work lies already in clarifying the *notion of proposition* and the *notion of assertion*. Accordingly, a large part of my lectures will be taken up by a philosophical analysis of these two notions.

In the old, traditional use of the word proposition,
>propositions are the things we prove.

We talk about proposition and proof in mathematics: we put up a proposition and let it be followed by its proof. In particular, the premises and conclusion of an inference are propositions.

It was the standard meaning of the word up to the last century, and it is that meaning which is retained in mathematics, whereas a *theorem* is sometimes also called a proposition.

Thus we have two words for the things that we prove: proposition and theorem. The word *proposition* (πρoτασιϛ) has dominated logical tradition, whereas the word *theorem* (θϵoρημα) has dominated mathematical tradition.

With Kant, something important happened - the term *judgement* (de: Urteil), came to be used instead of proposition.
