# Indeterminate form

https://en.wikipedia.org/wiki/Indeterminate_form

>Indeterminate forms: `0/0`, `±∞/±∞`, `0  ⋅ ± ∞`, `0⁰`, `1^±∞`, `±∞⁰`.

Indeterminate forms are expression that can obtain any value depending on circumstances. In calculus, it is usually possible to compute the limit of an expression, even if it involves a combination of two functions, by taking the corresponding combination of the separate limits of each function. And similarly for other arithmetic operations, which is sometimes called the *algebraic limit theorem*.

However, certain combinations of particular limiting values cannot be computed in this way, and knowing the limit of each function separately does not suffice to determine the limit of the combination. In these particular situations, the limit is said to take an indeterminate form, described by one of the informal expressions:
- division: `0/0`, `±∞/±∞`
- multiplication: `0  × ± ∞`
- exponentiation: `0⁰`, `1^±∞`, `±∞⁰`

among a wide variety of uncommon other indeterminate forms, where each expression stands for the limit of a function constructed by an arithmetical combination of two functions whose limits respectively tend to either 0, 1, ±∞⁠.

A limit taking one of these indeterminate forms might tend to zero, might tend to any finite value, might tend to infinity, or might diverge, depending on the specific functions involved.

A limit which unambiguously tends to infinity, e.g. `lim{x→0} 1/x² = ∞`, is not considered indeterminate.

The term was originally introduced by Cauchy's student Moigno in the middle of the 19th century.

The most common example of an indeterminate form is the quotient of two functions each of which converges to zero, resulting in the form `0/0`. For example, as `n→0`, the ratios `n/n³`, `n/n`, and `n²/n` tend to ∞, 1 and 0, respectively.

```js
lim{n→0} n/n³= 1/n² = 1/0 = ∞
lim{n→0} n/n = 1
lim{n→0} n²/n = n/1 = n = 0
```


In each case, if the limits of the numerator and denominator are substituted, the resulting expression is `0/0`, which is indeterminate. In this sense, 0/0 can take on the values 0, 1, or ∞, by appropriate choices of functions to put in the numerator and denominator.

A pair of functions for which the limit is any particular given value may in fact be found. Even more surprising, perhaps, the quotient of the two functions may in fact diverge, and not merely diverge to infinity. For example, 
x
sin
⁡
(
1
/
x
)
/
x
xsin(1/x)/x.

So the fact that two functions 
f
(
x
)
f(x) and 
g
(
x
)
g(x) converge to 
0
0 as 
x
x approaches some limit point 
c
c is insufficient to determinate the limit

lim
x
→
c
f
(
x
)
g
(
x
)
.
limx→cf(x)g(x).
An expression that arises by ways other than applying the algebraic limit theorem may have the same form of an indeterminate form. However it is not appropriate to call an expression "indeterminate form" if the expression is made outside the context of determining limits. An example is the expression 
0
0
00. Whether this expression is left undefined, or is defined to equal 
1
1, depends on the field of application and may vary between authors. For more, see the article Zero to the power of zero. Note that 
0
∞
0∞ and other expressions involving infinity are not indeterminate forms.

---



Indeterminate forms result from the evaluation of a limit, and include expressions with ∞, 0 and 1.

An indeterminate form does not mean that the limit is non-existent or cannot be determined, but rather that the properties of its limits are not valid. In these cases, a particular operation can be performed to solve each of the indeterminate forms. In other words, we need a different approach to handle such problems.

Differentiation is a popular method as employed by the *L'Hopital's rule*, but it is not the only method.
