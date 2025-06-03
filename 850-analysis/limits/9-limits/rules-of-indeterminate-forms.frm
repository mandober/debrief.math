# List of indeterminate forms

- Indeterminate forms: `0/0`, `±∞/±∞`, `0  ⋅ ± ∞`, `0⁰`, `1^±∞`, `±∞⁰`


### Indeterminate form `0/0`

- Conditions:
  - lim{x→c} f(x) = 0
  - lim{x→c} g(x) = 0
- Transformation to 0/0:
  - (none)
- Transformation to ∞/∞:
  - lim{x→c} `f(x) ÷ g(x)` =
    = lim{x→c} 1/g(x) ÷ 1/f(x)

```
If both f x and g x tend to 0,
(no transformation to 0/0)
transformation to ∞/∞:

         f x              1/g x
lim{x→c} ---- = lim{x→c} -----
         g x              1/f x
```

### Indeterminate form `∞/∞`

- Conditions:
  - lim{x→c} f(x) = ∞
  - lim{x→c} g(x) = ∞
- Transformation to 0/0:
  - lim{x→c} `f(x) ÷ g(x)` = lim{x→c} 1/g(x) ÷ 1/f(x)
- Transformation to ∞/∞:
  - (none)


### Indeterminate form `0 ⋅ ∞`

- Conditions:
  - lim{x→c} f(x) = 0
  - lim{x→c} g(x) = ∞
- Transformation to 0/0:
  - lim{x→c} `f(x) ⋅ g(x)` = lim{x→c} f(x) ÷ 1/g(x)
- Transformation to ∞/∞:
  - lim{x→c} `f(x) ⋅ g(x)` = lim{x→c} g(x) ÷ 1/f(x)


### Indeterminate form `∞ - ∞`

- Conditions:
  - lim{x→c} f(x) = ∞
  - lim{x→c} g(x) = ∞
- Transformation to 0/0:
  - lim{x→c} `f(x) - g(x)` =
    = lim{x→c} (1/g(x) - 1/f(x)) ÷ (1/f(x)⋅g(x))
- Transformation to ∞/∞:
  - lim{x→c} `f(x) - g(x)` =
    = ln lim{x→c} e^f(x) ÷ e^g(x)


### Indeterminate form `0⁰`

- Conditions:
  - lim{x→c} f(x) = 0ᐩ
  - lim{x→c} g(x) = 0
- Transformation to 0/0:
  - lim{x→c} `fx^gx` = exp lim{x→c} gx ÷ 1/ln fx
- Transformation to ∞/∞:
  - lim{x→c} `fx^gx` = exp lim{x→c} ln fx ÷ 1/gx


### Indeterminate form `1^∞`

- Conditions:
  - lim{x→c} f(x) = 1
  - lim{x→c} g(x) = ∞
- Transformation to 0/0:
  - lim{x→c} `fx^gx` = exp lim{x→c} ln fx ÷ 1/gx
- Transformation to ∞/∞:
  - lim{x→c} `fx^gx` = exp lim{x→c} gx ÷ 1/ln fx


### Indeterminate form `∞⁰`

- Conditions:
  - lim{x→c} f(x) = ∞
  - lim{x→c} g(x) = 0
- Transformation to 0/0:
  - lim{x→c} `fx^gx` = exp lim{x→c} gx ÷ 1/ln fx
- Transformation to ∞/∞:
  - lim{x→c} `fx^gx` = exp lim{x→c} ln fx ÷ 1/gx
