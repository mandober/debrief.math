# Integration :: Formulas

## Formulas for power functions

>∫ xⁿ dx = xⁿᐩ¹/n+1 + C
>∫ (ax)ⁿ dx = ∫ aⁿxⁿ dx = aⁿ ∫ xⁿ dx = aⁿ xⁿᐩ¹/n+1 + C
>∫ (ax+b)ⁿ dx = 1/na (ax+b)ⁿ + C


## Formulas for exponential functions

>bˣ = exp(ln(bˣ)) = exp(x ln(b))

```js
∫ exp(x)    dx =     exp(x)    + C
∫ exp(ax)   dx = 1/a exp(ax)   + C
∫ exp(ax+b) dx = 1/a exp(ax+b) + C
```

## Trig functions

```js
∫ sin(x) dx =  cos(ax+b) + C
∫ cos(x) dx = -sin(ax+b) + C

∫ sin(ax+b) dx = 1/a  cos(ax+b) + C
∫ cos(ax+b) dx = 1/a -sin(ax+b) + C

∫ sin(x)ⁿ dx = -1/n cos(x) sinⁿ⁻¹(x) + (n-1)/n ∫ sinⁿ⁻²(x) dx
∫ cos(x)ⁿ dx =  1/n sin(x) cosⁿ⁻¹(x) + (n-1)/n ∫ cosⁿ⁻²(x) dx
```


## Integration by parts (IBP)

>∫ u dv = u v - ∫ v du
