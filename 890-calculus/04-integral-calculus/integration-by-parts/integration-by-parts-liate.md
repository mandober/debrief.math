# Integration by parts :: LIATE

LIATE acronym stands for types of functions as priority list for choosing `u`:
- Logarithmic,  `ln(x)`
- Inverse trig, `arcsin(x)`
- Algebraic (polynomials), `x²`
- Trig,         `sin(x)`
- Exponential,  `eˣ`


It is a tip for choosing which term of the integral (which function) to select to be replaced by `u`. That is, it represents the order in which to pick the function to set `u` to. Normally, it is not essential - just pick the function which will become *simpler* when its derivative is taken. The choice of the terms to pick for `dv` typically includes the differential (usually `dx`).

When we have chosen the term to set `u` to, and the terms to set `dv` to, we proceed by taking a derivative of both sides of `u` equation to get `du`. We then take an integral of both sides of `dv` equation to get `v`. This will result in us having all the parts (`u`, `dv`, `du` and `v`) which we then substitute into the integration-by-parts formula `⎰u dv = uv - ⎰v du`.

In fact, we only need pay attention to the right part of the formula, `uv - ⎰v du` and make the replacements in there, then solve it - since the minuend is just multiplication, the only work typically left is just integrating the subtrahend (and don't foget `+ C` for indefinite integral).
