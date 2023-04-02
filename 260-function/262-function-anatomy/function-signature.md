# Function theory :: Function signature

Under the influence of CS, functions are usually declared in two parts in mathematics. First, a function's type (type signature) is given, which declares the name, the domain, and the codomain of the function. In general, a function's type signature looks like `f : A -> B`, which asserts the name of the function `f`, the domain set as `A`, and codomain set as `B`. If a funciton is anonymous, it has a type signature like `A ⟼ B`, which asserts that it is a mapping from a set `A` to a set `B`.


is usually declared by first stating its (type) signature, which is followed by the actual definition (implementation). In the most general form, this may look like:

```js
F : A -> B
f(x) = y
```

Function signature

Boolean-valued function
