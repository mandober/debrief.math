# Dialetheism

https://en.wikipedia.org/wiki/Dialetheism

**Dialetheism** (from Greek δι- di- 'twice' and ἀλήθεια alḗtheia 'truth') is the view that there are statements that are both true and false. More precisely, it is the belief that there can be a true statement whose negation is also true. Such statements are called *true contradictions*, *dialetheia* or *nondualisms*.

Dialetheism is not a system of formal logic; instead, it is a thesis about truth (theory of truth) that influences the construction of a formal logic, often based on pre-existing systems.

Introducing dialetheism has various consequences, depending on the theory into which it is introduced.

A common mistake resulting from this is to reject dialetheism on the basis that, in classical logic, every statement becomes a theorem if a contradiction is true (indirect proof, RAA), trivialising such systems when dialetheism is included as an axiom.

Other logical systems, however, do not explode in this manner when contradictions are introduced; such contradiction-tolerant systems are known as paraconsistent logics.

Dialetheists who do not want to allow that every statement is true are free to favour these over traditional, explosive logics.

Graham Priest defines dialetheism as the view that there are *true contradictions*. Jc Beall is another advocate; his position differs from Priest's in advocating *constructive (methodological) deflationism* regarding the truth predicate.

## Contents

- Motivations
  - Dialetheism resolves certain paradoxes
  - Reasoning
  - Apparent dialetheism in other philosophical doctrines
- Formal consequences
- Advantages
- Criticisms

## Motivations

### Dialetheism resolves certain paradoxes

The liar's paradox and Russell's paradox deal with self-contradictory statements in classical logic and naïve set theory, respectively.

Contradictions are problematic in these theories because they cause the theories to explode - if a contradiction is true, then every proposition is true (EFQ).

The classical way to resolve this problem is to ban contradictory statements, to revise the axioms of the logic so that self-contradictory statements do not appear.

*Dialetheists*, on the other hand, respond to this problem by accepting the contradictions as true. 
>Dialetheism allows for the unrestricted axiom of comprehension in set theory, claiming that any resulting contradiction is a theorem.

### Reasoning

Ambiguous situations in reasoning may cause us to affirm both a proposition and its negation. For example, if John stands in the doorway to a room, it may seem reasonable both to affirm that John is in the room and to affirm that John is not in the room.

Critics argue that this merely reflects an ambiguity in our language rather than a dialetheic quality in our thoughts.

If we replace the given statement with one that is less ambiguous (such as "John is halfway in the room" or "John is in the doorway"), the contradiction disappears.

The statements appeared contradictory only because of a syntactic play; here, the actual meaning of "being in the room" is not the same in both instances, and thus each sentence is not the exact logical negation of the other: therefore, they are not necessarily contradictory.

### Apparent dialetheism in other philosophical doctrines

The Jain philosophical doctrine of anekantavada-non-one-sidedness-states that all statements are true in some sense and false in another. Some interpret this as saying that dialetheia not only exist but are ubiquitous.

>Technically, however, a logical contradiction is a proposition that is true and false in the same sense.

>A proposition which is true in one sense and false in another does not constitute a logical contradiction.

For example, although in one sense a man cannot both be a "father" and "celibate" (leaving aside edge cases) there is no contradiction for a man to be a spiritual father and also celibate. The sense of the word "father" is different here.

In another example, although at the same time George W. Bush cannot both be president and not be president, he was president from 2001-2009, but was not president before 2001 or after 2009, so in different times he was both president and not president.

One *Buddhist logic* system similarly implies that a statement and its negation may possibly co-exist.

Graham Priest argues in "Beyond the Limits of Thought" that *dialetheia* arise at the borders of expressibility, in a number of philosophical contexts other than formal semantics.

## Formal consequences

In classical logics, taking a contradiction `P ∧ ¬P` as a premise, allows us to prove any statement `Q`. That is, `(P ∧ ¬P) → Q`, or just `⊥ → Q`.

To show `(P ∧ ¬P) → Q`, we start with the premise `P ∧ ¬P`. We may simplify it to get both `P` and `¬P`. We can then introduce disjunction `P ∨ Q` (generalization: if `P` is true, then so is `P ∨ Q`). Taking `P ∨ Q` together with `¬P` is a disjunctive syllogism from which we can conclude `Q`.

```
1 assume P ∧ ¬P          AS1
2   P                    ∧E₁ 1
3   ¬P                   ∧E₂ 1
4   P ∨ Q                ∨I 2
5   Q                    DS 4,3
6 thus (P ∧ ¬P) → Q      →E 1-5
```

This is often called the *principle of explosion* (EFQ), since the truth of a contradiction is imagined to make the number of theorems in a system "explode".

## Advantages

The proponents of dialetheism mainly advocate its ability to avoid problems faced by other more orthodox resolutions as a consequence of their appeals to hierarchies.

According to Graham Priest, "the whole point of the dialetheic solution to the semantic paradoxes is to get rid of the distinction between object language and meta-language".

Another possibility is to utilize dialetheism along with a paraconsistent logic to resurrect the program of *logicism* advocated for by Frege and Russell.

This even allows one to prove the truth of otherwise unprovable theorems such as the well-ordering theorem, and the falsity of others such as the continuum hypothesis¹.

¹ see Mortensen, Chris, "Inconsistent Mathematics", The Stanford Encyclopedia of Philosophy (Fall 2017 Edition), Edward N. Zalta (ed.).
https://plato.stanford.edu/archives/fall2017/entries/mathematics-inconsistent/

There are also dialetheic solutions to the *sorites paradox*.

## Criticisms

One criticism of dialetheism is that it fails to capture a crucial feature about negation, known as *absoluteness of disagreement*.

Imagine John's utterance of `P`. Sally's typical way of disagreeing with John is a consequent utterance of `¬P`. Yet, if we accept dialetheism, Sally's response does not prevent her from also accepting `P`; after all, `P` may be a dialetheia and therefore it and its negation are both true. The absoluteness of disagreement is lost.

A possible resolution would be to say "`¬P` and, furthermore, `P` is not a dialetheia". However, the most obvious codification of "`P` is not a dialetheia" is `¬(P ∧ ¬P)`. But this itself could be a dialetheia as well.

One dialetheist response is to offer a distinction between *assertion* and *rejection*. This distinction might be hashed out in terms of the traditional distinction between logical qualities, or as a distinction between two illocutionary speech acts: assertion and rejection.

Another criticism is that dialetheism cannot describe logical consequences, once we believe in the relevance of logical consequences, because of its inability to describe hierarchies.

Absoluteness of disagreement is a powerful criticism that is not rescued by the ability to assert "this statement is not a dialetheia", as self-referential statements regarding dialetheia also prevent absoluteness in assertion, even regarding its own existence:
- `P` = "Dialetheia exist"
- is countered by asserting that "`P` is a dialetheia."
