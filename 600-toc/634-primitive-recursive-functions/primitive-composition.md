# Primitive composition

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
