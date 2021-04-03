# Primitive Recursive Function

https://en.wikipedia.org/wiki/Primitive_recursive_function

* In computability theory, *primitive recursive functions* (PRFs) are, informally,those functions that can be computed by a program restricted to only use bounded loops - loops where the number of iterations through the loops is known in advance (e.g. for-loop, but not while-loop).

* Primitive recursive functions form a strict subset of *general recursive functions* (GRF) that are also total functions, `PRF ⊂ GRF`. GRFs are those functions that use unbounded loops, and thus can compute everything a TM can.

* Most *computable functions* studied in number theory, and, generally in math, are primitive recursive including addition, division, factorial.

* To show that a computable function is primitive recursive, it suffices to show that its computational complexity is bounded from above by a primitive recursive function of the input size, i.e. by `n`. It follows that it is difficult to devise a computable function that is not primitive recursive, however they exists (for example the famous Ackermann function).

* The set of primitive recursive functions is known as `PR` in computational complexity theory.

* Primitive recursive functions are number-theoretic functions, which are functions on the set of the natural numbers; they are n-ary functions that take n args, n ∈ ℕ

* PRFs are functions built from the 5 primitive recursive operators:
  * 3 initial functions: *zero* (ζ), *successor* (σ), *projection* (π)
  * 2 basic operators: *composition* (∘) and *primitive recursion* (ρ)

Some authors add the combination function (×) to the PR basic operators, even though it is definable in terms of projection and composition.

* *Minimization* (*μ-operator*, *unbounded search operator*) is a function different from the 5 PR operators in that it uses unbounded loops. The μ-operator searches for the least natural number with a given property. Adding it to the 5 primitive recursive operators makes it possible to define all computable functions. The 5 PR operators extended with the μ-operator makes this model of computation equivalent to a TM (and with that, to λ-calculus, SK calculus, etc.).


## Primitive recursive operators

The PR operators are not recursive functions themselves; they're the building blocks of functions that are recursive; therefore the ρ-operator is always employed. Recursion is "primitive" in "primitive recursion" because it is expressed in terms of the primitive functions that are themselves obviously computable; they massage the terms into appropriate forms mostly by overusing the projection function.

The biggest problem with translating PRFs theory into a PL is that they are functions which take only a single arg which is a tuple. Now, if it is an 1-tuple a function apllication is denoted f(x), but if the tuple has more components, it is not f((x,y)) as it should be for a fn applied to a tuple, but just f(x,y). Also, tuples can have any arity with functions (like zero, or proj) adopting to the fluctuating arity on the fly, by picking a function's instance with approapriate arity (π² then π³).


## Initial functions

**Zero**
- `Zeroⁿ`, `ζ`, `ζⁿ(x₀, x₁,...,xₙ) = 0`
- zero may take any n-tuple as as arg, always returning 0
- becasue it is an n-ary function it may be consider as a family of functions, each with a fixed arity, e.g. ζ⁰, ζ¹, ζ², ζ³, ...
- `ζ³(1,4,2)=0`, `ζ⁰()=0`

**Successor**
- `Succ¹`, `σ`, `σ¹(x) = x + 1`
- successor is a unary function that a single number as an arg and returns the successor of that number
- `σ(4) = 5`

**Projection**
- `Projⁿᵢ`, `π`, `πⁿᵢ(x₀, x₁,...,xₙ) = xᵢ`
- projection is an n-ary function that takes an n-tuple as the arg and returns the ith component of the tupler, for 1 ≤ i ≤ n
- `π³₁(1,2,3) = 1` (not that π is here 1-based, but it may be 0-based as well)


## Primitive combinators

More complex primitive recursive functions can be obtained from the 3 basic functions and these 2 combinators: composition and primitive recursion (sometimes a combination operatoe, `combo f g x = f x + g x`, is also included).


### Composition

Given a k-ary primitive recursive function f, and k many m-ary primitive recursive functions g₁,...,gₖ, the composition of f with g₁,...,gₖ, i.e. the m-ary function ℎ(x₁,...,xₖ) = f ( g₁(x₁,...,xₖ),..., gₖ(x₁,...,xₖ) ) is primitive recursive.

Summary, we have:
- k-ary primitive recursive function fᵏ
- k many m-ary primitive recursive functions gᵐ₁,...,gᵐₖ
- m-tuple denoted by Xᵐ := (x₁,...,xₘ) where Xᵐ is just a shorthand

So each m-ary gᵐ function takes the m-tuple producing a list of k results as a k-tuple. Then this k-tuple of results is fed to fᵏ:

        fᵏ ( gᵐ₁(x₁,...,xₘ) , ... , gᵐₖ(x₁,...,xₘ) )

* In a point free form (without mentioning the X tuple as an arg to g's), the composition is denoted by:

        fᵏ ∘ [g₁,...,gₖ]

* In point-full form with the X tuple mentioned, it may be denoted as:

        (fᵏ ∘ [g₁,...,gₖ]) Xᵏ

* As an illustration

g₁(x₁...xₘ) \
g₂(x₁...xₘ)  \ f
 ⁝           /
gₖ(x₁...xₘ) /


* For example, if the tuple is unary, containing just `x`, and there is only one `g` function, then the composition looks like the classical composition:

`f ∘ g` that is `(f ∘ g) x`

* For example

We take f(x) as the Succ(x) defined above. This f is a 1-ary primitive recursive function. And so is g(x) = Succ(x). So h(x) defined as f(g(x)) = Succ(Succ(x)) is a primitive recursive 1-ary function too. Informally speaking, h(x) is the function that turns x into x+2.



### Primitive recursion

* Primitive recursion uses the symbol `ρ`.
* Definition: given `f`, a k-ary PRF, and `g`, a (k+2)-ary PRF, the (k+1)-ary function h is defined as the PR of f and g, i.e. the function h is PRF when:

        hᵏ⁺¹(0   , x₁, ⋯, xₖ) = fᵏ(x₁, ⋯, xₖ)
        hᵏ⁺¹(S(y), x₁, ⋯, xₖ) = gᵏ⁺²(y, hᵏ⁺¹(y, x₁, ⋯, xₖ), x₁, ⋯, xₖ)

Above, recursion is def on the first arg (k is the k-tuple of x args, i.e. k many xᵢ args). Since X is an arbitrary tuple, it is easier to define recursion on the first arg (and not on the last arg, as sometimes seems to be the way in math).

* With simplified args, `Xᵏ := (x₁, ⋯, xₖ)`:

        hᵏ⁺¹(0   , Xᵏ) = fᵏ(Xᵏ)
        hᵏ⁺¹(S(y), Xᵏ) = gᵏ⁺²(y, hᵏ⁺¹(y, Xᵏ), Xᵏ)

* With two args:

        h²(0   , x) = f¹(x)
        h²(S(y), x) = g³(y, h²(y, x), x)


* In Haskell:

        h    0  x = x
        h (S y) x = g y (h y x) x


**Interpretation**     
- The function h acts as a for loop from 0 up to the value of its first arg.
- The rest of the arguments for h, denoted here with xᵢ (i=1..k), are a set of initial conditions for the for-loop which may be used by it during calculations but which are immutable by it. 
- The functions f and g on the right side of the equations which define h represent the body of the loop, which performs calculations.
- Function f is only used once to perform initial calculations.
- Calculations for subsequent steps of the loop are performed by g.

g function takes 3 args:
1. The first parameter of g is fed the "current" value of the for-loop's index.
2. The second parameter of g is fed the result of the for-loop's previous calculations, from previous steps.
3. The rest of the parameters for g are those immutable initial conditions for the for-loop mentioned earlier. They may be used by g to perform calculations but they will not themselves be altered by g.

Note that the function g is not recursive itself but its second param `(h y x)` performs the recursive call (since it calls the function h which is being defined).


* Here is the definition again without the explicit arities and with 1 arg (x):

        h(0   , x) = f(x)
        h(S(y), x) = g(y, h(y,x), x)

* it looks cleaner when we use the LHS to reprent the successor of the actual natural number as `S(y)`, then if we leave this to the RHS where we must use the predecessor function, `P(y)`, twice intead:

        h(0, x) = f(x)
        h(y, x) = g(P(y), h(P(y),x), x)


* Here is the simplified definition again, in Haskell. Haskell doesn't use parenthesis for function application (just space) so it is leaner:

```hs
h 0 x = f x
h y x = g (y-1) (h (y-1) x) x
          ^^^^^ ^^^^^^^^^^^ ^
          arg#1    arg#2    arg#3
```


* Example

```
let:

f(x) = π¹₁(x) = x
since π¹₁ ≡ id

g =  σ ∘ π³₂
g = (σ ∘ π³₂) (x,y,z)
g(x,y,z) = σ(π³₂(x,y,z)) = σ(y)

then h is
h(0,    x) = f(x)
h(σ(y), x) = g(y, h(y,x), x)
           [ g(x, y     , z) = σ(π³₂(x,y,z)) ]
         g = σ(π³₂(x,y,z))
         g = σ(π³₂(y, h(y,x), x))
         g = σ( h(y,x) )
         g = σ(y)


now:
h(0,1) = 1
h(1,1) = σ(h(0,1)) = 2
h(2,1) = σ(h(1,1)) = 3
```

The `h` is a binary primitive recursive function known, i.e. *addition*. See?
