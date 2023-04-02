# Base types

Base or ground types are the simple, non-compound, primitive types that a language provides. These types usually correspond to the machine primitives; e.g. machine 64-bit integers are the fundamental machine type whose width is exactly the size of a machine word (i.e. 64-bits). A PL might provide the type such as `Int` and `Word` that corresponds to machine integers, only the former should be interpreted as signed integer, the latter as unsigned.


To define the types of a PL, a set of base types, `B`, must first be defined. The base types are also called *atomic types* or *type constants*. The latter is because they too could be interpreted as type ctors, only they are always nullary type ctors.

For example, the set of base types might consists only of the integers (`Int`) and characters (`Char`), so `B = {Int, Char}`. The syntax of types is then:

```
B := Int | Char

τ := B
   | τ → τ
```

In this example, the base types are `Int` and `Char`. So the types of this examplary language are either base types or functions over these two base types. In this example, the `→` may be considered as a type ctor because it constructs arbitrary function types.

Since the name of the concrete types that constitute the set of base types are not important, we can label them with meta-variables like `a` and `b`, and say that the set of base types is `B={a,b}`. 

```
B := a | b

τ := B
   | τ → τ
```

This would then generate an infinite set of types:
- a, b
- a → a, b → b
- a → b, b → a
- a → (a → a), b → (b → b), …
- (b → a) → (a → b), …
- etc.

Type ctors, as their name implies, allow us to build new types by combining the existing ones. Function type ctor `->` is the most useful type ctor to have, because with it we can mimick other types using e.g. Church encoding.

If no type constructors were available, we wouldn't be able to construct custom (user) types - we would only be able to use the types that the PL provides explicitly.

If a PL provides (could it?) all imaginabe functions on base types, do we still consider (->) to be a type ctor?
