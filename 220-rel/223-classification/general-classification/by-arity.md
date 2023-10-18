# Relations :: Classification :: General classification :: By arity

**Arity** is the number of places or arguments a relation takes.

Binary relations take two arguments - they are 2-place relations. Ternary relations take three arguments - they are 3-place relations. It is somewhat strange to shovel unary or even nullary relations in the same discussion since it's hard to see how they even qualify as relations.

By far, *binary relations* are the most common type of relations, since a relation is usually understood to associate two or more objects, with two objects being the default and familar case; so whenever the arity is not explicitly stated, binary (2-place) relation is assumed.

Often, when a relation relates two sets, we say it is a *relation between sets*, and when it is an endorelation, in that it relates a (single) set to itself, we say it is a *relation on a set*. Unary relations are then always endorelations, nullary relations are special and best explained with functions.

An `n`-ary function (all functions are relations after all), is an `n+1`-ary relation. With functions, only the input arguments count toward function's arity (output is excluded), but with relations everything counts ⟨in large amounts⟩.

N | Fn arity| Fn signature   | Rel signature | Alt sig | Rel arity
--|---------|---------------:|---------------|---------|------------
? | ?       |              ? | ?             | 𝔹⁰      | nullary
0 | nullary |          1 → 𝔹 | 𝔹             | 𝔹¹      | unary
1 | unary   |          𝔹 → 𝔹 | 𝔹 ⨯ 𝔹         | 𝔹²      | binary
2 | binary  |      𝔹 ⨯ 𝔹 → 𝔹 | 𝔹 ⨯ 𝔹 ⨯ 𝔹     | 𝔹³      | ternary
3 | ternary |  𝔹 ⨯ 𝔹 ⨯ 𝔹 → 𝔹 | 𝔹 ⨯ 𝔹 ⨯ 𝔹 ⨯ 𝔹 | 𝔹⁴      | quaternary


The most common relations are binary and the most common functions are unary, which matches perfectly since unary functions indeed are binary relations.
-      unary function is binary relation

The correspondence between functions expressed as relations is straightforward with polyadic arities:
-     binary function is ternary relation
-    ternary function is quaternary relation
- quaternary function is quinary relation
-      n-ary function is n+1-ary relation

but it is not so straightforward in the extremes:
-    nullary function is unary relation
-          ? function is nullary relation

>Polyadic correspondencies between functions and relations are straightforward, but what exactly is a unary relation (nullary function)? Especially, what is a nullary relation and which functions correspond to it (if any)?

For example, *propositional logic* models binary logical connectives with ternary relations or binary functions.

For example, conjunction is usually defined as a binary function `and` that takes two arguments (truth values) and returns a truth value.

```hs
class And a where
  and :: a → a → a

instance And Bool where
  and :: Bool → Bool → Bool
  True  `and` True  = True
  True  `and` False = False
  False `and` True  = False
  False `and` False = False
```

But conjunction can also be modelled as a ternary relation that relates any 3 types:

```hs
class And a b c | a b -> c where
  and :: a → b → c

instance And Bool Bool Bool where
  and :: Bool → Bool → Bool
  True  `and` True  = True
  True  `and` False = False
  False `and` True  = False
  False `and` False = False
```

Unary relations are then used to model negation, and nullary relations to model constants i.e. truth values themselves.

In *predicate logic*, unary relations are usually viewed as properties, while binary relations are the most common type of predicates (relation and predicate are synonymous there), and relations of bigger arity model n-place predicates.




A unary function on the natural numbers, `f : ℕ -> ℕ`, is at the same time a binary relation, `F ⊆ ℕ ⨯ ℕ`, on the same set. However, functions have special notation - if this was the signature of the function, then its definition uses the form `f(x) = y`, where `y` stands for some expression that is the function's body, e.g. `f(x) = x² + 1`. This body is a rule, but, in general, functions need not be defined using rules, they may be arbitrary as well, in which case they are best defined as a table of input-output pairs, `(x, f(x))`, which is also convenient way to define relations that cannot be defined using setbuilder notation. The `f` function expressed as a relation would then be just a set of ordered pairs, `(x, f(x))`.

A nullary function on the natural numbers, `f₀ : () -> ℕ`, is at the same time a unary relation, `R₀ ⊆ ℕ`, on the same set.

The treatment of nullary relations is peculiar and doesn't correspond to any function.
