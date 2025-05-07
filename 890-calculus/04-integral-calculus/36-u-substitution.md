# Substitution rule of integration

*Substitution rule*, or *u-substitution rule*, named so due to a common use of variable named `u`, is an integration rule that transforms a complex equation into a form that is easier to solve.

By a complex equation, we primarily mean an integral that is actually a function composition, and thus it is possible to decompose it into two or more functions.

When applying the substitution rule, we proceed by recognizing which functions are composed and to figure out which one to pick as the inner function of composition - that is the one that we'll replace by variable `u`.

The first step in applying the substitution rule is for us to 



more suitable for application of the standard rules as we attempt to solve it.


that is easier to solve. 

sually assembled by composing two or more functions - 

As its name suggests, this rule is about replacing a part of an equation by a fresh variable (named `u` as a convention) in order to simplify it - if only temporary - followed by attempting to express the rest of the equation in terms of that variable. This description sucks but hopefully an example will do a better job of explaining it.

Essentially, all this rule does is allow us to replace a subexpression, which is preferrably targeted as the inner of the two composed functions, by a variable `u`. Then we must "repair" the differential, which is commonly in terms of variable `x`, i.e. `dx`, into one that is in terms of the new variable `u`, i.e. as `du`.

The substitution rule is a conterpart of the chain rule; in fact, the whole process resambles applying the chain rule in reverse.

## Example

Sometimes, an integral is too complex to be solved directly by applying our standard rules. There may not be any obvious rule we can apply. Consider, for example, this indefinite integral, `⎰3x²(x³+5)⁷dx`.

The first thing we should do is try to identify a subexpression to replace by `u`. Ideally, this subexpression should be the inner function in a function composition, which in this case seems to be `x³+5`. So we replace it by `u`, i.e. we let `u = x³+5`. We take a derivative of both sides:

```
⎰3x²(x³+5)⁷dx               original integral

⎰ 3x² ( x³ + 5 )⁷ dx        select a subexp that will be replaced by u
        └─┬───┘
      let u = x³+5          we chose to subst the part in parens
      d/dx u = (x³+5)′      take derivative of both sides
      du/dx = 3x²           resulting derivative

      du = 3x²dx            move dx to the rhs as if that is normal

⎰ 3x² u⁷ dx               subexp replaced by u
⎰ u⁷ 3x² dx               rearrange terms merely to identify that
     └──┬──┘
       du


⎰ u⁷ du                   du exactly matches the rest of the equation, 3x²dx
u⁸/8 + c                  find antiderivative
(x³+5)⁸/8 + c             perform back-substitution
■




      d/dx u = (x³+5)′      take derivative of both sides
                            can also be denoted by:
                               d/dx u = d/dx (x³+5)
                                du/dx = d/dx (x³+5)
                                du/dx = (x³+5)′
```




## Steps

## Deriving the rule

In fact, we can derive the rule by starting from the chain rule itself:

    f(g(x))′ = f′(g(x))g′(x)

To differentiate a function that is really a composition of two functions `f` and `g`, as `f ∘ g`;

 we first find the derivative of the outer function, `f`, ignoring its argument, then multiply it by the derivative of the inner function, `g`. This disregard of the argument (which is actually the inner function) will correspond to the substitution of a function by a fresh variable in the substitution rule.




## Guidelines for choosing `u`

However, we can appreciate that this equation may be expressed as a composition of two functions - and we need to figure out what each function is. The inner function is usually a subexpression in parenthesis which is raised to a power, taken the n-th root of, plays the role of denominator, or something similar. There are no hard rules how to recognize it, but these equation templates may serve as a general guideline:

```
e^◌        (◌)ⁿ        ✓(◌)
1/◌      1/(◌)ⁿ      1/✓(◌)
```




Sometimes, the integral is too complicated, e.g. `⎰ 2x cos (x²+1) dx`, and it cannot be evaluated directly using the conventional approaches. However, we can recognize that 

convert it into a more digestable form by hiding a part of it behind a new variable - usually variable `u`, hence the name of this method. 

We procede by letting `u = x²+1`, so the original exp becomes `⎰ 2x⋅cos(u) dx` which can be integrated.

Of course, there is a twist. After integrating this new expression, we have to deal with the substitution that must be set back into the equation.
