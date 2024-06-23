# Necessity and sufficiency

https://en.wikipedia.org/wiki/Necessity_and_sufficiency

In logic and mathematics, necessity and sufficiency are terms used to describe a conditional or implicational relation between two statements.


For example, in the conditional statement `P -> Q`, 
>`Q` is necessary for `P`, 
because the truth of `Q` is guaranteed by the truth of `P` 
(equivalently, it is impossible to have `P` without `Q`). 
Similarly, 
>`P` is sufficient for `Q`, 
because `P` being true always implies that `Q` is true, 
but `P` not being true does not always imply that `Q` is not true.

In general, a *necessary condition* is one that must be present in order for another condition to occur, while a *sufficient condition* is one that produces the said condition.

---

(Def) A condition `Q` is **necessary** for a condition `P` iff 
the *falsity* (non-existence, non-occurrence) of `Q` 
guarantees the *falsity* of `P`.

In `P -> Q`, Q is necessary for P (since `¬Q -> ¬P`, i.e. no P without Q).

(Def) A condition `P` is **sufficient** for a condition `Q` iff 
the *truth* (existence, occurrence) of `P` 
guarantees the *truth* of `Q`.

In `P -> Q`, P is sufficient for Q (but Q may occur some other way as well).



---

A *definition* is traditionally understood as whatever meets the conditions for both necessity and sufficiency.

A *necessary condition* is what's needed - what must be present - in order for a thing to be a thing, in order for X to be X. For example, a necessary condition of being a bachelor is that you must be unmarried.

A *sufficient condition* is something that's enough for X to be X, but it's not required for that thing to meet that definition. For example, being born in the US is a sufficient condition for being an American citizen (but there are other ways to gain the citizenship).

The long-standing view of *definitions* was that, if you can figure out both the necessary and sufficient conditions for something to be X, then you have defined it.



The assertion that a statement is a "necessary and sufficient" condition of another means that the former statement is true if and only if the latter is true. That is, *the two statements must be either simultaneously true, or simultaneously false*, `P ⇔ Q`.

In English, "necessary" and "sufficient" indicate relations between conditions, not statements. For example, 'being a male' is a necessary condition for 'being a brother', but it is not sufficient; but 'being a male sibling' is a necessary and sufficient condition for 'being a brother'.

>Any conditional statement consists of at least one sufficient condition and at least one necessary condition.

## Definitions

In the conditional statement `P -> Q`, the expression represented by `P` is called the *antecedent*, and the expression represented by `Q` is called the *consequent*. It may be written in several equivalent ways, such as
- P implies Q
- Q is implied by P
- if P then Q
- Q if P
- P only if Q
- Q whenever P

In `P -> Q`, 
`Q` is a **necessary condition** for `P`. 
If the conditional statement is true, 
then the consequent `Q` must be true - if `P` is to be true. 
In other words, 
>the antecedent `P` cannot be true without `Q` being true. 
(T T T, 1st row)

(P → Q) true, P true |- Q true

(P → Q) true, Q true |- P true, P false


In `P -> Q`, 
`P` is a **sufficient condition** for `Q`. 
If the conditional statement is true, 
then if `P` is true, `Q` must be true. 
(T T T, 1st row)
BUT if the conditional statement is true, 
and `Q` is true, 
then `P` may be either true or false (T/F T T, 3rd row).
In other words, 
>the truth of `P` guarantees the truth of `Q`.


P     | Q    | P -> Q | P <- Q | P ⇔ Q
------|------|--------|--------|--------
 `T`  | `T`  | `T`    | T      | T
**T** |  F   |  F     | T      | F
  F   | `T`  | `T`    | F      | F
  F   |  F   |**T**   | T      | T


For example, in order for someone to be called Socrates, it is necessary that they have a name. In order to live, air is a necessary condition. Knowing that someone is called Socrates is sufficient to know that someone has a name.


A **necessary and sufficient condition** requires that both implications `P -> Q` and `P <- Q` hold. The first implication suggests that `P` is a sufficient condition for `Q`, while the second implication suggests that `P` is a necessary condition for `Q`.

This is expressed as
- `P` is necessary and sufficient for `Q`
- `Q` is necessary and sufficient for `P`
- `P` if and only if `Q`
- `Q` iff `P`
- `P ⇔ Q`
- `Q ⇔ P`
- `P -> Q ⋀ Q -> P`
- `P -> Q ⋀ P <- Q`
- `Q -> P ⋀ Q <- P`

## Necessity

The sun being above the horizon is a necessary condition for direct sunlight; but it is not a sufficient condition, as e.g. the moon may be eclipsing the sun.

The assertion that Q is necessary for P 
is colloquially equivalent to 
"P cannot be true unless Q is true", or 
"if Q is false, then P is false". 
By contraposition, 
this is the same thing as 
"whenever P is true, so is Q".

The logical relation between P and Q is expressed as 
"if P, then Q" and denoted "P ⇒ Q" (P implies Q). 

It may also be expressed as any of 
- "P only if Q"
- "Q, if P"
- "Q whenever P"
- "Q when P"

One often finds, in mathematical prose several necessary conditions that, taken together, constitute a sufficient condition; they are *individually necessary* and *jointly sufficient*.

An example of this is found in algebra: 
for a set `S` and an operation `•` to form a group, 
1. it is necessary that `•` be associative
2. it is also necessary that `S` includes a special element `e` 
   such that `∀x ∈ S. e • x = x = x • e`
3. it is also necessary that `∀x ∈ S. ∃x′ ∈ S. x • x′ = e = x′ • x`
None of these 3 necessary conditions by itself is sufficient, but their conjunction is.

## Examples

* Example 1:    
For it to be true that "John is a bachelor", 
it is necessary that it be also true that John is: 
unmarried, male, adult. 
Since to state "John is a bachelor" implies that 
John has each of those three additional predicates.

* Example 2:   
For the whole numbers greater than two, being odd is necessary to being prime.

* Example 3:    
Consider thunder, the sound caused by lightning. One says that thunder is necessary for lightning, since lightning never occurs without thunder. Whenever there is lightning, there is thunder. The thunder does not cause the lightning (lightning causes thunder but that's not important formally), but because lightning always comes with thunder, we say that thunder is necessary for lightning. (Formally, necessity doesn't imply causality).

* Example 4:   
Being at least 30 years old is necessary for serving in the U.S. Senate. If you are under 30 years old, then it is impossible for you to be a senator. That is, if you are a senator, it follows that you must be at least 30 years old.

## Sufficiency

If P is sufficient for Q, then knowing P to be true is adequate grounds to conclude that Q is true; however, knowing P to be false does not meet a minimal need to conclude that Q is false.

The logical relation is, as before, expressed as "if P, then Q" or "P ⇒ Q". This can also be expressed as "P only if Q", "P implies Q" or several other variants. It may be the case that several sufficient conditions, when taken together, constitute a single necessary condition (i.e., individually sufficient and jointly necessary), as illustrated in example 5.

Example 1
"John is a king" implies that John is male. So knowing that John is a king is sufficient to knowing that he is a male.
Example 2
A number's being divisible by 4 is sufficient (but not necessary) for it to be even, but being divisible by 2 is both sufficient and necessary for it to be even.
Example 3
An occurrence of thunder is a sufficient condition for the occurrence of lightning in the sense that hearing thunder, and unambiguously recognizing it as such, justifies concluding that there has been a lightning bolt.
Example 4
If the U.S. Congress passes a bill, the president's signing of the bill is sufficient to make it law. Note that the case whereby the president did not sign the bill, e.g. through exercising a presidential veto, does not mean that the bill has not become a law (for example, it could still have become a law through a congressional override).
Example 5
That the center of a playing card should be marked with a single large spade (♠) is sufficient for the card to be an ace. Three other sufficient conditions are that the center of the card be marked with a single diamond (♦), heart (♥), or club (♣). None of these conditions is necessary to the card's being an ace, but their disjunction is, since no card can be an ace without fulfilling at least (in fact, exactly) one of these conditions.

## Relationship between necessity and sufficiency

See also: Material equivalence
https://en.wikipedia.org/wiki/Material_equivalence

To say that `P` is necessary and sufficient for `Q` is to say two things:
1. that `P` is necessary for `Q`, `P <- Q`
2. that `P` is sufficient for `Q`, `P -> Q`

Equivalently, it may be understood to say that P and Q is necessary for the other, `P -> Q ∧ Q -> P`, which can also be stated as each is sufficient for or implies the other.

One may summarize any, and thus all, of these cases by the statement 
"P if and only if Q", denoted by `P ⇔ Q`, 
whereas cases tell us that `P ⇔ Q` is identical to `P -> Q ∧ Q -> P`.

For example, in graph theory, a graph G is called bipartite if it is possible to assign to each of its vertices the color black or white in such a way that every edge of G has one endpoint of each color. And for any graph to be bipartite, it is a necessary and sufficient condition that it contains no odd-length cycles. Thus, discovering whether a graph has any odd cycles tells one whether it is bipartite and conversely.

A philosopher might characterize this as: "Although the concepts of bipartiteness and absence of odd cycles differ in intension, they have identical extension.

In mathematics, theorems are often stated in the form "P is true if and only if Q is true".

Because necessity of one for the other is equivalent 
to sufficiency of the other for the first one, 
e.g. `P <- Q` is equivalent to `Q -> P`, 
if   `P` is necessary and sufficient for `Q`, 
then `Q` is necessary and sufficient for `P`.

We can write `P ⇔ Q ≡ Q ⇔ P` and say that the statements 
"P is true iff Q, is true" and "Q is true iff P is true" are equivalent.


## refs

* The Concepts of Necessary Conditions and Sufficient Conditions
https://www.sfu.ca/~swartz/conditions1.htm#section3
