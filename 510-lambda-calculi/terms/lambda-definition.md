# Definition of Lambda Calculus

https://en.wikipedia.org/wiki/Lambda_calculus_definition

- formal definition
  - variables
  - λ-abstraction
  - λ-application
  - fixity
  - conveniences
  - λ-term
  - λ-expression
- Axioms
  - α-conversion
  - β-reduction
  - η-conversion
- Evaluation
  - applicative (usual), rightmost innermost first
  - normal (lazy), leftmost outermost


## Definition

The LC may be considered as the minimal universal FPL as it consists of a transformation rule and a scheme for defining functions. It is universal because it can express and evaluate any computable function and in that regard it is equivalent to Turing machines. However, LC is more inclined towards the use of transformation rules, that is, it's more about the software aspect of computation then the hardware aspect.

The central element in the LC is the λ-expression which is defined recursively:

```bnf
<exp> := <var> | <abs> | <app>
<abs> := "λ" <var> "." <exp>
<app> := <exp> <exp>
<var> := "a" | "b" | "c" | ...
```

*Lambda abstration* is a form for defining functions, which, in general, looks like `λx.N` where `N` is a lambda expression (also called the body of a function), and `x` is the function's formal parameter.

*Lambda application* is a form of applying a function to an argument. It generally looks like `(λx.N)M`, where `M` is a lambda expansion; the arg will be bound to the formal parameter `x`, which means that every (free) occurance of the identifier `x` in the body `N` will be replaced with `M`, conventionally denoted by `[x/M]N`.

*Variables* appear only as function parameters, either in the binding context as *binding ocurances* or in a function's body as the *application occurances*.The "<var>" in the spec is just an *identifier* for parameters that appear in the function, formal and actual params. By convention, identifiers for parameters are chosen from the alphabet of lower-case letters.

Even though the given BNF spec allows it, it makes no sense for a single var to appear by itself at the top level. It also makes no sense if a final, fully evaluated, lambda expression contains free variables.

There should be only one lambda expresion at the top level, and that expr should end up as a lambda abstraction (which, in the end, can only be understood as representing something other then itself; usually, it will represent some mathematical object depending on the actual encoding scheme employed; e.g. like `λsz.s(sz)` standing for integer 2).


## Bound and free variables

A variable whose binding occurance is in scope is a *bound variable*, otherwise it is a *free variable*. It is important to distinguish between them since the same identifier can occur multiple times and have different meaning in different scope. For example, in the λ-expr `λx.λy(λx.yx)(λy.xy)xy`

```
binding occurance      application occurances
 ↓                               ↓      ↓
λx₁ . λy₁ . (λx₂ . y₁ x₂) (λy₂ . x₁ y₂) x₁ y₂
                 \_____/
                    |
            the scope of λx₂
    \_________________________________________ the scope of λx₁
```

Bound and free occurances of an identifier are relative and depend on the part of the lambda expr under consideration. The above shows that the binder λx₁ has the widerest possible scope, which can be restricted with parenthesis. The parenthesized binding context may introduce new scope, like `λx₂` does. The occurance of `x` (labelled as `x₂`) is not bound to the first `λx` (labelled as `λx₁`) but to the inner `λx` (labelled as `λx₂`). This process of re-labelling identifiers with fresh names, in order to distinguish them easily and avoid confusion of what is bound where, is called α-conversion. Alpha conversion does not change the meaning of a lambda expression, e.g. `λx.λy.x (λx.xy) x` isthe same as `λx.λy.x (λa.ay) x` but the latter avoids possible name capture during  variable substitution.



* The α-conversion
* The β-reduction
* The η-conversion is related to point-free (η-reduction) vs point-full (η-expansion) equational style
