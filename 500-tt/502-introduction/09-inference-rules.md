# Inference rules

## Natural numbers type ℕ

```hs
              n : ℕ
---------    -------
zero : ℕ     S n : ℕ


data ℕ : Set where
  zero : ℕ
  suc  : ℕ → ℕ
```

ℕ has two inference rules: the base case rule states that `0` is the initial element of ℕ and, at the same time, the proof that 0 is an element of ℕ. The inductive rules says that, if we have an element `n : ℕ`, i.e. a proof that `n` is an element in ℕ, then its successor, `S n` is also an element of ℕ, i.e. the successor `S` takes the proof `n` (that `n` is a term in ℕ) and produces a new element, i.e. a new proof, that `S n` is also. In other words, `0` and `S` are the elements and the proofs that these elements are in ℕ.

## Equality of the natural numbers

The inference rules for eqaulity on the ℕ

```hs
                    n = m
------------     ----------
zero = zero       S n = S m
```

but these two rules are unnamed - we need to name them so we can refer to them individually and record their sequence in a proof.

```hs
                         p : n = m
--------------     ----------------------
z=z : 0 =ℕ= 0      s=ℕ=s p : S n =ℕ= S m


data _=ℕ=_ : ℕ → ℕ → Set
  z=z : 0 =ℕ= 0
  s=s : {n m : ℕ} → n =ℕ= m → suc n =ℕ= suc m

n0 : 0 =ℕ= 0
n0 = z=z

n1 : 1 =ℕ= 1
n1 = s=s z=z

n2 : 2 =ℕ= 2
n2 = s=s (s=s z=z)
```

Now the proof that `0 =ℕ= 0` is the term `z=z`, i.e. `z=z` is the term of the type `0 =ℕ= 0`. The term `z=z` witnesses the equality of `0` and `0`. The proof of the equality of `0 =ℕ= 0` is recorded as the sequence of inference rule - in this case it is a sequence of only one item - the base case rule, `z=z` (which is also the sole proof term). The type `0 =ℕ= 0` is inhabited - its only term is `z=z` - and `z=z` is its only inhabitant because two natural numbers can only be equal in one way.

The proof term `s=s z=z` is the only inhabitant of the type `1 =ℕ= 1` (because two numbers can only be equal in one way). The proof term `s=s z=z` also records the sequence of inference rules employed to get the proof, which in this case is a sequence that reference two rules, `s=s` and `z=z`.

The proof of `2 =ℕ= 2`:

```hs

-------------------------------- (1)
         z=z  :     0 =ℕ= 0
-------------------------------- (2)
     s=s z=z  :   S 0 =ℕ= S 0
-------------------------------- (3)
s=s (s=s z=z) : S S 0 =ℕ= S S 0
```

(1) is an axiom (assumptionless rule), i.e. the base case rule that `0 = 0`.

(2) the inductive case rule has an assumption, that is, it takes as an argument the proof of equality of two numbers, before it can produce the proof that the successors of those numbers are also equal. 


to claim that successors of two equal numbers, `n = n`, are equal, `S n = S n`, we first need the proof `p` that `n` is equal to `n`. 


We can look at this derivation in two ways: top-to-bottom and bottom-up.

Going top-to-bottom, the derivation tells us how to generate the proofs of equality of numbers. It starts with the base case which states that `0 = 0`. The base case is a rule without assumptions, otherwise known as an axiom or a postulate. It is by the virtue of it being an axiom alone that it has an immediate proof - the proof named `z=z`. So, whenever we need to prove that 0 equals 0, we don't need to work for it - we take it for granted and we get it for free (just how we take for granted that 0 is an element of ℕ - that's what the axioms do). We immediately have the proof, `z=z`, which is the only inhabitant of the type `0 = 0`.

In general, under the propositions-as-types paradigm, mathematical propositions correspond to types in type theory (propositions are types). Propositions are statements. In a natural language that are declarative sentences, and unlike other kinds of sentences (imperative, interrogative, etc.), they have a truth value. This means the question of their veracity - whether they are true or false - is up for discussion.

Symbolic logics (propositional, predicate, etc.) translate declarative sentences from a natural language into a formal language, representing them by symbols to obtain formulas. Logic manipulates formulas, with one of the aim being to assign them a truth value. In classical, bivalent logics, assigning a truth value to a formula means mapping it into the Boolean set. Thus, some formulas are shown to be true (to hold), and some are false (do not hold). The amount of information thus obtained is only 1 bit.

A proposition (represented by a formula) is either true or false, and (in classical bivalent logic, which is the mainstream logic) it can only ever be true or false, not both and not neither! This principle is called the law of excluded middle. It suggests that all propositions have a define truth value (in computability theory it is said that they are dicidable). Whether the truth value of some propositions is unknown doesn't matter - it is only a matter of time - the truth is out there.



we're still stuggling, 

For some 

Whether we
doesn't matter - that


 - some propositions 

whether we have found it or are still looking 

- but, in principle, there exists a define truth value (God knows it).






 two states




`0 = 0` 


becomes a type in type theory.


 `0 = 0` 
The mathematical  `0 = 0` 
