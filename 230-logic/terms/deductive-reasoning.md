# Deductive reasoning

https://en.wikipedia.org/wiki/Deductive_reasoning

*Deductive reasoning* and its method, *deduction*, is studied in the *deductive logics*.

**Deduction** is the process of reasoning that starts with premises and proceeds to reach a logically certain conclusion. If all premises are true and the rules of inference were strictly followed, then the conclusion is necessarily true. Mathematics uses deductive reasoning.

**Deductive reasoning**, also **deductive logic**, is the process of reasoning from one or more statements (premises) to reach a logical conclusion.

Deductive reasoning goes in the same direction as that of the *logical conditionals*, and links premises with conclusions: if all premises are true and the terms are unambiguous and the rules of deductive logic are followed, then the conclusion reached is *necessarily true*.

## Deductive vs inductive reasoning

Deductive reasoning ("top-down logic") contrasts with *inductive reasoning* ("bottom-up logic"):

* In deductive reasoning, a conclusion is reached *by reduction* by applying general rules which hold over the entirety of a closed domain of discourse, narrowing the range under consideration until only the conclusion remains. In deductive reasoning there is no *epistemic uncertainty*.

* In inductive reasoning, the conclusion is reached *by generalizing* or extrapolating from specific cases to general rules resulting in a conclusion that has epistemic uncertainty.

> The inductive reasoning is not the same as induction used in mathematical proofs - **mathematical induction is actually a form of deductive reasoning**.


## Deductive vs abductive reasoning

Deductive reasoning differs from *abductive reasoning* by the direction of the reasoning relative to the conditionals. Deductive reasoning goes in the same direction as that of the conditionals, whereas abductive reasoning goes in the opposite direction to that of the conditionals.


## Examples of deduction

The first premise states that all objects classified as "men" have the attribute "mortal." The second premise states that "Socrates" is classified as a "man" - a member of the set "men." The conclusion then states that "Socrates" must be "mortal" because he inherits this attribute from his classification as a "man."

An example of an argument using deductive reasoning leading to erroneous conclusion: "All policemen are instruments [of the law]". "The piano is an instrument". Therefore, "all policemen are pianos".

## Modus ponens

Modus ponens (also known as *affirming the antecedent* or *the law of detachment*) is the primary deductive rule of inference.

Modus ponens applies to arguments that have as first premise a conditional statement, `P -> Q`, and as second premise the antecedent, `P`, of the conditional statement. It obtains the consequent, `Q` of the conditional statement as its conclusion.

```
P -> Q    P
----------- (MP)
     Q
```

In PLs, in Haskell, this would correspond to having a function from `a` to `b` and having an arg `a`; then you can obtain `b` by applying `f` to `a`.

```hs
mp :: (a -> b) -> a -> b
mp f x = f x
```

However, the antecedent `P` cannot be obtained in a similar way, that is as the conclusion from the premises of the conditional statement, P -> Q, and the consequent Q; such an argument commits the logical fallacy of *affirming the consequent*.


## Modus tollens

Modus tollens, or *the law of contrapositive*, is a deductive rule of inference.

It validates an argument that has as premises a conditional statement, p -> q, and the negation of the consequent, ¬q, and as conclusion the negation of the antecedent, ¬p.

In contrast to modus ponens, reasoning with modus tollens goes in the opposite direction to that of the conditional. The general expression for modus tollens is the following:

```
P -> Q   ¬Q
----------- (MT)
    ¬P
```


p: it is raining
q: the sky is cloudy

```
If p then q.                        p -> q
It is not the case that q.          ¬q
------------------------------      ------
Thus, it is not the case of p.      ¬p
```

## Law of syllogism

In proposition logic *the law of syllogism* takes two conditional statements and forms a conclusion by combining the hypothesis of one statement with the conclusion of another. Here is the general form:

```
P -> Q    Q -> S
---------------- (HS)
     P -> S
```

## Validity and soundness

Deductive arguments are evaluated in terms of their validity and soundness.

An argument is **valid** if it is impossible for its premises to be true while its conclusion is false. In other words, the conclusion must be true if the premises are true. An argument can be valid even if one or more of its premises are false.

An argument is **sound** if it is valid and the premises are true.
