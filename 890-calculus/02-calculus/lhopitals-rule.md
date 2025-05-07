# L'Hôpital's Rule

https://en.wikipedia.org/wiki/L%27H%C3%B4pital%27s_rule

*L'Hôpital's rule* (or *L'Hospital's rule*, aka *Bernoulli's rule*) is a theorem that allows evaluating limits of indeterminate forms using derivatives. Application (or iteration) of the rule often converts an indeterminate form to an expression that can be easily evaluated by substitution.

L'Hôpital's rule can help us calculate a limit that may otherwise be hard or impossible. It is only applicable for indefinite integral forms. The rule can be iterated until a non-indeterminate form is obtained.

**L'Hôpital's rule** says that the limit when we divide one function by another is the same after we take the derivative of each function (with conditions).

    lim{x→c} f(x) / g(x) = lim{x→c} f′(x) / g′(x)

where `f` and `g` are both differentiable and approach the same limit.

>The limit, as `x` approaches `c`, of `f(x)` over `g(x)` equals the limit, as `x` approaches `c`, of the derivative of `f(x)` over the derivative of `g(x)`.


For example, `lim{x→a}(sin x/x) = 0/0` is an indefinite form, so try taking the derivative: `lim{x→a}(d/dx sin x / d/dx x) = cos x / 1 = cos x`.

Indeterminate forms involce 0 or ∞ in the denominator and/or nominator, including 0/0, 0/∞, ∞/∞, -∞/∞, -∞/0, etc.

In `lim{x→∞}(eˣ/x³)`, the limit evaluates to `∞/∞`, so we can try taking the derivative to get `lim{x→∞}(eˣ/3x²)`, but since this also evaluates the limit to an indeterminate form, we should keep going, and get `lim{x→∞}(eˣ/6x)`, which is still indeterminate (∞/∞), so we do it once again `lim{x→∞}(eˣ/6)`, and this finally evaluates the limit to `∞`. Note that using the L'Hôpital's Rule on the last equation would give an incorrect answer - we must know when to stop iterating.

```
lim{x→∞}(eˣ/x³) evals to ∞/∞ so apply L'Hôpital's Rule

lim{x→∞}(eˣ/x³)′ = lim{x→∞}(eˣ/3x²)
still evals to ∞/∞ so apply L'Hôpital's Rule again

lim{x→∞}(eˣ/x³)′′ = lim{x→∞}(eˣ/3x²)′ = lim{x→∞}(eˣ/6x)
still evals to ∞/∞ so apply L'Hôpital's Rule again

lim{x→∞}(eˣ/x³)′′′ = lim{x→∞}(eˣ/3x²)′′ = lim{x→∞}(eˣ/6x)′ = lim{x→∞}(eˣ/6)
Now we stop cos the limit can be evaluated to ∞
```

L'Hôpital's Rule is only applicable for indefinite integral forms, which this equation is not:

    lim{x→0} (x + sin x) / (x + cos x) = 0/1 = 0

Other forms when the rule is applicable is include

    lim{x→0} fx ∙ gx = 0 ∙ ∞

Since we can't know what is going on here, we should try and rewrite this as

    lim{x→0} fx / (1 / gx)
    or
    lim{x→0} gx / (1 / fx)

and then try to apply the rule. For example,

    lim{x→0} x ∙ ln x = (0) (-∞)

which is indeterminate, so we rewrite it by putting one function as a reciprocal and dividing the other by it:

```
lim{x→0} x ∙ ln x =

          ln x
lim{x→0} -------
          1 / x

Then we can apply the rule:

          (ln x)′
lim{x→0} ---------- =
          (1 / x)′

          1 / x
lim{x→0} ------- =
          -x⁻²

             1
            ----
             x
lim{x→0} -------- =
             1
          - ----
             x²

            x²
lim{x→0} - ---- =
            x

lim{x→0} (-x) = 0

which, as x tends to 0, evaluates to 0
```

Derivatives:
- (ln x)′ = 1/x
- (1/x)′ = (x⁻¹)′ = -x⁻² = -1/x²

Then dividing one by the other, `(1/x) ∙ (-1/x²)`, we get `-x`, which, as `x` tends to 0, evaluates to 0.

Besides having an indeterminate product, e.g. `∞ ∙ ∞`, there may also be an indeterminate difference, like `∞ - ∞`, of indeterminate powers, including `0⁰`, `∞⁰`, `1^∞`. In such cases, we should try algebraic mahinations to try to bring the equation into a form applicable for applying the L'Hôpital's rule.

One thing to do with powers is to set the exponent equal to `y`, then take `ln` of both sides:

    ln y = ln (f(x)^g(x))

This allows pulling out the exponent

    ln y = g(x) ∙ ln f(x)

and then solving for y

    y = e^(g(x) ∙ ln f(x))

which is a form where we can evaluate the limit. As a concrete instance:

`lim{x→0ᐩ} xˣ` yields `0⁰`, but we can set `y = xˣ` and then take `ln` of both sides:

```
lim{x→0ᐩ} xˣ
y = xˣ
ln y = ln xˣ
ln y = x ∙ ln x
y = e^(x ∙ ln x)
Now we evaluate the limit as x tends to 0, and get 0
y = e⁰ = 1
```


## Links

https://tutorial.math.lamar.edu/classes/calci/lhospitalsrule.aspx
https://www.mathsisfun.com/calculus/l-hopitals-rule.html
