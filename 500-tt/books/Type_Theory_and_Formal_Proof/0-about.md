# About

`Type Theory and Formal Proof - An Introduction`, Nederpelt, Geuvers, 2014

Development of programming languages from untyped lambda calculus, `λ`, to calculus of constructions, `CoC`, à la lambda cube.

Vertices of lambda cube:
0. Untyped lambda calculus, `λ`
1. Simply-typed lambda calculus, `λ→`, STLC, (addition of types)
2. Second-order typed LC, `λ₂`, System F, (type polymorphism)
3. `λω` (type constructors)
4. `λΠ` (dependent types)
7. `λ₂ω`, System Fω, type polymorphism + type constructors
6. `λ₂Π` (rare: type polymorphism + dependent types, but no type ctors)
5. `λωΠ` (rare: type constructors + dependent types, no type polymorphism)
8. Calculus of Constructions, `CoC`, `λ₂ωΠ`

Dimensions:
- origin: +types
- x: +type polymorphism, +2 (second-order abstraction/application)
- y: +type constructors, +ω
- z: +dependent types,   +Π

Functions
- ƒ: terms to terms, x -> x
- ƒ: types to terms, α -> x
- ƒ: types to terms, x -> α
- ƒ: types to types, α -> α
