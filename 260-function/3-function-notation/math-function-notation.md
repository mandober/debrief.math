# Function notation

- function notation
- mathematical function
- named function
- anonymous function
- multipiece function
- implicit vs explicit functions




Mathematical functions far more commonly appear as named functions, although there is a form for anonymous function as well.

**Named functions**, unlike anonymous function, are associated with a name, also known as an identifier (as an alphanumeric string of charaters), 

have a name, that is, they are 
that can be used later to referred to later.


This pertains more to PLs than to mathematics - math doesn't usually define a bunch of functions only to invoke them them later; rather, there is a set of well-known named functions (e.g. `sin`, `cos`, `sign`, etc.) and operators (e.g. `+`, `|◌|`, `∫◌`, `÷`, `√◌`, `∑`, etc.) which are assumed to be predefined and available. Any named function can be presented as anonymous function andvoce versa.

Schematically, named functions in math are denoted

<name> (<params>) = <body>

e.g.
- f(x) = x²
- h(x,y) = x² + y²
- succ(x) = x + 1



while anonymous math functions usually have the following form

(<params>) ⟼ <body>

In mathematics, named functions are far more common than anonymous, so much so that there is no standard convention for which exact arrow symbol is used to delineate parameters from function's body: `⟼` is common but so is `⟶`. Also, there's no strict convention about the exact form of the parameter list, apart that it should be enclosed in parenthesis.

```hs
-- EBNF grammar of functions

function := name '(' params ')' '=' term     -- named
          | '(' params ')' '⟼' term         -- anonymous

params   := param
          | ',' params

param := x, y, z, …
name  := <char-string>
term  := <math-expression>
```

Examples:

```hs
-- math named unary function
f(x)   = x²
-- math anonymous unary function
x ⟼ x²

-- math named binary function

-- math anonymous binary function
(x,y) ⟼ x² + y²
-- or:
x ⟼ y ⟼ x² + y²

-- math named multipiece function
sign(x) = 0     if x = 0
          1     if x > 0
         -1     if x < 0
```




which is very similar to JS arrow functions

(<csl-params>) => <body>
