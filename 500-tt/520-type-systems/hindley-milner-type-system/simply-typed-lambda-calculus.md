# Simply Typed Lambda Calculus

Simply Typed Lambda Calculus (STLC), `λ→`, a form of type theory, is a typed version of the plain λ-calculus. STLC has a single type constructor: function type ctor, `->`, which constructs function types.


STLC is the simplest of the typed lambda calculi. STLC is the base upon which the other typed calculi are build. Or, it can be said that the untyped lambda calculus is the foundation upon which the typed calculi are build, with the STLC contributing the types and a simple type system.

The type system of STLC is simple because it lacks all of the more advanced type features, apart from a single type constructor - the function type ctor used to construct function types.

The term "simple type" is also used to refer to the extensions of the STLC with features such as products, coproducts, natural numbers (`System T`), or even full recursion (`PCF`). In contrast, systems which introduce polymorphic types (`System F`) or dependent types (`Logical Framework`) are not considered *simply typed*.

The simple types (except for full recursion) are still considered "simple" because the Church encodings of such structures can be done using only the function ctor and suitable type variables; polymorphism and dependency cannot be mimicked with an encoding, Church's or any other.
