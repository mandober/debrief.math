# Elements of lambda calculus

LC has 3 syntactic forms:
- variable (a,b,c,…,x,y,z)
- lambda abstraction, (λp.B)
- lambda application, (M N)


- lambda term
- lambda expression


* all functions are anonymous and unary (one value in, one value out)
* all arguments to a function are other lambda functions (that you have to define first)
* all variables are actually parameters of an enclosing function
* it makes no sense to have the topmost lambda term be a variable
* considering the entire lambda expr, it makes no sense to have unbound vars
* "globally", all vars are bound; the concept of free vs bound vars arises only in terms of subexpressions and their relations to the enclosing expression


```js
abstraction
  │     abstraction
  │       │
┌─┴───┐ ┌─┴───┐
(λa. a) (λb. b)
  │  │  └─┬───┘
  │  │    arg
  │  body
formal param
```

- the lambda expression above consists of two lambda terms, `M` and `N`
- juxtaposition, `M N`, denotes application
- thus, this is the application of a term `M` to a term `N`
- the left lambda term `M` is an abstraction, `λa.a`
- the right lambda term `N` is also an abstraction, `λb.b`
- semantically, `M` is a function and `N` is an argument to this function
- the abstraction on the left, `λa.a`, is applied to an arg on its right, `λb.b`
- `M` function has a formal parameter `a` and its body is the lambda term, `a`
- the formal param `a` will bind the arg when the function is applied
- the application of `M` to an arg `N` proceeds with the formal parameter, `a`, binding the function's arg `N` to itself.
- the parameter `a` has a binding occurence in the abstraction's head, `λa`
- and any number of application occurences in the abstraction's body
- but here, it has one application occurence, that is, the body entirely consists of (is) the parameter `a`.
- when the binding occurence of the parameter binds an arg, that arg then replaces all application occurences of the param, denoted by `[a ⟼ (λb.b)]a`


```js
formal
param
 │     arg
 │      │     body
 │    ┌─┴───┐ ┌┴┐
[a ⟼ (λb.b)]  a
```
