# Judgement

https://en.wikipedia.org/wiki/Judgement

* Per Martin Löf: How did 'judgement' come to be a term of logic, 2011
https://www.youtube.com/watch?v=FGUzgcLXNuk&t=843s


A **judgment** is something that is knowable, an object of knowledge. It is an evident piece of knowledge if one really knows it (this is due to Bolzano, per Martin-Löf, 1996).

While defining his type theory, Per Martin-Löf needed a term that would contrast the set-theoretic term "proposition", which is a statement with a truth value. The point is, that we can argue about which of the two truth values a proposition actually has, while we cannot argue about a judgement.

A judgement is a "given" truth, it is not debatable, it just "is". A judgement holds unconditionally. It is to be taken for granted as being true.

About propositions argue, but judgments swallow, you. -- Yoda

Many kinds of judgments are studied, including
- "A is false" in classical logic
- "A is true at time t" in temporal logic
- "A is necessarily true" or "A is possibly true" in modal logic
- "A is achievable from the available resources" in linear logic
- "program A has type τ" in type theory, `A : τ`


The most important judgments in logic are of the form "A is true", where `A` stands for any expression representing a proposition; but this implies that the *truth judgments* (judgments regarding true statements) require an even more primitive type of judgment, i.e. "A is a proposition". We first establish that `A` is a proposition, abbreviated `A prop`, and then we can assert that "A is true", abbreviated `A true`.
