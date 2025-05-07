# Algebra of functions

Algebra of functions deals with the arithmetic operations *of* functions. To be able to combine two functions with an arithmetic operation, they must have the same domain (or they must be restricted to the same domain).

Algebra of functions deals with the 4 elementary arithmetic ops, `{+,-,×,÷}`. However, this is nothing then additional notation that doesn't contrinute anything new. For example, the new notation `(f + g)(x)` amounts to the same value as `f(x) + g(x)`, which is the case for all 4 operations. [so why even introduce this?!]



It is not very interesting since all ops are the same as merely doing them on the results of individual function. However, an intersting aspect is that these ops do combine the functions is new ways - this is done by taking the expression that makes up the body of each function  then combining these expressions with one of these 4 ops.

So, the sum of two functions `g(x) + f(x)` is not merely the boring sum of the results of each individual function, but it is also equal to a new function, `h(x) = (f + g)(x)`, obtained by combining the two bodies with the plus.

```js
h(x) = (f + g)(x)  // which looks weird but it's actually just
h(x) = f(x) + g(x)

f(x) = x² + 2
g(x) = x + 1
h(x) = (x² + 2) + (x + 1) // body of f anf g combined with (+)
h(x) = x² + x + 3

// Now
f(x) + g(x) = (f + g)(x)
f(5) + g(5) = 5² + 2 + 5 + 1 = 33
// which is the same as their combination with plus:
h(5) = 5² + 5 + 3 = 33
```


The 4 elementary arithmetic operations applied to functions:
- addition of functions,       `g(x) + f(x) = (f + g)(x)`
- subtraction of functions,     `g(x) - f(x) = (f - g)(x)`
- multiplication of functions, `g(x) × f(x) = (f × g)(x)`
- division of functions,       `g(x) ÷ f(x) = (f ÷ g)(x)`,  if g(x) ≠ 0

Apart from these operations there is also
- composition of functions
- inverse functions

## Operations

If two functions have a common domain, then arithmetic operations can be performed on them.

The domain of the arithmetic operation of two functions is the *intersection of the domain* of the independent functions.


```js
// Two individual regular functions. Eval at x=5
f(x) = x² + 2     f(5) = 5² + 2 = 27
g(x) = x + 1      g(5) = 5 + 1 = 6

// sum of the results of f and g applied to 5
h₁(x) = f(x) + g(x)
h₁(5) = f(5) + g(5) = 27 + 6 = 33
// combo of f and g with (+, -, ×, ÷)
hˢ(x) = (f + g)(x) = (x² + 1) + (x + 2) = x² + x + 3
hᵈ(x) = (f - g)(x) = (x² + 1) - (x + 2) = x² - x - 1
hᵖ(x) = (f × g)(x) = (x² + 1) × (x + 2) = x² + x + 3
hᵏ(x) = (f ÷ g)(x) = (x² + 1) ÷ (x + 2) = x² + x + 3
h(x) = x² + x + 3
// …applied to 5
h(5) = 5² + 5 + 3 = 33
// We get the same value, 33 either way
h(x) = h₁(x)

h(x) = (f + g)(x) = (x² + 1) + (x + 2) = x² + x + 3



h(x) = (f + g)(x)  // which looks weird but it's actually just
h(x) = f(x) + g(x)

h(x) = (x² + 2) + (x + 1) // body of f anf g combined with (+)
h(x) = x² + x + 3

// Now
f(x) + g(x) = (f + g)(x)
f(5) + g(5) = 5² + 2 + 5 + 1 = 33
// which is the same as their combination with plus:
h(5) = 5² + 5 + 3 = 33
```


### Addition of Functions

The domain of the sum of two functions is the intersection of the domains of the individual functions.

>The sum of two functions at a given input is equal to the sum of the individual functions at that input.

    (f + g)(x) = f(x) + g(x)

[wtf?! isn't the only meaning `(f + g)(x)` can have `f(x) + g(x)`?! Ah, this actually combines the bodies of the functions]

```js
(f + g)(x) = f(x) + g(x)

f(x) = x² + 2
g(x) = x + 1
h(x) = (f + g)(x)
     = (x² + 2) + (x + 1)
     = x² + x + 3

// (f + g)(x) is not composition f(g(x))
// in the composition, f is applied to the result of g(x)
// but sum of two functions is a combo of their bodies
// i.e. joining theirt bodies with the plus sign
f(g(x)) = (x + 1)² + 2 = x² + 2x + 1 + 2 = x² + 2x + 3
f(g(5)) = 5² + 2⋅5 + 3 = 25 + 10 + 3 = 38

f(x) = x² + 2
f(5) = 5² + 2 = 27

g(x) = x + 1
g(5) = 5 + 1 = 6

h(x) = f(x) + g(x) = 27 + 6 = 33
h(5) = f(5) + g(5) = 27 + 6 = 33

h(x) = (f + g)(x) = x² + x + 3
h(5) = (f + g)(5) = 5² + 5 + 3 = 25 + 5 + 3 = 33
```


Since the domain of `f` and `g` is ℝ, the domain of `(f + g)(x)` is `ℝ ∩ ℝ = ℝ`.

### Subtraction of Functions

The *difference* of two functions at a given input is equal to the difference of the independent functions at the same input.

Example: if f(x) = x² + 2 and g(x) = x + 1, then 
(f - g)(x) = f(x) - g(x) 
= x² + 2 - (x + 1) 
= x² - x + 1

### Multiplication of Functions

The *product* of two functions at a given input is equal to the product of the independent functions at the same input. The product of functions results in a binomial function, cubic function, or a polynomial function.

Example: if f(x) = x² + 2 and g(x) = x + 1, then 
(f · g)(x) = f(x) · g(x) 
= (x² + 2) · (x + 1) 
= x³ + x² + 2x + 2

### Division of Functions

The domain of the *quotient* of two functions is the intersection of the domain of the independent functions. But we have to take care of the extra condition, setting the denominator function to "not equal to 0" because if the denominator is 0, then the fraction is undefined. The quotient of two functions at a given input is equal to the quotient of the independent functions at the same input.

(f / g) (x) = f(x) / g(x), given g(x) ≠ 0

Example: if f(x) = x² + 2 and g(x) = x + 1, then 
(f / g)(x) = f(x) / g(x) 
= (x² + 2) / (x + 1)

Since the domain of each of f(x) is ℝ; and the domain of g(x) is `ℝ ∖ {-1}` because x+1 is in the denominator, x+1≠0 ⇒ x≠-1.


## Refs

https://math.libretexts.org/Courses/Las_Positas_College/Foundational_Mathematics/16%3A_Introduction_to_Functions/16.06%3A_The_Algebra_of_Functions

https://tutorial.math.lamar.edu/Classes/Alg/Alg.aspx
