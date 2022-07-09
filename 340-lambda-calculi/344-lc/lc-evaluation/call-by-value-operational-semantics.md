# Call-by-value operational semantics


The lambda calculus is a language of pure functions
- expressions:  E := x | λx.E | E E
- values:       V :=     λx.E


* Values are abstractions (i.e. functions as first-class values).
* But there's no difference between a `V` and an `E` that's an abstraction?


The call-by-value operational semantics has 3 inference rules:

```js

--------------------- BETA
(λx.E)V ---> [x:=V]E


   E₁ ---> E₁′
------------------ APP1 (first, fully reduce the left term)
E₁ E₂ ---> E₁′ E₂


  E₂ ---> E₂′
---------------- APP2 (then, fully reduce the right term; then do BETA)
V E₂ ---> V E₂′
```

* This is call-by-value semantics since, e.g. in BETA rule, the argument is a value (`V`) rather than general expression (`E`).
* The BETA rule is used together with 2 search rules, APP1 and APP2.
* Because of the rules, evaluation proceeds from left to right.
* I guess the two APP rule enforce that the leftmost term gets reduced first [?]
  (then are the parens redundant?)
  (sure, coz the application is left-assoc anyway)
  (when is the APP2 triggered?
  i.e. what's the difference between a `V` and an `E` that's an abstraction?)
* New (probably correct) idea:
  if you have an application `E₁ E₂`
  and you know you can evaluate (reduce) the left term `E₁` to `E₁'`
  then (do that) before getting back to evaluating `E₁ E₂`
  which by then is actually `E₁' E₂`.
  In a sense, an application `E₁ E₂`
  requires you evaluate the left term first
  making sure that it's a function,
  (so the application is possible)
  but then this evaluated term `E₁'`
  might evaluate some more,
  like `E₁` to `E₁'` to `E₁''` to `E₁'''`
  before it's the turn for the original application to take place.
  Meaning the application is left-associative (which we knew all along),
  and that the evaluation is strict (eager) (which we also kinda knew).
* While the left term is reducable
  keep applying the APP1 rule,
  until you can't reduce it no more,
  then start reducing (evaluating)
  the right term according to the APP2 rule.

* To evaluate `E A`, first reduce `E --> E'`, and so on until the new left term `E'` cannot be reduced further, i.e. until it becomes a "value", `V`. At which point, start reducing the right term `A ---> A'`. When it cannot be reduced further, finally perform the application that began as `E A` but is now `E' A'`.




## Example executions

* One

```js
// Program:
((λx. λy. x y) [λw. w]) (λz. z)


// 1) Proof that it can take the first step:

--------------------------------------------------------- BETA
((λx. λy. x y) (λw. w))         ---> (λy. (λw. w) y)
---------------------------------------------------------------- APP1
((λx. λy. x y) (λw. w)) (λz. z) ---> (λy. (λw. w) y) (λz. z)
 └┬───────────────────┘ └┬────┘      └┬────────────┘ └┬────┘
  E₁                     E₂           E₁′             E₂


// 2) Proof that it can take a second step:

----------------------------------------------- BETA: (λα.E) V ---> [α:=V]E
(λy. (λw. w) y) (λz. z) ---> (λw. w) (λz. z)
└┬────────────┘ └┬────┘
(λα.E)           V


// 3) Proof that it can take a third (final) step:

------------------------------- BETA
(λw. w) (λz. z) ---> (λz. z)
└┬────┘ └┬────┘
(λα.E)   V



// So we typically write (without explicit proofs):
((λx. λy. x y) (λw. w)) (λz. z)
---> (λy. (λw. w) y) (λz. z)
---> (λw. w) (λz. z)
---> (λz. z)
```


* Confluence

```js

== (λy. [λw. w] y) (λz. z)
== [λw. w] (λz. z)   |       == (λy. y) (λz. z)
== (λz. z)           |       == (λz. z)


// evaluations:

           λy. y
           λy. [λy. y] y
      (λx. λy. x y) [λy. y]
      (λx. λy. x y) [λy. (λw. w) y]

           λy. y
           λy. [λy. y] y
           λy. [λy. (λw. w) y] y
      (λx. λy. x y) [λy. (λw. w) y]

```


* Two

```js
(λx.x x) (λy.y) ---> 
(λy.y) (λy.y) --->
λy.y
```

* Three

```js
(λx.x x) (λy.y)
                  --> [x:=λy.y]x x
== (λy.y) (λy.y)
                  --> [y:=λy.y]y
== λy.y
```
