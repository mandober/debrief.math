# Polymorphic references

https://counterexamples.org/polymorphic-references.html

[polymorphism] [mutation]

>Polymorphism, as found in ML and Haskell (and in C# and Java where it's called "generics") lets the same definition be reused at multiple different unrelated types.

For instance, here's a polymorphic function that creates a single-element list:

```ocaml
let singleton x = [x]
```

The same singleton function can be used to turn an integer into a list of integers, and also to turn a string into a list of strings.

The standard typing rule for polymorphism is:

```
Γ ⊢ e : A     α ∉ FV(Γ)
------------------------ GEN
    Γ ⊢ e : ∀α . A
```

That is, if an expression `e` has a type `A` 
which mentions the type var `α`, 
but the type var `α` is used only in the type `A`, 
i.e. `α` is not free in the context Γ, `α ∉ FV(Γ)`, 
then the value of `e` 
can be reused at different types 
substituted for `α`.

The justification is that different uses of `e` can use different types for `α`, since nothing outside the type of `e` depends on which type is chosen. This process is called **generalising the type variable** `α`.


## Polymorphic references

However if `e` can allocate mutable state (say, a mutable reference cell, or a mutable array), then different uses of `e` can share state:
