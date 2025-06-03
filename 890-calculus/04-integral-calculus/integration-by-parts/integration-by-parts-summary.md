# Integration by parts

>Integration by parts formula: `⎰u dv = uv - ⎰v du`

## Summary

- Integration By Parts (IBP) rule of integration
- IBP rule corresponds to the product rule of differentiation
- IBP rule reverses the product rule of differentiation
- we can derive the IBP formula from the product rule formula
- solving integrals
- integral to solve matches the lhs of the formula, i.e. `⎰u dv` part
- rhs, `u v - ⎰v du`, is what we use when solving
- start solving by considering which rule can be applied
- recognize when u-subst cannot be used so try IBP instead
- proceed with the IBP by choosing `u` and `dv` subexpressions


  - integrands are often sequences of simple, compound, composed functions
    - integrands are terms joined together with multiplication
    - integrand consisting of a simple function, `⎰f(x)dx`:
      - ⎰ dx = ⎰ 1 dx, with f(x) = 1, so F(x) = x + C
      - ⎰ x dx,       with f(x) = x,  so F(x) = x²/2 + C
      - ⎰ 2x dx,      with f(x) = 2x, so F(x) = 2x²/x + C = x² + C
    - integrand consists of one or more functions, also called terms
    - if joined by multiplication they are also called factors
  - choose terms in the integrand to set `u` and `dv` to, knowing that
    - `u`  will be differentiated
    - `dv` will be integrated
  - choosing `u`:
    - choose a fn for `u` that will get simpler when differentiated, or
    - choose a fn for `dv` that will get simpler when integrated
    - follow the LIATE guideline for `u` when in doubt
    - `dv` part
    - sometimes the choice of `u` vs `dv` amounts to the same
    - sometimes this choice may be arbitrary, it's all the same
- LIATE (log, inv trig, alg, trig, exp) tip for choosing `u`
- visualising integration by parts
- repeated/nested integration
- integrating `ln(x)` (with unity)
- tabular method for integration by parts
  - procedure
    - one column for derivatives of `u`
    - one column for antiderivatives of `dv`
    - keep differentiating/integrating until 0 is reached
    - add alternating signs to rows
    - mult the terms diagonally (term in 1row 1col mult by term in 2row 2col)
    - join the product terms according to the signs
    - don't forget to add `+ C`
  - sometimes 0 is never reached
