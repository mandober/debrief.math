# Computing derivatives

## Function 2

```js
         1
f(x) = --------
       (1 - x)²
// use the quotient rule: (f/g)′ = (f′g - fg′)/g²
// f x = 1
// g x = (1 - x)²
f′(x) = 

```


## Function 1

```js
         1                1                   2                     6
f(x) = -----   f′(x) = --------   f′′(x) = ---------   f′′′(x) = ---------
       1 - x           (1 - x)²            (1 - x)³              (1 - x)⁴

// derivatives of f(x) above as a sequence:
           ∞
          ⎲     n!
f⁽ⁿ⁾(x) = ⎳ -----------
          ⁿ⁼⁰ (1 - x)ⁿᐩ¹

nominators: 1, 1, 2, 6, 24, …, n!
denominators: (1-x)¹, (1-x)², (1-x)³, (1-x)⁴, …, (1-x)ⁿᐩ¹
// there is no denominator (1-x)⁰ = 1

// work it:
f′(x) = (1/1-x)′ = (1-x)⁻¹
// use the chain rule: (f∘g)′ = f′(g) × g′
f(x) = x⁻¹
f′(x) = -x⁻²
g(x) = 1 - x
g′(x) = -1
---------------
f′(x) = (1/1-x)′ = (1-x)⁻¹ = -(1-x)⁻² × (-1) = (1-x)⁻²

           1
f′(x) = --------
        (1 - x)²

f′′(x) = (1-x)⁻²
// chain rule:
f(x) = x⁻²
f′(x) = -2x⁻³
g(x) = 1-x
g′(x) = -1
f′′(x) = (1-x)⁻² = -2(1-x)⁻³ × (-1) = 2(1-x)⁻³

            2
f′′(x) = ---------
         (1 - x)³

f′′′(x) = (2(1-x)⁻³)′
// chain rule:
f(x) = 2x⁻³
f′(x) = -6x⁻⁴
g(x) = 1-x
g′(x) = -1
f′′′(x) = (2(1-x)⁻³)′ = -6(1-x)⁻⁴ × (-1) = 6(1-x)⁻⁴

// sequence of derivatives of f(x)
         1
f(x) = ------
       1 - x

           1
f′(x) = --------
        (1 - x)²

            2
f′′(x) = ---------
         (1 - x)³

             6
f′′′(x) = ---------
          (1 - x)⁴

             24
f⁽⁴⁾(x) = ---------
          (1 - x)⁵

            120
f⁽⁵⁾(x) = ---------
          (1 - x)⁶

            720
f⁽⁶⁾(x) = ---------
          (1 - x)⁷

             7!
f⁽⁷⁾(x) = ---------
          (1 - x)⁸

             8!
f⁽⁸⁾(x) = ---------
          (1 - x)⁹
```
