# Sequences and Series :: About

## About sequences and series

A *sequence* is an ordered collection of terms that may be descibed by giving the formula that constructs any term from its index, e.g. `aₙ = {0, 1, 2, 4, …, x², …}` meaning that its first term is 0, `a₀ = 0`, and any term can be constructed by squaring the index, so `5 ⟼ 25`.

A *series* is a sum of all the terms in a sequence. Summing up all the terms in an infinite sequence while seemingly unfeasable is actually possible for some sequences, e.g. `aₙ = {1, 1/2, 1/3, …, 1/n, …}` sums up to a finite value, 2.

A *power series* has the form `Σ{n=0..∞} aₙ(x-a)ⁿ`, where `aₙ` are possibly distinct *coefficients* (a₀, a₁, …), and `a` is a constant that represents the *center of the power series*. If a power series is centered at 0 (a common case), then the formula can be simplified to `Σ{n=0..∞} aₙxⁿ`.

A power series is a convenient way to define or express a function as a **polynomial of infinite degree**. Inside the *interval of convergence* (also called the *domain of convergence*), we can treat such polynomials as regular polynomials and manipulate them in the same way.


**Taylor series**, or **Taylor expansion**, of the function `f` is an *infinite sum* of terms expressed in terms of the *derivatives* of `f` at a single point.

This implies that `f` must be (everywhere) continuous and infinitely differentiable function (also called *smooth function*). We use a Taylor series to approximate such functions for various reasons (more on that later). 



the point that is the center of the series, aka the *point of coenvergence*. The infinite sum possibly approximates the modelled function completely accurately across the entire domain. In oter words, the domain of the modelled function would coincide with the domain of the infinite sum. The infinite sum thus obtained is a polynomial, called *Taylor polynomial*, which is also a function (that shares the same domain).

However, since we cannot expand all the terms of an infinite series, we cannot obtain that polynomial that would represent the modelled function faithfully across the whole domain. Instead, we can only expand 




many terms to get an infinite (Taylor) polynomial which would be exact representation of the function . 

Instead, we can only expand a finite number of terms, e.g. the first `n` terms, thereby obtaining an n-th degree Taylor polynomial that approximates the function. In fact, it gives a completely faithful representation of the function but only over a certain interval, called the *interval of convergence*, which is centered, usually at 0, but possibly at a different x-value, denoted by `a`, where `a ∈ dom(f)` (so `a` belongs to the function's regular domain; `a` is valid input value).



are content with expanding only  to get a 




Expanding a Taylor series 



*Taylor polynomial* is a good approximation for a function near a known point. We can define Taylor polynomials in 3 different ways: using derivatives, limits or an explicit formula. All sensible function may be expressed as Taylor series.

Broadly, a Taylor series of a function at a point is a power series that coincides with the function over some part of the domain. 

Every Taylor series is a power series, and vice versa. The difference between them is only in relation to the context in which they are referenced. Referring to a series as a power series promotes certain aspects of the series, while referring to it as Taylor series promotes other aspects, like drawing attention to the fact that the smooth function `f` will be relevant to the context.

For every power series `Σ{k=0..∞} aₖ(x-b)ᵏ`, there is a smooth function `f` whose k-th derivative satisfies `aₖ = f⁽ᵏ⁾(b)/k!`, making that series the Taylor series of `f` centered at `b`.

Equivalently, every Taylor series `Σ{k=0..∞} f⁽ᵏ⁾(b)/k! (x-b)ᵏ` of some smooth function `f` is a power series with coefficients `aₖ = f⁽ᵏ⁾(b)/k!`.
