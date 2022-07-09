# Proofs involving natural numbers

```js
// mul
x ∙ Z = x                                                           DEF M.1
x ∙ S(y) = x + x ∙ y                                                DEF M.2

lemma. S(x) + y = x + S(y)                                          A.5

  proof by induction on y.
  base_case.
    S(x) + Z = x + S(Z)               rw. lhs with A.1
    S(x) = x + S(Z)                   rw. rhs with A.2
    S(x) = S(x + Z)                   rw. rhs with A.1
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
    x + Z = Z + x                     rw. lhs with A.2
    x = Z + x                         rw. rhs with A.4
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
