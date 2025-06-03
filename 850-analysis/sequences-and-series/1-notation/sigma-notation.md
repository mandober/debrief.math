# Sigma notation

Series use the convenient sigma notation, while sequences must use an alternative notation, albeit with the same exact functionality. The notation used for sequences is something of an ad hoc, let's-wing-it, solution:

    {aₙ}{n=j..m}

where the basic elements are the same as in the sigma notation: there is an iterator named `n` that counts from some constant `j` to `m`. The lower bound is represented by `j` which must be a constant number, most often 0 or 1. The upper bound is represented by `m`, but `m` is, most often, not a number at all but infinity, denoted by the symbol `∞`; it should mean that there is no upper bound, which aligns with the notion of an infinite sequence.

Most of the time, the notation for a sequence looks like:

    {aₙ}{n=0..∞}
    or
    {aₙ}{n=1..∞}

$$\Large \{aₙ\} _{n=0} ^∞$$

The basic components, the mechanism and mechanics of both sigma notation and the notation for sequence are the same, but for some reason these components were not extracted into a separate notation parameterizable by the formula of function that makes up the body of the notation. Plus, there are more "big ass" math symbols for similar notations that rely on iteration, like the n-ary pi for products, n-ary intersection and union, etc. It would be better if these disperate notations were unified under the same notation parameterized by the operation used to join the resulting terms and by a formula of function that generates them.

In the notation for sequences, `{aₙ}{n=0..∞}`, `aₙ` is actually an abuse of the notation since a generating formula should be placed there, e.g. `{xⁿ}{n=0..∞}`, but the generating formula is often interchangibly used with the sequence it generates. So `xⁿ` is a generating formula that generates the sequence `{xⁿ}`, but the braces are often elided. In fact, the iterating part is elided as well, and it can be significant since it tells us where the count starts at and the name of the iterator (although we can usually infer the name, especially since it is `n` or `k` by convention). There is no agreement on the default for the start of the count, and both 0 or 1 are used as often. This, i.e. the lower bound can also be inferred up to some extent, but if the sequences uses a number different then 0 or 1, then it must be explicitly specified. Using another name for the iterator must also be explicitly specified.

To aid this, sometimes the initial term is explicitly given as e.g. `a₀ = C` or `a₁ = C`, which tells us at least the lower bound if not the name of the iterator. And `C` there stands for an expression that is the value of the term. Thus, `a` is the name of entire sequence, index 0 or 1 specified the lower bound, and `a₀` or `a₁` gives the value (`C`) of the term with index 0 or 1. We don't get the name of the iterator, though. In fact, the initial term (if given) is followed by the usual notation for a sequence, so all together it may look like this:

    a₀ = 1, aₙ = xⁿ
    or
    a₀ = 1, aₙ = {xⁿ}{n=0..∞}

Note that the easiest way to have the initial term be 1 is to raise any expression to 0 - thus, the count should start at 0. Sure, it can also start at 1 but then we have to adjust the occurrences of the iterator in the formula.
