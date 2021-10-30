# Primitive recursion

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
