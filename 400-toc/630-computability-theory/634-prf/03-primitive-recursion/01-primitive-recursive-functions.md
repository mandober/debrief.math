# Primitive recursive functions

https://en.wikipedia.org/wiki/Primitive_recursive_function

## Terms

- general recursive functions (GRF) = recursive functions
  - partial recursive functions (PtRF) ⊂ GRF
  - partial recursive functions ⊂ GRF
    - total recursive functions (TRF)
      - primitive recursive functions (PRF)


- primitive recursive function
  - total functions
  - guarateed to terminate
  - number-theoretical functions over ℕ
  - definable using only bounded loops
  - PRF ⊂ GRF
  - PRF ⊂ Total GRF
- primitive recursion
- recursive function
- total function
- terminating function
- computable functions

## TL/DR

- PRFs are total functions.
- PRFs are provably guarateed to terminate.
- PRFs are number-theoretical functions over the set ℕ.
- PRFs are Total Recursive Functions (TRFs)
- but not all TRFs are PRFs (e.g. Ackermann function)
- PR initial functions: `const` (C), `succ` (σ), `proj` (π)
- PR operators: *composition* or substitution (∘), *primitive recursion* (ρ)
- PRFs are functions obtained from the PR initial functions and the application of the PR operators a finite number of times.
- In primitive recursion, the computation of a value of a function requires only the previous value (contrary to course-of-values recursion).


## Heart of the matter

Grow a collection of total, provably terminating functions by starting with a few, obviously total and terminating, functions and a couple of operations closed under these properties.

## Contents

- 0. History
- 1. Definition of PRF
- 2. Common operations as PRFs
  - 2.1. addition
  - 2.2. doubling
  - 2.3. multiplication
  - 2.4. predecessor
  - 2.5. truncated subtraction
  - 2.6. Additional PRFs
    - 2.6.1 Other operations on natural numbers
    - 2.6.2 Checking for primes
    - 2.6.3 Factorial
- 3. Converting predicates to numeric functions
  - 3.1 Predicate "Is zero"
  - 3.1 Predicate "Less or equal"
  - 3.1 Predicate "Greater or equal"
  - 3.1 If-then-else
  - 3.1 Junctors
  - 3.1 Equality predicate
- 4. Operations on integers and rational numbers
  - 4.1 Some common primitive recursive functions
- 5. Use in first-order Peano arithmetic
- 6. Relationship to recursive functions
- 7. Limitations
- 8. Variants
  - 6.1. Constant functions
  - 6.2. Weak primitive recursion
  - 6.3. Iterative functions
  - 6.4. Additional primitive recursive forms
  - 6.5. Computer language definition
- 9. Finitism and consistency results







## Use in first-order Peano arithmetic

(...)

## Variants

### Zero instead of constant function

Instead of `Cᵏₙ`, alternative definitions use just one nullary function "zero", `Z = C⁰₀`, as a primitive function that always returns 0, and built the constant functions from the zero function, the successor function and the composition operator.

### Weak primitive recursion

The unary predecessor function is primitive recursive. Fischer, Fischer & Beigel removed the implicit predecessor from the recursion rule, replacing it by the weaker rule:

$${\displaystyle {\begin{array}{lcl}f(0,x_{1},\ldots ,x_{k})&=&g(x_{1},\ldots ,x_{k})&{\text{and}}\\f(S(y),x_{1},\ldots ,x_{k})&=&h(S(y),f(y,x_{1},\ldots ,x_{k}),x_{1},\ldots ,x_{k})\end{array}}}$$

They proved that the predecessor function still could be defined, and hence that *"weak" primitive recursion* also defines the PRFs.

The difference between the "regular" and "weak" PR is only in the first arg to `g` (on the rhs of the rec case): instead of `y` (like in the regular PR), in weak PR it is `S(y)`. Normally, the `y` signifyies the predecessor of the first arg on the lhs, albeit it has the form `S(y)` there; in fact, `S(y)` on the lhs stands for the *current value* of the (first) arg over which we recurse; and `y` (on the rhs) stands for the value that arg had *in the previous step*.

However, in both normal and weak case of PR, the second argument to `g` is still `h(y,x̅)`, i.e. `y` is in the predecessor form there (so it might as well been in this form in the first arg to `g`?!).


```hs
x̅ = x₁, …, xₖ

h(  0, x̅) = f(x̅)               -- base case: same for all
h(S y, x̅) = g(  y, h(y,x̅), x̅)  -- rec case: (1) primitive recursion
h(S y, x̅) = g(S y, h(y,x̅), x̅)  -- rec case: (2) weak primitive recursion
h(S y, x̅) = g(     h(y,x̅), x̅)  -- rec case: (3) iteration


-- primitive recursion
h(  0, x̅) = f(x̅)
h(S y, x̅) = g(y, h(y,x̅), x̅)
--            ↑
--           difference

-- weak primitive recursion
h(  0, x̅) = f(x̅)
h(S y, x̅) = g(S y, h(y,x̅), x̅)
--            ↑
--           difference
```




### Iterative functions

Weakening this even further by using functions `h` of arity `k+1`, removing `y` and `S(y)` from the arguments of `h` completely, we get the iteration rule:

$${\displaystyle {\begin{array}{lcll}f(0,x_{1},\ldots ,x_{k})&=&g(x_{1},\ldots ,x_{k})&{\textrm {and}}\\f(S(y),x_{1},\ldots ,x_{k})&=&h(f(y,x_{1},\ldots ,x_{k}),x_{1},\ldots ,x_{k})\end{array}}}$$

*The class of iterative functions* is defined the same way as the class of PRFs except using this weaker rule instead. These are conjectured to be a proper subset of PRFs.

```hs
x̅ = x₁, …, xₖ

-- primitive recursion
h(  0, x̅) = f(x̅)
h(S y, x̅) = g(y, h(y,x̅), x̅)

-- weak primitive recursion
h(  0, x̅) = f(x̅)
h(S y, x̅) = g(S y, h(y,x̅), x̅)
--            ↑
--           1st weakening: S(y) instead of y

-- iteration
h(  0, x̅) = f(x̅)
h(S y, x̅) = g(     h(y,x̅), x̅)
--            ↑↑↑
--           2nd weakening: arg removed
```

* Iterative functions

```hs
-- Iterative functions - general case (1)
iter    0  x̅ = f x̅
iter (S y) x̅ = g (iter y x̅) x̅

-- Iterative functions - general case (2)
iter 0 x = f x
iter y x = g (iter (y - 1) x) x

-- Iterative functions - simple case
iter 0 = f
iter y = g $ iter (y - 1)
```



## Additional primitive recursive forms

Some additional forms of recursion also define functions that are in fact primitive recursive. Definitions in these forms may be easier to find or more natural for reading or writing. *Course-of-values recursion* defines primitive recursive functions. Some forms of mutual recursion also define primitive recursive functions.

The functions that can be programmed in the LOOP programming language are exactly the primitive recursive functions. This gives a different characterization of the power of these functions. The main limitation of the LOOP language, compared to a Turing-complete language, is that in the LOOP language the number of times that each loop will run is specified before the loop begins to run.

## Computer language definition

An example of a primitive recursive programming language is one that contains basic arithmetic operators (e.g. + and −, or ADD and SUBTRACT), conditionals and comparison (IF-THEN, EQUALS, LESS-THAN), and bounded loops, such as the basic for loop, where there is a known or calculable upper bound to all loops (FOR i FROM 1 TO n, with neither i nor n modifiable by the loop body). No control structures of greater generality, such as while loops or IF-THEN plus GOTO, are admitted in a primitive recursive language.

The `LOOP` language, introduced in a 1967 paper by Albert R. Meyer and Dennis M. Ritchie, is such a language. Its computing power coincides with the primitive recursive functions. A variant of the LOOP language is Douglas Hofstadter's `BlooP` in Gödel, Escher, Bach.

Adding unbounded loops (WHILE, GOTO) makes the language general recursive and Turing-complete, as are all real-world computer programming languages.

The definition of primitive recursive functions implies that their computation halts on every input (after a finite number of steps).

On the other hand, the halting problem is undecidable for general recursive functions, even if they are total. That is, there are programs that halt on every input, but for which this can not be verified by an algorithm.


## History

Recursive definitions had been used more or less formally in mathematics before, but *the first construction of primitive recursion* is traced back to Richard Dedekind's theorem 126 of his `Was sind und was sollen die Zahlen?` from 1888. This work was the first to give a proof that a certain recursive construction defines a unique function.

*Primitive Recursive Arithmetic* was first proposed by Thoralf Skolem in 1923.

`"The foundations of elementary arithmetic"`, 1923, Thoralf Skolem. In "From Frege to Gödel: A Source Book in Mathematical Logic, 1879-1931", 1967.

The current terminology was coined by Rózsa Péter in 1934 after Ackermann had proved in 1928 that the function which today is named after him was not primitive recursive, an event which prompted the need to rename what until then were simply called recursive functions.

## Other computable functions

**Primitive recursive functions** - those that can be defined using just primitive recursion - are not, however, the only **computable number-theoretic functions**.

Many generalizations of primitive recursion have been considered, but the most powerful and widely-accepted additional way of computing functions is by *unbounded search*.

This leads to the definition of Partial Recursive Functions, and a related definition to General Recursive Functions.

General Recursive Functions are computable and total, and the definition characterizes exactly the Partial Recursive Functions that happen to be total.

Recursive functions can simulate every other model of computation (Turing machines, lambda calculus, etc.) and so represent one of the many accepted models of computation.
