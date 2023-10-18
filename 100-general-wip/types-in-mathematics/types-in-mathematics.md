# Types in mathematics

## Mathematical primitives

What are the most basic objects, i.e. *primitive objects*, in mathematics?

If we are confounded to set theory alone, and we postulate the existence of sets, particularly the existence of the empty set, then the empty set is a mathematical primitive object, and set is mathematical primitive type.

>If `set` is a mathematical primitive type, then `the empty set` is a mathematical primitive object. And other sets we construct from those are mathematical objects also belonging to the `set` primitive type.

Basically, we then have
- The type `Set`, which is a primitive mathematical type (are there any other types?)
- The empty set, `∅`, which is the primitive mathematical object (value) of the type `Set`
- The primitive unary operation `unit` that places an object into a set
- The primitive binary operation `ins` that places an object into the given set

Applying the `unit` on the empty set, `∅`, which is initially the only primitive value there is, we get `{∅}`. Further applications of `unit` will produce sets like `{{∅}}`, `{{{∅}}}`, `{{{{∅}}}}`, etc.

To construct more interesting sets, we use the binary operation `ins` to insert an object into the given set. An *object* is the empty set and any other kind of set we construct; that is, once constructed, sets become mathematical objects in their own right.

Applying `ins` to `{}` and `{}` is a type error
Applying `ins` to `∅` and `∅` is {{}}

we get `{∅, ∅}` which colapses to `{∅}`.
Applying `ins` to `∅` and `{∅}`, we get `{∅, {∅}}`.


```hs
postulate
 Set : Type
 ∅ : Set
 unit : Set -> Set
 (@) = ins : Set -> Set -> Set

data Set a = ∅ | a :: Set a
```

The 'compiler' will have to assist us in converting the syntactical symbol `{}` into the symbol `∅`. Also, `{a}` is just sugar for `a :: {}` aka `a :: ∅`.

So, a set is the empty set (data ctor denoted by `∅` or `{}`), or it is a set obtained by inserting an object `a` into a set `as` aka `a :: as`. The other data ctor, `::`, takes an object `x` of type `a`, and a set `xs` of type `Set a`, and returns a new set also of type `Set a` with `x` inserted into `xs` i.e. `x :: xs`.


```hs
unit   ∅   -->>   {∅}   : Set
unit  {∅}  -->>  {{∅}}  : Set
unit {{∅}} -->> {{{∅}}} : Set
…
unit   n   -->> {n} : Set
```

```hs
ins ∅  ∅  -->> {∅}
ins {} {} -->> {{}} --> {∅}

ins  ∅  {∅} -->> {∅, {∅}}
ins {∅} {∅} -->> {{∅}, {∅}} --> {{∅}}
```
