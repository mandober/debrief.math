# Inference rules for lambda calculus

Lambda calculus consists of λ-expressions (λ-terms)

```bnf
exp := var | app | abs
var := x | y | z                "x", "ID", ...
app := exp exp                  e1 e2
abs := 'λ' x '.' exp            (λx.e)
```

Inference rules (evaluator)

```
   t₁ -> t₁'
--------------- E-App1
t₁ t₂ -> t₁' t₂


   t₂ -> t₂'
--------------- E-App2
v₁ t₂ -> v₁ t₂'


(λx.t₁₂) v₂ -> [x ⟼ v₂] t₁₂     E-AppAbs
```

`[x ⟼ v] t` means to substitute all occurrences of `x` with `v` in `t`. It is like a let-expression, `let x = v in t`, or lambda app `(\x -> t) v`. It is a notation of β-reducing a lambda term, when a lambda abstraction is applied to a lambda term, but in also incorporates the notion of a substitution that is mindful of name capturing.

```hs
┌─ leftmost term: lambda abstraction ──────────────────────────┐
│                                                              │
│      ┌─ scope of x ────────────────────────────────────────┐ │
│      │                                                     │ │     a
│      │       ┌─ scope of g ──────────────────────────────┐ │ │   a r
│      │       │                                           │ │ │ a r g
│      │       │         ┌─ inner term ──────────────┐     │ │ │ r g 3
│      │       │         │                           │     │ │ │ g 2 │
│      │       │         │       ┌─ scope g' ────────┤     │ │ │ 1 │ │
│      │       │         │       │                   │     │ │ │ │ │ │
(λ   . ( λ   . ( 1 2 2 2 ( λ   . ( 1 3 3 3 3 3 ) 1 3 ) 2 3 ) ) ) y f h
(λ x . ( λ g . ( g x x x ( λ g . ( g x x x x x ) g x ) g x ) ) ) y f h
   │       │     │           │     │             │     │
   │       │     │           │     │             │     │
   │       │     │           │     │             │     │
   │       │     │           │     └ application occurrence of g'
   │       │     │           │                         │
   │       │     │           └ binding occurrence of g (must be renamed to g')
   │       │     │                                     │
   │       │     └ application occurrence of g ────────┘
   │       │
   │       └ binding occurrence of g
   │
   └ binding occurrence of x
```


From left to right:
* The top level lambda term is an application, distinguished by two lambda terms: the long one on the left, and a short one, `z`, on the right.


* We first encounter the binder with the binding occurrence of the parameter `g`.

* which we distinguish in the meta language by subscripting it with the index 1, as `g₁`.

* The first formal parameter is named `g`, and this is the binding occurrence of the parameter (variable) `g`, 


binds the argument `z`, which means replacing all its application occurrences within its scope


, i.e. `g₂` and `g₄`.

However, on a closer inspection, we see there is another binding occurrence of g at `g₃` that has the application occurrence of g at `g₄`in its scope. That is, `g₂` is bound by `g₁` and `g₄` by `g₃`. *Name capturing* would be to allow the first binding occurrence `g₁` to also substitute `g₄`for parameter `z`, aside from the only occurrence it is supposed to substitute, i.e. that of `g₂`.

Therefore, we first need to rename (α-conversion) both occurrences of g that are to be treated as distinct bindings, and only then can we perform β-reduction i.e. application of the lambda to the argument `z`.

```
(λg. g x (λg. g x)) z      β-reduction: [g ⟼ z](g x (λg. g x))
    (z x (λg. z x))        NAME CAPTURE!
```

We must avoid name capture by first using α-conversion on the distinct but eponymously named occurrences.

```
(λg. g x (λg. g x)) z
(λg. g x (λf. f x)) z      α-conversion
    (z x (λf. f x)) z      β-reduction: [g ⟼ z](g x (λf. f x))
```
