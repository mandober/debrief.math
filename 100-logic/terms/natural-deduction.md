# Natural deduction

https://en.wikipedia.org/wiki/Natural_deduction

In logic and proof theory, **natural deduction** is a kind of *proof calculus* in which logical reasoning is expressed by inference rules closely related to the "natural" way of reasoning.

This contrasts with *Hilbert-style systems*, which instead use axioms as much as possible to express the logical laws of deductive reasoning.

In natural deduction, a proposition is deduced from a collection of premises by applying inference rules repeatedly.

The judgment `A prop`, meaning that `A` is a valid proposition, defines the structure of valid proofs of `A`, which in turn defines the structure of propositions.

A logic system defines the structure of propositions by declaring a minimal set of valid syntactic rules. Usually, it defines that an atomic proposition is represented by a letter from some set (e.g. P, Q, R, etc.) and then it declares shit like: if `P` and `Q` are valid formulas then so is `¬P`, `P ∧ Q`, `P ∨ Q`, and so on.

For this reason, the inference rules for this judgment are sometimes known as *formation rules*. To illustrate, if we have two propositions `A` and `B`, that is, the judgments `A prop` and `B prop` are true, then we can form the compound proposition `A ∧ B`. We can write this in the form of an inference rule called AND-introduction (∧I)

```
A   B
----- ∧I
A ∧ B
```

which can be considered a shortcut for the longer explicit rule:

```
A prop, A is true    B prop, B is true
-------------------------------------- ∧I
    (A ∧ B) prop, (A ∧ B) is true
```

Although, since it is normally understood that a formula must be a proposition and a true one at that, explitly written rules are rare encountered.


---

For constructing a calculus for reasoning about propositions so we can establish the validity we need a set of rules each of which allows us to draw a conclusion given a certain arrangement of premises.

Natural deduction has a collection of _proof rules_, which allow us to infer formulas from other formulas. By applying these rules in succession, we may infer a conclusion from a set of premises.

Given a set of _premises_, such as formulas $$\phi_1, \phi_2, \dots, \phi_n$$, and a _conclusion_ formula, $$\psi$$: we continually apply the proof rules to the premises, working our way through possibly more formulas, until we eventually arrive at the conclusion, which is denoted by $$\phi_1, \phi_2, \dots, \phi_n \vdash \psi$$.

This expression is called a __sequent__; it is valid if its proof exists. (the turnstile symbol, $$\vdash$$, is usually read "yields" or "proves").


<details>
<summary>Example</summary

Example 1.   
If the train arrives late and there are no taxis at the station, then John is late for his meeting. John is not late for his meeting. The train did arrive late. Therefore, there were taxis at the station.

Example 2.    
If it is raining and Jane does not have her umbrella with her, then she will get wet. Jane is not wet. It is raining. Therefore, Jane has her umbrella with her.

```
If it's raining and Jane doesn't have her umbrella, then she'll get wet.
It's raining.
Jane is not wet.
Therefore, Jane has her umbrella.
```

which could be simplified into:

```
If p and not q, then r.
Not r.
p.
Therefore, q.
```

and converted into formal presentation:

$${p}\wedge\neg{q}\rightarrow{r}$$
$$\neg{r}$$
$${p}$$
$$\therefore{q}$$

The sequent for these examples:    
$${p}\wedge\neg{q}\rightarrow{r}, \neg{r}, p \vdash q$$

</details><br>


It is not necessarily obvious which rules to apply, and in what order, to obtain the desired conclusion. Additionally, our proof rules should be carefully chosen; otherwise, we might be able to "prove" invalid patterns of argumentation. For example, we won't be able to prove the sequent: $$p, q \vdash p \land \lnot q$$.



## Proposition formation rules

The judgment "A is a proposition" or abbreviated as *A prop* defines the structure of valid proofs of `A`, which in turn defines the structure of propositions. For this reason, the inference rules for this judgment are sometimes known as **formation rules**.

The judgments above the line are known as **premises**, and those below the line are **conclusions**.

Common logical propositions
- conjunction, A ∧ B
- disjunction, A ∨ B
- negation, ¬A
- implication, A ⊃ B
- the logical constants top, ⊤
- the logical constants bottom, ⊥

### Conjunction

If we have two propositions, `A prop` and `B prop` (that is, the judgments "A is a proposition" and "B is a proposition" are both *evident*), then we can form the *compound proposition* `A` and `B`, written symbolically as "A ∧ B".

We can write this in the form of an inference rule:

$$\displaystyle
\frac { A \text{ prop} \quad B \text{ prop} }
      { A\land B \text{ prop} }\ 
\land _{F}
$$

### Disjunction

$$\displaystyle
\frac { A \text{ prop} \quad B \text{ prop} }
      { A\lor B \text{ prop} }\ 
\lor _{F}
$$

### Negation

$$\displaystyle
\frac { A \text{ prop}}
      { \lnot A \text{ prop} }\ 
\lnot _{F}
$$


### Implication

$$\displaystyle
\frac { A \text{ prop} \quad B \text{ prop} }
      { A\supset B \text{ prop} }\ 
\supset _{F}
$$

### Top

$$\displaystyle
\frac { }
      { \top \text{ prop} }\ 
\top _{F}
$$


### Bottom

$$\displaystyle
\frac { }
      { \bot \text{ prop} }\ 
\bot _{F}
$$


## References

https://en.wikipedia.org/wiki/Natural_deduction
https://en.wikipedia.org/wiki/Deductive_reasoning
https://en.wikipedia.org/wiki/Category:Deductive_reasoning
https://ncatlab.org/nlab/show/natural+deduction
