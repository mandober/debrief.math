# Selecting a subexpression


When applying the substitution rule, we proceed by recognizing which functions are composed and to figure out which one to pick as the inner function of composition - that is the one that we'll replace by variable `u`.


As its name suggests, this rule is about replacing a part of an equation by a fresh variable (named `u` as a convention) in order to simplify it - if only temporary - followed by attempting to express the rest of the equation in terms of that variable. This description sucks but hopefully an example will do a better job of explaining it.

Essentially, all this rule does is allow us to replace a subexpression, which is preferrably targeted as the inner of the two composed functions, by a variable `u`. Then we must "repair" the differential, which is commonly in terms of variable `x`, i.e. `dx`, into one that is in terms of the new variable `u`, i.e. as `du`.


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
