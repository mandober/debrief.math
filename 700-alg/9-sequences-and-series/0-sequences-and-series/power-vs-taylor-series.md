# Difference between a power series and Taylor series

## Power vs Taylor series

Taylor series and power series are the same, the difference is only in what aspects are emphazised by using one term over the other.

```js

```




## Difference between a power series and Taylor series

https://www.reddit.com/r/learnmath/comments/1340k6k/can_someone_please_explain_the_difference_between/

We don't talk about Taylor series on their own. We talk about Taylor series of a function. *The Taylor series of a function at a point is a power series that coincides with the function over some part of the domain.*

---

Every Taylor series is a power series, and vice versa.

The difference is not in what they are, but in the context in which they are referenced. Imagine it like this: every daughter is a woman, and every woman is a daughter. The difference between "woman" and "daughter" does not lie in who is or is not a daughter or a woman (those are all the same people) - the difference is that "daughter" signifies a certain relation the woman in question has to other people. Referring to a person as a daughter, draws attention to the fact that her parents will be relevant to the story.

The same goes for the power and Taylor series. 
Every power series is a Taylor series and vice versa. 

For every power series

    Σ{k=0..∞} aₖ(x-b)ᵏ

there is a smooth function `f` whose `k`-th derivative satisfies

    aₖ = f⁽ᵏ⁾(b)/k!

making that series the Taylor series of `f` centered at `b`.

And every Taylor series

    Σ{k=0..∞} f⁽ᵏ⁾(b)/k! (x-b)ᵏ

of some smooth function `f`, is a power series with coefficients

    aₖ = f⁽ᵏ⁾(b)/k!

But the name "Taylor series" draws attention to the fact that the smooth function `f` will be relevant to the context, and allows us to state the relation between the series and the function in fewer words than if we kept referring to it as a power series.

---

"The Taylor series of a function at a point is a power series that coincides with the function over some open neighborhood of that point."

No, it is not. The Taylor series of a smooth function `f` at a point `b` is the series `sum_k 1/k! dkf(b)/dxk • (x-b)k`. Nothing more, nothing less. This series may not even converge on any open set, while still being a Taylor series of `f`. It may also converge on an open set, but not coincide with `f` on any open subset. It would still be a Taylor series of `f`, though. 

The case you describe is a special, rare case, warranting the definition of a new type of function to which what you say actually applies. Such functions are called analytic, and most smooth functions are not analytic.
