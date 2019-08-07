# Mathematical Logic

Mathematical logic is a *formal system*[^1].

> A formal system has axioms and inference rules: by repeatedly applying the inference rules to the axioms (and to the previously derived theorems), one derives new theorems within the system.

For example, Peano's theorem about natural numbers begins with axioms:
1. 0 : Nat
2. n' : Nat -> n : Nat
3. S(0) = 1
4. S(x) = 0 -> x is not Nat

Mathematical logic studies and builds theorems about a system of objects; the objects being the theorems themselves and the system is the entire mathematics.


## Logic system

There are numerous systems of logic today. The splits came about due to differences in the focus of study, but also as a result of disagreements. Initial forks of the "original", pretty much unified, logic system, such as it was beginning with Aristotle, up to the XIX century, occurred due to the disagreements over the fundamental principles.

For instance, the Aristotelian, or the classic logic as it is now referred to, is based on the principle of excluded middle. In a traditional logic system something is either true or false, the system does not recognize any other (middle) option. A logic system that does is, for example, a 3-valued logic system that's widely used today in relation to databases - SQL. The SQL logic system has 3 truth values: true, false and null, and a set of rules describing the possible inferences related to these truth values.

As mentioned, a traditional logic system is bi-valued logic system, it has two truth values, namely, *true* and *false*. In such a system something is **either true or false, not both and not neither**. Another of its fundamental rules says that negating a *true* value yields a *false* value, and vice-versa, negated *false* gives (is) *true*. And yet another rule states that a double negation of a tem is equal to the term, e.g. *not not true is true*.

These fundamental rules that every logic system has act like axioms in mathematical theorems. A system gets founded on a set of carefully chosen rules, and these rules, i.e. axioms do not require proof, they are taken for granted.
