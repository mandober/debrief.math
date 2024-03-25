# Rules of replacement

*Rules of Replacement*: any of the following logically equivalent expressions can replace each other wherever they occur.

>can he applied either to whole lines or to parts of lines

- Double negation (DN)
  - p ≡ ¬¬p

- Transposition (TRANS)
  - p → q ≡ ¬q → ¬p

- Material implication (MI)
  - p → q ≡ ¬p ∨ q

- Material equivalence (ME)
  - p ⇔ q ≡ (p → q) ∧ (q → p)
  - p ⇔ q ≡ (p ∧ q) ∨ (¬p ∧ ¬q)

- Exportation (EXP)
  - `(P ∧ Q) → R ≡ P → (Q → R)`

- Tautology (TAUT)
  - P ∧ P ≡ P
  - P ∨ P ≡ P
  - P → P ≡ P

- De Morgan's Theorems (DeM, DM)
  - ¬p ∨ ¬q ≡ ¬(p ∧ q)
  - ¬p ∧ ¬q ≡ ¬(p ∨ q)
  - and similar:
    - p ∧ q ≡ ¬(¬p ∨ ¬q)
    - p ∨ q ≡ ¬(¬p ∧ ¬q)
    - p ∧ ¬q ≡ ¬(¬p ∨ q)
    - ¬p ∧ q ≡ ¬(p ∨ ¬q)
    - …

- Commutativity (COMM)
  - p ∧ q ≡ q ∧ p
  - p ∨ q ≡ q ∨ p

- Associativity (ASSOC)
  - P ∧ Q ∧ R ≡ P ∧ (Q ∧ R) ≡ (P ∧ Q) ∧ R
  - P ∨ Q ∨ R ≡ P ∨ (Q ∨ R) ≡ (P ∨ Q) ∨ R

- Distributivity (DISTR)
  - distributivity of conjunction
    - distributivity of ∧ over ∧
      - `P ∧ (Q ∧ R) ≡ (P ∧ Q) ∧ (P ∧ R)`
    - distributivity of ∧ over ∨
      - `P ∧ (Q ∨ R) ≡ (P ∧ Q) ∨ (P ∧ R)`

  - distributivity of disjunction
    - distributivity of ∨ over ∨
      - `P ∨ (Q ∨ R) ≡ (P ∨ Q) ∨ (P ∨ R)`
    - distributivity of ∨ over ∧
      - `P ∨ (Q ∧ R) ≡ (P ∨ Q) ∧ (P ∨ R)`

  - distributivity of implication
    - left-distributivity of ⇒ over ⇒
      - `P → (Q → R) ≡ (P → Q) → (P → R)`   ✔ (proof below)
    - right-distributivity of ⇒ over ⇒
     - ✘ no!
    - left-distributivity of implication over ∧, ∨
      - `P → (Q ∧ R) ≡ (P → Q) ∧ (P → R)`     ✔ (proof below)
      - `P → (Q ∨ R) ≡ (P → Q) ∨ (P → R)`     ✔ (proof below)
    - right-distributivity of implication over ∨, ∧
      - `(P ∨ Q) → R ≡ (P → R) ∧ (Q → R)`     ✔ (proof below)
      - `(P ∧ Q) → R ≡ (P → R) ∨ (Q → R)`     ✔ (proof below)
      -  (P ∧ Q) → R ≡ P → (R → Q)            ✔ (by Exportation)

  - left-distributivity of disjunction over implication
    - `(R ∨ (P ⇒ Q)) ≡ ((R ∨ P) ⇒ (R ∨ Q))`  ✔ (proof below)
    - `((P ⇒ Q) ∨ R) ≡ ((P ∨ R) ⇒ (Q ∨ R))`  ✔ (proof below)

  - left-distributivity of conjunction over implication
       (R ∧ (P ⇒ Q)) `≢` ((R ∧ P) ⇒ (R ∧ Q))  ✘
       however, replacing the rhs ∧ with ⇒
      `(R ∧ (P ⇒ Q)) ≡ ((R ⇒ P) ⇒ (R ∧ Q))`  ✔ (proof below)
      note that 
      R ∧ (P ⇒ Q)   is 
      (P ⇒ Q) ∧ R   by COMM



## About the Rules of Replacement

The only compound statements that concern us here are truth-functional compound statements. Hence if any part of a compound statement is replaced by an expression that is logically equivalent to the part replaced, the truth value of the resulting statement is the same as that of the original statement. This is sometimes called the *Rule of Replacement* or the *Principle of Extensionality*.

Adopting the Rule of Replacement as an additional principle of inference permits us to infer from any statement the result of replacing all or part of that statement by any other statement logically equivalent to the part replaced.

For example, using the *Principle of Double Negation* (DN), which asserts the logical equivalence of P and ¬¬P, we can infer from P → ¬¬Q any of the follwoing statements by the Rule of Replacement:
- P → Q
- P → ¬¬Q
- ¬¬P → Q
- ¬¬P → ¬¬Q
- P → ¬¬¬¬Q
- ¬¬(P → ¬¬Q)
- etc.

## Proofs

- (P ∧ Q) ⇒ R ⇔ (P ⇒ R) ∨ (Q ⇒ R)
- (P ∨ Q) ⇒ R ⇔ (P ⇒ R) ∧ (Q ⇒ R)

- R ⇒ (P ∨ Q) ⇔ (R ⇒ P) ∨ (R ⇒ Q)
- R ⇒ (P ∧ Q) ⇔ (R ⇒ P) ∧ (R ⇒ Q)

- P ∧ (Q ⇒ R) ≡ (P ⇒ Q) ⇒ (P ∧ R)

- R ∧ (P ⇒ Q) `≢` (R ∧ P) ⇒ (R ∧ Q) ✘
  but replacing the rhs __∧__ with __⇒__
- (R ∧ (P ⇒ Q)) ≡ ((R ⇒ P) ⇒ (R ∧ Q))  ✔
  ((P ⇒ Q) ∧ R) ≡ ((R ⇒ P) ⇒ (R ∧ Q))  ✔



- `(P ⇒ Q) ∨ R ≡ (P ∨ R) ⇒ (Q ∨ R)`        ✔
   ((P => Q) + R) <=> ((P + R) => (Q + R))  ✔

- `(P ⇒ Q) ∧ R ≡ (P ∧ R) ⇒ (Q ∧ R)`        ✘

  - ((P => Q) & R) <=> ((P `&` R) => (Q `&` R)) ✘
    it is false when the following literals are true: ¬Q,  P, ¬R
    Can it be saved by swapping connectives?
  - ((P => Q) & R) <=> ((P `&` R) => (Q `=>` R)) ✘
    it is false when the following literals are true: ¬Q,  P, ¬R
  - ((P => Q) & R) <=> ((P `=>` R) => (Q `&` R)) ✘
    it is false when the following literals are true: ¬Q, ¬P,  R
  - ((P => Q) & R) <=> ((P `=>` R) => (Q `=>` R)) ✘
    it is false when the following literals are true: ¬Q,  P, ¬R
  - ((P => Q) & R) <=> ((P `=>` R) => (Q `+` R)) ✘
    it is false when the following literals are true: ¬Q,  P, ¬R
  - ((P => Q) & R) <=> ((P `+` R) => (Q `&` R)) ✘
    it is false when the following literals are true: ¬Q, ¬P,  R
  - ((P => Q) & R) <=> ((P `&` R) => (Q `+` R)) ✘
    it is false when the following literals are true: ¬Q, ¬P,  R
  - ((P => Q) & R) <=> ((P `=>` R) => (Q `+` R)) ✘
    it is false when the following literals are true: ¬Q,  P, ¬R
  - ((P => Q) & R) <=> ((P `+` R) => (Q `=>` R)) ✘
    it is false when the following literals are true: ¬Q,  P, ¬R




### (P ∧ Q) ⇒ R ⇔ (P ⇒ R) ∨ (Q ⇒ R)

```
1  | assume P ∧ Q ⇒ R.
2  | | assume P.
3  | | | assume Q.
4  | | |   P ∧ Q.                                          ∧I 2,3
5  | | |   R.                                              ⇒E 1,4
6  | | | therefore Q ⇒ R.                                  ⇒I 3,5
7  | | therefore P ⇒ Q ⇒ R.                               ⇒I 2,6
8  | | assume ¬((P ⇒ R) ∨ (Q ⇒ R)).
9  | | | assume P ⇒ R.
10 | | |   (P ⇒ R) ∨ (Q ⇒ R).                             ∨I1 9
11 | | |   F.                                              ⇒E 8,10
12 | | | therefore ¬(P ⇒ R).                              ⇒I 9,11
13 | | | assume Q.
14 | | | | assume ¬P.
15 | | | | | assume P.
16 | | | | |   F.                                          ⇒E 14,15
17 | | | | |   R.                                          EFQ 16
18 | | | | | therefore P ⇒ R.                             ⇒I 15,17
19 | | | | | F.                                            ⇒E 12,18
20 | | | | therefore ¬¬P.                                  ⇒I 14,19
21 | | | | P.                                              RAA 20
22 | | | | assume ¬(¬P ∨ (Q ⇒ R)).
23 | | | | | assume Q ⇒ R.
24 | | | | |   ¬P ∨ (Q ⇒ R).                              ∨I2 23
25 | | | | |   F.                                          ⇒E 22,24
26 | | | | | therefore ¬(Q ⇒ R).                          ⇒I 23,25
27 | | | | | Q ⇒ R.                                       ⇒E 7,21
28 | | | | | F.                                            ⇒E 26,27
29 | | | | therefore ¬¬(¬P ∨ (Q ⇒ R)).                    ⇒I 22,28
30 | | | | ¬P ∨ (Q ⇒ R).                                  RAA 29
31 | | | | assume ¬P.
32 | | | |   F.                                            ⇒E 31,21
33 | | | |   R.                                            EFQ 32
34 | | | | therefore ¬P ⇒ R.                               ⇒I 31,33
35 | | | | | assume Q ⇒ R.
36 | | | | |  R.                                          ⇒E 35,13
37 | | | | therefore (Q ⇒ R) ⇒ R.                        ⇒I 35,36
38 | | | | R.                                             ∨ES 30,34,37
39 | | | therefore Q ⇒ R.                                 ⇒I 13,38
40 | | | (P ⇒ R) ∨ (Q ⇒ R).                              ∨I2 39
41 | | | F.                                               ⇒E 8,40
42 | | therefore ¬¬((P ⇒ R) ∨ (Q ⇒ R)).                  ⇒I 8,41
43 | | (P ⇒ R) ∨ (Q ⇒ R).                                RAA 42
44 | therefore (P ∧ Q ⇒ R) ⇒ (P ⇒ R) ∨ (Q ⇒ R).         ⇒I 1,43
45 | assume (P ⇒ R) ∨ (Q ⇒ R).
46 | | assume P ∧ Q.
47 | | | P.                                                ∧E1 46
48 | | | Q.                                                ∧E2 46
49 | | | assume P ⇒ R.
50 | | | | R.                                              ⇒E 49,47
51 | | | therefore (P ⇒ R) ⇒ R.                           ⇒I 49,50
52 | | | assume Q ⇒ R.
53 | | | | R.                                              ⇒E 52,48
54 | | | therefore (Q ⇒ R) ⇒ R.                           ⇒I 52,53
55 | | | R.                                                ∨ES 45,51,54
56 | | therefore P ∧ Q ⇒ R.                               ⇒I 46,55
57 | therefore (P ⇒ R) ∨ (Q ⇒ R) ⇒ P ∧ Q ⇒ R.            ⇒I 45,56
58 P ∧ Q ⇒ R ⇔ (P ⇒ R) ∨ (Q ⇒ R).                        ∧I 44,57
```

### (P ∨ Q) ⇒ R ⇔ (P ⇒ R) ∧ (Q ⇒ R)

```
1    assume P ∨ Q ⇒ R.
2      assume P.
3        P ∨ Q.                                            ∨I1 2
4        R.                                                ⇒E 1,3
5      therefore P ⇒ R.                                   ⇒I 2,4
6      assume Q.
7        P ∨ Q.                                            ∨I2 6
8        R.                                                ⇒E 1,7
9      therefore Q ⇒ R.                                   ⇒I 6,8
10     (P ⇒ R) ∧ (Q ⇒ R).                                 ∧I 5,9
11   therefore (P ∨ Q ⇒ R) ⇒ (P ⇒ R) ∧ (Q ⇒ R).          ⇒I 1,10
12   assume (P ⇒ R) ∧ (Q ⇒ R).
13     assume P ∨ Q.
14       assume P.
15         P ⇒ R.                                         ∧E1 12
16         R.                                              ⇒E 15,14
17       therefore P ⇒ R.                                 ⇒I 14,16
18       assume Q.
19         Q ⇒ R.                                         ∧E2 12
20         R.                                              ⇒E 19,18
21       therefore Q ⇒ R.                                 ⇒I 18,20
22       R.                                                ∨ES 13,17,21
23     therefore P ∨ Q ⇒ R.                               ⇒I 13,22
24   therefore (P ⇒ R) ∧ (Q ⇒ R) ⇒ P ∨ Q ⇒ R.            ⇒I 12,23
25   P ∨ Q ⇒ R ⇔ (P ⇒ R) ∧ (Q ⇒ R).                      ∧I 11,24
```

### R ⇒ (P ∨ Q) ⇔ (R ⇒ P) ∨ (R ⇒ Q)

```
1    assume R ⇒ P ∨ Q.
2      assume -((R ⇒ P) ∨ (R ⇒ Q)).
3        assume R ⇒ P.
4          (R ⇒ P) ∨ (R ⇒ Q).                             ∨I1 3
5          F.                                              ⇒E 2,4
6        therefore -(R ⇒ P).                              ⇒I 3,5
7        assume R.
8          assume P.
9            assume R.
10           therefore R ⇒ P.                             ⇒I 9,8
11           F.                                            ⇒E 6,10
12         therefore -P.                                   ⇒I 8,11
13         assume -(-R ∨ (P ∨ Q)).
14           assume P ∨ Q.
15             -R ∨ (P ∨ Q).                               ∨I2 14
16             F.                                          ⇒E 13,15
17           therefore -(P ∨ Q).                           ⇒I 14,16
18           P ∨ Q.                                        ⇒E 1,7
19           F.                                            ⇒E 17,18
20         therefore --(-R ∨ (P ∨ Q)).                     ⇒I 13,19
21         -R ∨ (P ∨ Q).                                   RAA 20
22         assume -R.
23           F.                                            ⇒E 22,7
24           Q.                                            Efq 23
25         therefore -R ⇒ Q.                              ⇒I 22,24
26         assume P ∨ Q.
27           assume P.
28             F.                                          ⇒E 12,27
29             Q.                                          Efq 28
30           therefore P ⇒ Q.                             ⇒I 27,29
31           assume Q.
32           therefore Q ⇒ Q.                             ⇒I 31,31
33           Q.                                            ∨ES 26,30,32
34         therefore P ∨ Q ⇒ Q.                           ⇒I 26,33
35         Q.                                              ∨ES 21,25,34
36       therefore R ⇒ Q.                                 ⇒I 7,35
37       (R ⇒ P) ∨ (R ⇒ Q).                              ∨I2 36
38       F.                                                ⇒E 2,37
39     therefore --((R ⇒ P) ∨ (R ⇒ Q)).                  ⇒I 2,38
40     (R ⇒ P) ∨ (R ⇒ Q).                                RAA 39
41   therefore (R ⇒ P ∨ Q) ⇒ (R ⇒ P) ∨ (R ⇒ Q).        ⇒I 1,40
42   assume (R ⇒ P) ∨ (R ⇒ Q).
43     assume R.
44       assume R ⇒ P.
45         P.                                              ⇒E 44,43
46         P ∨ Q.                                          ∨I1 45
47       therefore (R ⇒ P) ⇒ P ∨ Q.                      ⇒I 44,46
48       assume R ⇒ Q.
49         Q.                                              ⇒E 48,43
50         P ∨ Q.                                          ∨I2 49
51       therefore (R ⇒ Q) ⇒ P ∨ Q.                      ⇒I 48,50
52       P ∨ Q.                                            ∨ES 42,47,51
53     therefore R ⇒ P ∨ Q.                               ⇒I 43,52
54   therefore (R ⇒ P) ∨ (R ⇒ Q) ⇒ R ⇒ P ∨ Q.          ⇒I 42,53
55   R ⇒ P ∨ Q ⇔ (R ⇒ P) ∨ (R ⇒ Q).                   ∧I 41,54
```

### R ⇒ (P ∧ Q) ⇔ (R ⇒ P) ∧ (R ⇒ Q)

```
1    assume R ⇒ P ∧ Q.
2      assume R.
3        P ∧ Q.                                           ⇒E 1,2
4        P.                                               ∧E1 3
5      therefore R ⇒ P.                                   ⇒I 2,4
6      assume R.
7        P ∧ Q.                                           ⇒E 1,6
8        Q.                                               ∧E2 7
9      therefore R ⇒ Q.                                  ⇒I 6,8
10     (R ⇒ P) ∧ (R ⇒ Q).                                ∧I 5,9
11   therefore (R ⇒ P ∧ Q) ⇒ (R ⇒ P) ∧ (R ⇒ Q).         ⇒I 1,10
12   assume (R ⇒ P) ∧ (R ⇒ Q).
13     assume R.
14       R ⇒ P.                                           ∧E1 12
15       R ⇒ Q.                                           ∧E2 12
16       P.                                               ⇒E 14,13
17       Q.                                               ⇒E 15,13
18       P ∧ Q.                                           ∧I 16,17
19     therefore R ⇒ P ∧ Q.                              ⇒I 13,18
20   therefore (R ⇒ P) ∧ (R ⇒ Q) ⇒ R ⇒ P ∧ Q.           ⇒I 12,19
21   R ⇒ P ∧ Q ⇔ (R ⇒ P) ∧ (R ⇒ Q).                     ∧I 11,20
```

### R ∧ (P ⇒ Q) ≡ (R ⇒ P) ⇒ (R ∧ Q)

```
1    assume R ∧ (P ⇒ Q).
2      assume R ⇒ P.
3        R.                                                ∧E1 1
4        P.                                                ⇒E 2,3
5        P ⇒ Q.                                           ∧E2 1
6        Q.                                                ⇒E 5,4
7        R ∧ Q.                                            ∧I 3,6
8      therefore (R ⇒ P) ⇒ R ∧ Q.                        ⇒I 2,7
9    therefore R ∧ (P ⇒ Q) ⇒ (R ⇒ P) ⇒ R ∧ Q.           ⇒I 1,8
10   assume (R ⇒ P) ⇒ R ∧ Q.
11     assume ¬(¬(R ⇒ P) + R ∧ Q).
12       assume ¬(R ⇒ P).
13         ¬(R ⇒ P) + R ∧ Q.                              +I1 12
14         F.                                              ⇒E 11,13
15       therefore ¬¬(R ⇒ P).                             ⇒I 12,14
16       R ⇒ P.                                           RAA 15
17       assume R ∧ Q.
18         ¬(R ⇒ P) + R ∧ Q.                              +I2 17
19         F.                                              ⇒E 11,18
20       therefore ¬(R ∧ Q).                               ⇒I 17,19
21       R ∧ Q.                                            ⇒E 10,16
22       F.                                                ⇒E 20,21
23     therefore ¬¬(¬(R ⇒ P) + R ∧ Q).                    ⇒I 11,22
24     ¬(R ⇒ P) + R ∧ Q.                                  RAA 23
25     assume ¬(R ⇒ P).
26       assume ¬R.
27         assume R.
28           F.                                            ⇒E 26,27
29           P.                                            Efq 28
30         therefore R ⇒ P.                               ⇒I 27,29
31         F.                                              ⇒E 25,30
32       therefore ¬¬R.                                    ⇒I 26,31
33       R.                                                RAA 32
34     therefore ¬(R ⇒ P) ⇒ R.                            ⇒I 25,33
35     assume R ∧ Q.
36       R.                                                ∧E1 35
37     therefore R ∧ Q ⇒ R.                               ⇒I 35,36
38     R.                                                  +ES 24,34,37
39     assume P.
40       assume R.
41       therefore R ⇒ P.                                 ⇒I 40,39
42       R ∧ Q.                                            ⇒E 10,41
43       Q.                                                ∧E2 42
44     therefore P ⇒ Q.                                   ⇒I 39,43
45     R ∧ (P ⇒ Q).                                       ∧I 38,44
46   therefore ((R ⇒ P) ⇒ R ∧ Q) ⇒ R ∧ (P ⇒ Q).         ⇒I 10,45
47   R ∧ (P ⇒ Q) ⇔ (R ⇒ P) ⇒ R ∧ Q.                     ∧I 9,46
```

### (P ⇒ Q) ∨ R ≡ (P ∨ R) ⇒ (Q ∨ R)

```
1    assume (P => Q) + R.
2      assume P + R.
3        assume P.
4          assume P => Q.
5            Q.                                            =>E 4,3
6            Q + R.                                        +I1 5
7          therefore (P => Q) => Q + R.                    =>I 4,6
8          assume R.
9            Q + R.                                        +I2 8
10         therefore R => Q + R.                           =>I 8,9
11         Q + R.                                          +ES 1,7,10
12       therefore P => Q + R.                             =>I 3,11
13       assume R.
14         Q + R.                                          +I2 13
15       therefore R => Q + R.                             =>I 13,14
16       Q + R.                                            +ES 2,12,15
17     therefore P + R => Q + R.                           =>I 2,16
18   therefore (P => Q) + R => P + R => Q + R.             =>I 1,17
19   assume P + R => Q + R.
20     assume P.
21       P + R.                                            +I1 20
22       Q + R.                                            =>E 19,21
23     therefore P => Q + R.                               =>I 20,22
24     assume R.
25       P + R.                                            +I2 24
26       Q + R.                                            =>E 19,25
27     therefore R => Q + R.                               =>I 24,26
28     assume -((P => Q) + R).
29       assume P => Q.
30         (P => Q) + R.                                   +I1 29
31         F.                                              =>E 28,30
32       therefore -(P => Q).                              =>I 29,31
33       assume -P.
34         assume P.
35           F.                                            =>E 33,34
36           Q.                                            Efq 35
37         therefore P => Q.                               =>I 34,36
38         F.                                              =>E 32,37
39       therefore --P.                                    =>I 33,38
40       P.                                                Raa 39
41       assume Q.
42         assume P.
43         therefore P => Q.                               =>I 42,41
44         F.                                              =>E 32,43
45       therefore -Q.                                     =>I 41,44
46       assume -(-R + (Q + R)).
47         assume -R.
48           -R + (Q + R).                                 +I1 47
49           F.                                            =>E 46,48
50         therefore --R.                                  =>I 47,49
51         R.                                              Raa 50
52         assume Q + R.
53           -R + (Q + R).                                 +I2 52
54           F.                                            =>E 46,53
55         therefore -(Q + R).                             =>I 52,54
56         Q + R.                                          =>E 27,51
57         F.                                              =>E 55,56
58       therefore --(-R + (Q + R)).                       =>I 46,57
59       -R + (Q + R).                                     Raa 58
60       assume -R.
61         assume -(-P + (Q + R)).
62           assume Q + R.
63             -P + (Q + R).                               +I2 62
64             F.                                          =>E 61,63
65           therefore -(Q + R).                           =>I 62,64
66           Q + R.                                        =>E 23,40
67           F.                                            =>E 65,66
68         therefore --(-P + (Q + R)).                     =>I 61,67
69         -P + (Q + R).                                   Raa 68
70         assume -P.
71           F.                                            =>E 70,40
72           R.                                            Efq 71
73         therefore -P => R.                              =>I 70,72
74         assume Q + R.
75           assume Q.
76             F.                                          =>E 45,75
77             R.                                          Efq 76
78           therefore Q => R.                             =>I 75,77
79           assume R.
80           therefore R => R.                             =>I 79,79
81           R.                                            +ES 74,78,80
82         therefore Q + R => R.                           =>I 74,81
83         R.                                              +ES 69,73,82
84       therefore -R => R.                                =>I 60,83
85       assume Q + R.
86         assume Q.
87           F.                                            =>E 45,86
88           R.                                            Efq 87
89         therefore Q => R.                               =>I 86,88
90         assume R.
91         therefore R => R.                               =>I 90,90
92         R.                                              +ES 85,89,91
93       therefore Q + R => R.                             =>I 85,92
94       R.                                                +ES 59,84,93
95       (P => Q) + R.                                     +I2 94
96       F.                                                =>E 28,95
97     therefore --((P => Q) + R).                         =>I 28,96
98     (P => Q) + R.                                       Raa 97
99   therefore (P + R => Q + R) => (P => Q) + R.           =>I 19,98
100  (P => Q) + R <=> P + R => Q + R.                      &I 18,99
```

### (P => (Q => R)) <=> ((P => Q) => (P => R))

```
1    assume P => Q => R.
2      assume P => Q.
3        assume P.
4          Q.                                              =>E 2,3
5          Q => R.                                         =>E 1,3
6          R.                                              =>E 5,4
7        therefore P => R.                                 =>I 3,6
8      therefore (P => Q) => P => R.                       =>I 2,7
9    therefore (P => Q => R) => (P => Q) => P => R.        =>I 1,8
10   assume (P => Q) => P => R.
11     assume P.
12       assume Q.
13         assume P.
14         therefore P => Q.                               =>I 13,12
15         P => R.                                         =>E 10,14
16         R.                                              =>E 15,11
17       therefore Q => R.                                 =>I 12,16
18     therefore P => Q => R.                              =>I 11,17
19   therefore ((P => Q) => P => R) => P => Q => R.        =>I 10,18
20   P => Q => R <=> (P => Q) => P => R.                   &I 9,19
```

## About the replacement rules

>There are two very important differences between substitution and replacement.

First, in *substituting* statements for statement variables in an argument form, any statement variable can have any statement substituted for it. In *replacement*, on the other hand, a statement can be replaced only by a statement logically equivalent to it.

Second, in *substitution*, every occurrence of a statement variable in an argument form must have the same statement substituted for it. In *replacement*, however, one (or several) occurrences of a statement may be replaced by a logically equivalent statement, without other occurrences of that statement having to be replaced also.


## The rule of Conditional Proof

The rule of **Conditional Proof (CP**) permits us to infer the validity of any argument of the form

```
P
∴ A ⇒ C
```

from a formal proof of validity for the argument

```
P
A
∴ C
```

Given any argument whose conclusion is a conditional statement, a proof of its validity, using the rule of Conditional Proof - that is, a *conditional proof of its validity* - is constructed by assuming the antecedent of its conclusion as an additional premiss, and then deducing the consequent of its conclusion by a sequence of elementary valid arguments.

## The rule of Indirect Proof

The rule of **Indirect Proof** (IP), or **reductio ad absurdum** (RAA), procceds by assuming the opposite of what we want to prove. If that assumption leads to a contradiction (i.e. reduces to an absurdity), then that assumption must be false, and so its negation - the theorem to be proved - must be true.



## Refs

http://teachinglogic.liglab.fr/DN/index.php

- `Symbolic Logic` - 5th edition, Irving M. Copi, 1979
