# 3. Arrows instead of set membership

In this chapter we examine a number of standard set-theoretic constructions and reformulate them in the language of arrows.

The general theme, as mentioned in the introduction, is that concepts defined by reference to the "internal" membership structure of a set are to be characterised "externally" by reference to connections with other sets, these connections being established by functions.

The analysis will eventually lead us to the notions of universal property and limit, which encompass virtually all constructions within categories.

## 3.1 Monic arrows

A set function `f : A -> B` is said to be injective (or 1-on-1), when no two distinct inputs give the same output, i.e. `∀a,a′ ∈ A. f a = f a′ ==> a = a′`.

Now, let's take an injective `f` and two "parallel" functions `g,g′ : C → A` for which this diagram commutes, i.e. `f ∘ g = f ∘ g′`.

```hs
c        g′       a
● --------------> ●
│                 │
│g                │
│                 │f
│                 │
↓                 ↓
● --------------> ●
a        f        b
```

Then, for all objects `x ∈ C`, 
we have `f ∘ g = f ∘ g′`, i.e. `f(g(x)) = f(g′(x))`. 
But since `f` is injective, this means that `g = g′`, i.e. `g(x) = g′(x)`.

>[∀c ∈ C. (f ∘ g = f ∘ g′) ==> g = g′] ==> f is mono

Hence `g` and `g′`, *giving the same output for every input*, are the same function, and we have shown that an injective `f` is **left-cancellable**, i.e. whenever `f ∘ g = f ∘ g′`, then `g = g′`.



## 3.2 Epic arrows

>[∀c ∈ C. (g ∘ f = g′ ∘ f) ==> g = g′] ==> f is epic
