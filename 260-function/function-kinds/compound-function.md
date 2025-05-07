# Compound function

Although not an official term, a **compound function**, `h`, is a combination of its constituent functions, commonly, of two component functions `f` and `g`.

Assuming the simplest case of unary functions, the two function `f` and `g` are operands of an elementary arithmetic operation.

Elementary arithmetic operations
- addition
- subtraction
- multiplication
- division

Thus, the two function may be combined in four ways:
- f(x) + g(x) = (f + g)(x)
- f(x) - g(x) = (f - g)(x)
- f(x) × g(x) = (f × g)(x)
- f(x) ÷ g(x) = (f ÷ g)(x)

We can express this succinctly by
- `f(x) ⨂ g(x)` where `⨂ = { +, -, ×, ÷ }`

Note that the main way of combining two functions - composition (`g ∘ f`) - is not on the list. Composition is much more general operation, while these elementary operations only make sense if the two functions return a number (if you're wondering what else would math functions return, well, returning a function is a legit return value, I tell thee). Perhaps other types (vector, matrix?) may support addition and multiplication, but here a type must be compatible with all 4 operations. (The question of types is another sad, sore math subject)
