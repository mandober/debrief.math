# Substitution :: Examples :: Full cancellation

This example illustrates the ideal situation when after rewriting the integral we get all residual expressions to cancell out, leaving behind an integral so clean it practically solves itself.

```js
∫ 2x(x²+4)² dx
// we pick u to be the nested subexpression
let u = x²+4    // we diff both sides
    du/dx = 2x  // to get an equation for dx
    dx = du/2x  // the right side will replace dx

// rewrite the integral with substitutions
∫ 2x u² du/2x
// and looky here, we get a full cancellation!
∫ u² du
```
