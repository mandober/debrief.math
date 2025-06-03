# Alternating Series

An alternating series has terms that alternate in switching their sign. A common way to achieve sign alternation is using the *sign control* expression, `(-1)ⁿ`.

The control of the sign is achieved by raising -1 to the iterator variable, so the starting value of iteration affects the sign: if counting starts from 0, the initial term will have a positive sign, since `(-1)⁰ = 1`; if counting starts from 1, the initial term will have a negative sign, since `(-1)¹ = -1`. Of course, whatever the starting value of iteration is, we can adjust the occurrences of the iterator variable to account for any starting value.

```js
// series that start from 1
⎲∞
⎳ₙ₌₁ (-1)ⁿ aₙ

// series that start from 0
⎲∞
⎳ₙ₌₀ (-1)ⁿ aₙ
```

An alternating series, `Σaₙ`, is closely related to the series obtained by taking its absolute value, `Σ|aₙ|`. The absoule value series can be obtained by taking the absolute value of each term of the original series. In any case, the original, alternating series, `Σaₙ` has terms on both sides of the x-axis, while the corresponding absolute value series, `Σ|aₙ|`, has terms that were below the x-axis reflected about the x-axes, so all the terms are located above the x-axis. If we consider this, we realize that this change does not influence convergence of the original series - if it was convergent, the corresponding series is convergent as well; if it was divergent, the corresponding series is divergent as well.

>The derived series has the same terms, it only has them all above the x-axis.

Taking the absolute value of an alternating series means to get rid of the sign control expression. Also, a positive series can be prefixed by the sign control expression, converting it into an alternating series.
