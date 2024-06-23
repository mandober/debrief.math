# Algebraic data types

Algebraic data types are possibly recursive polynomial types. They are also build from these basic types, but they may additionally be recursive:
- empty,        `0`
- unit,         `1`
- sum,          `+`, a + b
- product,      `×`, a × b
- exponentials, `→`, a → b

Empty and unit and constant types that are combined with the 3 type operations, but this time, recursion is also possible.
- Nat type:  N = 1 + N
- List type: La = 1 + a × La

The Nat type, `N = 1 + N`, expands to

```hs
N = 1 + N
  = 1                    -- 1
  = 1 + 1                -- 2
  = 1 + 1 + 1            -- 3
  = 1 + 1 + 1 + 1        -- 4
```

The List type, `La = 1 + a × La` expands to

```hs
La = 1 + a La
La = 1 + a (1 + a La)
La = 1 + a (1 + a(1 + a La))
La = 1 + a (1 + a(1 + a(1 + a La))) = 1 + a + a² + a³ + a⁴ La
```

So a list is either (`+`) empty (`1`) or 1-list (`a`) or 2-list (`a²`), or …
