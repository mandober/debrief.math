# Variance

https://en.wikipedia.org/wiki/Covariance_and_contravariance_(computer_science)

Type systems that support some notion of *subtyping* or *type order* need to consider the notion of variance.

In OOP, subtyping is relation between a parent class and from it derived child classes. For example, creating the class 'Animal' and then deriving a child class 'Cat', makes the type 'Cat' a subtype of type 'Animal' (a class also creates the type of the same name). Then a more specific object of type 'Cat' should be substitutable wherever a more general object of type 'Animal' is expected (since cat is also an animal, but not vice versa).

*Variance* is how subtyping between more complex types relates to subtyping between their components.

For example, how should a list of Cats relate to a list of Animals? Or how should a function that returns Cat relate to a function that returns Animal?

Depending on the variance of the type constructor, the subtyping relation of the simple types may be either preserved, reversed, or ignored for the respective complex types. In the OCaml programming language, for example, "list of Cat" is a subtype of "list of Animal" because the list type constructor is covariant. This means that the subtyping relation of the simple types is preserved for the complex types.

On the other hand, "function from Animal to String" is a subtype of "function from Cat to String" because the function type constructor is contravariant in the parameter type. Here, the subtyping relation of the simple types is reversed for the complex types.

A programming language designer will consider variance when devising typing rules for language features such as arrays, inheritance, and generic datatypes. By making type constructors covariant or contravariant instead of invariant, more programs will be accepted as well-typed. On the other hand, programmers often find contravariance unintuitive, and accurately tracking variance to avoid runtime type errors can lead to complex typing rules.

In order to keep the type system simple and allow useful programs, a language may treat a type constructor as invariant even if it would be safe to consider it variant, or treat it as covariant even though that could violate type safety.
