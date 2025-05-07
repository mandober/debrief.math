# Number theory :: Theorems

## From statements to theory

A *theorem* is a statement in the formal language in an axiomatic system. Thus, a theorem has a truth value - by the law of the excluded middle (LEM), it is either true or false. To obtain the truth value 'true', i.e. to be true or truthful, a theorem must be proven. It must be shown that it follows from the axioms or from already proven theorems, or from a mix of both.

After a statement is formulated it is called a *conjecture* until it gets proven, at which time it is promoted to a bona fide theorem.

Interestingly, however, conjectures do not really exist, at least not in *classical mathematics* that relies on *traditional logic* which admits the law of the excluded middle. Since classical math respects the LEM (a little too fiercly), it means that any statement is either true or false as soon as it is formulated in the sense that its truth value is immediately determined, even if we don't know what it is ("but God knowns"). This is a consequence of the LEM which requires that any proposition be either true or false, not both and *not neither*. (There are many problems with the LEM; it is a primary reason the constructive approach to mathematics was developed). Hence, there is no period in which a statement is trully a conjecture, although in practice it certainly is called that. Some statements have been conjectures for so long they have retained that moniker even after they were proven.

A collection of theorems, along with the primitives and the set of axioms of the system is called a *theory*. A theory is a collection of theorems on a particular subject.


## Divisibility

>Divisibility: ∀ab ∈ ℤ. ∃q ∈ ℤ. (a = bq) ⇒ b ∣ a

Integer `a` is a multiple of integer `b` if there exists some integer `q` such that `a=bq`. This is denoted by `b ∣ a` and means
- b divides a
- b is a divisor of a
- b is a factor of a
- a is divisible by b
Otherwise, `a ≠ bq`, so `b ∤ a`.

The set of all multiples of an integer `a`: `a⋅ℤ = { m ∈ ℤ | ∃q ∈ ℤ. m = aq }`, which is `{±0a, ±1a, ±2a, ±3a, …}`, e.g. 3ℤ = {0, ±3, ±6, ±9, …}

The set of all factors of integer `a`: `{1} ⋃ {b | b ∣ a, ab ∈ ℤ} ⋃ {a}`, i.e. it is a union of its *proper factors* with 1 and integer itself.

If a≠0 and b|a, then |b| <= |a| since |b|<= |b|⨯|q| = |a|, for q ∈ ℤ. 

It follows that if b|a and a|b, then |b| = |a| so b = ±a. 

Thus, if b|1, then since it is always true that 1|b, so we must have b = ±1.



```
for a,b,q ∈ ℤ

1|b is always ⟙
b|b is always ⟙

a ≠ 0 ⋀ b|a
--> |a| = |b| ⨯ |q|
--> 1 <= |b| <= |a|

b|a ⋀ a|b -> |b| = |a| <=> b = ±a
b|1 --> 1|b <=> b = ±1
```

(Axiom.1) **Well-Ordering Principle**   
Every nonempty set of natural numbers contains a smallest element.
