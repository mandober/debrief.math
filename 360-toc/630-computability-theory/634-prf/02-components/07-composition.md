# Composition

* Is `f(1, 2, 3)` equal to `(3,2)` or to `(2,3)` where `f = π³₃ ∘ π³₂`?
* If `f` is a k-ary PRF, and `k` number of n-ary `g` functions are primitive recursive functions, then the composition of `f` with `g`'s is also primitive recursive.

## Standard composition

If `f` and `g` are unary functions over natural numbers, we can compose
them and obtain a new function `h` defined as `h(x) = g(f(x))`. The new function `h` is then defined by composition of `f` and `g` as 

`h = g ∘ f` aka `h(x) = (g ∘ f)(x) = g(f(x))`

In regular composition, only the rightmost function (below `f`) may be polyadic, accepting any number of arguments but returning a single value. All other functions composed with `f` are unary (oh, well): each takes as input the value returned by the function on its right. Keeping it simple so that `f` is also unary, the composition `h ∘ g ∘ f`, actually flows from right to left:

`(h ∘ g ∘ f)(x) = h (g (f x)))`

but it can be also presented in a pipeline style as left-to-right composition:

`x |> f |> g |> h`

In code (Haskell) this looks like

```hs
-- right-to-left composition
(.) :: (b -> c) -> (a -> b) -> a -> c
g . f = \x -> g (f x)

-- left-to-right composition (pipeline)
(|>) :: (a -> b) -> (b -> c) -> a -> c
f |> g = \x -> g (f x)
```

The standard composition only works with unary functions, more-less. However, PR generalizes the composition to work on n-ary (polyadic) functions instead.

## Generalizing composition to polyadic functions

The way PR does this is like so: suppose `f` is a `k`-ary function, and there is a `k` number of `n`-ary `g` functions, `g₀, …, gₖ`. Then we can define a new `n`-ary function `h` as follows:

`h (x₁, …, xₖ) = f( g₁ (x₁, …, xₖ), …, gₖ (x₁, …, xₖ))`

Unlike the standard composition in which only the rightmost function receives the arg(s), here **every function `g` receives a copy of args**, as a k-tuple, as their input. The result of each `g` function (there are `n` functions `g`) is a single value, arranged as an element in an `n`-tuple, fed to n-ary function `f` as input. The composition of `f` and `g`'s is a new function `h` which is also primitive recursive.

`h = f ∘ [g₁ … gₖ]`

that is, with explicit args

`h x̅ = (f ∘ [g₁ … gₖ]) (x̅)`

evaluates as

`h (x₁, …, xₖ) = f(g₁ (x₁, …, xₖ), …, gₖ (x₁, …, xₖ))`




## Details

Given a `k`-ary primitive recursive function `f`, and `k` many `m`-ary primitive recursive functions `g₁, …, gₖ`, the composition of `f` with `g`'s, i.e. the `m`-ary function `h` is also primitive recursive.

`h(x₁, …, xₖ) = f ( g₁(x₁, …, xₖ), …, gₖ(x₁, …, xₖ) )`


In summary, we have:
- k-ary primitive recursive function fᵏ
- k many m-ary primitive recursive functions gᵐ₁, …, gᵐₖ
- m-tuple denoted by Xᵐ := (x₁, …, xₘ) where Xᵐ is just a shorthand

So each m-ary gᵐ function takes the m-tuple producing a list of k results as a k-tuple. Then this k-tuple of results is fed to fᵏ

fᵏ ( gᵐ₁(x₁, …, xₘ) , …  , gᵐₖ(x₁, …, xₘ) )


* In a point free form (without mentioning the X tuple as an arg to g's), the composition is denoted by:

fᵏ ∘ [g₁, …, gₖ]

* In point-full form with the X tuple mentioned, it may be denoted as:

(fᵏ ∘ [g₁, …, gₖ]) (x̅ᵏ)


## Relation to standard composition

>If there is only a single unary `g` function, taking a single arg `x`, then the composition of `f` and `g` is the standard composition:

`f ∘ g` i.e. `(f ∘ g)(x)` is `f(g(x))`

For example, let `f` and `g` both be `Succ`. Then `h(x)` is defined as

```hs
h(x) = (f ∘ g)(x)
     = (S ∘ S)(x)
     = S (S (x))
```

However, if there are two `g` functions, then the PR composition is not anything like the standard composition:

`f ∘ [g₁, g₂]`, that is `f ∘ [g₁, g₂](x)`, is actually `f(g₁(x), g₂(x))`

Let
- `f` be `Add`
- `g₁` be `Proj³₃`
- `g₂` be `Proj³₁`
- `x̅` be `(1,2,3)`

Then `h(x)` is defined as:

```hs
h(x̅)     = (f ∘ [g₁, g₂])(x̅)
h(1,2,3) = (Add ∘ [Proj³₃, Proj³₁]) (1,2,3)
         = Add ( Proj³₃(1,2,3), Proj³₁(1,2,3) )
         = Add(3, 1)
```

>REMEMBER: Each `g` function is given a copy of the input arguemnts. And each `g` function just lays their results in a tuple, i.e. each of the `n` number of `g` fucntions is replaced by its result, producing a `n`-tuple. Then, the precomposed function `f` is applied to that `n`-tuple, producing a single final result.
