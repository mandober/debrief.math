# UTT_Σ

$UTT_Σ$ is a fairly elaborate explicitly typed λ-calculus. It can be viewed as an extension of the calculus of constructions (λPω) of the λ-cube, which is the fullest-featured system of the λ-cube, featuring dependent types, polymorphic types, and type constructors. $UTT_Σ$ was introduced by Ulf Norell in his PhD thesis (Norell 2007), and it is the basic type theory underlying the Agda programming language.

UTTΣ differs from the calculus of constructions in 3 primary ways.
- Rather than including just two sorts `Type₀` and `Type₁`, it includes an infinite hierarchy of sorts, Type₀, Type₁, Type₂, …

- Its sorts are *cumulative*, meaning that when n ≤ m, any type belonging to `Type n` also belongs to `Type m`. This fact means that types are not unique up to β-conversion, and necessitates the introduction of a subtyping relation.

- It includes a wider variety of types than the calculus of constructions. It includes dependent pair types and a unit type in addition to sorts and dependent function types. The additional types are interesting primarily because of their interpretation under the Curry-Howard correspondence.
