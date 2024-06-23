# Free Boolean algebra

https://en.wikipedia.org/wiki/Free_Boolean_algebra

A **free Boolean algebra** is a *Boolean algebra* with a distinguished set of elements, called *generators*, such that:

* Each element of the Boolean algebra can be expressed as a finite combination of generators, using the Boolean operations.

* The generators are as independent as possible, in the sense that there are no relationships among them (again in terms of finite expressions using the Boolean operations) that do not hold in every Boolean algebra, no matter which elements are chosen.

>Relations on elements hold in any Boolean algebra.

There are no relations among the elements that do not hold in every Boolean algebra, no matter which elements are chosen.

## Generation of a Free Boolean Algebra

- Start with a set of "generator elements", e.g. {`P`, `Q`}. This can be a bigger set with more elements then two. These elements are in the generated set:
  -  P
  -  Q
- Add the negation of elements to the set, `¬P` and `¬Q`, {P, Q, ¬P, ¬Q}
  - ¬P
  - ¬Q
- Add the conjunctions of elements:
  -  P ∧  Q
  -  P ∧ ¬Q
  - ¬P ∧  Q
  - ¬P ∧ ¬Q
- Add the disjunctions of elements:
  -  P ∨  Q
  - ¬P ∨  Q
  -  P ∨ ¬Q
  - ¬P ∨ ¬Q
- Add the disjunctions of elements (16):
  - (P  ∧  Q) ∨ ( P ∧ ¬Q)
  - (P  ∧  Q) ∨ (¬P ∧  Q)
  - (P  ∧  Q) ∨ (¬P ∧ ¬Q)
  + (P  ∧ ¬Q) ∨ ( P ∧  Q)
  + (P  ∧ ¬Q) ∨ (¬P ∧  Q)
  + (P  ∧ ¬Q) ∨ (¬P ∧ ¬Q)
  - (¬P ∧  Q) ∨ ( P ∧  Q)
  - (¬P ∧  Q) ∨ ( P ∧ ¬Q)
  - (¬P ∧  Q) ∨ (¬P ∧ ¬Q)
  + (¬P ∧ ¬Q) ∨ ( P ∧  Q)
  + (¬P ∧ ¬Q) ∨ ( P ∧ ¬Q)
  + (¬P ∧ ¬Q) ∨ (¬P ∧  Q)
- Add TRUE and FALSE
  - TRUE
  - FALSE

Σ = 30 elements

>Finally, remove all the logically equivalent elements, and we should be left with 16 elements, each corresponding to one of the 16 Boolean binary connectives (operations).

These are logically equivalent elements:
- ( P ∧  Q) ∨ ( P ∧ ¬Q)     ...  P ✔
- ( P ∧  Q) ∨ (¬P ∧  Q)     ...  Q ✔✔
- ( P ∧  Q) ∨ (¬P ∧ ¬Q)

- ( P ∧ ¬Q) ∨ ( P ∧  Q)     ...  P ✔
- ( P ∧ ¬Q) ∨ (¬P ∧  Q)
- ( P ∧ ¬Q) ∨ (¬P ∧ ¬Q)     ... ¬Q ✔✔✔

- (¬P ∧  Q) ∨ ( P ∧  Q)     ...  Q ✔✔
- (¬P ∧  Q) ∨ ( P ∧ ¬Q)
- (¬P ∧  Q) ∨ (¬P ∧ ¬Q)     ... ¬P ✔✔✔✔

- (¬P ∧ ¬Q) ∨ ( P ∧  Q)
- (¬P ∧ ¬Q) ∨ ( P ∧ ¬Q)     ... ¬Q ✔✔✔
- (¬P ∧ ¬Q) ∨ (¬P ∧  Q)     ... ¬P ✔✔✔✔



...but we only have 10?!
-  P
-  Q
- TRUE
- ¬P
- ¬Q
- FALSE
- ( P ∧  Q) ∨ (¬P ∧ ¬Q)
- ( P ∧ ¬Q) ∨ (¬P ∧  Q)
- (¬P ∧  Q) ∨ ( P ∧ ¬Q)
- (¬P ∧ ¬Q) ∨ ( P ∧  Q)

Where %$*% are disjunctions (and implications)
-  P ∨  Q
- ¬P ∨  Q
-  P ∨ ¬Q
- ¬P ∨ ¬Q

>We should have 16 corresponding to 16 binary Boolean connectives (operators).

```
P Q | ⊥ ↑ ←̅ P̅ | →̅ Q̅ ⨯ ↓ | ∧ E Q → | P ← ∨ ⊤
1 1 | 0 0 0 0 | 0 0 0 0 | 1 1 1 1 | 1 1 1 1
1 0 | 0 0 0 0 | 1 1 1 1 | 0 0 0 0 | 1 1 1 1
0 1 | 0 0 1 1 | 0 0 1 1 | 0 0 1 1 | 0 0 1 1
0 0 | 0 1 0 1 | 0 1 0 1 | 0 1 0 1 | 0 1 0 1

0000  ⊥    FALSE
0001  ↑    NAND
0010  ⇍    REVERSE NON-IMPLICATION
0011  ¬P    NEGATED P
0100  ⇏    NON-IMPLICATION
0101  ¬Q    NEGATED Q
0110  ⊕    XOR
0111  ↓    NOR
1000  ∧    AND
1001  ⇔    EQUIVALENCE
1010  Q    ELEMENT Q
1011  ⇒    IMPLICATION
1100  P    ELEMENT P
1101  ⇐    REVERSE IMPLICATION
1110  ∨    OR
1111  ⊤    TRUE
```

## Example

The generators of a free Boolean algebra can represent independent propositions.

For example, consider the propositions
- "John is tall" (P)
- "Mary is rich" (Q)

These generate a Boolean algebra with *4 atoms*, namely:
1. John is tall, AND Mary is rich,          P ∧  Q
2. John is tall, AND Mary is not rich,      P ∧ ¬Q
3. John is not tall, AND Mary is rich,     ¬P ∧  Q
4. John is not tall, AND Mary is not rich, ¬P ∧ ¬Q

There are (12) more elements of the Boolean algebra then are logical disjunctions of the atoms, such as
- (John is _ tall ∧ Mary is _ rich) ∨ (John is     tall ∧ Mary is not rich)
- (John is _ tall ∧ Mary is _ rich) ∨ (John is not tall ∧ Mary is     rich)
- (John is _ tall ∧ Mary is _ rich) ∨ (John is not tall ∧ Mary is not rich)
- etc.


In fact, there should be 20 elements (those described plus TRUE, FALSE, P, Q)
1.  P ∧  Q
2.  P ∧ ¬Q
3. ¬P ∧  Q
4. ¬P ∧ ¬Q

5.  (P  ∧  Q) ∨ ( P ∧ ¬Q)
6.  (P  ∧  Q) ∨ (¬P ∧  Q)
7.  (P  ∧  Q) ∨ (¬P ∧ ¬Q)

8.  (P  ∧ ¬Q) ∨ ( P ∧  Q)
9.  (P  ∧ ¬Q) ∨ (¬P ∧  Q)
10. (P  ∧ ¬Q) ∨ (¬P ∧ ¬Q)

11. (¬P ∧  Q) ∨ ( P ∧  Q)
12. (¬P ∧  Q) ∨ ( P ∧ ¬Q)
13. (¬P ∧  Q) ∨ (¬P ∧ ¬Q)

14. (¬P ∧ ¬Q) ∨ ( P ∧  Q)
15. (¬P ∧ ¬Q) ∨ ( P ∧ ¬Q)
16. (¬P ∧ ¬Q) ∨ (¬P ∧  Q)

17. FALSE
18. TRUE
19. P
20. Q

...but many are the same (logically equivalent).

In addition there is one more element, *FALSE*, which can be thought of as the empty disjunction; that is, the disjunction of no atoms.

>This example yields a Boolean algebra with 16 elements.
~~What about FALSE?! And aren't the propositions P and Q also counted?~~
Perhaps, some are logically equivalent and thus double-counted? So 20 (including FALSE, TRUE, P, Q) comes down to 16?

It seems probable that one element in each of the 4 groups of 3 elements is logically equivalent to an elemenet in {TRUE, FALSE, P, Q} and was thus double-counted. *True*.

Additionally, the Hasse diagram (on the wiki page, but pertaining to another example) shows both `P` and `Q`, as well as TRUE (as the GLB) and FALSE (LUB).




![Hasse diagram of Free Boolean Algebra](https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Free-boolean-algebra-hasse-diagram.svg/607px-Free-boolean-algebra-hasse-diagram.svg.png)

The Hasse diagram of the free Boolean algebra on two generators, p and q. Take p (left circle) to be "John is tall" and q (right circle)to be "Mary is rich". The atoms are the four elements in the row just above FALSE.




### Example in symbols

Generator elements, G = {P, Q}

First 4 elements (atoms)
1.  FALSE   (F = ∅ ∨ ∅)
2.  P ∧  Q
3.  P ∧ ¬Q
4. ¬P ∧  Q
5. ¬P ∧  Q

17. FALSE
18. TRUE
19. P
20. Q
21. ¬Q
22. ¬P

12 more elements (4⨯3=12)

```
( P ∧  Q) ∨ ( P ∧ ¬Q)     ...  P ✔
( P ∧  Q) ∨ (¬P ∧  Q)     ...  Q ✔✔
( P ∧  Q) ∨ (¬P ∧ ¬Q)

( P ∧ ¬Q) ∨ ( P ∧  Q)     ...  P ✔
( P ∧ ¬Q) ∨ (¬P ∧  Q)
( P ∧ ¬Q) ∨ (¬P ∧ ¬Q)     ... ¬Q ✔✔✔

(¬P ∧  Q) ∨ ( P ∧  Q)     ...  Q ✔✔
(¬P ∧  Q) ∨ ( P ∧ ¬Q)
(¬P ∧  Q) ∨ (¬P ∧ ¬Q)     ... ¬P ✔✔✔✔

(¬P ∧ ¬Q) ∨ ( P ∧  Q)
(¬P ∧ ¬Q) ∨ ( P ∧ ¬Q)     ... ¬Q ✔✔✔
(¬P ∧ ¬Q) ∨ (¬P ∧  Q)     ... ¬P ✔✔✔✔
```


## Number of elements

In general, for finite `n`, the free Boolean algebra with `n` generators has `2ⁿ` *atoms*, and therefore 2^(2^n) elements.

If there are infinitely many generators, a similar situation prevails except that now there are no atoms.

Each element of the Boolean algebra is a combination of finitely many of the generating propositions, with two such elements *deemed identical if they are logically equivalent*.

Another way to see why the free Boolean algebra on an n-element set has `2^(2^n)` elements is to note that each element is a function from `n` bits to one. There are `2ⁿ` possible inputs to such a function and the function will choose 0 or 1 to output for each input, so there are `2^(2^n)` possible functions.
