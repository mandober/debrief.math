# Iterating differentiation

Taking a derivative repeatedly in the end amouns to just taking the first derivative of some function.

Taking the first derivative of function `f(x)` we get `f′(x)`. Taking the second derivative of `f(x)` we get `f′′(x)`, which is the first of `f′(x)`.

Note: a function itself is its own "zeroth" derivative `f⁽⁰⁾x = f(x)`.

f⁽⁰⁾x = f(x)
f⁽¹⁾x = f′x
f⁽³⁾x = (f′′x)′

Iterating derivatives of `sin`:
- sinx ⟼ cosx ⟼ -sinx ⟼ -cosx ⟼ sinx
- sin⁽¹⁾x ⟼ cosx
- sin⁽²⁾x ⟼ cos⁽¹⁾x ⟼ -sinx
- sin⁽³⁾x ⟼ cos⁽²⁾x ⟼ -sin⁽¹⁾x ⟼ -cosx
- sin⁽⁴⁾x ⟼ cos⁽³⁾x ⟼ -sin⁽²⁾x ⟼ -cos⁽¹⁾x ⟼ sinx

>sin′′(x) = -sin(x)

>sin(x) = sin⁽⁴⁾x

- sin⁽⁰⁾(x) = sin⁽⁴⁾(x) =  sin(x)
- sin⁽¹⁾(x) = sin⁽⁵⁾(x) =  cos(x)
- sin⁽²⁾(x) = sin⁽⁶⁾(x) = -sin(x)
- sin⁽³⁾(x) = sin⁽⁷⁾(x) = -cos(x)

Iterating derivatives of `cos`:
- cosx ⟼ -sinx ⟼ -cosx ⟼ sinx ⟼ cosx

The derivative of `sin` and `cos` are within each other in a 1:1 manner. The derivatives of `tan` and similarly paired with `sec`, except that
- tan′(x) = sec²(x)
- sec′(x) = sec(x)tan(x)


Iterating derivatives of `tan`:

tanx ⟼ sec²x


sec²x ≠ sec(x²) = (secx)²

```js
(sec²x)′ = 2sec³(x)sin(x)


(sec²x)′ = ((secx)²)′ ⟼ 
  use chain rule with
    (g ∘ h)(x)
      g = x²
      h = sec(x)
    g′(h(x)) × h′(x)
      g′ = 2x
      h′ = sec(x)tan(x)

(sec²x)′ = ((secx)²)′ = 2 sec(x) sec(x) tan(x) = 2sec²(x)tan(x)

// sin is reciprocal of csc
// cos is reciprocal of sec
// tan is reciprocal of cot

             1                       1                      1
sec²(x) = --------, like  csc(x) = -------, and cot(x) = -------
          cos²(x)                   sin(x)                tan(x)


```
