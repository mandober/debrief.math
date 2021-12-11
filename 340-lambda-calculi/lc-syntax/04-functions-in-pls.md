# Functions in programming languages

Despite its limited syntactic forms, LC actually exists as a subset of many programming languages.

For example, JS is perfectly capable of expressing all expressions of LC, albeit with some syntactic differences.

```js
// anonymous function applied to an arg
(a => a) (b => b)
// b => b
```

The equivalent expression in LC is `(λa.a) (λb.b)`, which also evaluates to `(λb.b)`.

This same LC expression can be expressed in any PL that supports functions as first class values (can be passed in as args to functions, can be returned from functions).

In Haskell, this lambda expression is:

```hs
-- anonymous function applied to an arg
(\a -> a) (\b -> b)
-- (\b -> b)
```

In ruby,

```rb
(lambda a => a) (lambda b => b)
# (lambda b => b)
```
