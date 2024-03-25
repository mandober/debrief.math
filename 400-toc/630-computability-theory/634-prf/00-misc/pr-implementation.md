# Implementation of PRFs in a PL

Problems:
- picking the rec arg
- const function, e.g. `C⁰₁` returns 1 without ever needing the second arg, i.e. `C⁰₁` *is* 1, unlike Haskell's `const 1 _` that evals to 1 but only when it receives the second arg - even though the second arg is ignored (so it can be any value at all), it still must be supplied, even as `()`.
