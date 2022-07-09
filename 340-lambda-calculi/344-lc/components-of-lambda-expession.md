# Elements of lambda expressions

Lambda calculus manipulates *lambda terms* or *lambda expressions*.

Lambda expressions:
- variables
- lambda abstraction
- lambda application

The complete syntax of λ-calculus fits in a few lines of the BNF notation:

```js bnf
exp := var | abs | app
var := a | b | …
abs := 'λ' var '.' exp
app := exp exp
```
