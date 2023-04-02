# mu-operator

## Introduction

The μ-operator does not belong to the class of primitive recursive functions (PRFs) since it produces partial functions and is thus related to the general recursive functions. Nevertheless it is descibed in this section.

The *μ-recursive functions*, aka *general recursive functions* (GRFs) or *partial recursive functions*, are partial functions that take finite tuples of natural numbers and return a single natural number.

GRFs are the smallest class of partial functions that includes the initial PRFs (const, succ, proj) and is closed under the primitive recursive operations (composition and primitive recursion) and the μ-operator.

While all PRFs are total, this is not true of GRFs; for example, the minimization of the successor function is undefined. The PRFs form a subset of the *total recursive functions*, which are a subset of the GRFs. For example, the Ackermann function is proven to be total recursive but non-primitive.

## μ-operator

The μ-operator performs minimization.

```
μ f ( x₁, …, xₖ ) = z
   ⟺
  f ( z, x₁, …, xₖ ) > 0      for i = 0..z−1
  f ( i, x₁, …, xₖ ) = 0
```

Minimization operator `μ`:

given

- a k+1-ary function `fᵏᐩ¹` as `f  ( y, x₁, …, xₖ )`

- the k-ary function `μ(f)` (minimization of `f`) is defined by:

$$
\displaystyle {
\begin{aligned}
     \mu (f)  (x_1   \cdots  x_k) = z
  \     {\stackrel{ \mathrm{def} } \iff}
  \     f\ (i, x_1   \cdots  x_k) & > 0
  \quad
        {\text{for}}
  \quad
        i = 0..z\!\!-\!\!1
  \quad
        \\
        f\ (z, x_1   \cdots  x_k) & = 0
  \quad
\end{aligned}
}
$$

Notes
- what is `z`
- what is `i`

Intuitively, minimization seeks (beginning the search from 0 and proceeding upwards) the smallest arg `xᵢ` that causes the function `f` to return 0.

If there is no such argument, or if one encounters an argument for which `f` is not defined, then the search *never terminates*, thus `μf` is not defined for arguments `x₁, …, xₖ`.

## Minimization process

- The μ operator takes an arbitrary function, `f`, with `k+1` params
- then it fixes the first `k` params of `f`, intending to manipulate its last arg, `i` (recall that all these PRFs work over ℕ)
- `i` is set to 0 and μ will increment it by one in each step, `i = 0,1,2..`
- each step, μ checks whether the output of `f` is 0
- if the output is 0




- a given function `f` taking `k+1` args, `fᵏᐩ¹`

minimization of f 
denoted by `μf` or `μ(f)` 
is a function of arity `k`, __μfᵏ__
(`μf` has one argument less).



The minimization of a given function `f` with `k + 1` parameters is a function `μf` with `k` parameters (μf has one arg less then `f`!)


The additional arg that varies, while the other args (the original args of f) stay fixed. The last arg, say `i`, counts from 0 upwards,`i=0..`, indefinitely or until the value for which `μ(f)` is 0 is encountered.

## Example 1

Recall that `proj²₂(a,b) = a`, and let `f` be `proj²₂`.

The minimization of the binary function `f` is a unary function `μf`

such that

(μf)¹(a) 
