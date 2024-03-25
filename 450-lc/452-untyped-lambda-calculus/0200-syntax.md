# Lambda calculus :: Syntax

- elements of lambda calculus
- syntax of lambda calculus
  - the kinds of lambda terms
    - abs
    - app
    - var
      - function head
        - function input
        - lambda binder
        - formal params
        - binding occurrence of a var
      - function body
        - applyied occurrences of a var
        - scope
        - bound vars
        - free vars
      - function application
        - lambda abs to a lambda term
        - argument
        - currying
        - function value/output/result/return
  - the rules of lambda calculus
    - types of rules
      - reductions
        - β beta
      - conversions
        - α alpha-conversion
        - η eta
      - extra rules
        - δ delta
        - ζ zeta
      - conventions
        - abs binds to the right, λa.λb.λc.abc = λa.(λb.(λc.abc))
        - app binds to the left, abcd = ((ab)c)d
        - precedence, abs > app
- semantics of lambda calculus


## Elements of lambda calculus
