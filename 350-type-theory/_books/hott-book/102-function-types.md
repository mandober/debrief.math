# Function types

1. Foundations: 1.1. Type theory: 1.2 Function types

Given types `A` and `B`, we can construct the type `A → B` of functions with domain `A` and codomain `B`. Given a function `f : A → B` and an element of the domain `a : A`, we can apply the function to obtain an element of the codomain `B`, denoted `f(a)`, and called the value of `f` at `a`.

Unlike in set theory, functions are not defined as functional relations; rather, they are a *primitive concept* in type theory.

We explain the **function type** by prescribing
- what we can do with functions
- how to construct them
- what equalities they induce

We construct the elements of `A → B` either by
- direct definition
- using λ-abstraction

Introducing a function by definition 
means we introduce a function by a name, e.g. `f`, 
and saying that we define `f : A → B` 
by giving an equation `f(x) :≡ Φ`, 
where `x` is a variable 
and `Φ` is an expression which may use `x`. 
To be valid, we need to check that `Φ : B`, assuming `x : A`.

We compute `f(a)` by replacing the variable `x` in `Φ` with `a`. 
Consider the function `f : N → N`, defined by `f(x) :≡ x + x`; 
then `f(2)` is judgmentally equal to `2 + 2`.

If we don't want to introduce a name for the function, we use λ-abstraction: given an expression `Φ` of type `B` which may use `x : A`, 
we write `λ(x:A).Φ`. Thus, we have: `(λ(x:A).Φ) : A → B`. 
Another typing judgment is `(λ(x : ℕ). x + x) : ℕ → ℕ`.

For any types `A` and `B` and any element `y : B`, 
there is a *constant function* `(λ(x : A). y) : A → B`

Applying the λ-abstraction to an argument `a : A` 
yields the computation rule of **definitional equality**:

`(λx.Φ)(a) ≡ Φ′` (β-reduction)

where `Φ′` is the expression `Φ` in which all occurrences of `x` have been replaced by `a`.

We can construct a lambda abstraction `λx.f(x)` from any function `f : A → B`, since this is by definition "the function that applies `f` to its argument", 
we consider it to be definitionally equal to `f`:

`f ≡ (λx.f(x))` (η-conversion)

This equality is the **uniqueness principle for function types** because it shows that `f` is uniquely determined by its values (so, extensionality).

The introduction of the function by definition with explicit parameters can be reduced to a simple definition that uses λ-abstraction; that is, we can read a definition of `f : A → B` by `f(x) :≡ Φ` as `f :≡ λx.Φ`.

Pay atention not to capture vars when substituting.

Judgmental equality: `λz+z` ≡ `λy.y` (α-conversion)

Polyadic functions may be defined using the Cartesian product: 
function with params `A` and `B` and result in `C` has the type 
`f : A × B → C`

Polyadic functionsmay also be defined using *currying*.

Our notation for definitions with explicit parameters extends to this situation: we can define a named function `f : A → B → C` by giving an equation

`f(x,y) :≡ Φ`

where `Φ : C` assuming `x : A` and `y : B`. 
Using λ-abstraction this corresponds to

`f :≡ λx.λy.Φ`

which may also be written as

`f :≡ x ⟼ y ⟼ Φ`
