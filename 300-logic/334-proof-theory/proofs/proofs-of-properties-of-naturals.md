# Proofs involving the addition of natural numbers

```js
// add
x + 0 = x                                                           DEF A.1
x + S(y) = S(x + y)                                                 DEF A.2

// mul
x ∙ 0 = x                                                           DEF M.1
x ∙ S(y) = x + x ∙ y                                                DEF M.2


lemma. left identity of addition
x + 0 = x                                                         A.3.IDL
  by. A.1
qed.


lemma. right identity of addition
0 + x = x                                                         A.4.IDR

  proof by induction on x.
  base_case.
    0 + 0 = 0                         by A.1
  inductive_case.
      0 + x = x                       IH
    → 0 + S(x) = S(x)                 to_prove
    begin.
    0 + S(x) = S(x)                   rw. lhs with rhs of A.2
    S(0 + x) = S(x)                   rw. lhs with rhs of IH
    S(x) = S(x)                       refl.
    end.
qed.


lemma. S(x) + y = x + S(y)                                          A.5

  proof by induction on y.
  base_case.
    S(x) + 0 = x + S(0)               rw. lhs with A.1
    S(x) = x + S(0)                   rw. rhs with A.2
    S(x) = S(x + 0)                   rw. rhs with A.1
    S(x) = S(x)                       refl.

  inductive_case.
      S(x) + y = x + S(y)             IH
    → S(x) + S(y) = x + S(S(y))       to_prove

    begin.
    S(x) + S(y) = x + S(S(y))         rw. lhs with A.2
    S(S(x) + y) = x + S(S(y))         rw. lhs with IH
    S(x + S(y)) = x + S(S(y))         rw. rhs with A.2
    S(x + S(y)) = S(x + S(y))         refl.
    end.
qed.


lemma. commutativity of addition                                    A.6
x + y = y + x

  proof by induction on y.
  base_case.
    x + 0 = 0 + x                     rw. lhs with A.2
    x = 0 + x                         rw. rhs with A.4
    x = x                             refl.

  inductive_case.
      x + y = y + x                   IH
    → x + S(y) = S(y) + x             to_prove

    begin.
    x + S(y) = S(y) + x               rw. lhs with A.2
    S(x + y) = S(y) + x               rw. rhs with A.5
    S(x + y) = y + S(x)               rw. rhs with A.2
    S(x + y) = S(y + x)               rw. lhs with IH
    S(y + x) = S(y + x)               refl.
    end.
qed.


lemma. associativity of addition                                    A.7
(x + y) + z = x + (y + z)


```



https://upload.wikimedia.org/wikipedia/commons/3/34/Inductive_proofs_of_properties_of_add%2C_mult_from_recursive_definitions_svg.svg
