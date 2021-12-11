# Lambda Calculus: Notation

A system aiming to formalize the notion of mathematical functions need also deal with the concrete syntax that will be used to define and apply functions.

Although the conventional mathematical notation for handling functions did exists, it wasn't really the optimal solution. Mathematical notation might not immediately look verbose, but when the only element of syntax is function, all those parethesis will quickly make the readability suffer. When the system is dealing exclusively with functions, it pays to curb the ceremony down to the absolute minimum.

In λ calculus, the application of an abstraction `f` to an argument `a` is expressed by juxtaposition, `f a`, dropping the superfluous parenthesis from the mathematical notation, `f(x)`.



Math             | JS               | Haskell       | lambda calculus
-----------------|------------------|---------------|------------------
f(x) = x         | x => x           | \x -> x       | λx.x
f(x) = x + 1     | x => x + 1       | \x -> x + 1   | λx.x + 1
f(x,y) = x       | x => y => x      | \x y -> x     | λxy.x
f(x,y) = x + y   | x => y => x + y  | \x y -> x + y | λxy.x


The two central language constructs of the calculus are abstraction and application, which are the fundamental constructions. All other programming constructs differ in the way their evaluation strategies are implemented. Furthermore, its syntax can be further extended and simplified.

λ-calculus syntax
- the syntax consists of just 3 constructs
  1. variables          `x, y, z,...`
  2. λ-abstraction      `λx.M`
  3. application        `M N`

* Associativity, precedence, conventions
  - application has the highest precedence
  - applications associate to the left, `a b c d` is `((a b) c) d`
  - λ-abstractions associate to the right, `λa. λb. M` is `λa. (λb. M)`
  - by convention, multiple binders are merged, `λa.λb.b` becomes `λab.b`
  - use of parenthesis is reduced if λ-terms are unambiguous
  - `λa. λb. λc. λd. a b c d` is `λa. λb. λc. λd. a b c d`

λf. λx. (f (x x) (λh. λg. λy. (h y (g y)) (f (x x) y)))
