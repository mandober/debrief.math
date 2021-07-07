# Subtyping

https://en.wikipedia.org/wiki/Subtyping

Symbols:
- `<:`, subtype:   a <: b (a is a subtype of b)
- `:>`, supertype: b :> a (b is a supertype of a)

In programming language theory, **subtyping** is a form of *type polymorphism* in which a subtype is a datatype that is related to another datatype (its supertype) by some notion of *substitutability*; this means that a function expecting a value of the supertype can be given a value of the subtype instead.

Subtyping is also called **subtype polymorphism** or **inclusion polymorphism**.

If S is a subtype of T, the subtyping relation is often written S <: T, to mean that any term of type S can be safely used in a context where a term of type T is expected (the precise semantics of subtyping depends on the specification of what safe use means in a given language).
