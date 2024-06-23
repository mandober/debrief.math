# Binding, bound and free variables

Variables
- binding variable occurrence
  - parameter
- applied occurrence
  - bound variable occurrence, bound variable
  - free variable occurrence, free variable
- closed (combinators) vs open lambda expressions
- α-equivalence

## Variables

Variables are one of the 3 basic lambda terms (the other two being Abs and App). Variables are introduced in a lambda expression through abstractions, in which they appear in different places and have different roles.

### Parameterization

The most fundamental role variables play in abstractions is that of *parameters*. Functions are the essential mechanism by which we achive abstraction. A constant expression (an expression with constant values) always evaluates to the same result.

For example, an expression like `4²` is frozen, but we can turn it into a reusable piece of code, i.e. into a squaring function by parameterizing the base value, that is, by replacing the constant with a variable, `x²`.

Often an expression like `x²` seems enough to let us know we're dealing with a (anonymous) function, however to make it more precise we need to introduce more structure. In math, anonymous functions are possible, but named functions are more common, and this one could be `f(x) = x²`.

This standard math notation starts by introducing a new name, `f`, as the name of this function. The parameters are declared in parenthesis - here a single one but more are possible: e.g. `add(x,y) = x + y` is a function that abstracts addition by being parameterized over two numbers.





By itself the expression `x²` is largely undefined because even if we assume that `x` is an unknown we cannot be sure over which domain it ranges over, i.e. from which set it can get values. Seeing that the operation in question is exponentiation, we can assume that it ranges over numbers, but we cannot be sure over which set of numbers exactly. A function's signature is there to let us know that. It specifies the domain and codomain of a function. In this case that could be `f :: ℕ -> ℕ`, and the definition of the function itself `f(x) = x²`. The signature in fact specifies the *type of the function*.





Perhaps, 

that's not critical in this case, 


we have no idea what `x`


one of the values. We can get a function by 

If 
n this example, 



, which is the same role they have outside LC, e.g. in mathematical functions and functions in PLs. A function (abstraction) must declare the parameters it needs - this is how the basic mechanism of functions as means of abstraction work. A functions is *parameterized* by letting a constant value vary. For example, if we parameterize a function by letting a value that represents time vary, then it becomes a function of time. Of course, a function can be parameterized by more than one value.




`λx.λy.x`

as formal parameters






# Free variables

The set of free variables of a lambda expression, `M`, is denoted as `FV(M)` and is defined by recursion on the structure of the terms:
- FV(x)    = {x}
- FV(λx.M) = FV(M) ∖ {x}
- FV(M N)  = FV(M) ∪ FV(N)


```hs
type Name = String

fv :: Exp -> Set Name
fv exp = case exp of
  Var s   -> [s]
  Lam s e -> fv e ∖ [s]
  App m n -> fv m ⋃ fv n
```
