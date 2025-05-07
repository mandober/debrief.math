# Rules :: Overview

All the rules involve two functions combined using various operators: 
`+`, `-`, `×`, `÷`, `∘`, `1/_`, `_⁻¹`.

## The First Principle

```js
// First principle:
            f(x + h) - f(x)
f′(x) = lim ---------------
        h→0       h
```

## Linearity of Differentiation

From the principle of linearity of differentiation, these rules follow:
- The Constant Factor Rule of differentiation
- The Sum Rule of differentiation
- The Difference Rule of differentiation

```js
// Linearity of Differentiation (c,k are constants)
// short
(cf + kg)′ = (cf)′ + (kg)′ = cf′ + kg′
// long
(c×f(x) + k×g(x))′ = (c×f(x))′ + (k×g(x))′ = c×f′(x) + k×g′(x)

// From Linearity, the Const Factor, Sum and Difference rules follow:

// Constant Factor Rule (by setting k=0):
// short
(cf)′ = cf′
// long
(c × f(x))′ = c × f′(x)

// Sum Differentiation Rule (setting c=k=1)
// short
(f + g)′ = f′ + g′
// long
(f(x) + g(x))′ = f′(x) + g′(x)

// Difference Differentiation Rule (setting c = 1, k = -1)
// short
(f - g)′ = f′ - g′
// long
(f(x) - g(x))′ = f′(x) - g′(x)
```

## The Chain Rule

The Chain Rule determines what happens when the composition of functions is differentiated.

```js
// short
(f ∘ g)′ = (f′ ∘ g)g′
// long
(f(g(x)))′ = f′(g(x)) × g′(x)
```


## The Product Rule
## The Quotient Rule
## The Reciprocal Rule
## The Inverse Function Rule

```js
// product
(f ∙ g)′ = f′g + fg′

// quotient
(f ÷ g)′ = (f′g + fg′) ÷ g²

// Reciprocal
(1 ÷ g)′ = -g′ ÷ g²

// Inverse
(f⁻¹)′ = 1/f′(f⁻¹(x))
```
