# Problems with Gentzen systems

## Example 1: Pierce's Law

Consider the proof of the Pierce's Law in sequent calculus:

```hs
          ----------- Ax
          P ⊢ P, Q
----- Ax  ----------- →R
P ⊢ P     ⊢ P, P → Q
--------------------- →L
(P → Q) → P ⊢ P
--------------------- →R
⊢ ((P → Q) → P) → P
```

After the `→L` split, we get two subgoals: after trivialy solving the first, one `P ⊢ P`, we focus on the second, `⊢ P, P → Q`. We invoke the `→R` rule on it in the attempt to prove `P → Q`, but in the resulting sequent, `P ⊢ P, Q`, we do not prove `Q` of the implication, but used the left-hand side `P` of the implication to prove the other conclusion `P`, which we already had before.

In a sense this is a *bait-and-switch strategy*: when we decompose the conclusion `P → Q`, one would expect us to go on proving `Q`, but instead we change our mind after we were given `P` as the new assumption, and prove a different goal instead. For some people this appears almost like cheating.

(But in another sense, this is just modus ponens - so we don't prove `Q` directly - we prove it by applying `P → Q` to `P`, no? However, there are examples that do showcase this weird behaviour better.)

Nevertheless, according to the rules of the calculus this is perfectly acceptable. And since the calculus is consistent, we have to accept this kind of reasoning, just like we accept the semantics of logical connectives as stated by the truth tables.

## Example 2: Excluded middle

We get a similar problem when we try to prove the law of Excluded Middle (LEM):

```hs
------ Ax
P ⊢ P
--------- ¬R
⊢ P, ¬P
--------- ∨R
⊢ P ∨ ¬P
```

Again, there is something strange about this proof: we are switching to the other goal once we have decomposed the negation.

The difficulty with these proofs is that switching goals in the middle of a proof doesn't permit for the construction of the proof argument (in fact, we cannot construct the evidence for both of these examples).

It would seem more natural to have proofs that focus on one particular conclusion at the time, rather than permmitting several, thus making it possible to switch the formula we were proving with another smack dub in the middle of a proof.

The only meaningful way to resolve this issues is to restrict succedents to a single formula only.

## Example 3: Contraposition

The second oddity that comes up with Gentzen systems can be seen in the previous example and when we attempt to prove the law of contraposition.

```hs
LEM:

------ Ax
P, ⊢ P
--------- ¬L
P, ¬P ⊢                     -- problematic step! (avoidable)
--------- ¬R
¬P ⊢ ¬P
--------- ¬R
⊢ P, ¬P
--------- ∨R
⊢ P ∨ ¬P


CONTRAPOSITION:

--------- Ax -------- Ax
P, ⊢ P, Q    P, Q ⊢ Q
--------------------- →L
P, P → Q ⊢ Q
--------------------- ¬R
¬Q, P, P → Q ⊢             -- problematic step! (avoidable)
--------------------- ¬R
¬Q, P → Q ⊢ ¬P
--------------------- →R
P → Q ⊢ ¬Q → ¬P
--------------------- →R
⊢ (P → Q) → (¬Q → ¬P)
```

In both examples, the problematic step is avoidable, nevertheless since it can happen, the question arises as to what does a sequent with the empty consequent mean; especially, since we interpret a sequent as the collection of hypothesis using which we need to prove one of the conclusions. Given that a set of conclusions corresponds to a disjunction of formulas, the empty set then means that we need to prove falsity, i.e. that hypotheses are contradictory.

A solution to this problem is to introduce a constant `⊥` or `F` to represent the falsehood, and then to consider the negation as an abbreviation:

`¬X := X → ⊥`

Adding this rule for `⊥` 

`H, ⊥ ⊢ G`

the rules for negation become redundant. That is, the two previous rules for negation, `¬L` and `¬R`, are then covered by the new rule, together with the rules for implication.
