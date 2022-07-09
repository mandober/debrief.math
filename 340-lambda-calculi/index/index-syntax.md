# Lambda Calculus :: Syntax

Syntax
  - syntactic forms
  - punctuations
  - fixity
  - normal forms
    - redex
    - whnf
  - eval order
    - normal order, from without, leftmost outermost
    - applicative order, from within, rightmost innermost
    - β-reduction under lambda
  - operations
    - substitution
      - name-capture avoiding substitution
      - fresh variable names
      - bound variable
      - free variable
    - reduction
      - β-reduction
    - conversion
      - α-equivalence
      - η-conversion
        - η-expansion
        - η-contraction



## Syntactic entities

- lambda expression
- lambda term
- lambda binder
- lambda variable
- lambda application
- lambda abstraction
- dot symbol/sign
- lambda letter/symbol/sign
- parenthesis
- spaces



## Syntactic forms



```
exp := var | app | abs
abs := λ var . exp
app := exp exp
var := x | y | …
```

1. exp, `M`, var, `x`
2. app, `M N` (makes sense only if M is an abs, `λp.B`)
3. abs, `λx.M`

Top-level forms that makes sense:
- abs (closed term)
- app (of closed terms)


## Punctuations

The only punctuation chars are parenthesis used for disambiguation (overriding precedence), although strictly all exp (forms) should be enclosed in parens.

λabc

## Fixity

Application
- application is denoted by juxtaposition
  M N
  where M and N are lambda exp
- application is left-associative
  abcd = ((ab)c)d
  ←
- abstraction is right-associative
  λa.λb.λc.abc = λa.(λb.(λc.abc))
     →
- abstraction scopes as far to the right as possible, minding parens
  λa.λb.λc.λd.abcd = λa.(λb.λc.λd.abcd)

- application has the biggest precedence (is evaluated first)
- *abstraction has lower precedence than application*
     λx.yz
  == λx.(yz)
  != (λx.y)z


```hs
infixl 9  @ (app)
infixr 8  λ (abs)


λ x x = λ x . x

λ x . y z = λ x . (y z)
(λ x . y) z

λ x x x


```
