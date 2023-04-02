# Lambda abstractions

In LC, a function is called *lambda abstractions*, or just an abstraction. Actually, the term "function" in there refers to anonymous closures, which are also known as lambdas.

>But what does it abstracts? What is it an abstraction of?

Considering lambdas as unary functions (which, thanks to currying, they always are), there is only one single input and it is represented as a variable, i.e. as a formal parameter in terms of PLs, or as a binding variable in terms of LC. So, for example, a lambda expression like `λx. x + 2` (assuming the names `+` and `2` are previously defined) is said to abstract over the variable `x`. If the binder was somehow hidden, and we only had the unquantified expression (the lambda binder is another quantification symbol, similar to `∃` and `∀`), we wouldn't even be able to tell that we're in the LC from that expression alone: `x + 2`.

We'd guess we're in an algebraic context, and relying on the experince aroud the plus sign, we'd probably assume that `x` abstracts, i.e. ranges over numbers - and we'd be wrong! Unhiding the binder and exposing the whole expression, `λx. x + 2`, would reveal that `x` actually ranges over the set of lambda terms (which are resonable only when closed - and closed lambda terms are combinators - so again functions).

`λx.fx` =η= `f`

`add x (mul x y)`
<<-- `(add x (mul x y))`
<<-- `λy.λx.(add x (mul x y))`


Dis this suppose to explain abstraction?! Oh man… Be desperate not! Maybe the inference rule will explain it better.

## Implication introduction in logic and abstraction in LC

In logic, the implication introduction, `⇒I`, is a rule of inference stating that, during the course of a proof, we can assume any wff, call it `P`, and proceed to prove `P` using the wffs from the current (subproof) context as well as the wffs from any of the enclosing contexts, all the way and including the top level (main proof) context (sibling contexts are not enclosing contexts, so we can't refer to wffs in there).

So, if assuming `P` we arrive at some conclusion `Q` (any wff at all will do, and we'll call it `Q`), then we can introduce the implication `P -> Q`, while at the same time discharging the assumption `P`. This means we dispense with the current (subproof) scope and move one scope up, where we now find a new formula available, `P -> Q` (for gamers: like completing a side mission and gaining some shit required to complete the game).

The fact that the assumption `P` was discharged means that it is not available anymore - it is now "integrated" in the implication `P -> Q` (where it is, still, the assumption i.e. hypothesis or premise). The bottom line: `P` is not available, only `P -> Q` is.

>You cannot introduce an implication without discharging a few assumptions.

This might seems like we've conjured up a new formula, `P -> Q`, from nothing - and it would seem right! We can produce as many implications as we want, but the question is do we need to. Does the new formula help us reach the goal or just complicates the derivation process?







One of the inference rules of the basic untyped LC is the rule for constructing abstractions. In fact, this is the rule for typed LC because the presentation is better and it is easy to erase the types.

```
Γ, x : τ |- M : σ
------------------------ ABS_STLC
Γ |- (λ x . M) : τ → σ


Γ, x |- M
------------------------ ABS_ULC
Γ |- (λ x . M)

x |- M
--------- SIMPLE_ABS
(λ x . M)


Γ, p |- q
----------- IMPL
Γ |- p → q

  [p]¹
   ⁞
   q
------ ⇒I¹
p → q


```

## Going backwards

Starting with a free variable `x`, we can bind it by introducing the appropriate binder for it, `λx.x`. Or we can introduce an inapproapriate binder like `λy.x`, delaying the binding of `x`. And then do `λx.λy.x`, obtaining a lambda that discard its second arg - called the `K` combinator.

λx.λy.x

          x
→      λx.x
→ λy.((λx.x) y) (z)



  (λy.((λx.x) y)) (Z)



= λz. (λx. (λa.a)) z

= λz.(λx.(λa.a))(z)


p=      (λb.((λy.(λx. (λa.a)) x) y) b)
a=       λb.((λy.(λx. (λa.a)) x) y) b
p=          ((λy.(λx. (λa.a)) x) y)
a=           (λy.(λx. (λa.a)) x) y
p=              ((λx. (λa.a)) x)
a=               (λx. (λa.a)) x
p=                    (λa.a)
s=                     λa.a




```hs
delay f = \ () -> f ()
-- now we can pass f around without worrying it get eval'd
-- when we want to eval it we call f with the ()


-- delay chain (dominoes effect):
(λb.((λy.(λx. (λa.a)) x) y) b)
 λb.((λy.(λx. (λa.a)) x) y) b
    ((λy.(λx. (λa.a)) x) y)
     (λy.(λx. (λa.a)) x) y
        ((λx. (λa.a)) x)
         (λx. (λa.a)) x
              (λa.a)
               λa.a
```
