# Lean

https://wwwf.imperial.ac.uk/~buzzard/xena/natural_number_game/


> refl

- Reflexivity, `refl`, proves goals of the form `X = X`
- The refl tactic will close any goal of the form A = B where A and B are exactly the same thing.

lemma:
example1 (x y z : mynat) : x * y + z = x * y + z :=

goal:
x y z : mynat
⊢ x * y + z = x * y + z

tactic:
refl

<!-- #region refl -->

<details><summary>refl details</summary>

Example: If it looks like this in the top right hand box:

    a b c d : mynat
    ⊢ (a + b) * (c + d) = (a + b) * (c + d)

then

    refl,


will close the goal and solve the level. Don't forget the comma.


The goal is the thing with the `⊢` just before it. The goal in this case is `x * y + z = x * y + z`, where `x`, `y` and `z` are natural numbers. To prove this goal use the `refl` tactic.

Lemma: For all natural numbers x, y and z, we have xy+z=xy+z

```
lemma example1 (x y z : mynat) : x * y + z = x * y + z :=

Proof :

begin
refl,
end
```

</details>
<!-- #endregion -->


> rw

The rewrite, `rw`, tactic.

The rewrite tactic is the way to "substitute in" the value of a variable. In general, if you have a hypothesis of the form A = B, and your goal mentions the left hand side A somewhere, then the rewrite tactic will replace the A in your goal with a B. Below is a theorem which cannot be proved using refl -- you need a rewrite first.
