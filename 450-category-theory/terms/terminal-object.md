# Terminal Object

**The terminal object** in a category is the one with one unique incoming arrow from any other object in that category.


The object `𝑎` is "more terminal" than object `𝑏` if there is a morphism `𝑏 -> 𝑎`.



```
    b
    ↓
c → a ← c
    ↑
    d

(a is the terminal object)
```


## Comparing objects

For we have no other means to compare trwo objects but arrows, we say that an object `a` is "better" then an object `b` if there is a unique arrow from `b` to `a`. Also, `a` is the "best" object if there are unique arrows from other objects in the category to `a`, e.g. `c -> a`, `d -> a`, etc. Then, `a` is the terminal object.
