# LC variants

* Lambda cube calculi
  1. `λ͢`, Simply-Typed Lambda Calculus, STLC, **λ͢** `λ→`, `λ⃗`, `λ͢`, `λ⃕`
  2. `λ2`, System F,                          **λ²**
  3. `λω̱`, `λϖ`,                              **λω**
  4. `λΠ`, λP, Lambda-P, Lambda-Pi,           **λΠ**
  5. `λω`, System Fω, `Fω`,                   **λ²ω**
  6. `λ2Π`, `λ2P`,                            **λ²Π**
  7. `λΠω̱`, `λPω̱`, λΠω`, `λΠϖ`,               **λΠω**
  8. `λC`, Calculus of Constructions, CoC,    **λ²Πω**

- Origin: `λ͢` adds types
- x-axis: ω   adds Type ctors
- y-axis: 2   adds Polymorphism
- z-axis: Π   adds Dependent types


1. Simply-Typed Lambda Calculus
2. Second-order typed lambda calculus


```js
           λC
    ↗      ↑       ↖
λω        λ2Π         λΠω̱
↑    ↗   ↖    ↗     ↖   ↑
λ2         λω̱          λΠ
     ↖     ↑    ↗
           λ⃗

λ-cube = { λ⃗, λ2, λω̱, λΠ, λω, λ2Π, λΠω̱, λC }

     λ͢²Πω
λ͢²ω   λ͢²Π   λ͢Πω
λ͢²     λ͢ω    λ͢Π
       λ͢

λ-cube = { λ͢ , λ͢², λ͢ω, λ͢Π, λ͢²ω, λ͢²Π, λ͢Πω, λ͢²Πω }
```

Name                    |a|C |M | Alt
------------------------|-|--|--|--------------------
Simply-Typed λ-calculus |0|λ͢ |λ⃗ | STLC  λ͢  λ⃗  λ⃕  λ→
System F                |y|λ2|λ͢²| System F



* y-axis: terms that can bind types, corresponding to polymorphism
* z-axis: types that can bind types, corresponding to (binding) type operators
* x-axis: types that can bind terms, corresponding to dependent types






* Untyped λ-calculus
  - λ-calculus
* Typed λ-calculi



- λ→ Simply Typed Lambda Calculus
  - λ2 System F
  - λP Lambda-P
  - λῳ System Fω
    - λ2P
    - λFω System Fω
    - λPῳ
- λC Calculus of constructions


  - Implicitly typed λ-calculi
  - Explicitly typed λ-calculi
  - The system of intersection types
  - Second-order λ-calculus
  - UTTΣ
  - Pure Type Systems
  - Hindley-Milner type theory

Lambda cube
- 3 dimensions
  - origin: terms may depend on terms (λ→)
  - x-axis: terms may depend on types (polymorphism)
  - y-axis: types may depend on types (type ctors)
  - z-axis: types may depend on terms (dependent types)
- 8 vertices
  1. λ→
  2. λ2
  3. λω
  4. λῳ
  5. λ2ῳ
  6. λP
  7. λ2P
  8. ΛC
