# Typing environment

https://en.wikipedia.org/wiki/Typing_environment

In type theory, a *typing environment* or *typing context* represents the association between term-level variables (variable names) and the types assigned to them.

A typing environment `Γ` is a collection of bindings. A *binding* is an association between a *term variable* and a *type* that is assigned to the that var. It represents the fact that a var `x` has type `τ`, denoted `x : τ`.

>A typing environment is a collection of bindings - associations between term variables and types (assigned to them).

A typing environment strictly collects bindings of term variables and types, not of other typing relations, e.g. association of an exp to a type - vars only.

A binding `x : τ` may also be represented as an oreder pair `⟨x, τ⟩` where `x` is a term variable and `τ` its type. Then a context is a set or list of such pairs - ordered pairs of the form `(xᵢ, τᵢ)`.

Context
- abstract presentation: Γ = { x₁ : τ₁, x₂ : τ₂, x₃ : τ₃, … }
- concrete example (as list): Γ = [ (x, int), (y, bool), (f, int → bool), … ]

In programming languages, context is often implemented using a collection data structure like list, set, or a map of k-v pairs (*key* is a variable name, e.g. as a string, and its associated *value* is then the type as a data structure).

Between list and set, list is usually a better choice for implementing context. This is because list is an ordered collection, which, along with the fact that new entries are added to the begining of a list, means that *name shadowing* (when a variable in the inner scope has the same name as one in the outer scope) is automatically taken care of; a recently added binding shadows an older one when they share the same key name.


The judgement `Γ ⊢ x : τ`
