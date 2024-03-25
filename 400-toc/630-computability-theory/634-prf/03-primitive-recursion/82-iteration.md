# Iteration

```hs
-- Summary
h x̅    0  = f x̅                -- base case (same for all 3 defs below)
h x̅ (S y) = g    y  x̅ (h x̅ y)  --        Primitive Recursion
h x̅ (S y) = g (S y) x̅ (h x̅ y)  -- Weak   Primitive Recursion
h x̅ (S y) = g       x̅ (h x̅ y)  -- Weaker Primitive Recursion aka Iteration
```

The weaking of primitive recursion is focused on the recursive argument `y` - in both forms of weakened PR, the recursive arg, `y`, on the right-hand side of the rec step, i.e. as an argument to `g`, is manipulated in some way, while the left-hand side defines `h` in terms of its successor, i.e. as `S(y)`.

Thus, we have the argument `y` (as `S y`) on the defining left side, 
while the right-hand sides mentions its predecessor `y` - this `y` on the rhs is what is referred to as the implicit predecessor below.

```hs
-- Primitive Recursion (original def)
h x̅    y  = f x̅
h x̅ (S y) = g x̅    y  (h x̅ y)

-- Weak Primitive Recursion
h x̅    y  = f x̅
h x̅ (S y) = g x̅ (S y) (h x̅ y)

-- Iteration (even weaker PR)
h x̅    y  = f x̅
h x̅ (S y) = g x̅       (h x̅ y)
```



**Weak Primitive Recursion**      
First, the definition of primitive recursion can be weakened 
  by replacing the *implicit predecessor*, `S(y)`, 
  on the right-hand side of the recursive step: 
    `h x̅ (S y) = g x̅ (S y) (h x̅ y)` instead of 
    `h x̅ (S y) = g x̅    y  (h x̅ y)` the orginal PR definition.

  In PR, we have `S y` on the lhs, that is, 
  we're defining `h` in terms of the successor of `y` 
  as `S y` on the defining left-hand side, 
  and with its predecessor, as `S y` (thus just `y`), on the rhs.

**Iteration - Weaker Primitive Recursion**     
Second, the definition of primitive recursion can be further weakened 
  by removing the *implicit predecessor* arg, `S(y)`, from the args of `g`:
    `h x̅ (S y) = g x̅   (h x̅ y)` instead of 
    `h x̅ (S y) = g x̅ y (h x̅ y)` the orginal PR definition.


Summary
- Weak Primitive Recursion is this form with the pred of `y` on the rhs.
- Iteration: an even weaker form of PR that gets rid of the `y` arg on the rhs.

```hs
-- Summary
h x̅    0  = f x̅                -- base case (same for all 3 defs below)
h x̅ (S y) = g    y  x̅ h(x̅, y)  -- Primitive Recursion
h x̅ (S y) = g (S y) x̅ h(x̅, y)  -- Weak Primitive Recursion
h x̅ (S y) = g       x̅ h(x̅, y)  -- Iteration
```


## Iterative functions

Weakening the definition of primitive recursion like this we actually get the definition of iteration.




Weakening this even further by using functions `h` of arity `k+1`, removing `y` and `S(y)` from the arguments of `h` completely, we get the **iteration rule**:

$$
\displaystyle {
  \begin{array}{lcll}
    f \ (\quad \quad 0 , \ x_1 \cdots x_k \ ) & = &
    g \ (\quad \quad \ \   x_1 \cdots x_k \ )     &   \\
    f \ (\ S(y)      \ , \ x_1 \cdots x_k \ ) & = &
    h \ (\ f(y ,         \ x_1 \cdots x_k \ ) ,
                         \ x_1 \cdots x_k )
  \end{array}
}
$$


*The class of iterative functions* is defined the same way as the class of PRFs except using this weaker rule instead. These are conjectured to be a proper subset of PRFs.

```hs
x̅ = x₁, …, xₖ

h(  0, x̅) = f(x̅)              -- base case: same for both
h(S y, x̅) = g(y, h(y,x̅), x̅)   -- rec case: primitive recursion
h(S y, x̅) = g(   h(y,x̅), x̅)   -- rec case: iteration

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


## Iteration

```hs
-- Iterative functions with extra args (1)
iter    0  x̅ = f x̅
iter (S y) x̅ = g (iter y x̅) x̅

-- Iterative functions with extra args (2)
iter 0 x = f x
iter y x = g (iter (y - 1) x) x

-- Iterative functions with a single arg
iter 0 = f
iter y = g $ iter (y - 1)
```




$$
\displaystyle {
  \begin{array}{lcll}
    f (0,    \overline{x}) & = &
    g (      \overline{x})     &   \\
    f (S(y), \overline{x}) & = &
    h (f(y,  \overline{x}), \overline{x})
  \end{array}
}
$$
