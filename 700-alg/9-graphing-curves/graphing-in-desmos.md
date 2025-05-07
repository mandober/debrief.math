# Graphing in desmos

## Piecewise function notation

Anything that can be represented in function notation, can also be represented in the piecewise notation.

Consider the Fibonacci sequence (0, 1, 1, 2, 3, 5, 8, …). Each term is the sum of the two previous terms, `F(n) = F(n-1) + F(n-2)`. This suggests we need two base cases, `F(0) = 0` and `F(1) = 1`; the former tells what to return 0 if input is 0, the latter to return 1 if input is 1. Otherwise, the recursive case is consulted to calculate the result.

In the piecewise notation in *Desmos*, this can be represented as:

    f(n) = { n=0:0, n=1:1, f(n-1) + f(n-2) }

which reads as exactly as descibed above. 

The piecewise notation consists of a set of comma-separated *clasues*. Each clause consists of a *header* which identifies the argument the clause is related to; e.g. `n = 1` means the *body of the clause* is evaluated (and returned) only if the header matches (i.e. if input `n` is 1). The body of the clause is separated by a colon (`:`) from the head and contains an expression to evaluate and return (if the head matches), e.g. `n = 0 : 1` means return 1 if the argument is 0. On mismatch, the clause is skipped, and the next clause is tried.

Presumably, the clauses are checked in the order of appereance, and the first clause that matches is executed. 

The last clause is special; it has no header, just the body expression; it is a *catch-all clause* that executes only if none of the previous clauses match.

In general, a clause has the form `n = k : j`, where
- `n` is the name given to the formal parameter of the function. The names of formal parameters of the function are arbitrary, but must be used consistently. When a function is applied to a value, that value (or expression) is first evaluated (in strict languages) and the resulting value is sent into the function where i t gets name-bound to a formal parameter (like `n` here). Then, within the function, the argument can be referred to as `n`.
- `k` is a number (really a pattern, but what level of support desmos has for pattern matching is unclear) against which the argument is compared


so `n` is the formal paramter of the function, and `n = k` means what to return in case the input is scrutinized and detected that it is a `k` constant; the value to return is specified after the colon, `: j`. All together `n = k : j` means when input is `k`, return `j`.


```
f(n) = { n = 0 : 0
       , n = 1 : 1
       , f(n-1) + f(n-2)
       }

f(n) = { n = 0 : 0
       , n = 1 : 1
       , n = n : f(n-1) + f(n-2)
       }

g(n) = { n = 0 : 0, n = 1 : 1, n = n : g(n-1) + g(n-2) }
```

### In desmos

```desmos
f(n) = { n = 0: 0
       , n = 1: 1
       , f(n-1) + f(n-2)
       }
```

### In Haskell

```hs
fib :: Int → Int
fib 0 = 1
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

-- or, to prevent negative integers
fib :: Int → Int
fib n | n < 2     = 1
      | otherwise = fib (n - 1) + fib (n - 2)

-- Fibonacci as a sequence
fib = 0 : 1 : [ a + b | (a,b) <- zip fib (tail fib) ]
-- call it as
xs = take 10 fib
```

### In JS

```js
const fib = n =>
    n < 1 ? 0
  : n < 2 ? 1
  : fib(n-1) + fib(n-2)

// Proper fib sequence starts with 0, 1
// fib should have 3 fixpoints
// fixpoints: ↓ ↓       ↓
fib sequence: 0 1 1 2 3 5 8 13 21 34 55 …
//   indices: ⁰ ¹ ² ³ ⁴ ⁵ ⁶  ⁷  ⁸  ⁹ ¹⁰
```


## Recursion

https://help.desmos.com/hc/en-us/articles/25917735966989-Recursion

## Regression

### Regressions

https://help.desmos.com/hc/en-us/articles/4406972958733-Regressions

Creating a regression in the Desmos Graphing Calculator, Geometry Tool, and 3D Calculator allows you to find a mathematical expression (like a line or a curve) to model the relationship between two sets of data.

Click on Linear Regression to open the regression model dropdown menu and explore which regression model best fits your data.

From the model, you can explore the statistics
- the correlation coefficient `r` (for linear regressions)
- coefficient of determination `R²` (for nonlinear regressions)
- plot *residuals* (vertical distance between your data points and the model)

To explore, press and hold the colored circle in the table to open the Options Menu and make your points draggable. This allows you to see how changing their values affects the regression model.

You can also copy a snapshot to the expression list. Once the snapshot is in the expression list, you can define it as a function, plug in different variables, and test predictions based on your model.

*Regression templates* allow you to model curves to best fit your graph from a built in list of options. To edit the model, try viewing the model source and exporting it to the expression list or creating a standalone regression model directly in an expression line.


### Log Mode

https://help.desmos.com/hc/en-us/articles/204349605-Log-Mode

Enabling log mode changes the strategy that the calculator uses to *fit regression parameters*.

>By default, regression parameters are chosen to minimize the sum of the squares of the differences between the data and the model predictions.

When log mode is enabled, a transformation that makes the model linear is applied to both the data and the model before fitting the parameters.

Log mode can be enabled for models of the following forms:
- exponential:
  - y ∼ abˣ
  - y ∼ a exp(bx)
  - y ∼ 2ᵃˣᐩᵇ
- power law:
  - y ∼ axᵇ
- logarithmic:
  - y ∼ a ln(x) + b

When log mode is enabled, the `r` and `r²` statistics are calculated according to the transformed data, but the residuals are calculated according to the untransformed data.

Compatibility with other tools

Other math software uses procedures similar to log mode by default:
- TI calculators use logarithmic transformations for ExpReg, PwrReg, LnReg
- *Geogebra* uses logarithmic transforms for FitExp, FitGrowth, FitLog, FitPow
- *Excel* uses logarithmic transforms in Exponential and Power regression lines

Enabling log mode in Desmos makes it easier to compare answers with these other systems.

Why doesn't Desmos use log mode by default?

Many math software systems only allow regressing a handful of models and have different function names for each model, for example, ExpReg, PwrReg, LnReg, etc.

Desmos is more flexible: any relation between lists of data can be used as a regression model. For example, after regressing a model of the form

    y ∼ axᵇ

you can immediately check the effect of adding a constant by changing the model to

    y ∼ axᵇ + c

The first model can be linearized by a *logarithmic transformation*, but the second model cannot.

Desmos defaults to using *least squares regression* without transforming the data, so that the procedure used to fit these two models is the same.
