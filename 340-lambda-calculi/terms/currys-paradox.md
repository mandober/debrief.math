# Curry's paradox

https://en.wikipedia.org/wiki/Currys_paradox

Curry's paradox is a paradox in which an arbitrary claim F is proved from the mere existence of a sentence C that says of itself "If C, then F", requiring only a few apparently innocuous logical deduction rules. Since F is arbitrary, any logic having these rules allows one to prove everything.

The paradox may be expressed in natural language and in various logics, including certain forms of set theory, lambda calculus, and combinatory logic.

The paradox is named after the logician Haskell Curry. It has also been called *Löb's paradox* after Martin Hugo Löb, due to its relationship to *Löb's theorem*.


## Informal proof

Claims of the form *"if A, then B"* are called *conditional sentences*. Curry's paradox uses a particular kind of **self-referential conditional sentence**, such as the following example sentence:

> If this sentence is true, then Germany borders China.

The standard method for proving conditional sentences of the form "if A, then B" is called *conditional proof*, where, in order to prove "if A, then B", you first assume A and try to show that B follows. If you show that B follows based on the assumption of A, then you get to conclude that A implies B.

The example sentence is a declarative, so the truth of the sentence can be analyzed. But the paradox follows from the analysis, which consists of 2 steps:
1. Trusted proof technique is used to prove that the example sentence is true.
2. The truth of the whole sentence is then used to prove any claim whatsoever.

In this case, we know that Germany does not border China, which suggests the possibility of an error in one of the proofs. However, we check and see that we've used the trusted proof technique, *modus ponens*™ (trusted since BCE), and since everything is cosher and correctly used, the only way out of this is to recognize the situation for what it is - paradoxical.

```
S: If this sentence is true, then Germany borders China.
A: This sentence is true
B: Germany borders China
------------------------
S: A -> B


        [A]
         .
         .
         .
A -> B  [B]
------------
    A -> B


However, since A refers to the entire sentence S,
assuming A is the same as assuming S (and S is "if A, then B")
------------------------
A = S

in assuming A
we have assumed both A
and S which is A -> B

A, A -> B
--------- MP
    B
```

Normally, we's have a conditional sentences of the form A -> B (such as "if it rains, then the ground is wet"). As usual with conditional proofs, we'd assume `A` and try to show that `B` follows. If it does, we can conclude `A -> B`.

However, the example sentence is self-referential and because of that assuming `A`, assumes the truth, not only of `A` (antecedent), but of the entire sentence (since A refers to the entire sentence). Again, assuming A, assumes the whole conditional sentence.

> Therefore, **in assuming A, we have assumed both A and A -> B** (that is S, which has the structure "if A, then B").

By modus ponens, when we have a condition `p -> q` and we have an `p`, then we can conclude conclude `q`. Therefore, `B` is true, and with that we have proven a false sentence by correctly following the correct procedure (assuming the hypothesis and deriving the conclusion).

Now, because we have proved *"If this sentence is true, then 'Germany borders China' is true"*, then we can again apply modus ponens, because we know that the claim *"this sentence is true"* is correct. In this way, we can deduce that *Germany borders China*.


## Refs

https://plato.stanford.edu/entries/curry-paradox/
https://plato.stanford.edu/entries/lambda-calculus/
